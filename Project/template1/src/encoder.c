#include "encoder.h"

void encoder_Init(void)
{
  //����DMA��׽���������ź� (ÿ���˿�ֻ�ܲ���һ·DMA Ҳ����˵DMA�������ֻ�ܲ���5·(PTA,PTB,PTC,PTD,PTE))
  DMA_PulseCountInit(DMALEFT, BIANMAQILEFT, BIANMAQILEFTPIN);
  DMA_PulseCountInit(DMARIGHT, BIANMAQIRIGHT, BIANMAQIRIGHTPIN);
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
static void DMA_PulseCountInit(uint32_t dmaChl, uint32_t instance, uint32_t pinIndex)
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

u32 DMA_count_get(uint32_t dmaChl)
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
