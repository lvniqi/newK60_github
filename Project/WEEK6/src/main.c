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
  PT_INIT(&thread[0], 4); //4ms一次ad采集
  PT_INIT(&thread[1], 20); //20ms一次蜂鸣器 
  PT_INIT(&thread[2], 200); //200ms一次显示数据
  PT_INIT(&thread[3], 1000); //1s一次停车指示
  PT_INIT(&thread[4], 5); //设定打角
  OLED_Init(); //OLED初始化
  NFR24l01_RX_Init();
  ANGLE_Init(); //舵机初始化
  MyADC_Init(); //ADC初始化
  //初始化默认间距
  MyADC_Get(&ADCDATA);
  RF_SEQ.base_len = ADCDATA.IR;
  OLED_Init(); //OLED初始化
  BaseTimer_Init(); //1ms基本时钟
  
  SPEED_Init(); //电机初始化
  
  beep_Init(); //蜂鸣器初始化
  while (1){
    GetAd(&thread[0]); //ad采集
    SET_ANGLE(&thread[4]);//设定打角
    BEEP(&thread[1]); //蜂鸣器
    SHOW(&thread[2]);//显示数据
    STOP(&thread[3]);//停车
  }
}
