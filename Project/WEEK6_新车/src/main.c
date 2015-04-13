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
  PT_INIT(&thread[0], 5); //5ms一次ad采集
  PT_INIT(&thread[1], 20); //20ms一次蜂鸣器
  PT_INIT(&thread[2], 200); //200ms一次显示数据
  PT_INIT(&thread[3], 1000); //1s一次停车指示
  PT_INIT(&thread[4], 2000); //串口控制
  OLED_Init(); //OLED初始化
  NFR24l01_TX_Init();
  OLED_Init(); //OLED初始化
  BaseTimer_Init(); //1ms基本时钟
  ANGLE_Init(); //舵机初始化
  SPEED_Init(); //电机初始化
  MyADC_Init(); //ADC初始化
  beep_Init(); //蜂鸣器初始化
  while (1){
    GetAd(&thread[0]); //ad采集
    BEEP(&thread[1]); //蜂鸣器
    SHOW(&thread[2]);//显示数据
    STOP(&thread[3]);//停车
    UART_CONTROL(&thread[4]);//串口控制
  }
}
