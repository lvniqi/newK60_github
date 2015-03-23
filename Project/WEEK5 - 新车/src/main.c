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
  /* 初始化2401模块*/
  static struct spi_bus bus;
  GPIO_QuickInit(HW_GPIOA, 17, kGPIO_Mode_IPD);
  /* 初始化 NRF2401模块 的SPI接口及片选 */
  PORT_PinMuxConfig(HW_GPIOA, 14, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 15, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 16, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 17, kPinAlt2);
  /* 初始化2401所需的CE引脚 */
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
  PT_INIT(&thread[0], 5); //5ms一次ad采集
  PT_INIT(&thread[1], 20); //20ms一次蜂鸣器
  PT_INIT(&thread[2], 200); //200ms一次显示数据
  BaseTimer_Init(); //1ms基本时钟
  OLED_Init(); //OLED初始化
  NFR24l01_Init();
  ANGLE_Init(); //舵机初始化
  SPEED_Init(); //电机初始化
  MyADC_Init(); //ADC初始化
  beep_Init(); //蜂鸣器初始化
  while (1){
    //nrf24l01_read_packet((u8*)&temp_rx,&temp_rx_len);
    //if(temp_rx_len){
    //  MyADC_Show(&ADCDATA);
    //}
    //ANGLE_ChangeDuty(temp_rx);
    GetAd(&thread[0]); //ad采集  
    OLED_PrintShort(60,7,ADCDATA.IR);
    //BEEP(&thread[1]); //蜂鸣器
    //SHOW(&thread[2]);//显示数据
    //如果运行结束
    //if (GetAd(&thread[0]) == PT_ENDED){ 
      //nrf24l01_set_tx_mode();
      //nrf24l01_write_packet("1234567890", 10);
    //  MyADC_Show(&ADCDATA); //显示
    //}
  }
}
