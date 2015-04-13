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
  OLED_Init(); //OLED��ʼ��
  BaseTimer_Init(); //1ms����ʱ��
  ANGLE_Init(); //�����ʼ��
  SPEED_Init(); //�����ʼ��
  MyADC_Init(); //ADC��ʼ��
  beep_Init(); //��������ʼ��
  while (1){
    FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, RF2401_RXD.angle+ANGLE_MID);
    //GetAd(&thread[0]); //ad�ɼ�
    //BEEP(&thread[1]); //������
    //SHOW(&thread[2]);//��ʾ����
    //STOP(&thread[3]);//ͣ��
    //������н���
    //if (GetAd(&thread[0]) == PT_ENDED){ 
      //nrf24l01_set_tx_mode();
      //nrf24l01_write_packet("1234567890", 10);
    //  MyADC_Show(&ADCDATA); //��ʾ
    //}
  }
}
