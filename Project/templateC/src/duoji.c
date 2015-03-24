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

void duoji_Control1(void)
{
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
  duoji_Kp=2000;
  
  if(he > 0)
  {
    //ep = cha / powf(he, 1.5)+(0.001*e5M6)/e5P6; //可防止过于内切
    ep = cha / powf(he, 1.5);
  }
  else if(he < 0)
  {
    //ep = cha / powf(he, 1.5)+(0.001*e5M6)/e5P6; //可防止过于内切
    ep = cha / powf(he, 1.5);
  }
  else
  {
    ep = 0;
  }

  ep4=ep3;
  ep3=ep2;
  ep2=ep1;
  ep1=ep;
  ed=ep1-ep3;
  
  duojiTemp = duoji_Kp * ep + duoji_Kd * ed + duoji_mid;
  
  duoji=duojiTemp;
  
  if(duoji > duoji_left)
  {
    duoji = duoji_left;
  }
  if(duoji < duoji_right)
  {
    duoji = duoji_right;
  }
  
  duoji_ChangeDuty((u32)duoji);
  //duoji_ChangeDuty(duoji_mid);
  
  if(ad1_avg<3&&ad2_avg<3&&ad7_avg<3&&ad8_avg<3)
    stop=true;
}

void duoji_Control8(void)
{
  /**
   *舵机方向控制
  */
  /**
   *your own control
  */
  if(beep_time>0)
  {
    beep_time--;
    Beep(true);
  }
  else
  {
    beep_time=0;
    Beep(false);
  }
  
  e1M2 = ad1_avg - ad2_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad3_avg - ad4_avg;
  e3P4 = ad3_avg + ad4_avg;
  
  arg1=0.3;
  arg2=0.6;
  arg3=0.6;
  arg4=0.3;
  
  cha = arg1 * e1M2 + arg2 * e3M4;
  he =  arg3 * (e1P2 + ad7_avg)  + arg4 * e3P4;

  fit_left=powf((powf(ad1_avg,2)+powf(ad3_avg,2))/2.0,0.5);
  fit_right=powf((powf(ad2_avg,2)+powf(ad4_avg,2))/2.0,0.5);
  
  //duoji_Kp = 30000/arg1*powf(2.6,-(ad7_avg/180.0-1.93));
  //duoji_Kp=ABS(2200-ad8_avg);
  duoji_Kp=2000;
  //duoji_Kp=30000/(arg1/arg3);
  //duoji_Kp=30000/arg1;
  duoji_Kd=1.5*duoji_Kp;
  
  //左右方向锁定过于滞后
  if(fit_left>ad7_avg&&fit_left-15>fit_right&&right==false)
  {
    left=true;
    right=false;
    //beep_time=10;
  }
  else if(fit_right>ad7_avg&&fit_right-15>fit_left&&left==false)
  {
    left=false;
    right=true;
    //beep_time=10;
  }
 
  if(ad1_avg>100||ad7_avg>100||ad2_avg>100||ad3_avg>110||ad4_avg>110) 
  {
    left=false;
    right=false;
  }

  if(left==true&&ad1_avg<50&&ad7_avg<70&&ad3_avg<80)
  {
    left_max_f=true;
    right_max_f=false;
    //beep_time=10;
  }
  if(right==true&&ad2_avg<50&&ad7_avg<70&&ad4_avg<80)
  {
    left_max_f=false;
    right_max_f=true;
    //beep_time=10;
  }
  
  if(left_max_f)
  {
    if(ad1_avg>ad2_avg&&ad3_avg>ad4_avg&&ad8_avg>90||left==false)
    {
      left_max_f=false;
      //beep_time=10;
    }
  }
  else if(right_max_f)
  {
    if(ad2_avg>ad1_avg&&ad4_avg>ad3_avg&&ad8_avg>90||right==false)
    {
      right_max_f=false;
      //beep_time=10;
    }
  }
  if(left_max_f==false&&right_max_f==false)
  {
    if(he>10)
    {
      ep = cha / powf(he, 1.5);
      
      ep9=ep8;
      ep8=ep7;
      ep7=ep6;
      ep6=ep5;
      ep5=ep4;
      ep4=ep3;
      ep3=ep2;
      ep2=ep1;
      ep1=ep0;
      ep0=ep;
    }
    else
    {
      if(right==true)
      {
        right_max_f=true;
        ep=-duojic_l/duoji_Kp;
      }
      if(left==true)
      {
        left_max_f=true;
        ep=duojic_r/duoji_Kp;
      }
      ep9=ep;
      ep8=ep;
      ep7=ep;
      ep6=ep;
      ep5=ep;
      ep4=ep;
      ep3=ep;
      ep2=ep;
      ep1=ep;
      ep0=ep;
    }
  }
  else
  {
    if(right_max_f)
    {
      ep=-duojic_l/duoji_Kp;
    }
    else if(left_max_f)
    {
      ep=duojic_r/duoji_Kp;
    }
    
    ep9=ep;
    ep8=ep;
    ep7=ep;
    ep6=ep;
    ep5=ep;
    ep4=ep;
    ep3=ep;
    ep2=ep;
    ep1=ep;
    ep0=ep;
  }
  
  ed=ep2-ep4;
  
  duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  
  /**
   *舵机限幅
  */
  if(duojiTemp <= duoji_right)
  {
    duojiTemp = duoji_right;
  }
  if(duojiTemp >= duoji_left)
  {
    duojiTemp = duoji_left;
  }
  
  duojiTemp_old=duojiTemp;
  duoji=duojiTemp;
  
  duoji_ChangeDuty((u32)duoji);
  
  
  if(ad1_avg<3&&ad7_avg<3&&ad2_avg<3&&ad8_avg<3&&ad3_avg<3&&ad4_avg<3&&ad5_avg<3&&ad6_avg<3)
  {
    stop=true;
    //beep_time=10;
  }
}
