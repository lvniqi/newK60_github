#ifndef __NRF24L01_H
#define __NRF24L01_H

//********************************************************************************************************************// 
//ѡ����뷽ʽ ������ǰnRF24L01�Ĺ�����ʽ
#define NRF24L01_RX_WORKMODE      (0) //���ͳ���
#define NRF24L01_TX_WORKMODE      (1) //���ճ���
#define NRF24L01_WORKMODE         NRF24L01_TX_WORKMODE  

// nRF24L01��ز�������
#define NRF24L01_PLOAD_LEN        (4) //�����غɳ���
#define NRF24L01_TX_ADR_LEN       (5)  //TX��ַ����
#define NRF24L01_RX_ADR_LEN       (5)  //RX��ַ����
#define NRF24L01_CE_H             LPLD_GPIO_Set_b(PTB,0,OUTPUT_H) //ģ��ʹ�ܣ��ߵ�ƽʹ��
#define NRF24L01_CE_L             LPLD_GPIO_Set_b(PTB,0,OUTPUT_L) //оƬ��ֹ����
//********************************************************************************************************************// 
// nRF24L01ָ��
#define NRF24L01_READ_REG         0x00   // �����üĴ���
#define NRF24L01_WRITE_REG        0x20   // д���üĴ���
#define NRF24L01_RD_RX_PLOAD      0x61   // ��ȡRX FIFO�е�����
#define NRF24L01_WR_TX_PLOAD      0xA0   // ��TX FIFO��д������
#define NRF24L01_FLUSE_TX         0xE1   // ���TX FIFO�е����� Ӧ���ڷ���ģʽ��
#define NRF24L01_FLUSE_RX         0xE2   // ���RX FIFO�е����� Ӧ���ڽ���ģʽ��
#define NRF24L01_REUSE_TX_PL      0xE3   // ����ʹ����һ����Ч����
#define NRF24L01_NOP              0xFF   // �޲��� ���ڶ�STATUS�Ĵ���
//********************************************************************************************************************// 
// nRF24L01�Ĵ���(��ַ)
#define NRF24L01_CONFIG           0x00  //���÷���״̬��CRCУ��ģʽ�Լ����շ�״̬��Ӧ��ʽ
#define NRF24L01_EN_AA            0x01  //�Զ�Ӧ��������
#define NRF24L01_EN_RXADDR        0x02  //�����ŵ�����
#define NRF24L01_SETUP_AW         0x03  //�շ���ַ�������
#define NRF24L01_SETUP_RETR       0x04  //�Զ��ط�����������
#define NRF24L01_RF_CH            0x05  //�����ŵ��趨
#define NRF24L01_RF_SETUP         0x06  //�������ʡ����Ĺ�������
#define NRF24L01_STATUS           0x07  //״̬�Ĵ���
#define NRF24L01_OBSERVE_TX       0x08  //���ͼ�⹦��
#define NRF24L01_CD               0x09  //��ַ��� 
#define NRF24L01_RX_ADDR_P0       0x0A  //Ƶ��0�������ݵ�ַ
#define NRF24L01_RX_ADDR_P1       0x0B  //Ƶ��1�������ݵ�ַ
#define NRF24L01_RX_ADDR_P2       0x0C  //Ƶ��2�������ݵ�ַ
#define NRF24L01_RX_ADDR_P3       0x0D  //Ƶ��3�������ݵ�ַ
#define NRF24L01_RX_ADDR_P4       0x0E  //Ƶ��4�������ݵ�ַ
#define NRF24L01_RX_ADDR_P5       0x0F  //Ƶ��5�������ݵ�ַ
#define NRF24L01_TX_ADDR          0x10  //���͵�ַ�Ĵ���
#define NRF24L01_RX_PW_P0         0x11  //����Ƶ��0�������ݳ���
#define NRF24L01_RX_PW_P1         0x12  //����Ƶ��1�������ݳ���
#define NRF24L01_RX_PW_P2         0x13  //����Ƶ��2�������ݳ���
#define NRF24L01_RX_PW_P3         0x14  //����Ƶ��3�������ݳ���
#define NRF24L01_RX_PW_P4         0x15  //����Ƶ��4�������ݳ���
#define NRF24L01_RX_PW_P5         0x16  //����Ƶ��5�������ݳ���
#define NRF24L01_FIFO_STATUS      0x17  //FIFOջ��ջ��״̬�Ĵ�������
//nRF24L01״̬�Ĵ���ֵ
#define NRF24L01_STATUS_MAX_RT    0x10 //�ﵽ����ط�״̬
#define NRF24L01_STATUS_TX_DS     0x20 //���ͳɹ�
#define NRF24L01_STATUS_RX_DR     0x40 //���ճɹ�

/********************************************************************/
//nRF24l01�ڲ�����
static u8 Nrf24l01_WriteBuf(u8 reg,u8 *pbuf ,u8 len);
static u8 Nrf24l01_ReadBuf(u8 reg,u8 *pbuf,u8 len);
static u8 Nrf24l01_WriteReg(u8 reg,u8 value);
static u8 Nrf24l01_ReadReg(u8 reg);
static u8 Nrf24l01_CheckID(void);
static void Nrf24l01_DelayUs(u16 t);
//nRF24l01�ӿں���
void Nrf24l01_Init(void);
u8 Nrf24l01_TxModeInit(void);
u8 Nrf24l01_RxModeInit(void);
void Nrf24l01_SendFrame(u8 *data, u8 len);
void Nrf24l01_RecvFrame(u8 *data, u8 len);
//�жϺ�������
void porte_handle(void);
void portb_handle(void);

#endif //__NRF24L01_H