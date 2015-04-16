/*
 * Threads.c
 *
 *  Created on: 2014��10��22��
 *      Author: lvniqi
 */
#include "Threads.h"
PT thread[THREAD_NUM];
u8 BEEP_FLAG = 0;
u8 STOP_FLAG = 0;
#define Beep(enable) (GPIO_WriteBit(HW_GPIOB, 18, enable))
/********************************************************************
 * ���� : PT_THREAD( GetAd(PT *pt) )
 * ���� : �߳� �õ�AD
 * ���� : ��
 * ��� : ��
 ***********************************************************************/
PT_THREAD(GetAd(PT *pt)){
  static u8 count = 0;
  PT_BEGIN(pt);
  PT_WAIT_UNTIL(pt, pt->ready);
  pt->ready = 0;
  MyADC_Get(&ADCDATA);
  MyADC_Uart_Show(&ADCDATA);
  //ANGLE_Control();
  duoji_Control();
  if (MyADC_H1_Sum(&ADCDATA)+ 
      MyADC_H2_Sum(&ADCDATA)+
      MyADC_V1_Sum(&ADCDATA) < 12){
    if (STOP_FLAG < 18){
      STOP_FLAG = 18;
    }
  }
  my2401_data TXD;
  TXD.angle = Sequeue_Get_Rear(&ANGLE_SEQ)-ANGLE_MID;
  TXD.speed = SPEED_CURR;
  TXD.count = count++;
  TXD.speed_set = 165;
  if(!GPIO_ReadBit(HW_GPIOD, 8)){
    nrf24l01_write_packet((u8*)&TXD,sizeof(my2401_data));
  }
  PT_END(pt);
}

/********************************************************************
 * ���� : PT_THREAD( BEEP(PT *pt) )
 * ���� : ������
 * ���� : ��
 * ��� : ��
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
   * ���� : PT_THREAD( SHOW(PT *pt) )
   * ���� : ��ʾ����
   * ���� : ��
   * ��� : ��
   ***********************************************************************/
PT_THREAD(SHOW(PT *pt)){
  PT_BEGIN(pt);
  while(true){
    PT_WAIT_UNTIL(pt, pt->ready);
    pt->ready = 0;  
    //����д��ʾ���
    MyADC_Show(&ADCDATA);
    //SPEED_COUNTER_Show(SPEED_CURR);
  }
  PT_END(pt);
}
/********************************************************************
   * ���� : PT_THREAD( STOP(PT *pt) )
   * ���� : ͣ������
   * ���� : ��
   * ��� : ��
   ***********************************************************************/
PT_THREAD(STOP(PT *pt)){
  PT_BEGIN(pt);
  while(true){
    PT_WAIT_UNTIL(pt, pt->ready);
    pt->ready = 0;  
    if (STOP_FLAG < 18){
      STOP_FLAG +=1;//5sͣ��
    }
  }
  PT_END(pt);
}
/********************************************************************
   * ���� : PT_THREAD( UART_CONTROL(PT *pt) )
   * ���� : UART����
   * ���� : ��
   * ��� : ��
   ***********************************************************************/
PT_THREAD(UART_CONTROL(PT *pt)){
  PT_BEGIN(pt);
  PT_WAIT_UNTIL(pt,RXD_DATA.isgeted);
  __disable_irq();
  RXD_DATA.isgeted = false;
  //��ʼ����
  if(strcmp(RXD_DATA.dataspace,"START") == 0){
    STOP_FLAG = 0;
  }
  //ֹͣ����
  else if(strcmp(RXD_DATA.dataspace,"STOP") == 0){
    STOP_FLAG = 18;
  }
  else{
    ;
  }
  __enable_irq();
  PT_END(pt);
}