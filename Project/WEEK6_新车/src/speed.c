#include "speed.h"
#include "angle.h"
void SPEED_Init(void){
  FTM_PWM_QuickInit(FTM0_CH6_PD06, kPWM_EdgeAligned, 10000);
  FTM_PWM_QuickInit(FTM0_CH7_PD07, kPWM_EdgeAligned, 10000);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 1000);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
  SPEED_COUNTER_Init(); //±àÂëÆ÷³õÊ¼»¯
  Speed_Sequeue_Init();
}

void SPEED_Stop(void){
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

void SPEED_Control(u32 duty){
  if(duty >0){
    FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, duty);
    FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
  }else{
    FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
    FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, -duty);
  }
}

void PIT1_Isr(void){
  SPEED_CURR = DMA_Count_Get(SPEED_COUNTER1_addr);
  //int j = abs(Sequeue_Get_Rear(&ANGLE_SEQ) - ANGLE_MID) / 140;
  if (STOP_FLAG < 18){
    //SPEED_Control(SPEED_SET(140-j));
    //SPEED_Control(SPEED_SET(40-j));
    //SPEED_Control(SPEED_SET(170-j));
    u32 sp_expect;
    if(ANGLE_SEQ.count>40){
      sp_expect = 80;
    }
    else{
      sp_expect=(u32)((170-ANGLE_SEQ.count)*((ADCDATA.h_1[1]+ADCDATA.h_2[1])/2.0)/pow((pow(ADCDATA.h_1[1],2)+pow(ADCDATA.h_2[1],2))/2.0,0.5));
    }
    SPEED_Control(SPEED_SET(sp_expect));
    //SPEED_Control(SPEED_SET(165));
  }
  else{
    SPEED_Stop();
  }
}
