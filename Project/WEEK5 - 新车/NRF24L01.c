/*
 * --------------"拉普兰德K60底层库"示例工程-----------------
 *
 * 测试硬件平台:  LPLD_K60 Card
 * 版权所有:      北京拉普兰德电子技术有限公司
 * 网络销售:      http://laplenden.taobao.com
 * 公司门户:      http://www.lpld.cn
 *
 * 说明:    本工程基于"拉普兰德K60底层库"开发，
 *          所有开源驱动代码均在"LPLD"文件夹下，调用说明见文档[#LPLD-003-N]
 *
 * 文件名:		LPLD_SPI_NRF24L01.c
 * 用途:		nRF24L01无线模块传输例程
 * 说明: 发送端：通过按键触发NRF24L01发送指令
 *       接收端：通过PB1中断，接收数据
 * LPLD_K60 Card 硬件配置说明:
 *                       K60单片机引脚        NRF24L01引脚
 *                       按键K1 -PE10
 *                              -PTB0  -----> CE
 *                       CS     -PTA14 -----> CSN
 *                       SCK    -PTA15 -----> SCK
 *                       MOSI   -PTA16 -----> MOSI
 *                       MISO   -PTA17 <----- MISO
 *                       INT    -PTB1  -----> IRQ
 *
 */

#include "common.h"
#include "NRF24L01.h"
#include "spi.h"
u8 TX_ADDRESS[NRF24L01_TX_ADR_LEN]={0x34,0x43,0x10,0x10,0x02}; //发送地址
u8 RX_ADDRESS[NRF24L01_RX_ADR_LEN]={0x34,0x43,0x10,0x10,0x02}; //接收地址(本机地址,仅用于接收模式)

u8 rx_buf[NRF24L01_PLOAD_LEN] = {0x00};     //接收缓冲区
u8 tx_buf[NRF24L01_PLOAD_LEN] = {0x00};     //发送缓冲区

// NRF24L01复位之后用于检测
// NRF24L01_RX_ADDR_P0的复位值是否为0xE7E7E7E7
// NRF24L01_RX_ADDR_P1的复位值是否为0xC2C2C2C2
// NRF24L01_TX_ADDR的复位值是否为0xE7E7E7E7
u8 NRF24L01_RX_ADDR_P0_RESET_BUF[5];
u8 NRF24L01_RX_ADDR_P1_RESET_BUF[5];
u8 NRF24L01_TX_ADDR_RESET_BUF[5];

u8 Flag_Smitte = 0; //发送标志

void Nrf24l01_Init(void)
{ 
  LPLD_SPI_Init(SPI0, SPI_SCK_DIV_32, 1); //选择SPI0 50Mhz/32 = 1.56Mhz
  SPI_QuickInit(SPI0_SCK_PA15_SOUT_PA16_SIN_PA17)
  LPLD_GPIO_Init(PTE,10,DIR_INPUT,INPUT_PDOWN,IRQC_FA); //内部下拉,使能PE10下降沿中断
  LPLD_GPIO_Init(PTB,0,DIR_OUTPUT,OUTPUT_L,IRQC_DIS); //使能PTB0作为CE选择端
  LPLD_GPIO_Init(PTB,1,DIR_INPUT,INPUT_PDOWN,IRQC_FA); //内部下拉、使能PORTB1作为NRF24L01的IRQ中断
  
#if NRF24L01_WORKMODE == NRF24L01_TX_WORKMODE
  LPLD_GPIO_SetIsr(PTE,porte_handle); //使能按键中断
  Nrf24l01_TxModeInit();
#else
  LPLD_GPIO_SetIsr(PTB,portb_handle); //使能NRF24L01的IRQ中断
  Nrf24l01_RxModeInit();
#endif
}

//按键中断
void porte_handle()
{
  //Flag_Smitte = 1; //设置发送标志
}

//nrf24l01接收中断
void portb_handle()
{
//#if NRF24L01_WORKMODE == NRF24L01_RX_WORKMODE
  //Nrf24l01_RecvFrame(rx_buf, NRF24L01_PLOAD_LEN);
//#endif
}


/*
*
*函数功能:   向nrf24l01的缓冲区中写入数据，并返回寄存器的状态
*函数参数:   reg    nrf24l01寄存器
*            *pbuf  指向存储写入数据的首地址
*            len  存取区的长度，单位字节
*函数返回值: 返回当前寄存器的状态
*/
u8 Nrf24l01_WriteBuf(u8 reg,u8 *pbuf ,u8 len)
{
  u8 status,i;
  
  status = LPLD_SPI_Master_WriteRead(SPI0, reg, SPI_PCS0, SPI_PCS_ASSERTED); //利用SPI0、PCS0、帧发送完毕后PCS保持低电平                                     
  
  for(i = 0;i < len;i++) 
  { 	  
    if( i == (len-1) )
    {
      LPLD_SPI_Master_WriteRead(SPI0,*pbuf++,SPI_PCS0,SPI_PCS_INACTIVE);//到最后一个数据发送完毕，PCS拉高
    }
    else
    {
      LPLD_SPI_Master_WriteRead(SPI0,*pbuf++,SPI_PCS0,SPI_PCS_ASSERTED);
    }
  }
  return status;
} 

