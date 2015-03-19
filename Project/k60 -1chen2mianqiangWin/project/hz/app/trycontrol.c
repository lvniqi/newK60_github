#include "head.h"

int tryleft = 0;
int tryright = 0;
int trydirection = 0; //1 为right -1 为left

float guiyizhi = 0.0;
float guiyizhi_old = 0.0;
float delittles = 0;
float delittles_old = 0;

float temp = duoji_mid;
float temp_old = duoji_mid;

float tryhc0;
float trye0;
float trye1;

float tryhc1;
float trye2;
float trye3;

float tryhc2;
float tryhc2_old;
float trye4;
float trye5;

float tryhc;
float temp0 = 0.3;
float temp1 = 0.6;
float temp2 = 0.6;
float temp3 = 0.3;
//float temp4 = 0.8;
//float temp5 = 0.2;
float temp4 = 1.0;
float temp5 = 0.0;
float temp6 = 1.0;

float temp7 = 0.3;
float temp8 = 0.6;
float temp9 = 0.6;
float temp10 = 0.3;

float temp11 = 0.0;
float temp12 = 0.0;

float tryKp;
float tryKp1;
float tryKd = 5.0;

float tryhe;
float trycha = 0.0;

int linjinsaidao = 0; 

float guiyizhi_temp = 0.0;
int huanzhiwan = 0;
int huanzhiwan_count = 0;
int huanzhi = 0;

int direction_array[50] = {0};
float direction_count = 0.0;

int duoji_left_chuwan = 0;
int duoji_right_chuwan = 0;
int lock = 0;
int huanzhiwan_in = 0;
int dajiao_left_jishu = 0;
int dajiao_right_jishu = 0;
int dajiao_jishu = 0;
int left_lock = 0;
int right_lock = 0;
int only_one = 0;
int max = -duoji_right;
float huanzhiguiyizhi_old = 0.0;
float huanzhiguiyizhi = 0.0;

/**
 *方向锁定参数
*/
int direction_flag=0; //-1 左弯 1 右弯
int last_direction_flag=0; //-1 左弯 1 右弯
int lock_dir=0; //0 未锁定方向 1 锁定方向
int max_ad=0; //-1 左边最大 0 中间最大 1 右边最大
int left_dir=-1;
int mid_dir=0;
int right_dir=1;
int limit=0; //0 不限幅 1 限幅 防止电感跳变

//限幅参数
#define limit_value 20

void play_servo() 
{ 
  //蜂鸣器的处理
  if(fmq_time>=0)
  {
    LPLD_GPIO_Set_b(PTD,10,OUTPUT_H);
    fmq_time--;
  }
  
  guiyizhi_old = guiyizhi;
  delittles_old = delittles;
  last_direction_flag = direction_flag;
  
  trye0 = ADValue2 - ADValue1;
  trye1 = ADValue2 + ADValue1;
  
  if(ADValue3 <= 10&&ADValue4 <= 10)
  {
    trye2 = 0;
    trye3 = 0;
    tryhc1 = 0;
  }
  else
  {
    trye2 = ADValue4 - ADValue3;
    trye3 = ADValue4 + ADValue3;
    tryhc1 = trye2 / trye3;
  }
  
  trye4 = ADValue6 - ADValue5;
  trye5 = ADValue6 + ADValue5;
 
  tryKp1 = 100*powf(2.6,-(ADValue7/180-1.93));
  tryhc2 = 90 * trye4 / trye5;

  if(tryhc2 > duojic_r)
  {
    tryhc2 = duojic_r;
  }
  else if(tryhc2 < -duojic_r)
  {
    tryhc2 = -duojic_r;
  }
  
  /*
  temp0=0.05/(1+exp(-5+0.014*ADValue7*4))+0.32; //0.32
  temp1=0.1/(1+exp(5-0.014*ADValue7*4))+0.58;  //0.58  
  temp2=0.7;
  temp3=0.3; 
  */
  
  trycha = temp0 * trye0 + temp1 * trye2;
  tryhe = temp2 * (trye1 + ADValue7) + temp3 * trye3;

  tryhc = trycha / (powf(tryhe,1.5)*0.05);
  tryhc=tryhc*2500+trye0/trye1*50;
  //tryhc=tryhc*abs(2.8-0.0001*ADValue7);
  //tryhc = 20000*trycha / powf(tryhe,1.5);
  guiyizhi=tryhc;
  //guiyizhi = 0.4*guiyizhi + 0.6*guiyizhi_old;
  
  delittles = (int)(tryKd * (guiyizhi - guiyizhi_old));
  
  temp = duoji_mid + (int)(guiyizhi) + delittles;
  
  //舵机的最后把关
  if(temp < duoji_left) 
  {
   temp = duoji_left;
  } 
  else if(temp > duoji_right)
  {
    temp = duoji_right;
  }
  
  //保存舵机参数上一次的值
  temp_old = temp;   
  duoji = temp;
  
  LPLD_FTM1_PWM_ChangeDuty(1,(int)temp);
  //LPLD_FTM1_PWM_ChangeDuty(1,duoji_left);
  //舵机的控制结束
  if(ADValue1<3&&ADValue2<3&&ADValue7<3&&ADValue8<3)
    ting=1;
}
