/*
 * Threads.h
 *
 *  Created on: 2014年10月22日
 *      Author: lvniqi
 */

#ifndef THREADS_H_
  #define THREADS_H_
  #include "common.h"
  #include "init.h"
  #include "oled.h"
  #include "myadc.h"
  #include "gpio.h"
  #include "angle.h"
  #include "speed.h"
  #include "nrf24l01.h"
  extern u8 BEEP_FLAG;
  extern u8 STOP_FLAG;
  extern PT thread[THREAD_NUM];
  #define Beep_Enable() {BEEP_FLAG++;}
  /********************************************************************
   * 名称 : PT_THREAD( GetAd(PT *pt) )
   * 功能 : 线程 得到AD
   * 输入 : 无
   * 输出 : 无
   ***********************************************************************/
  extern PT_THREAD(GetAd(PT *pt));
  /********************************************************************
   * 名称 : PT_THREAD( BEEP(PT *pt) )
   * 功能 : 蜂鸣器
   * 输入 : 无
   * 输出 : 无
   ***********************************************************************/
  extern PT_THREAD(BEEP(PT *pt));
#endif