u8 Nrf24l01_TxModeInit(void)
{
  u8 Temp;
  
  NRF24L01_CE_L;  
  // 芯片上电复位后
  // 分别读取NRF24L01_RX_ADDR_P0、NRF24L01_RX_ADDR_P1、NRF24L01_TX_ADDR的值
  // 查看以下数据
  // NRF24L01_RX_ADDR_P0的复位值是否为0xE7E7E7E7
  // NRF24L01_RX_ADDR_P1的复位值是否为0xC2C2C2C2
  // NRF24L01_TX_ADDR的复位值是否为0xE7E7E7E7
  // 如果正确证明SPI读写没有问题，反之亦然
  Nrf24l01_CheckID();
  
  Temp=Nrf24l01_WriteReg(NRF24L01_FLUSE_TX,0xFF);
  
  Temp=Nrf24l01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_TX_ADDR,    TX_ADDRESS, NRF24L01_TX_ADR_LEN);
  
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_AA, 0x01);       //频道0自动,ACK应答允许
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_RXADDR, 0x01);   //允许接收地址只有频道0      
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_SETUP_RETR, 0x1a);  //设置自动重发时间和次数：500us + 86us, 10 retrans...
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_CH, 40);         //设置信道工作为2.4GHZ，收发必须一致
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_SETUP, 0x0F);    //设置发射速率为1MHZ，发射功率为最大值0dB
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_CONFIG, 0x0E);      //使能CRC校验，使能TX，并且上电 
   
  NRF24L01_CE_H;
  
  Nrf24l01_DelayUs(2000);
  
  return Temp;
}


u8 Nrf24l01_RxModeInit(void) 
{ 
  u8 Temp;
  
  NRF24L01_CE_L; 
  // 芯片上电复位后
  // 分别读取NRF24L01_RX_ADDR_P0、NRF24L01_RX_ADDR_P1、NRF24L01_TX_ADDR的值
  // 查看以下数据
  // NRF24L01_RX_ADDR_P0的复位值是否为0xE7E7E7E7
  // NRF24L01_RX_ADDR_P1的复位值是否为0xC2C2C2C2
  // NRF24L01_TX_ADDR的复位值是否为0xE7E7E7E7
  // 如果正确证明SPI读写没有问题，反之亦然
  Nrf24l01_CheckID();
 
  Temp=Nrf24l01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_RX_ADDR_P0, RX_ADDRESS, NRF24L01_RX_ADR_LEN); 
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RX_PW_P0, NRF24L01_PLOAD_LEN);
  
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_AA, 0x01);      //频道0自动,ACK应答允许      
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_RXADDR, 0x01);  //允许接收地址只有频道0 
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_SETUP_RETR, 0x1a); // 500us + 86us, 10 retrans... 	
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_CH, 40);        //设置信道工作为2.4GHZ，收发必须一致  
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_SETUP, 0x0F);   //设置发射速率为1MHZ，发射功率为最大值0dB
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_CONFIG, 0x0F);     //使能CRC校验，使能RX，并且上电 
  
  NRF24L01_CE_H;  
  
  Nrf24l01_DelayUs(2000);
  
  return Temp;
}

/*
* 函数功能：   通过无线发送一帧数据
* 函数变量:   *data    指向用户发送数据缓冲区
*             len      发送数据长度，以字节为单位
*/
void Nrf24l01_SendFrame(u8 *data, u8 len)
{
  u8 Status;
  
  NRF24L01_CE_L; //拉低CE，让Nrf24l01进入Standby-I模式
  Nrf24l01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_RX_ADDR_P0, TX_ADDRESS, NRF24L01_RX_ADR_LEN); // 装载接收端地址
  Nrf24l01_WriteBuf(NRF24L01_WR_TX_PLOAD, data, len); 			   // 装载数据	
  NRF24L01_CE_H;  
  
  while(1)
  {
    Status = Nrf24l01_ReadReg(NRF24L01_STATUS);           //读取状态寄存器
    Nrf24l01_WriteReg(NRF24L01_WRITE_REG+NRF24L01_STATUS,Status);  //清空状态奇存器
    if(Status & NRF24L01_STATUS_TX_DS)                //如果发送完毕，并接收到ACK，该标志位置位
    {
      Nrf24l01_WriteReg(NRF24L01_FLUSE_TX,0xFF);          //清空发送缓冲区
#if(defined(DEBUG_PRINT))  
      printf("Nrf24l01 Send Succeed!!\r\n");
#endif
      break;
    }
    else if(Status & NRF24L01_STATUS_MAX_RT)          //如果达到多次发送的最大值，且期间没有接收到ACK
    { 
#if(defined(DEBUG_PRINT)) 
      printf("Nrf24l01 Send Error!!\r\n");
#endif
      break;
    }
  }
}


