/*
 * --------------"��������K60�ײ��"ʾ������-----------------
 *
 * ����Ӳ��ƽ̨:  LPLD_K60 Card
 * ��Ȩ����:      �����������µ��Ӽ������޹�˾
 * ��������:      http://laplenden.taobao.com
 * ��˾�Ż�:      http://www.lpld.cn
 *
 * ˵��:    �����̻���"��������K60�ײ��"������
 *          ���п�Դ�����������"LPLD"�ļ����£�����˵�����ĵ�[#LPLD-003-N]
 *
 * �ļ���:		LPLD_SPI_NRF24L01.c
 * ��;:		nRF24L01����ģ�鴫������
 * ˵��: ���Ͷˣ�ͨ����������NRF24L01����ָ��
 *       ���նˣ�ͨ��PB1�жϣ���������
 * LPLD_K60 Card Ӳ������˵��:
 *                       K60��Ƭ������        NRF24L01����
 *                       ����K1 -PE10
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
u8 TX_ADDRESS[NRF24L01_TX_ADR_LEN]={0x34,0x43,0x10,0x10,0x02}; //���͵�ַ
u8 RX_ADDRESS[NRF24L01_RX_ADR_LEN]={0x34,0x43,0x10,0x10,0x02}; //���յ�ַ(������ַ,�����ڽ���ģʽ)

u8 rx_buf[NRF24L01_PLOAD_LEN] = {0x00};     //���ջ�����
u8 tx_buf[NRF24L01_PLOAD_LEN] = {0x00};     //���ͻ�����

// NRF24L01��λ֮�����ڼ��
// NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
// NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
// NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
u8 NRF24L01_RX_ADDR_P0_RESET_BUF[5];
u8 NRF24L01_RX_ADDR_P1_RESET_BUF[5];
u8 NRF24L01_TX_ADDR_RESET_BUF[5];

u8 Flag_Smitte = 0; //���ͱ�־

void Nrf24l01_Init(void)
{ 
  LPLD_SPI_Init(SPI0, SPI_SCK_DIV_32, 1); //ѡ��SPI0 50Mhz/32 = 1.56Mhz
  SPI_QuickInit(SPI0_SCK_PA15_SOUT_PA16_SIN_PA17)
  LPLD_GPIO_Init(PTE,10,DIR_INPUT,INPUT_PDOWN,IRQC_FA); //�ڲ�����,ʹ��PE10�½����ж�
  LPLD_GPIO_Init(PTB,0,DIR_OUTPUT,OUTPUT_L,IRQC_DIS); //ʹ��PTB0��ΪCEѡ���
  LPLD_GPIO_Init(PTB,1,DIR_INPUT,INPUT_PDOWN,IRQC_FA); //�ڲ�������ʹ��PORTB1��ΪNRF24L01��IRQ�ж�
  
#if NRF24L01_WORKMODE == NRF24L01_TX_WORKMODE
  LPLD_GPIO_SetIsr(PTE,porte_handle); //ʹ�ܰ����ж�
  Nrf24l01_TxModeInit();
#else
  LPLD_GPIO_SetIsr(PTB,portb_handle); //ʹ��NRF24L01��IRQ�ж�
  Nrf24l01_RxModeInit();
#endif
}

//�����ж�
void porte_handle()
{
  //Flag_Smitte = 1; //���÷��ͱ�־
}

//nrf24l01�����ж�
void portb_handle()
{
//#if NRF24L01_WORKMODE == NRF24L01_RX_WORKMODE
  //Nrf24l01_RecvFrame(rx_buf, NRF24L01_PLOAD_LEN);
//#endif
}


/*
*
*��������:   ��nrf24l01�Ļ�������д�����ݣ������ؼĴ�����״̬
*��������:   reg    nrf24l01�Ĵ���
*            *pbuf  ָ��洢д�����ݵ��׵�ַ
*            len  ��ȡ���ĳ��ȣ���λ�ֽ�
*��������ֵ: ���ص�ǰ�Ĵ�����״̬
*/
u8 Nrf24l01_WriteBuf(u8 reg,u8 *pbuf ,u8 len)
{
  u8 status,i;
  
  status = LPLD_SPI_Master_WriteRead(SPI0, reg, SPI_PCS0, SPI_PCS_ASSERTED); //����SPI0��PCS0��֡������Ϻ�PCS���ֵ͵�ƽ                                     
  
  for(i = 0;i < len;i++) 
  { 	  
    if( i == (len-1) )
    {
      LPLD_SPI_Master_WriteRead(SPI0,*pbuf++,SPI_PCS0,SPI_PCS_INACTIVE);//�����һ�����ݷ�����ϣ�PCS����
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
  // оƬ�ϵ縴λ��
  // �ֱ��ȡNRF24L01_RX_ADDR_P0��NRF24L01_RX_ADDR_P1��NRF24L01_TX_ADDR��ֵ
  // �鿴��������
  // NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
  // NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
  // NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
  // �����ȷ֤��SPI��дû�����⣬��֮��Ȼ
  Nrf24l01_CheckID();
  
  Temp=Nrf24l01_WriteReg(NRF24L01_FLUSE_TX,0xFF);
  
  Temp=Nrf24l01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_TX_ADDR,    TX_ADDRESS, NRF24L01_TX_ADR_LEN);
  
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_AA, 0x01);       //Ƶ��0�Զ�,ACKӦ������
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_RXADDR, 0x01);   //������յ�ַֻ��Ƶ��0      
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_SETUP_RETR, 0x1a);  //�����Զ��ط�ʱ��ʹ�����500us + 86us, 10 retrans...
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_CH, 40);         //�����ŵ�����Ϊ2.4GHZ���շ�����һ��
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_SETUP, 0x0F);    //���÷�������Ϊ1MHZ�����书��Ϊ���ֵ0dB
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_CONFIG, 0x0E);      //ʹ��CRCУ�飬ʹ��TX�������ϵ� 
   
  NRF24L01_CE_H;
  
  Nrf24l01_DelayUs(2000);
  
  return Temp;
}


