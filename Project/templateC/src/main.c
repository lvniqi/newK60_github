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
u16 ad1=0,ad2=0,ad3=0,ad4=0,ad5=0,ad6=0,ad7=0,ad8=0;
u8 ad1_avg=0,ad2_avg=0,ad3_avg=0,ad4_avg=0,ad5_avg=0,ad6_avg=0,ad7_avg=0,ad8_avg=0;
bool stop = false;

/**
 *舵机参数
 */
float duoji_Kp = 2000;
float duoji_Kd = 2000;
float duoji_Ki = 0;

float arg1=0.3;
float arg2=0.6;
float arg3=0.6;
float arg4=0.3;

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

u8 temp = 30;
u32 reset[5] = {30,3,6,6,3};
u8 operation = 0;

float duoji = duoji_mid;
float duojiTemp=duoji_mid;
float duojiTemp_old=duoji_mid;

u32 duoji_Kd_Flash;
u32 arg1_Flash;
u32 arg2_Flash;
u32 arg3_Flash;
u32 arg4_Flash;

u8 changeStatus = 0;

u32 startTime = 0;

bool right =0;
bool left = 0;
bool right_max_f=false;
bool left_max_f=false;

/**
 *编码器参数
*/

u32 leftSpeed;
u32 rightSpeed;

u32 beep_time=0;

/**
 *mode  0 正常起跑
 *      1 改变参数
 *      2 写入数据
 *      3 改变操作 operation 3 PLUS
 *                           4 MINUS
*/
int main(void)
{
  //u8 i = 0;
  
  //DisableInterrupts();
  
  DelayInit();
  beep_Init(); //蜂鸣器初始化
  switch_Init(); //拨码开关初始化
  
  Flash_init();
  //writeParemeter();
  //resetParemeter();
  //readParemeter();
  
  MyADC_Init(); //ADC初始化
  duoji_Init(); //舵机初始化
  encoder_Init(); //编码器初始化
  dianji_Init(); //电机初始化
  PIT0_Init(); //1ms定时器初始化
  OLED_Init(); //OLED初始化
  
  //EnableInterrupts();
   
  while(1)
  { 
    
    oled_time++;
    
    if(oled_time >= 300000)
    {
      oled_time = 0;
      
      //view();
      PrintParemeter();
           
    }
  }
}

void readParemeter(void)
{
  duoji_Kd_Flash = (flash_read(200,0,u32));
  arg1_Flash=(flash_read(200,4,u32));
  arg2_Flash=(flash_read(200,8,u32));
  arg3_Flash=(flash_read(200,12,u32));
  arg4_Flash=(flash_read(200,16,u32));
  
  duoji_Kd = duoji_Kd_Flash*100;
  arg1=arg1_Flash/10.0;
  arg2=arg2_Flash/10.0;
  arg3=arg3_Flash/10.0;
  arg4=arg4_Flash/10.0;
  
}

void writeParemeter(void)
{
  
  Flash_erase_sector(200);
  MyFlash_write(200,0,6);
  MyFlash_write(200,4,3);
  MyFlash_write(200,8,6);
  MyFlash_write(200,12,6);
  MyFlash_write(200,16,3);
  
  changeStatus = true;
}

void resetParemeter(void)
{
  Flash_erase_sector(200);
  MyFlash_write(200, 0, reset[0]);
  MyFlash_write(200, 4, reset[1]);
  MyFlash_write(200, 8, reset[2]);
  MyFlash_write(200, 12, reset[3]);
  MyFlash_write(200, 16, reset[4]);
}

void view(void)
{
  if(get_Switch(1) == 0)
  {
    OLED_Fill(0);
    OLED_P6x8Str(0,0,"start");
    PrintParemeter();
  } 
  else
  {
    OLED_Fill(0);
    //显示起跑或调参情况
    if(get_Switch(1)==1)
    {
      OLED_P6x8Str(0,0,"adjust");
    }
    
    //显示选择操作
    if(get_Switch(2)==1)
    {      
      if(operation==UP)
      {
        OLED_P6x8Str(0,1,"up");
      }
      else if(operation==DOWN)
      {
        OLED_P6x8Str(0,1,"down");
      }
      else if(operation==PLUS)
      {
        OLED_P6x8Str(0,1,"plus");
      }
      else if(operation==MINUS)
      {
        OLED_P6x8Str(0,1,"minus");
      }
      else
      {
        OLED_P6x8Str(0,1,"operation?");
      }
      
    }
    else
    {
      OLED_P6x8Str(0,1,"operation?");
    }
    
    //写入Flash标志显示
    if(get_Switch(3)==1)
    {
      OLED_P6x8Str(0,2,"exec succeed");
    }
    else
    {
      OLED_P6x8Str(0,2,"exec?");
    }
    if(changeStatus==1)
    {
      OLED_P6x8Str(0,3,"SD Succeed");
    }
    else
    {
      OLED_P6x8Str(0,3,"SD?");
    }
    get(4,4,leftSpeed,rightSpeed,4);
    get(arg1_Flash,arg2_Flash,arg3_Flash,arg4_Flash,5);
  }
}