/*
* 函数功能：   通过无线接收一帧数据
* 函数变量:   *data    指向用户接收数据缓冲区
*             len      接收数据长度，以字节为单位
*/
void Nrf24l01_RecvFrame(u8 *data, u8 len)
{
  u8 Status;
  Status = Nrf24l01_ReadReg(NRF24L01_STATUS);                  //读取状态寄存器
  Nrf24l01_ReadBuf(NRF24L01_RD_RX_PLOAD,data,len);   //读取缓冲区的值
#if(defined(DEBUG_PRINT))  
  printf("Nrf24l01 rev Succeed!!\r\n"); 
#endif
  Nrf24l01_WriteReg(NRF24L01_WRITE_REG+NRF24L01_STATUS,Status);         //清空状态奇存器
  Status = 0;
}

/*
* 函数功能：   用于检查复位后的NRF24L01_RX_ADDR_P1、NRF24L01_RX_ADDR_P0、NRF24L01_TX_ADDR的值是否正确
*              此值用于反映SPI总线是否配置正确
*/
static u8 Nrf24l01_CheckID(void)
{
  u8 Temp;
  Temp=Nrf24l01_ReadBuf(NRF24L01_READ_REG + NRF24L01_RX_ADDR_P1, NRF24L01_RX_ADDR_P1_RESET_BUF,5);
  asm("nop");
  Temp=Nrf24l01_ReadBuf(NRF24L01_READ_REG + NRF24L01_TX_ADDR, NRF24L01_TX_ADDR_RESET_BUF,5);
  asm("nop");
  Temp=Nrf24l01_ReadBuf(NRF24L01_READ_REG + NRF24L01_RX_ADDR_P0, NRF24L01_RX_ADDR_P0_RESET_BUF,5);
  asm("nop"); 
  return Temp;
}


/*
*函数功能：  向nrf24l01的缓冲区中读取数据，并返回寄存器的状态
*函数变量:   reg    nrf24l01寄存器
*            *pBUF  指向存储读出数据的首地址
*            len  存取区的长度，单位字节
*函数返回值：返回当前寄存器的状态
*/
static u8 Nrf24l01_ReadBuf(u8 reg,u8 *pbuf,u8 len)
{
  u8 Status,i;
  
  Status = LPLD_SPI_Master_WriteRead(SPI0,reg,SPI_PCS0,SPI_PCS_ASSERTED); //利用SPI0、PCS0、帧发送完毕后PCS保持低电平  
  
  for(i = 0 ;i < len ;i++)
  {
    if( i == (len-1) )
    {
      pbuf[i] = LPLD_SPI_Master_WriteRead(SPI0,0xFF,SPI_PCS0,SPI_PCS_INACTIVE);//读缓冲区的时候，发送dummy数据即可，
                                                      //到最后一个数据发送完毕后，PCS拉高
    }
    else
    {
      pbuf[i] = LPLD_SPI_Master_WriteRead(SPI0,0xFF,SPI_PCS0,SPI_PCS_ASSERTED);
    }
  }
  return Status ;
}

/*
*函数功能：向nrf24l01寄存器中写入数据，并返回寄存器的状态/向nrf24l01写入指令
*函数变量: reg    nrf24l01寄存器
*          value  寄存器的数值
*函数返回值: 返回当前寄存器的状态
*/
static u8 Nrf24l01_WriteReg(u8 reg,u8 value)
{
  u8 Status;
  Status = LPLD_SPI_Master_WriteRead(SPI0,reg,SPI_PCS0,SPI_PCS_ASSERTED);    //指定寄存器
  LPLD_SPI_Master_WriteRead(SPI0,value,SPI_PCS0,SPI_PCS_INACTIVE);  //向寄存其中写入数据，数据发送完毕后PCS拉高
  return Status;
}

/*
*函数功能：读nrf24l01寄存器中数据，并返回寄存器的状态
*函数变量:    reg    nrf24l01寄存器
*函数返回值: 返回当前寄存器的数值
*/
static u8 Nrf24l01_ReadReg(u8 reg)
{
  u8 temp;
  LPLD_SPI_Master_WriteRead(SPI0,reg,SPI_PCS0,SPI_PCS_ASSERTED);  //指定寄存器
  temp = LPLD_SPI_Master_WriteRead(SPI0,0xFF,SPI_PCS0,SPI_PCS_INACTIVE); //向寄存器中写入数据，数据发送完毕后PCS拉高
  return temp;
}

/*
* 函数功能：  用于延时 最小10us
* 函数变量:   t 延时时
*        
*/
static void Nrf24l01_DelayUs(u16 t)
{
  u16 i;
  for(i = 0; i < t;i++)
  {
    asm("nop");
  }
}