u8 Nrf24l01_RxModeInit(void) 
{ 
  u8 Temp;
  
  NRF24L01_CE_L; 
  // оƬ�ϵ縴λ��
  // �ֱ��ȡNRF24L01_RX_ADDR_P0��NRF24L01_RX_ADDR_P1��NRF24L01_TX_ADDR��ֵ
  // �鿴��������
  // NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
  // NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
  // NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
  // �����ȷ֤��SPI��дû�����⣬��֮��Ȼ
  Nrf24l01_CheckID();
 
  Temp=Nrf24l01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_RX_ADDR_P0, RX_ADDRESS, NRF24L01_RX_ADR_LEN); 
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RX_PW_P0, NRF24L01_PLOAD_LEN);
  
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_AA, 0x01);      //Ƶ��0�Զ�,ACKӦ������      
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_RXADDR, 0x01);  //������յ�ַֻ��Ƶ��0 
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_SETUP_RETR, 0x1a); // 500us + 86us, 10 retrans... 	
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_CH, 40);        //�����ŵ�����Ϊ2.4GHZ���շ�����һ��  
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_SETUP, 0x0F);   //���÷�������Ϊ1MHZ�����书��Ϊ���ֵ0dB
  Temp=Nrf24l01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_CONFIG, 0x0F);     //ʹ��CRCУ�飬ʹ��RX�������ϵ� 
  
  NRF24L01_CE_H;  
  
  Nrf24l01_DelayUs(2000);
  
  return Temp;
}

/*
* �������ܣ�   ͨ�����߷���һ֡����
* ��������:   *data    ָ���û��������ݻ�����
*             len      �������ݳ��ȣ����ֽ�Ϊ��λ
*/
void Nrf24l01_SendFrame(u8 *data, u8 len)
{
  u8 Status;
  
  NRF24L01_CE_L; //����CE����Nrf24l01����Standby-Iģʽ
  Nrf24l01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_RX_ADDR_P0, TX_ADDRESS, NRF24L01_RX_ADR_LEN); // װ�ؽ��ն˵�ַ
  Nrf24l01_WriteBuf(NRF24L01_WR_TX_PLOAD, data, len); 			   // װ������	
  NRF24L01_CE_H;  
  
  while(1)
  {
    Status = Nrf24l01_ReadReg(NRF24L01_STATUS);           //��ȡ״̬�Ĵ���
    Nrf24l01_WriteReg(NRF24L01_WRITE_REG+NRF24L01_STATUS,Status);  //���״̬�����
    if(Status & NRF24L01_STATUS_TX_DS)                //���������ϣ������յ�ACK���ñ�־λ��λ
    {
      Nrf24l01_WriteReg(NRF24L01_FLUSE_TX,0xFF);          //��շ��ͻ�����
#if(defined(DEBUG_PRINT))  
      printf("Nrf24l01 Send Succeed!!\r\n");
#endif
      break;
    }
    else if(Status & NRF24L01_STATUS_MAX_RT)          //����ﵽ��η��͵����ֵ�����ڼ�û�н��յ�ACK
    { 
#if(defined(DEBUG_PRINT)) 
      printf("Nrf24l01 Send Error!!\r\n");
#endif
      break;
    }
  }
}


