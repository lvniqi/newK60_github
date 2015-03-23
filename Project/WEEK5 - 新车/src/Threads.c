/*
 * Threads.c
 *
 *  Created on: 2014年10月22日
 *      Author: lvniqi
 */
#include "Threads.h"
PT thread[THREAD_NUM];
u8 BEEP_FLAG = 0;
u8 STOP_FLAG = 0;
#define Beep(enable) (GPIO_WriteBit(HW_GPIOD, 10, enable))
/********************************************************************
 * 名称 : PT_THREAD( GetAd(PT *pt) )
 * 功能 : 线程 得到AD
 * 输入 : 无
 * 输出 : 无
 ***********************************************************************/
PT_THREAD(GetAd(PT *pt)){
  PT_BEGIN(pt);
  PT_WAIT_UNTIL(pt, pt->ready);
  pt->ready = 0;
  MyADC_Get(&ADCDATA);
  if (MyADC_H1_Average(&ADCDATA) < 100 &&
      MyADC_H2_Average(&ADCDATA) < 100 &&
        MyADC_V1_Average(&ADCDATA) < 100){
    if (STOP_FLAG <= 100){
      STOP_FLAG++;
    }
  }
  ANGLE_Control();
  if (STOP_FLAG > 100){
    SPEED_Stop();
  }
  PT_END(pt);
}

/********************************************************************
 * 名称 : PT_THREAD( BEEP(PT *pt) )
 * 功能 : 蜂鸣器
 * 输入 : 无
 * 输出 : 无
 ***********************************************************************/
PT_THREAD(BEEP(PT *pt)){
  static u8 i;
  static u8 my_beep_flag = 0;
  PT_BEGIN(pt);
  while (true){
    PT_WAIT_UNTIL(pt, BEEP_FLAG != my_beep_flag);
    my_beep_flag = BEEP_FLAG;
    {
      Beep(1);
      for (i = 0; i < 10; i++){
        PT_WAIT_UNTIL(pt, pt->ready);
        pt->ready = 0;
        if (BEEP_FLAG != my_beep_flag){
          my_beep_flag = BEEP_FLAG;
          i = 0;
        }
      }
    }
    Beep(0);
  }
  PT_END(pt);
}
PT_THREAD(SHOW(PT *pt)){
  PT_BEGIN(pt);
  while(true){
    PT_WAIT_UNTIL(pt, pt->ready);
    pt->ready = 0;  
    //这里写显示语句
    MyADC_Show(&ADCDATA);
    //SPEED_COUNTER_Show(SPEED_CURR);
  }
  PT_END(pt);
}
