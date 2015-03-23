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
#include "nrf24l01.h"

int temp_rx;
u32 temp_rx_len=0;
void isr(uint32_t pinArray){
  nrf24l01_read_packet((u8*)&temp_rx,&temp_rx_len);
  OLED_PrintShort(60,0,temp_rx);
}

void NFR24l01_Init(){
  /* ��ʼ��2401ģ��*/
  static struct spi_bus bus;
  GPIO_QuickInit(HW_GPIOA, 17, kGPIO_Mode_IPD);
  /* ��ʼ�� NRF2401ģ�� ��SPI�ӿڼ�Ƭѡ */
  PORT_PinMuxConfig(HW_GPIOA, 14, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 15, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 16, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 17, kPinAlt2);
  /* ��ʼ��2401�����CE���� */
  GPIO_QuickInit(HW_GPIOA, 10, kGPIO_Mode_OPP);
  kinetis_spi_bus_init(&bus, HW_SPI0);
  nrf24l01_init(&bus, 0);
  while (nrf24l01_probe()){
    OLED_P6x8Str(0, 0, "2401 ERROR");
  } 
  GPIO_QuickInit(HW_GPIOA,11,kGPIO_Mode_IPU);
  GPIO_CallbackInstall(HW_GPIOA,isr);
  GPIO_ITDMAConfig(HW_GPIOA, 11, kGPIO_IT_FallingEdge, true);
  nrf24l01_set_rx_mode();
}

int main(void){
  DelayInit();
  PT_INIT(&thread[0], 5); //5msһ��ad�ɼ�
  PT_INIT(&thread[1], 20); //20msһ�η�����
  PT_INIT(&thread[2], 200); //200msһ����ʾ����
  BaseTimer_Init(); //1ms����ʱ��
  OLED_Init(); //OLED��ʼ��
  NFR24l01_Init();
  ANGLE_Init(); //�����ʼ��
  SPEED_Init(); //�����ʼ��
  MyADC_Init(); //ADC��ʼ��
  beep_Init(); //��������ʼ��
  while (1){
    //nrf24l01_read_packet((u8*)&temp_rx,&temp_rx_len);
    //if(temp_rx_len){
    //  MyADC_Show(&ADCDATA);
    //}
    //ANGLE_ChangeDuty(temp_rx);
    GetAd(&thread[0]); //ad�ɼ�  
    OLED_PrintShort(60,7,ADCDATA.IR);
    //BEEP(&thread[1]); //������
    //SHOW(&thread[2]);//��ʾ����
    //������н���
    //if (GetAd(&thread[0]) == PT_ENDED){ 
      //nrf24l01_set_tx_mode();
      //nrf24l01_write_packet("1234567890", 10);
    //  MyADC_Show(&ADCDATA); //��ʾ
    //}
  }
}
