#include "speed_counter.h"

/********************************************************************
 * 名称 : Pit0Init
 * 功能 : 1ms时钟调度定时器
 * 输入 : 无
 * 输出 : 无
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
 * @brief  DMA 用作脉冲计数初始化     
 * @param  dmaChl :DMA通道号
 * @param  instance :端口号 比如HW_GPIOA
 * @param  pinIndex :引脚号
 * @retval None
 */
void DMA_PulseCountInit(uint32_t dmaChl, uint32_t instance, uint32_t pinIndex)
{
  //开启2路引脚 配置为DMA触发
  GPIO_QuickInit(instance, pinIndex, kGPIO_Mode_IFT);
  //配置为DMA上升沿触发
  GPIO_ITDMAConfig(instance, pinIndex, kGPIO_DMA_RisingEdge, true);
  //配置DMA
  static uint8_t dummy1, dummy2;

  DMA_InitTypeDef DMA_InitStruct; //DMA结构变量申请
  DMA_InitStruct.chl = dmaChl; //选择DMA通道
  DMA_InitStruct.chlTriggerSource = DMA_PORT_TriggerSourceTable[instance]; //选择DMA通道触发源
  DMA_InitStruct.triggerSourceMode = kDMA_TriggerSource_Normal; //选择DMA通道触发模式
  DMA_InitStruct.minorLoopByteCnt = 1; //MINOR LOOP中一次传输的字节数
  DMA_InitStruct.majorLoopCnt = DMA_CITER_ELINKNO_CITER_MASK; //MAJOR LOOP循环次数

  //源地址配置
  DMA_InitStruct.sAddr = (uint32_t)&dummy1; //数据源地址
  DMA_InitStruct.sLastAddrAdj = 0; //所有MAJOR LOOP循环完成后 源地址偏移量
  DMA_InitStruct.sAddrOffset = 0; //DMA每次读取sAddr之后 sAddr的偏移量 可正可负
  DMA_InitStruct.sDataWidth = kDMA_DataWidthBit_8; //数据源地址数据宽度 8 16 32
  DMA_InitStruct.sMod = kDMA_ModuloDisable; //Modulo 设置

  //目标地址配置
  DMA_InitStruct.dAddr = (uint32_t)&dummy2; //数据目标地址
  DMA_InitStruct.dLastAddrAdj = 0;
  DMA_InitStruct.dAddrOffset = 0; 
  DMA_InitStruct.dDataWidth = kDMA_DataWidthBit_8;
  DMA_InitStruct.dMod = kDMA_ModuloDisable;
  
  //配置完毕 初始化DMA
  DMA_Init(&DMA_InitStruct);
  
  //启动传输
  DMA_EnableRequest(dmaChl);
}


u32 DMA_Count_Get(uint32_t dmaChl)
{
  u32 Ch1Value;
  /* 由于DMA 是倒计数的 所需需要用最大值减一下 */
  /* dmaCh1 */
  Ch1Value = DMA_CITER_ELINKNO_CITER_MASK - DMA_GetMajorLoopCount(dmaChl);
  /* 清零计数 */
  DMA_CancelTransfer();
  DMA_SetMajorLoopCounter(dmaChl, DMA_CITER_ELINKNO_CITER_MASK);
  /* 开始下一次传输 */
  DMA_EnableRequest(dmaChl);
  
  return Ch1Value;
}
void SPEED_COUNTER_Show(int speed)
{
  OLED_PrintShort(60,7,speed);
}