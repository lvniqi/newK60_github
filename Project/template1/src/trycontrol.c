#include "head.h"

int tryleft = 0;
int tryright = 0;
int trydirection = 0;

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

void play_servo() 
{ 
  if(duoji - duoji_mid > 20 && left_lock == 0 && right_lock == 0 && huanzhiwan == 0)
  {
    left_lock = 1;
    right_lock = 0;
  }
  if(duoji_mid - duoji > 20 && left_lock == 0 && right_lock == 0 && huanzhiwan == 0)
  {
    right_lock = 1;
    left_lock = 0;
  }
  //蜂鸣器的处理
  if(fmq_time>=0)
  {
    LPLD_GPIO_Set_b(PTC,10,OUTPUT_H);
    fmq_time--;
  }
  else
  {
    LPLD_GPIO_Set_b(PTC,10,OUTPUT_L);
  }
  
  trye0 = ADValue1 - ADValue2;
  trye1 = ADValue1 + ADValue2;
  
  if(ADValue3 <= 10&&ADValue4 <= 10)
  {
    trye2 = 0;
    trye3 = 0;
    tryhc1 = 0;
  }
  else
  {
    trye2 = ADValue3 - ADValue4;
    trye3 = ADValue3 + ADValue4;
    tryhc1 = trye2 / trye3;
  }
  
  trye4 = ADValue5 - ADValue6;
  trye5 = ADValue5 + ADValue6;
 
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
  
  trycha = temp0 * trye0 + temp1 * trye2;
  tryhe = temp2 * (trye1 + ADValue7) + temp3 * trye3;
  
  tryhc = trycha / powf(tryhe,1.5);
  
  tryKp = 730*powf(2.6,-(ADValue7/180-1.93));
  
  guiyizhi = tryKp * tryhc * temp4 + tryhc2 * temp5;
  /*
  if(ADValue7 < 110 && huanzhiwan == 0)
  {
    huanzhi ++;
  }
  
  if(ADValue7 > 160 && huanzhiwan == 0)
  {
    huanzhi --;
  }
  
  if(huanzhi >= 2)
  {
    huanzhi = 2;
  }
  if(huanzhi <= -2)
  {
    huanzhi = -2;
  }
  
  
  if(ADValue7 > 130)
  {
    if(duoji - duoji_mid > 5)
    {
      dajiao_jishu ++;
    } 
    else if(duoji - duoji_mid < -5)
    {
      dajiao_jishu --;
    }
    
    if(dajiao_jishu >= 10)
    {
      tryleft = 1;
      tryright = 0;
      trydirection = 1;
      dajiao_jishu = 0;
    }  
    if(dajiao_jishu <= -10)
    {
      tryright = 1;
      tryleft = 0;
      trydirection = -1;
      dajiao_jishu = 0;
    }    
  }
  
  if(huanzhi == 2 || huanzhiwan == 1)
  { 
    if(huanzhi == 2 && huanzhiwan_in == 0)
    {      
      huanzhiwan_in = 1;
      
      if(ADValue3 - ADValue4 > 40)
      {
        tryleft = 1;
        tryright = 0;
        trydirection = 1;
      }
      else if(ADValue4 - ADValue3 > 40)
      {
        tryleft = 0;
        tryright = 1;
        trydirection = -1;
      }
      
    }
    
    if(tryleft == 1)  
    {      
      guiyizhi = (tryKp * tryhc * temp4 + tryhc2 * temp5) * temp12 + 9.5*powf(2.6,-(ADValue7/183-1.93)) * ((180/ADValue7*ADValue5 - ADValue6)/(ADValue5 + ADValue6) * 1.0 + tryhc1 * 1.4) * (1-temp12);
      if(ADValue4 - ADValue3 > 80 && only_one == 0)
      {
        tryleft = 0;
        tryright = 1;
        trydirection = -1;
        only_one = 1;
        guiyizhi = (tryKp * tryhc * temp4 + tryhc2 * temp5) * temp11 + 9.5*powf(2.6,-(ADValue7/183-1.93)) * ((ADValue5 - 180/ADValue7*ADValue6)/(ADValue5 + ADValue6) * 1.0 + tryhc1 * 1.4) *(1-temp11);
      }
    }
    
    else if(tryright == 1)
    {
      guiyizhi = (tryKp * tryhc * temp4 + tryhc2 * temp5) * temp11 + 9.5*powf(2.6,-(ADValue7/183-1.93)) * ((ADValue5 - 180/ADValue7*ADValue6)/(ADValue5 + ADValue6) * 1.0 + tryhc1 * 1.4) *(1-temp11);
      if(ADValue3 - ADValue4 > 80 && only_one == 0)
      {
        tryleft = 1;
        tryright = 0;
        trydirection = 1;
        only_one = 1;
        guiyizhi = (tryKp * tryhc * temp4 + tryhc2 * temp5) * temp12 + 9.5*powf(2.6,-(ADValue7/183-1.93)) * ((180/ADValue7*ADValue5 - ADValue6)/(ADValue5 + ADValue6) * 1.0 + tryhc1 * 1.4) * (1-temp12);
      }
    }
    huanzhiwan = 1;
  }
  if(huanzhiwan == 1)
  {
    if(ADValue7 >= 150)
    {
      huanzhiwan_count ++;
    }
    if(huanzhiwan_count == 2)
    {
      huanzhiwan_count = 0;
      huanzhiwan = 0;
      huanzhi = 0;
      huanzhiwan_in = 0;
      only_one  = 0;
    }
  }
  */
  delittles = (int)(tryKd * (guiyizhi - guiyizhi_old));
  
  temp = duoji_mid + (int)(guiyizhi) + delittles;
 
  
  //中间电感值非常小的时候或者右电感的值非常小的时候舵机打死
  if(tryright==1&&(ADValue7<25||ADValue2<30))
  {
   temp = duoji_right;
  }
  //中间电感值非常小的时候或者左电感的值非常小的时候舵机打死
  if(tryleft==1&&(ADValue7<25||ADValue1<30))
  {
   temp = duoji_left;
  }
  
  //舵机的最后把关
  if(temp > duoji_left) 
  {
   temp = duoji_left;
  } 
  else if(temp < duoji_right)
  {
    temp = duoji_right;
  }
  
  if(temp - temp_old < 0 && duoji_left_chuwan <= 15)
  {
    duoji_left_chuwan ++;
  }
  else 
  {
    duoji_left_chuwan  --;
  }
  
  if(temp - temp_old > 0 && duoji_right_chuwan <= 15)
  {
    duoji_right_chuwan ++;
  }
  else 
  {
    duoji_right_chuwan --;
  }
  
  //保存舵机参数上一次的值
  guiyizhi_old = guiyizhi;
  delittles = delittles_old;
  temp_old = temp;   
  duoji = temp;
  tryhc2_old = tryhc2;
  
  LPLD_FTM1_PWM_ChangeDuty(1,(int)temp);
  //舵机的控制结束
  if(ADValue1<3&&ADValue2<3&&ADValue7<3&&ADValue8<3)
    ting=1;
}
