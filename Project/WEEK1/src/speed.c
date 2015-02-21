#include "speed.h"

void SPEED_Init(void)
{
  FTM_PWM_QuickInit(FTM0_CH6_PD06, kPWM_EdgeAligned, 10000);
  FTM_PWM_QuickInit(FTM0_CH7_PD07, kPWM_EdgeAligned, 10000);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
  Speed_Sequeue_Init();
}

void SPEED_Stop(void)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

void SPEED_Control(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, duty);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

void PIT1_Isr(void)
{
  SPEED_CURR = DMA_Count_Get(SPEED_COUNTER1_addr);
  if(STOP_FLAG < 100)
  {
  SPEED_Control(SPEED_SET(100));
  }
  SPEED_COUNTER_Show(SPEED_CURR);
}