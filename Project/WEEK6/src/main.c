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
    __disable_irq();
    int temp_num = (RF_SEQ.base_len)/(RF2401_RXD.speed*300/2200);
    if(RF2401_RXD.speed >10 && temp_num<RF_SEQ.len_max){
      FTM_PWM_ChangeDuty(HW_FTM1,HW_FTM_CH1,
                         Sequeue_Get_One(&RF_SEQ,RF_SEQ.len_max-temp_num).angle+ANGLE_MID);
                         //Sequeue_Get_One(&RF_SEQ,RF_SEQ.len_max-1).angle+ANGLE_MID);
    }
    __enable_irq();
    GetAd(&thread[0]); //ad采集
    //BEEP(&thread[1]); //蜂鸣器
    SHOW(&thread[2]);//显示数据
    STOP(&thread[3]);//停车
  }
}
