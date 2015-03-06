/*
 * Threads.h
 *
 *  Created on: 2014��10��22��
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
   * ���� : PT_THREAD( GetAd(PT *pt) )
   * ���� : �߳� �õ�AD
   * ���� : ��
   * ��� : ��
   ***********************************************************************/
  extern PT_THREAD(GetAd(PT *pt));
  /********************************************************************
   * ���� : PT_THREAD( BEEP(PT *pt) )
   * ���� : ������
   * ���� : ��
   * ��� : ��
   ***********************************************************************/
  extern PT_THREAD(BEEP(PT *pt));
#endif
