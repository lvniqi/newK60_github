#include "init.h"
u32 RunTime = 0;
float abs(float a){
  if (a > 0)
    return a;
  else
    return  - a;
}

/********************************************************************
 * 名称 : Pit0Init
 * 功能 : 1ms时钟调度定时器
 * 输入 : 无
 * 输出 : 无
 ***********************************************************************/
void BaseTimer_Init(void){
  PIT_QuickInit(HW_PIT_CH0, 1000);
  PIT_CallbackInstall(HW_PIT_CH0, BaseTimer);
  PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF, ENABLE);
}

/********************************************************************
 * 名称 : BaseTimer
 * 功能 : 时钟调度定时器
 * 输入 : 无
 * 输出 : 无
 ***********************************************************************/
void BaseTimer(void){
  u8 i;
  for (i = 0; i < THREAD_NUM; i++){
    if ((thread + i)->count > 0){
      (thread + i)->count -= 1;
    }
    else{
      (thread + i)->ready = 1;
      (thread + i)->count = ((thread + i)->load - 1);
    }
  }
}

/********************************************************************
 * 名称 : beep_Init
 * 功能 : 蜂鸣器初始化
 * 输入 : 无
 * 输出 : 无
 ***********************************************************************/
void beep_Init(void){
  GPIO_QuickInit(HW_GPIOD, 10, kGPIO_Mode_OPP);
  GPIO_WriteBit(HW_GPIOD, 10, 0); //蜂鸣器初始化输出为0
}
