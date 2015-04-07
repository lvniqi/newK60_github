#include "encoder.h"

#define COUNTSADDR   0x4004000C
#define COUNTDADDR   0x4004000C

void encoder_Init(void)
{
  //����DMA��׽���������ź� (ÿ���˿�ֻ�ܲ���һ·DMA Ҳ����˵DMA�������ֻ�ܲ���5·(PTA,PTB,PTC,PTD,PTE))
  DMA_PulseCountInit(DMAChannel, BIANMAQI, BIANMAQIPIN);
}

u32 DMA_PORT_TriggerSourceTable[] = 
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
void DMA_PulseCountInit(u32 dmaChl, u32 instance, u32 pinIndex)
{
  
  //����2·���� ����ΪDMA����
  GPIO_QuickInit(instance, pinIndex, kGPIO_Mode_IFT);
  //����ΪDMA�����ش���
  GPIO_ITDMAConfig(instance, pinIndex, kGPIO_DMA_RisingEdge, true);

  DMA_InitTypeDef DMA_InitStruct; //DMA�ṹ��������
  DMA_InitStruct.chl = dmaChl; //ѡ��DMAͨ��
  DMA_InitStruct.chlTriggerSource = DMA_PORT_TriggerSourceTable[instance]; //ѡ��DMAͨ������Դ
  DMA_InitStruct.triggerSourceMode = kDMA_TriggerSource_Normal; //ѡ��DMAͨ������ģʽ
  DMA_InitStruct.minorLoopByteCnt = 1; //MINOR LOOP��һ�δ�����ֽ���
  DMA_InitStruct.majorLoopCnt = DMA_CITER_ELINKNO_CITER_MASK; //MAJOR LOOPѭ������

  //Դ��ַ����
  DMA_InitStruct.sAddr = (u32)COUNTSADDR; //����Դ��ַ
  DMA_InitStruct.sLastAddrAdj = 0; //����MAJOR LOOPѭ����ɺ� Դ��ַƫ����
  DMA_InitStruct.sAddrOffset = 0; //DMAÿ�ζ�ȡsAddr֮�� sAddr��ƫ���� �����ɸ�
  DMA_InitStruct.sDataWidth = kDMA_DataWidthBit_8; //����Դ��ַ���ݿ�� 8 16 32
  DMA_InitStruct.sMod = kDMA_ModuloDisable; //Modulo ����

  //Ŀ���ַ����
  DMA_InitStruct.dAddr = (u32)COUNTDADDR; //����Ŀ���ַ
  DMA_InitStruct.dLastAddrAdj = 0;
  DMA_InitStruct.dAddrOffset = 0; 
  DMA_InitStruct.dDataWidth = kDMA_DataWidthBit_8;
  DMA_InitStruct.dMod = kDMA_ModuloDisable;
  
  //������� ��ʼ��DMA
  DMA_Init(&DMA_InitStruct);
  
  //��������
  DMA_EnableRequest(dmaChl);
}

u32 DMA_count_get(u32 dmaChl)
{
  u32 Ch1Value;
  //����DMA �ǵ������� ������Ҫ�����ֵ��һ��
  //dmaCh1
  Ch1Value = DMA_CITER_ELINKNO_CITER_MASK - DMA_GetMajorLoopCount(dmaChl);
  //�������
  DMA_CancelTransfer();
  DMA_SetMajorLoopCounter(dmaChl, DMA_CITER_ELINKNO_CITER_MASK);
  //��ʼ��һ�δ���
  DMA_EnableRequest(dmaChl);
  
  return Ch1Value;
}

void MyDMA_Init(u32 dmaChl, u32 instance)
{
  //��DMAʱ��
  SIM->SCGC7&= ~SIM_SCGC7_DMA_MASK;
  SIM->SCGC7|= SIM_SCGC7_DMA_MASK;
  //��DMAMUXʱ��
  SIM->SCGC6&= ~SIM_SCGC6_DMAMUX_MASK;
  SIM->SCGC6|= SIM_SCGC6_DMAMUX_MASK;
  
  //����DMA����Դ
  DMA0->ERQ&= ~(1<<dmaChl); //�����DMAͨ������
  DMAMUX->CHCFG[dmaChl]&= ~DMAMUX_CHCFG_SOURCE_MASK;
  DMAMUX->CHCFG[dmaChl]|= DMAMUX_CHCFG_SOURCE(instance);
  //TCD transfer control description
  DMA0->TCD[dmaChl].ATTR=0; //DMA transfer attribute DMA�����������üĴ��� ����
  DMA0->TCD[dmaChl].CSR = 0; //DMA control and status register DMA����״̬�Ĵ��� ����
  
  DMA0->TCD[dmaChl].NBYTES_MLNO = 1; //minor loop cnt��һ�δ�����ֽ���
  DMA0->TCD[dmaChl].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER_MASK; //major loopѭ������
  DMA0->TCD[dmaChl].BITER_ELINKNO = DMA_BITER_ELINKNO_ELINK_MASK; //major loopѭ������
  
}
