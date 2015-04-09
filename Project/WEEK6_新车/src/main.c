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
#include "myuart.h"


int main(void){
  DelayInit();
  myUart_Init();
  PT_INIT(&thread[0], 5); //5msһ��ad�ɼ�
  PT_INIT(&thread[1], 20); //20msһ�η�����
  PT_INIT(&thread[2], 200); //200msһ����ʾ����
  PT_INIT(&thread[3], 1000); //1sһ��ͣ��ָʾ
  PT_INIT(&thread[4], 2000); //���ڿ���
  BaseTimer_Init(); //1ms����ʱ��
  OLED_Init(); //OLED��ʼ��
  NFR24l01_RX_Init();
  ANGLE_Init(); //�����ʼ��
  SPEED_Init(); //�����ʼ��
  MyADC_Init(); //ADC��ʼ��
  beep_Init(); //��������ʼ��
  nrf24l01_set_tx_mode();
  while (1){
    GetAd(&thread[0]); //ad�ɼ�
    BEEP(&thread[1]); //������
    SHOW(&thread[2]);//��ʾ����
    STOP(&thread[3]);//ͣ��
    UART_CONTROL(&thread[4]);//���ڿ���
    //������н���
    //if (GetAd(&thread[0]) == PT_ENDED){ 
      //nrf24l01_set_tx_mode();
      //nrf24l01_write_packet("1234567890", 10);
    //  MyADC_Show(&ADCDATA); //��ʾ
    //}
  }
}
