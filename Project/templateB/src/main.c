#include "head.h"

/**
 * @brief
 * @code
 *
 *
 * @endcode         
 * @param  None
 * @retval None
 */

/* CH Kinetis固件库 V2.50 版本 */
/* 修改主频 请使用 CMSIS标准文件 startup_MKxxxx.c 中的 CLOCK_SETUP 宏 */

u32 time = 0;
u32 oled_time = 0;
u8 duoji_time = 0;
u8 dianji_time = 0;
u32 startTime = 0;

u16 ad1=0,ad2=0,ad3=0,ad4=0,ad5=0,ad6=0,ad7=0,ad8=0;
u8 ad1_avg=0,ad2_avg=0,ad3_avg=0,ad4_avg=0,ad5_avg=0,ad6_avg=0,ad7_avg=0,ad8_avg=0;

bool stop = false;

/**
 *舵机参数
 */
float duoji_Kp = 0;
float duoji_Kd = 0;
float duoji_Ki = 0;

float arg1;
float arg2;
float arg3;
float arg4;

bool right=false;
bool left=false;
bool right_max_f=false;
bool left_max_f=false;

float quan = 0;

float ep=0;
float ep0=0;
float ep1=0;
float ep2=0;
float ep3=0;
float ep4=0;
float ep5=0;
float ep6=0;
float ep7=0;
float ep8=0;
float ep9=0;
float ed=0;
float ed_old=0;

float e1M2=0;
float e1P2=0;
float e3M4=0;
float e3P4=0;
float e5M6=0;
float e5P6=0;
float fit_left=0;
float fit_right=0;

float cha = 0;
float he;
float cha1 = 0;
float he1;

float far_x=0;
float near_x=0;

u32 duoji = duoji_mid;
u32 duojiTemp=duoji_mid;
u32 duojiTemp_old=duoji_mid;

bool SZ_left=false;
bool SZ_right=false;

float sum_h1;
float sum_h2;
float sum_v1;
bool lock;
bool left_lock;
bool right_lock;

/**
 *电机参数
*/
u32 dianji;
u32 dianji_last;

float dianji_Kp=10;
float dianji_Ki=0.07;
float dianji_Kd=0;

u32 sp;
u32 sp_expect;

int sp_e0;
int sp_e0_last;
int sp_e0_last_last;

int sp_e1;
int sp_e2;

bool dianji_protect=false;
u32 dianji_max_cnt=0;
u32 dianji_min_cnt=0;

/**
 *编码器参数
*/

/**
 *蓝牙参数
*/
u32 OutData[4];

/**
 *道路信息参数
*/
u32 stright_cnt=2;

/**
 *蜂鸣器参数
*/
u32 beep_time=0;

int main(void)
{
  
  DisableInterrupts();
  
  DelayInit();
  
  MyADC_Init(); //ADC初始化
  duoji_Init(); //舵机初始化
  encoder_Init(); //编码器初始化
  dianji_Init(); //电机初始化
  PIT0_Init(); //1ms定时器初始化
  OLED_Init(); //OLED初始化
  beep_Init(); //蜂鸣器初始化
  
  EnableInterrupts();
  
  while(1)
  {
    oled_time++;
    if(oled_time >= 300000)
    {
      oled_time = 0;
      
      PrintParemeter();      
    }
  }
}
