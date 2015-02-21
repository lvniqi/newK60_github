#include "speed_counter.h"

/********************************************************************
 * ���� : Pit0Init
 * ���� : 1msʱ�ӵ��ȶ�ʱ��
 * ���� : ��
 * ��� : ��
 ***********************************************************************/
void PIT1_Init(void)
{
  PIT_QuickInit(HW_PIT_CH1, 10000);
  PIT_CallbackInstall(HW_PIT_CH1, PIT1_Isr);
  PIT_ITDMAConfig(HW_PIT_CH1,kPIT_IT_TOF,ENABLE);
}
void SPEED_COUNTER_Init(void)
{
  DMA_PulseCountInit(HW_DMA_CH0, HW_GPIOD, 0);
  PIT1_Init();
}
static const uint32_t DMA_PORT_TriggerSourceTable[] = 
{
  PORTA_DMAREQ,
  PORTB_DMAREQ,
  PORTC_DMAREQ,
  PORTD_DMAREQ,
  PORTE_DMAREQ,
};
/**
 * @brief  DMA �������������ʼ��     
 * @param  dmaChl :DMAͨ����
 * @param  instance :�˿ں� ����HW_GPIOA
 * @param  pinIndex :���ź�
 * @retval None
 */
void DMA_PulseCountInit(uint32_t dmaChl, uint32_t instance, uint32_t pinIndex)
{
  //����2·���� ����ΪDMA����
  GPIO_QuickInit(instance, pinIndex, kGPIO_Mode_IFT);
  //����ΪDMA�����ش���
  GPIO_ITDMAConfig(instance, pinIndex, kGPIO_DMA_RisingEdge, true);
  //����DMA
  static uint8_t dummy1, dummy2;

  DMA_InitTypeDef DMA_InitStruct; //DMA�ṹ��������
  DMA_InitStruct.chl = dmaChl; //ѡ��DMAͨ��
  DMA_InitStruct.chlTriggerSource = DMA_PORT_TriggerSourceTable[instance]; //ѡ��DMAͨ������Դ
  DMA_InitStruct.triggerSourceMode = kDMA_TriggerSource_Normal; //ѡ��DMAͨ������ģʽ
  DMA_InitStruct.minorLoopByteCnt = 1; //MINOR LOOP��һ�δ�����ֽ���
  DMA_InitStruct.majorLoopCnt = DMA_CITER_ELINKNO_CITER_MASK; //MAJOR LOOPѭ������

  //Դ��ַ����
  DMA_InitStruct.sAddr = (uint32_t)&dummy1; //����Դ��ַ
  DMA_InitStruct.sLastAddrAdj = 0; //����MAJOR LOOPѭ����ɺ� Դ��ַƫ����
  DMA_InitStruct.sAddrOffset = 0; //DMAÿ�ζ�ȡsAddr֮�� sAddr��ƫ���� �����ɸ�
  DMA_InitStruct.sDataWidth = kDMA_DataWidthBit_8; //����Դ��ַ���ݿ�� 8 16 32
  DMA_InitStruct.sMod = kDMA_ModuloDisable; //Modulo ����

  //Ŀ���ַ����
  DMA_InitStruct.dAddr = (uint32_t)&dummy2; //����Ŀ���ַ
  DMA_InitStruct.dLastAddrAdj = 0;
  DMA_InitStruct.dAddrOffset = 0; 
  DMA_InitStruct.dDataWidth = kDMA_DataWidthBit_8;
  DMA_InitStruct.dMod = kDMA_ModuloDisable;
  
  //������� ��ʼ��DMA
  DMA_Init(&DMA_InitStruct);
  
  //��������
  DMA_EnableRequest(dmaChl);
}


u32 DMA_Count_Get(uint32_t dmaChl)
{
  u32 Ch1Value;
  /* ����DMA �ǵ������� ������Ҫ�����ֵ��һ�� */
  /* dmaCh1 */
  Ch1Value = DMA_CITER_ELINKNO_CITER_MASK - DMA_GetMajorLoopCount(dmaChl);
  /* ������� */
  DMA_CancelTransfer();
  DMA_SetMajorLoopCounter(dmaChl, DMA_CITER_ELINKNO_CITER_MASK);
  /* ��ʼ��һ�δ��� */
  DMA_EnableRequest(dmaChl);
  
  return Ch1Value;
}
void SPEED_COUNTER_Show(int speed)
{
  OLED_PrintShort(60,7,speed);
}