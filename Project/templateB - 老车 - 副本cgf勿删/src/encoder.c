#include "encoder.h"

#define COUNTSADDR   0x4004000C
#define COUNTDADDR   0x4004000C

void encoder_Init(void)
{
  //开启DMA捕捉引脚脉冲信号 (每个端口只能测量一路DMA 也就是说DMA脉冲最多只能测量5路(PTA,PTB,PTC,PTD,PTE))
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
 * @brief  DMA 用作脉冲计数初始化     
 * @param  dmaChl :DMA通道号
 * @param  instance :端口号 比如HW_GPIOA
 * @param  pinIndex :引脚号
 * @retval None
 */
void DMA_PulseCountInit(u32 dmaChl, u32 instance, u32 pinIndex)
{
  
  //开启2路引脚 配置为DMA触发
  GPIO_QuickInit(instance, pinIndex, kGPIO_Mode_IFT);
  //配置为DMA上升沿触发
  GPIO_ITDMAConfig(instance, pinIndex, kGPIO_DMA_RisingEdge, true);

  DMA_InitTypeDef DMA_InitStruct; //DMA结构变量申请
  DMA_InitStruct.chl = dmaChl; //选择DMA通道
  DMA_InitStruct.chlTriggerSource = DMA_PORT_TriggerSourceTable[instance]; //选择DMA通道触发源
  DMA_InitStruct.triggerSourceMode = kDMA_TriggerSource_Normal; //选择DMA通道触发模式
  DMA_InitStruct.minorLoopByteCnt = 1; //MINOR LOOP中一次传输的字节数
  DMA_InitStruct.majorLoopCnt = DMA_CITER_ELINKNO_CITER_MASK; //MAJOR LOOP循环次数

  //源地址配置
  DMA_InitStruct.sAddr = (u32)COUNTSADDR; //数据源地址
  DMA_InitStruct.sLastAddrAdj = 0; //所有MAJOR LOOP循环完成后 源地址偏移量
  DMA_InitStruct.sAddrOffset = 0; //DMA每次读取sAddr之后 sAddr的偏移量 可正可负
  DMA_InitStruct.sDataWidth = kDMA_DataWidthBit_8; //数据源地址数据宽度 8 16 32
  DMA_InitStruct.sMod = kDMA_ModuloDisable; //Modulo 设置

  //目标地址配置
  DMA_InitStruct.dAddr = (u32)COUNTDADDR; //数据目标地址
  DMA_InitStruct.dLastAddrAdj = 0;
  DMA_InitStruct.dAddrOffset = 0; 
  DMA_InitStruct.dDataWidth = kDMA_DataWidthBit_8;
  DMA_InitStruct.dMod = kDMA_ModuloDisable;
  
  //配置完毕 初始化DMA
  DMA_Init(&DMA_InitStruct);
  
  //启动传输
  DMA_EnableRequest(dmaChl);
}

u32 DMA_count_get(u32 dmaChl)
{
  u32 Ch1Value;
  //由于DMA 是倒计数的 所需需要用最大值减一下
  //dmaCh1
  Ch1Value = DMA_CITER_ELINKNO_CITER_MASK - DMA_GetMajorLoopCount(dmaChl);
  //清零计数
  DMA_CancelTransfer();
  DMA_SetMajorLoopCounter(dmaChl, DMA_CITER_ELINKNO_CITER_MASK);
  //开始下一次传输
  DMA_EnableRequest(dmaChl);
  
  return Ch1Value;
}

void MyDMA_Init(u32 dmaChl, u32 instance)
{
  //打开DMA时钟
  SIM->SCGC7&= ~SIM_SCGC7_DMA_MASK;
  SIM->SCGC7|= SIM_SCGC7_DMA_MASK;
  //打开DMAMUX时钟
  SIM->SCGC6&= ~SIM_SCGC6_DMAMUX_MASK;
  SIM->SCGC6|= SIM_SCGC6_DMAMUX_MASK;
  
  //配置DMA触发源
  DMA0->ERQ&= ~(1<<dmaChl); //先清除DMA通道请求
  DMAMUX->CHCFG[dmaChl]&= ~DMAMUX_CHCFG_SOURCE_MASK;
  DMAMUX->CHCFG[dmaChl]|= DMAMUX_CHCFG_SOURCE(instance);
  //TCD transfer control description
  DMA0->TCD[dmaChl].ATTR=0; //DMA transfer attribute DMA传输属性配置寄存器 清零
  DMA0->TCD[dmaChl].CSR = 0; //DMA control and status register DMA控制状态寄存器 清零
  
  DMA0->TCD[dmaChl].NBYTES_MLNO = 1; //minor loop cnt中一次传输的字节数
  DMA0->TCD[dmaChl].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER_MASK; //major loop循环次数
  DMA0->TCD[dmaChl].BITER_ELINKNO = DMA_BITER_ELINKNO_ELINK_MASK; //major loop循环次数
  
}