/*
* �������ܣ�   ͨ�����߽���һ֡����
* ��������:   *data    ָ���û��������ݻ�����
*             len      �������ݳ��ȣ����ֽ�Ϊ��λ
*/
void Nrf24l01_RecvFrame(u8 *data, u8 len)
{
  u8 Status;
  Status = Nrf24l01_ReadReg(NRF24L01_STATUS);                  //��ȡ״̬�Ĵ���
  Nrf24l01_ReadBuf(NRF24L01_RD_RX_PLOAD,data,len);   //��ȡ��������ֵ
#if(defined(DEBUG_PRINT))  
  printf("Nrf24l01 rev Succeed!!\r\n"); 
#endif
  Nrf24l01_WriteReg(NRF24L01_WRITE_REG+NRF24L01_STATUS,Status);         //���״̬�����
  Status = 0;
}

/*
* �������ܣ�   ���ڼ�鸴λ���NRF24L01_RX_ADDR_P1��NRF24L01_RX_ADDR_P0��NRF24L01_TX_ADDR��ֵ�Ƿ���ȷ
*              ��ֵ���ڷ�ӳSPI�����Ƿ�������ȷ
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
*�������ܣ�  ��nrf24l01�Ļ������ж�ȡ���ݣ������ؼĴ�����״̬
*��������:   reg    nrf24l01�Ĵ���
*            *pBUF  ָ��洢�������ݵ��׵�ַ
*            len  ��ȡ���ĳ��ȣ���λ�ֽ�
*��������ֵ�����ص�ǰ�Ĵ�����״̬
*/
static u8 Nrf24l01_ReadBuf(u8 reg,u8 *pbuf,u8 len)
{
  u8 Status,i;
  
  Status = LPLD_SPI_Master_WriteRead(SPI0,reg,SPI_PCS0,SPI_PCS_ASSERTED); //����SPI0��PCS0��֡������Ϻ�PCS���ֵ͵�ƽ  
  
  for(i = 0 ;i < len ;i++)
  {
    if( i == (len-1) )
    {
      pbuf[i] = LPLD_SPI_Master_WriteRead(SPI0,0xFF,SPI_PCS0,SPI_PCS_INACTIVE);//����������ʱ�򣬷���dummy���ݼ��ɣ�
                                                      //�����һ�����ݷ�����Ϻ�PCS����
    }
    else
    {
      pbuf[i] = LPLD_SPI_Master_WriteRead(SPI0,0xFF,SPI_PCS0,SPI_PCS_ASSERTED);
    }
  }
  return Status ;
}

/*
*�������ܣ���nrf24l01�Ĵ�����д�����ݣ������ؼĴ�����״̬/��nrf24l01д��ָ��
*��������: reg    nrf24l01�Ĵ���
*          value  �Ĵ�������ֵ
*��������ֵ: ���ص�ǰ�Ĵ�����״̬
*/
static u8 Nrf24l01_WriteReg(u8 reg,u8 value)
{
  u8 Status;
  Status = LPLD_SPI_Master_WriteRead(SPI0,reg,SPI_PCS0,SPI_PCS_ASSERTED);    //ָ���Ĵ���
  LPLD_SPI_Master_WriteRead(SPI0,value,SPI_PCS0,SPI_PCS_INACTIVE);  //��Ĵ�����д�����ݣ����ݷ�����Ϻ�PCS����
  return Status;
}

/*
*�������ܣ���nrf24l01�Ĵ��������ݣ������ؼĴ�����״̬
*��������:    reg    nrf24l01�Ĵ���
*��������ֵ: ���ص�ǰ�Ĵ�������ֵ
*/
static u8 Nrf24l01_ReadReg(u8 reg)
{
  u8 temp;
  LPLD_SPI_Master_WriteRead(SPI0,reg,SPI_PCS0,SPI_PCS_ASSERTED);  //ָ���Ĵ���
  temp = LPLD_SPI_Master_WriteRead(SPI0,0xFF,SPI_PCS0,SPI_PCS_INACTIVE); //��Ĵ�����д�����ݣ����ݷ�����Ϻ�PCS����
  return temp;
}

/*
* �������ܣ�  ������ʱ ��С10us
* ��������:   t ��ʱʱ
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