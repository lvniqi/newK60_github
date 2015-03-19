/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_eDAM.c
 * ��;: eDMA�ײ�ģ����غ���
 * ����޸�����: 20120321
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
*/

#ifndef __HAL_EDMA_H__
#define __HAL_EDMA_H__
//=====================================
//      DMA request sources Number
//      �����DMA�����
//=====================================
#define UART0_REV_DMAREQ  2
#define UART0_TRAN_DMAREQ 3
#define UART1_REV_DMAREQ  4
#define UART1_TRAN_DMAREQ 5
#define UART2_REV_DMAREQ  6
#define UART2_TRAN_DMAREQ 7
#define UART3_REV_DMAREQ  8
#define UART3_TRAN_DMAREQ 9
#define UART4_REV_DMAREQ  10
#define UART4_TRAN_DMAREQ 11
#define UART5_REV_DMAREQ  12
#define UART5_TRAN_DMAREQ 13
#define I2S0_REV_DMAREQ   14
#define I2S0_TRAN_DMAREQ  15
#define SPI0_REV_DMAREQ   16
#define SPI0_TRAN_DMAREQ  17
#define SPI1_REV_DMAREQ   18
#define SPI1_TRAN_DMAREQ  19
#define I2C0_DMAREQ       22
#define I2C1_DMAREQ       23
#define FTM0_CH0_DMAREQ   24
#define FTM0_CH1_DMAREQ   25
#define FTM0_CH2_DMAREQ   26
#define FTM0_CH3_DMAREQ   27
#define FTM0_CH4_DMAREQ   28
#define FTM0_CH5_DMAREQ   29
#define FTM0_CH6_DMAREQ   30
#define FTM0_CH7_DMAREQ   31
#define FTM1_CH0_DMAREQ   32
#define FTM1_CH1_DMAREQ   33
#define FTM2_CH0_DMAREQ   34
#define FTM2_CH1_DMAREQ   35
#define FTM3_CH0_DMAREQ   36
#define FTM3_CH1_DMAREQ   37
#define FTM3_CH2_DMAREQ   38
#define FTM1_CH3_DMAREQ   39  
#define ADC0_DMAREQ       40
#define ADC1_DMAREQ       41
#define CMP0_DMAREQ       42
#define CMP1_DMAREQ       43
#define CMP2_DMAREQ       44
#define DAC0_DMAREQ       45
#define DAC1_DMAREQ       46
#define CMT_DMAREQ        47
#define PDB_DMAREQ        48
#define PORTA_DMAREQ      49
#define PORTB_DMAREQ      50
#define PORTC_DMAREQ      51
#define PORTD_DMAREQ      52
#define PORTE_DMAREQ      53
#define FTM3_CH4_DMAREQ   54
#define FTM3_CH5_DMAREQ   55
#define FTM3_CH6_DMAREQ   56
#define FTM3_CH7_DMAREQ   57
  
//===========================================
//      DMA ��������ݳ���
//      Դ��ַ���ݳ��ȷ�Ϊ��  8bit��16bit��32bit
//      Ŀ�ĵ�ַ���ݳ��ȷ�Ϊ��8bit��16bit��32bit
//===========================================
#define DMA_SRC_8BIT   DMA_ATTR_SSIZE(0)
#define DMA_SRC_16BIT  DMA_ATTR_SSIZE(1)
#define DMA_SRC_32BIT  DMA_ATTR_SSIZE(2)

#define DMA_DST_8BIT   DMA_ATTR_DSIZE(0)
#define DMA_DST_16BIT  DMA_ATTR_DSIZE(1)
#define DMA_DST_32BIT  DMA_ATTR_DSIZE(2)
//==========================================
//      ִ����һ��DMA�����Ժ󣬵�ַ�Ƿ�ƫ��
//      =1 ��ַ��һ
//      =0 ��ַ���ۼ�
//==========================================
#define ADDR_INCREASE  1
#define ADDR_HOLD      0

//==========================================
//      ����DMAͨ����
//==========================================
#define  DMA_CH0 0
#define  DMA_CH1 1
#define  DMA_CH2 2
#define  DMA_CH3 3
#define  DMA_CH4 4
#define  DMA_CH5 5
#define  DMA_CH6 6
#define  DMA_CH7 7
#define  DMA_CH8 8
#define  DMA_CH9 9
#define  DMA_CH10 10
#define  DMA_CH11 11
#define  DMA_CH12 12
#define  DMA_CH13 13
#define  DMA_CH14 14
#define  DMA_CH15 15


typedef void (*DMA_ISR_CALLBACK)(void);


typedef struct 
{
    uint8  Channelx;           //ͨ�����
    uint8  Peri_DmaReq;        //�����DMA�����
    uint16 Minor_loop_Length;  //�������ݳ��� 
    uint32 Trans_bytesNum;     //ÿһ��DMA����󣬴�����ֽڸ���
    
    uint32 Source_Addr ;    //Դ��ַ
    uint8  Source_Size ;    //Դ���ݵĿ�� ��ÿһ�δ������ݵĿ�� 8bit��16bit��32bit�������ݿ��
    uint8  Source_Addr_inc; //��ִ����һ����ַ֮�󣬵�ַ�Ƿ��ۼ� 1���ۼ� 0:���ۼ�
    uint32 Source_Adj_Addr; //�����ļ���������major iteration count���ﵽ���Ƿ����¸���Դ��ַ
    
    uint32 Dest_Addr ;      //Ŀ�ĵ�ַ
    uint8  Dest_Size ;      //Ŀ�ĵ�ַ�Ŀ�� ��ÿһ�δ������ݵĿ�� 8bit��16bit��32bit�������ݿ��
    uint8  Dest_Addr_inc;   //��ִ����һ����ַ֮�󣬵�ַ�Ƿ��ۼ� 1���ۼ� 0:���ۼ�
    uint32 Dest_Adj_Addr;   //�����ļ���������major iteration count���ﵽ���Ƿ����¸���Ŀ�ĵ�ַ
    
    uint8  Dma_irqc;        //Dma�ж�ѡ��  
                              //00 �ر��ж�  
                              //01 ��ѭ����������������һ�룬�����ж�
                              //02 ��ѭ������������������ʱ�������ж�
       
    uint8  Dma_AutoClose;    //����ѭ�����������ٵ����ʱ���Ƿ�ر�DMA
                               //00 �����Զ��ر�
                               //01 �ر��Զ��ر�
    DMA_ISR_CALLBACK isr_func;  //����ص�����
      
}LPLD_eDMA_Cfg_t;



uint8 LPLD_DMA_Init(LPLD_eDMA_Cfg_t*);
void LPLD_DMA_EnableReq(uint8, uint8);
void LPLD_DMA_Reload(uint8, uint32, uint32, uint16);
void LPLD_DMA_Isr(void);

#endif