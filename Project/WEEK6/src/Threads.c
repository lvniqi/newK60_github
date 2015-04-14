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
#define Beep(enable) (GPIO_WriteBit(HW_GPIOB, 18, enable))
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
  if(RF_SEQ.isStright == true){
    duoji_Control();
  }
  if (MyADC_H1_Sum(&ADCDATA)+ 
      MyADC_H2_Sum(&ADCDATA)+
      MyADC_V1_Sum(&ADCDATA) < 15){
    if (STOP_FLAG < 100){
      STOP_FLAG = 100;
    }
  }
  //nrf24l01_write_packet((u8*)&(Sequeue_Get_Rear(&ANGLE_SEQ)),2);
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
/********************************************************************
   * 名称 : PT_THREAD( SHOW(PT *pt) )
   * 功能 : 显示数据
   * 输入 : 无
   * 输出 : 无
   ***********************************************************************/
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
/********************************************************************
   * 名称 : PT_THREAD( STOP(PT *pt) )
   * 功能 : 停车数据
   * 输入 : 无
   * 输出 : 无
   ***********************************************************************/
PT_THREAD(STOP(PT *pt)){
  PT_BEGIN(pt);
  while(true){
    PT_WAIT_UNTIL(pt, pt->ready);
    pt->ready = 0;  
    if (STOP_FLAG < 100){
      STOP_FLAG +=20;//5s停车
    }
  }
  PT_END(pt);
}
PT_THREAD(SET_ANGLE(PT *pt)){
  static u8 mycount;
  PT_BEGIN(pt);
  PT_WAIT_UNTIL(pt,RF2401_RXD.count != mycount);
  PT_WAIT_UNTIL(pt,RF_SEQ.isStright == false);
  mycount = RF2401_RXD.count;
  __disable_irq();
  int temp_num = (RF_SEQ.base_len+1500)/(RF2401_RXD.speed*300/2200);
  if(RF2401_RXD.speed >5 && temp_num<RF_SEQ.len_max){
    FTM_PWM_ChangeDuty(HW_FTM1,HW_FTM_CH1,
                       Sequeue_Get_One(&RF_SEQ,RF_SEQ.len_max-temp_num).angle+ANGLE_MID);
                       //Sequeue_Get_One(&RF_SEQ,RF_SEQ.len_max-1).angle+ANGLE_MID);
  }
    __enable_irq();
  PT_END(pt);
}