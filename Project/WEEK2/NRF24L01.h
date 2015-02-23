#ifndef __NRF24L01_H
#define __NRF24L01_H
//pull测试
//********************************************************************************************************************// 
//选择编译方式 决定当前nRF24L01的工作方式
#define NRF24L01_RX_WORKMODE      (0) //发送程序
#define NRF24L01_TX_WORKMODE      (1) //接收程序
#define NRF24L01_WORKMODE         NRF24L01_TX_WORKMODE  

// nRF24L01相关参数定义
#define NRF24L01_PLOAD_LEN        (4) //数据载荷长度
#define NRF24L01_TX_ADR_LEN       (5)  //TX地址长度
#define NRF24L01_RX_ADR_LEN       (5)  //RX地址长度
#define NRF24L01_CE_H             LPLD_GPIO_Set_b(PTB,0,OUTPUT_H) //模块使能，高电平使能
#define NRF24L01_CE_L             LPLD_GPIO_Set_b(PTB,0,OUTPUT_L) //芯片禁止工作
//********************************************************************************************************************// 
// nRF24L01指令
#define NRF24L01_READ_REG         0x00   // 读配置寄存器
#define NRF24L01_WRITE_REG        0x20   // 写配置寄存器
#define NRF24L01_RD_RX_PLOAD      0x61   // 读取RX FIFO中的数据
#define NRF24L01_WR_TX_PLOAD      0xA0   // 向TX FIFO中写入数据
#define NRF24L01_FLUSE_TX         0xE1   // 清除TX FIFO中的数据 应用于发射模式下
#define NRF24L01_FLUSE_RX         0xE2   // 清除RX FIFO中的数据 应用于接收模式下
#define NRF24L01_REUSE_TX_PL      0xE3   // 重新使用上一包有效数据
#define NRF24L01_NOP              0xFF   // 无操作 用于读STATUS寄存器
//********************************************************************************************************************// 
// nRF24L01寄存器(地址)
#define NRF24L01_CONFIG           0x00  //配置发送状态，CRC校验模式以及发收发状态响应方式
#define NRF24L01_EN_AA            0x01  //自动应答功能设置
#define NRF24L01_EN_RXADDR        0x02  //可用信道设置
#define NRF24L01_SETUP_AW         0x03  //收发地址宽度设置
#define NRF24L01_SETUP_RETR       0x04  //自动重发功能设设置
#define NRF24L01_RF_CH            0x05  //工作信道设定
#define NRF24L01_RF_SETUP         0x06  //发射速率、功耗功能设置
#define NRF24L01_STATUS           0x07  //状态寄存器
#define NRF24L01_OBSERVE_TX       0x08  //发送监测功能
#define NRF24L01_CD               0x09  //地址检测 
#define NRF24L01_RX_ADDR_P0       0x0A  //频道0接收数据地址
#define NRF24L01_RX_ADDR_P1       0x0B  //频道1接收数据地址
#define NRF24L01_RX_ADDR_P2       0x0C  //频道2接收数据地址
#define NRF24L01_RX_ADDR_P3       0x0D  //频道3接收数据地址
#define NRF24L01_RX_ADDR_P4       0x0E  //频道4接收数据地址
#define NRF24L01_RX_ADDR_P5       0x0F  //频道5接收数据地址
#define NRF24L01_TX_ADDR          0x10  //发送地址寄存器
#define NRF24L01_RX_PW_P0         0x11  //接收频道0接收数据长度
#define NRF24L01_RX_PW_P1         0x12  //接收频道1接收数据长度
#define NRF24L01_RX_PW_P2         0x13  //接收频道2接收数据长度
#define NRF24L01_RX_PW_P3         0x14  //接收频道3接收数据长度
#define NRF24L01_RX_PW_P4         0x15  //接收频道4接收数据长度
#define NRF24L01_RX_PW_P5         0x16  //接收频道5接收数据长度
#define NRF24L01_FIFO_STATUS      0x17  //FIFO栈入栈出状态寄存器设置
//nRF24L01状态寄存器值
#define NRF24L01_STATUS_MAX_RT    0x10 //达到最大重发状态
#define NRF24L01_STATUS_TX_DS     0x20 //发送成功
#define NRF24L01_STATUS_RX_DR     0x40 //接收成功

/********************************************************************/
//nRF24l01内部函数
static u8 Nrf24l01_WriteBuf(u8 reg,u8 *pbuf ,u8 len);
static u8 Nrf24l01_ReadBuf(u8 reg,u8 *pbuf,u8 len);
static u8 Nrf24l01_WriteReg(u8 reg,u8 value);
static u8 Nrf24l01_ReadReg(u8 reg);
static u8 Nrf24l01_CheckID(void);
static void Nrf24l01_DelayUs(u16 t);
//nRF24l01接口函数
void Nrf24l01_Init(void);
u8 Nrf24l01_TxModeInit(void);
u8 Nrf24l01_RxModeInit(void);
void Nrf24l01_SendFrame(u8 *data, u8 len);
void Nrf24l01_RecvFrame(u8 *data, u8 len);
//中断函数声明
void porte_handle(void);
void portb_handle(void);

#endif //__NRF24L01_H
