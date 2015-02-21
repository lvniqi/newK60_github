#include "duoji.h"

/**
 * @brief   封装FTM库函数实现PTA9输出PWM波控制舵机 频率为50Hz
 * @code    //舵机初始化
 *          duoji_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void duoji_Init(void)
{
  FTM_PWM_QuickInit(FTM1_CH1_PA09, kPWM_EdgeAligned, 50);
  FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, duoji_mid);
}

void duoji_Control(void)
{
  /**
   *舵机方向控制
  */
  if(ad3-10>ad7&&ad3-10>ad4&&right==0)
  {
    left=1;
    right=0;
  }
  if(ad4-10>ad7&&ad4-10>ad3&&left==0)
  {
    left=0;
    right=1;
  }
  if(ad1>100||ad7>100||ad2>100)
  {
    left=0;
    right=0;
  }
  
  if(left==1&&ad1<80&&ad7<80)
  {
    leftMax=1;
    
    //beep_time=5;
  }
  if(right==1&&ad2<80&&ad7<80)
  {
    rightMax=1;
    
    //beep_time=5;
  }
  e1M2 = ad1_avg - ad2_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e5M6 = ad5_avg - ad6_avg;
  e5P6 = ad5_avg + ad6_avg;
  
  if(ad3_avg <= 10&&ad4_avg<= 10)
  {
    e3M4 = 0;
    e3P4 = 0;
  }
  else
  {
    e3M4 = ad3_avg - ad4_avg;
    e3P4 = ad3_avg + ad4_avg;
  }
  
  //e1M2和e1P2+ad7_avg的系数对直道的影响不大
  cha = arg1 * e1M2 + arg2 * e3M4;
  he = arg3 * (e1P2 + ad7_avg) + arg4 * e3P4;
  
  //duoji_Kp = 730*powf(2.6,-(ad7_avg/180.0-1.93));
  //duoji_Kp = 400*ABS(2.8-0.0015*ad7);
  duoji_Kp=6000;
  
  if(he > 0)
  {
    //ep = cha / powf(he, 1.5)+(0.001*e5M6)/e5P6; //可防止过于内切
    ep = -cha / powf(he, 1.5);
  }
  else if(he < 0)
  {
    //ep = cha / powf(he, 1.5)+(0.001*e5M6)/e5P6; //可防止过于内切
    ep = -cha / powf(he, 1.5);
  }
  else
  {
    ep = 0;
  }
  if(leftMax==1)
  {
    if(ad1_avg>ad2_avg||left==0)
    {
      leftMax=0;
      
      //beep_time=5;
    }
    duojiTemp=duoji_left;
    beep_time=5;
    //duojiTemp = duoji_Kp * ep + duoji_Kd * (0.7*ed+0.3*ed_old) + duoji_mid;
  }
  else if(rightMax==1)
  {
    if(ad2_avg>ad1_avg||right==0)
    {
      rightMax=0;
      
      //beep_time=5;
    }
    duojiTemp=duoji_right;
    beep_time=5;
    //duojiTemp = duoji_Kp * ep + duoji_Kd * (0.7*ed+0.3*ed_old) + duoji_mid;
  }
  else
  {
    ep4=ep3;
    ep3=ep2;
    ep2=ep1;
    ep1=ep;
    if(ABS(ep3-ep1)*duoji_Kd > duoji_D_Limit)
    {
      ed=ed_old;
      
      //beep_time=5;
    }
    else
      ed=ep1-ep3;
    ed_old=ed;

    if(duoji_Kd*ed>duoji_D_Limit)
      ed=duoji_D_Limit/duoji_Kd;
    if(duoji_Kd*ed<-duoji_D_Limit)
      ed=-duoji_D_Limit/duoji_Kd;
    
    duojiTemp = duoji_Kp * ep + duoji_Kd * (0.7*ed+0.3*ed_old) + duoji_mid;
  }

  duoji=duojiTemp;
  
  if(duoji < duoji_left)
  {
    duoji = duoji_left;
  }
  if(duoji > duoji_right)
  {
    duoji = duoji_right;
  }
  
  duoji_ChangeDuty(duoji);
  
  if(ad1_avg<6&&ad2_avg<6&&ad7_avg<6&&ad8_avg<8)
    stop=true;
}
