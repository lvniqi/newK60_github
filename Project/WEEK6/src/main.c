#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "pt.h"
#include "systick.h"
#include "pit.h"
#include "gpio.h"
#include "init.h"
#include "Threads.h"
#include "speed_counter.h"
#include "spi.h"
#include "my2401.h"

int main(void){
  DelayInit();
  PT_INIT(&thread[0], 4); //4msһ��ad�ɼ�
  PT_INIT(&thread[1], 20); //20msһ�η����� 
  PT_INIT(&thread[2], 200); //200msһ����ʾ����
  PT_INIT(&thread[3], 1000); //1sһ��ͣ��ָʾ
  OLED_Init(); //OLED��ʼ��
  NFR24l01_RX_Init();
  ANGLE_Init(); //�����ʼ��
  MyADC_Init(); //ADC��ʼ��
  //��ʼ��Ĭ�ϼ��
  MyADC_Get(&ADCDATA);
  RF_SEQ.base_len = ADCDATA.IR;
  OLED_Init(); //OLED��ʼ��
  BaseTimer_Init(); //1ms����ʱ��
  
  SPEED_Init(); //�����ʼ��
  
  beep_Init(); //��������ʼ��
  while (1){
    __disable_irq();
    int temp_num = (RF_SEQ.base_len)/(RF2401_RXD.speed*300/2200);
    if(RF2401_RXD.speed >10 && temp_num<RF_SEQ.len_max){
      FTM_PWM_ChangeDuty(HW_FTM1,HW_FTM_CH1,
                         Sequeue_Get_One(&RF_SEQ,RF_SEQ.len_max-temp_num).angle+ANGLE_MID);
                         //Sequeue_Get_One(&RF_SEQ,RF_SEQ.len_max-1).angle+ANGLE_MID);
    }
    __enable_irq();
    GetAd(&thread[0]); //ad�ɼ�
    //BEEP(&thread[1]); //������
    SHOW(&thread[2]);//��ʾ����
    STOP(&thread[3]);//ͣ��
  }
}
