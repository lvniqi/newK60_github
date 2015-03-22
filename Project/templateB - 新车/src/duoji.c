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
  FTM_PWM_QuickInit(FTM1_CH1_PA09, kPWM_EdgeAligned, 300);
  FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, duoji_mid);
}

void duoji_Control1(void)
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
  
  if((duojiTemp>=duoji_left-500)&&right==false)
  {
    left=true;
    right=false;
  }
  if((duojiTemp<=duoji_right+500)&&left==false)
  {
    left=false;
    right=true;
  }
  if(ad1_avg>100||ad7_avg>100||ad2_avg>100||ad3_avg>110||ad4_avg>110) 
  {
    left=false;
    right=false;
  }
  
  if(left==true&&ad1_avg<80&&ad7_avg<60&&ad3_avg<100)
  {
    left_max_f=true;
    right_max_f=false;
  }
  if(right==true&&ad2_avg<80&&ad7_avg<60&&ad4_avg<100)
  {
    left_max_f=false;
    right_max_f=true;
  }
  
  e1M2 = ad1_avg - ad2_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad3_avg - ad4_avg;
  e3P4 = ad3_avg + ad4_avg;
  
  e5M6 = ad5_avg - ad6_avg;
  e5P6 = ad5_avg + ad6_avg;
    
  if(ad3_avg<=10&&ad4_avg<=10)
  {
    e3M4 = 0;
    e3P4 = 0;
  }
  
  /*
  arg1=0.05/(1+exp(-5+0.014*ad7_avg*4))+0.3; //0.3
  arg2=0.1/(1+exp(5-0.014*ad7_avg*4))+0.6;  //0.6  
  arg3=0.6;
  arg4=0.3;
  */
  arg1=0.3;
  arg2=0.6;
  arg3=0.6;
  arg4=0.3;
  
  cha = arg1 * e1M2 + arg2 * e3M4;
  he = arg3 * (e1P2 + ad7_avg) + arg4 * e3P4;
  
  //duoji_Kp = 10000*powf(2.6,-(ad7_avg/180.0-1.93));
  //duoji_Kp=ABS(56000-30*ad7_avg);
  duoji_Kp=ABS(30000-12*ad7_avg);
  duoji_Kd=30000;
  
  if(he!=0)
  {
    ep = cha / powf(he, 1.5);
  }

  if(left_max_f==true)
  {
    if(ad1_avg>ad2_avg&&ad3_avg>ad4_avg)
    {
      left_max_f=false;
    }
  }
  if(right_max_f==true)
  {
    if(ad1_avg<ad2_avg&&ad3_avg<ad4_avg)
    {
      right_max_f=false;
    }
  }
  
  if(left_max_f==true)
  {
    duojiTemp=duoji_left;
    //beep_time=10;
  }
  else if(right_max_f==true)
  {
    duojiTemp=duoji_right;
    //beep_time=10;
  }
  else
  {
    ep4=ep3;
    ep3=ep2;
    ep2=ep1;
    ep1=ep0;
    ep0=ep;
    ed=ep0-ep3;
    
    duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  }  
  /**
   *舵机限幅
  */
  if(duojiTemp >= duoji_left)
  {
    ep0=duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
  }
  if(duojiTemp <= duoji_right)
  {
    ep0=-duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
  }
  
  duoji=duojiTemp;
  
  duoji_ChangeDuty((u32)duoji);
  //duoji_ChangeDuty(duoji_mid);
  
  if(ad1_avg<6&&ad7_avg<6&&ad2_avg<6&&ad8_avg<6)
    stop=true;
}

void duoji_Control2(void)
{
  
  /**
   *舵机方向控制
  */
  /**
   *your own control
  */
  e1M2 = ad1_avg - ad2_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad3_avg - ad4_avg;
  e3P4 = ad3_avg + ad4_avg;
  
  e5M6 = ad5_avg - ad6_avg;
  e5P6 = ad5_avg + ad6_avg;
    
  if(e3M4>=60)
  {
    left = true;
    right = false;
  }
  if(-e3M4>=60)
  {
    left = false;
    right = true;
  }
  if(ad7_avg!=0)
    quan = 180.0/ad7_avg;
  
  duoji_Kp=50*powf(2.6,-(ad7_avg/180.0-1.93));
  //duoji_Kp=200;
  //duoji_Kd=50;
  
  if(ad3_avg<=10&&ad4_avg<=10)
    ep = e1M2/e1P2;
  else
  {
    if(ad3_avg>ad4_avg)
      ep=(-ad4_avg+quan*ad3_avg)/e3P4;
    if(ad4_avg>ad3_avg)
      ep=(-quan*ad4_avg+ad3_avg)/e3P4;
    if(left==true)
      ep=(-ad4_avg+quan*ad3_avg)/e3P4;
    if(right==true)
      ep=(-quan*ad4_avg+ad3_avg)/e3P4;
    ep = 0.7*ep+e1M2/e1P2;
  }
  
  ep4=ep3;
  ep3=ep2;
  ep2=ep1;
  ep1=ep0;
  ep0=ep;
  ed=ep0-ep3;
  
  duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  
  if(ad7_avg>=120)
  {
    left = false;
    right = false;
  }
  
  if(right==1&&(ad7_avg<25||ad2_avg<20))
  {
    //duojiTemp=duoji_right;
  }
  if(left==1&&(ad7_avg<25||ad1_avg<20))
  {
    //duojiTemp=duoji_left;
  }
   
  /**
   *舵机限幅
  */
  if(duojiTemp <= duoji_left)
  {
    duojiTemp = duoji_left;
  }
  if(duojiTemp >= duoji_right)
  {
    duojiTemp = duoji_right;
  }
  
  duoji=duojiTemp;
  
  duoji_ChangeDuty((u32)duoji);
  //duoji_ChangeDuty(duoji_mid);
  
  if(ad1_avg<6&&ad7_avg<6&&ad2_avg<6&&ad8_avg<6)
    stop=true;
  
}

void duoji_Control3(void)
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
  
  if((ad3_avg-ad4_avg>=20)&&(ad3_avg-ad7_avg>=20)&&right==false)
  {
    left=true;
    right=false;
    //beep_time=10;
  }
  if((ad4_avg-ad3_avg>=20)&&(ad4_avg-ad7_avg>=20)&&left==false)
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
  
  if(left==true&&ad1_avg<90&&ad7_avg<70&&ad3_avg<100&&ad5_avg<90)
  {
    left_max_f=true;
    right_max_f=false;
  }
  if(right==true&&ad2_avg<90&&ad7_avg<70&&ad4_avg<100&&ad6_avg<90)
  {
    left_max_f=false;
    right_max_f=true;
  }
  
  e1M2 = ad2_avg - ad1_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad4_avg - ad3_avg;
  e3P4 = ad3_avg + ad4_avg;
  
  e5M6 = ad6_avg - ad5_avg;
  e5P6 = ad5_avg + ad6_avg;
    
  if(ad3_avg<=10&&ad4_avg<=10)
  {
    e3M4 = 0;
    e3P4 = 0;
  }
  
  
  arg1=0.05/(1+exp(-5+0.014*ad7_avg*4))+0.3; //0.3
  arg2=0.1/(1+exp(5-0.014*ad7_avg*4))+0.6;  //0.6  
  arg3=0.6;
  arg4=0.3;
  /*
  arg1=0.3;
  arg2=0.6;
  arg3=0.6;
  arg4=0.3;
  */
  cha = arg1 * e1M2 + arg2 * e3M4;
  he = arg3 * (e1P2 + ad7_avg) + arg4 * e3P4;
  
  //要不要考虑丢线有待实验
  if(e1P2>0)
    far_x=e1M2/e1P2;
  else
    far_x=0;
  if(e5P6>0)
    near_x=e5M6/e5P6;
  else
    near_x=0;
  
  //duoji_Kp = 10000*powf(2.6,-(ad7_avg/180.0-1.93));
  //duoji_Kp=ABS(56000-30*ad7_avg);
  duoji_Kp=ABS(30000-12*ad7_avg);
  duoji_Kd=60000;
  
  if(he!=0)
  {
    //ep = cha / powf(he, 1.5) + 0.001*far_x; //X范围上的调整
    //ep = cha / powf(he, 1.5) + powf((far_x-near_x),3)*0; //powf((far_x-near_x),3)可以有效弯道内切以及小S直冲
    ep = cha / powf(he, 1.5);
  }
  
  if(left_max_f==true)
  {
    if(ad1_avg>ad2_avg&&ad3_avg>ad4_avg)
    {
      left_max_f=false;
    }
  }
  if(right_max_f==true)
  {
    if(ad1_avg<ad2_avg&&ad3_avg<ad4_avg)
    {
      right_max_f=false;
    }
  }
  
  if(left_max_f==true)
  {
    //duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
    duojiTemp=duoji_left;
    //beep_time=10;
  }
  else if(right_max_f==true)
  {
    //duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
    duojiTemp=duoji_right;
    //beep_time=10;
  }
  else
  {
    ep4=ep3;
    ep3=ep2;
    ep2=ep1;
    ep1=ep0;
    ep0=ep;
    ed=ep0-ep3;
    
    duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  }
  //判断内外道
  if(duoji_Kp*ep<-350&&600*e5M6/e5P6>30)
  {
    //beep_time=10;
  }
  else if(duoji_Kp*ep>350&&600*e5M6/e5P6<-30)
  {
    //beep_time=10;
  }
  else
  {
  }
  
  //判断十字 3 4竖直电感饱和
  if(ad5_avg-ad6_avg>=60&&ad1_avg-ad2_avg>=30&&ad7_avg>=100&&ad1_avg>=170&&ad3_avg>=90&&ad4_avg>=90)
  {
    SZ_left=true;
    SZ_right=false;
    beep_time=10;
  }
  if(ad6_avg-ad5_avg>=60&&ad2_avg-ad1_avg>=30&&ad7_avg>=100&&ad2_avg>=170&&ad3_avg>=90&&ad4_avg>=90)
  {
    SZ_left=false;
    SZ_right=true;
    beep_time=10;
  }
  if(SZ_left==true)
  {
    if(ad1_avg>ad2_avg&&ad3_avg>ad4_avg)
      SZ_left=false;
  }
  if(SZ_right==true)
  {
    if(ad2_avg>ad1_avg&&ad4_avg>ad3_avg)
      SZ_right=false;
  }
  if(SZ_left==true)
  {
    //duojiTemp=e1M2*5+duoji_mid;
    
    //beep_time=10;
  }
  if(SZ_right==true)
  {
    //duojiTemp=e1M2*5+duoji_mid;
    
    //beep_time=10;
  }
  
  /**
   *舵机限幅
  */
  if(duojiTemp <= duoji_left)
  {
    ep0=-duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
  }
  if(duojiTemp >= duoji_right)
  {
    ep0=duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
  }
  
  duojiTemp_old=duojiTemp;
  duoji=duojiTemp;
  
  if(stop)
  {
    duoji_ChangeDuty(duoji_mid);
  }
  else
  {
    duoji_ChangeDuty((u32)duoji);
  }
  //duoji_ChangeDuty(duoji);
  
  if(ad1_avg<6&&ad7_avg<6&&ad2_avg<6&&ad8_avg<6&&ad3_avg<6&&ad4_avg<6&&ad5_avg<6&&ad6_avg<6)
    stop=true;
}

void duoji_Control4(void)
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
  
  e1M2 = ad2_avg - ad1_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad4_avg - ad3_avg;
  e3P4 = ad3_avg + ad4_avg;
  
  e5M6 = ad6_avg - ad5_avg;
  e5P6 = ad5_avg + ad6_avg;
  
  sum_h1=ad1_avg+ad7_avg+ad2_avg;
  sum_v1=ad3_avg+ad4_avg;
  sum_h2=ad5_avg+ad6_avg+ad8_avg;
  
  arg1=0.3;
  arg2=0.6;  
  arg3=0.6;
  arg4=0.3;

  cha = arg1 * e1M2 + arg2 * e3M4;
  he = arg3 * (e1P2 + ad7_avg) + arg4 * e3P4;
  cha1 = e5M6;
  he1 = e5P6 + ad8_avg;
  
  duoji_Kp=ABS(30000-12*ad7_avg);
  //duoji_Kp=30000;
  duoji_Kd=60000;
  
  if(left_max_f)
  {
    if(ad1_avg>ad2_avg&&ad3_avg>ad4_avg)
    {
      left_max_f=false;
      //beep_time=10;
    }
  }
  else if(right_max_f)
  {
    if(ad2_avg>ad1_avg&&ad4_avg>ad3_avg)
    {
      right_max_f=false;
      //beep_time=10;
    }
  }
  
  if(sum_h2/2>sum_h1&&sum_h2/4>sum_v1&&lock==false)
  {
    lock=true;
    beep_time=10;
  }
  if(lock==true)
  {
    if(ep9>0&&ad2_avg>ad1_avg&&ad4_avg>ad3_avg)
    {
      lock=false;
      //beep_time=10;
    }
    else if(ep9<0&&ad1_avg>ad2_avg&&ad3_avg>ad4_avg)
    {
      lock=false;
      //beep_time=10;
    }
  }
  /*
  if(he>50&&lock==false)
  {
    //far_x=e1M2/powf(e1P2,1.5);
    //near_x=e5M6/powf(e5P6,1.5);
    
    //ep = cha / powf(he, 1.5) + powf((far_x-near_x),3)*0.1*0;
    ep = cha / powf(he, 1.5);
  }
  else
  {
    ep=ep9;
  }
  */
  if(he>50)
  {
    ep = cha / powf(he, 1.5);
  }
  else
  {
    ep=ep9;
  }


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
  ed=ep0-ep3;
  
  duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  
  /**
   *舵机限幅
  */
  if((duojiTemp <= duoji_left)||left_max_f)
  {
    ep0=-duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
  }
  if((duojiTemp >= duoji_right)||right_max_f)
  {
    ep0=duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
  }
  
  duojiTemp_old=duojiTemp;
  duoji=duojiTemp;
  
  duoji_ChangeDuty((u32)duoji);
  
  if(duojiTemp==duoji_left)
  {
    left_max_f=true;
    right_max_f=false;
  }
  else if(duojiTemp==duoji_right)
  {
    right_max_f=true;
    left_max_f=false;
  }
  
  if(ad1_avg<3&&ad7_avg<3&&ad2_avg<3&&ad8_avg<3&&ad3_avg<3&&ad4_avg<3&&ad5_avg<3&&ad6_avg<3)
  {
    stop=true;
    beep_time=10;
  }
}

void duoji_Control5(void)
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
  
  e1M2 = ad2_avg - ad1_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad4_avg - ad3_avg;
  e3P4 = ad3_avg + ad4_avg;
  
  arg1=0.3;
  arg2=0.6;  
  arg3=0.6;
  arg4=0.3;

  cha = arg1 * e1M2 + arg2 * e3M4;
  he = arg3 * (e1P2 + ad7_avg) + arg4 * e3P4;
  
  duoji_Kp = 10000*powf(2.5,-(ad7_avg/180.0-2));
  //duoji_Kp=ABS(30000-12*ad7_avg);
  //duoji_Kp=30000;
  duoji_Kd=60000;
  
  if(left_max_f)
  {
    if((ad1_avg>ad2_avg&&ad1_avg>80)||(ad3_avg>ad4_avg&&ad3_avg<50))
    {
      left_max_f=false;
      beep_time=10;
    }
  }
  else if(right_max_f)
  {
    if((ad2_avg>ad1_avg&&ad2_avg>80)||(ad4_avg>ad3_avg&&ad4_avg<50))
    {
      right_max_f=false;
      beep_time=10;
    }
  }
  
  if(he>40&&left_max_f==false&&right_max_f==false)
  {
    ep = cha / powf(he, 1.5);
  }
  else
  {
    ep=ep9;
  }


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
  ed=ep2-ep4;
  
  duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  
  /**
   *舵机限幅
  */
  if((duojiTemp <= duoji_left)||left_max_f)
  {
    ep0=-duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
  }
  if((duojiTemp >= duoji_right)||right_max_f)
  {
    ep0=duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
  }
  
  duojiTemp_old=duojiTemp;
  duoji=duojiTemp;
  
  duoji_ChangeDuty((u32)duoji);
  
  if(duojiTemp==duoji_left)
  {
    left_max_f=true;
    right_max_f=false;
    beep_time=10;
  }
  else if(duojiTemp==duoji_right)
  {
    right_max_f=true;
    left_max_f=false;
    beep_time=10;
  }
  
  if(ad1_avg<3&&ad7_avg<3&&ad2_avg<3&&ad8_avg<3&&ad3_avg<3&&ad4_avg<3&&ad5_avg<3&&ad6_avg<3)
  {
    stop=true;
    beep_time=10;
  }
}

void duoji_Control6(void)
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
  
  e1M2 = ad2_avg - ad1_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad4_avg - ad3_avg;
  e3P4 = ad3_avg + ad4_avg;
  
  arg1=0.3;
  arg2=0.6;  
  arg3=0.6;
  arg4=0.3;

  cha = arg1 * e1M2 + arg2 * e3M4;
  he = arg3 * (e1P2 + ad7_avg) + arg4 * e3P4;
  
  duoji_Kp = 10000*powf(2.5,-(ad7_avg/180.0-2));
  //duoji_Kp=ABS(30000-12*ad7_avg);
  //duoji_Kp=30000;
  duoji_Kd=60000;
  
  if(left_max_f)
  {
    if((ad1_avg>ad2_avg&&ad1_avg>80)||(ad3_avg>ad4_avg&&ad3_avg<50)||(ad1_avg>ad2_avg+10&&ad3_avg>ad4_avg+10))
    {
      left_max_f=false;
      //beep_time=10;
    }
  }
  else if(right_max_f)
  {
    if((ad2_avg>ad1_avg&&ad2_avg>80)||(ad4_avg>ad3_avg&&ad4_avg<50)||(ad2_avg>ad1_avg+10&&ad4_avg>ad3_avg+10))
    {
      right_max_f=false;
      //beep_time=10;
    }
  }
  
  if(he>40&&left_max_f==false&&right_max_f==false)
  {
    ep = cha / powf(he, 1.5);
  }
  else
  {
    ep=ep9;
  }


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
  ed=ep2-ep4;
  
  duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  
  /**
   *舵机限幅
  */
  if((duojiTemp <= duoji_left)||left_max_f)
  {
    ep0=-duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
  }
  if((duojiTemp >= duoji_right)||right_max_f)
  {
    ep0=duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
  }
  
  if((duojiTemp <= duoji_left+100)&&(ad1_avg<=30&&ad3_avg<=30)&&left_max_f==false)
  {
    ep0=-duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
    left_max_f=true;
    beep_time=10;
  }
  if((duojiTemp >= duoji_right-100)&&(ad2_avg<=30&&ad4_avg<=30)&&right_max_f==false)
  {
    ep0=duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
    right_max_f=true;
    beep_time=10;
  }
  
  duojiTemp_old=duojiTemp;
  duoji=duojiTemp;
  
  duoji_ChangeDuty((u32)duoji);
  
  if(duojiTemp==duoji_left)
  {
    left_max_f=true;
    right_max_f=false;
    //beep_time=10;
  }
  else if(duojiTemp==duoji_right)
  {
    right_max_f=true;
    left_max_f=false;
    //beep_time=10;
  }
  
  if(ad1_avg<3&&ad7_avg<3&&ad2_avg<3&&ad8_avg<3&&ad3_avg<3&&ad4_avg<3&&ad5_avg<3&&ad6_avg<3)
  {
    stop=true;
    beep_time=10;
  }
}

void duoji_Control7(void)
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
  
  e1M2 = ad2_avg - ad1_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad4_avg - ad3_avg;
  e3P4 = ad3_avg + ad4_avg;
  
  arg1=30;
  arg2=100-arg1;

  cha = arg1*e1M2 + arg2*e3M4;
  he = e1P2 + ad7_avg + e3P4;
  
  //duoji_Kp = 25000/arg1*powf(1.2,-(ad7_avg/180.0-1.0));
  duoji_Kp=ABS(30000-12*ad7_avg)/arg1;
  //duoji_Kp=30000/arg1;
  duoji_Kd=2*duoji_Kp;
  
  if(left_max_f)
  {
    if((ad1_avg>ad2_avg&&ad1_avg>80)||(ad3_avg>ad4_avg&&ad3_avg<30))
    {
      left_max_f=false;
      //beep_time=10;
    }
  }
  else if(right_max_f)
  {
    if((ad2_avg>ad1_avg&&ad2_avg>80)||(ad4_avg>ad3_avg&&ad4_avg<30))
    {
      right_max_f=false;
      //beep_time=10;
    }
  }
  if(ad7_avg>140)
  {
    left_max_f=false;
    right_max_f=false;
  }
  
  if(he>50&&left_max_f==false&&right_max_f==false)
  {
    ep = cha / powf(he, 1.5);
  }
  else
  {
    ep=ep9;
  }


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
  ed=ep2-ep4;
  
  duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  
  /**
   *舵机限幅
  */
  if((duojiTemp <= duoji_left)||left_max_f)
  {
    ep0=-duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
  }
  if((duojiTemp >= duoji_right)||right_max_f)
  {
    ep0=duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
  }
  
  if((duojiTemp <= duoji_left+100)&&(ad1_avg<=30&&ad3_avg<=30)&&left_max_f==false)
  {
    ep0=-duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
    left_max_f=true;
    beep_time=10;
  }
  if((duojiTemp >= duoji_right-100)&&(ad2_avg<=30&&ad4_avg<=30)&&right_max_f==false)
  {
    ep0=duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
    right_max_f=true;
    beep_time=10;
  }
  
  duojiTemp_old=duojiTemp;
  duoji=duojiTemp;
  
  duoji_ChangeDuty((u32)duoji);
  
  if(duojiTemp==duoji_left)
  {
    left_max_f=true;
    right_max_f=false;
    //beep_time=10;
  }
  else if(duojiTemp==duoji_right)
  {
    right_max_f=true;
    left_max_f=false;
    //beep_time=10;
  }
  
  if(ad1_avg<3&&ad7_avg<3&&ad2_avg<3&&ad8_avg<3&&ad3_avg<3&&ad4_avg<3&&ad5_avg<3&&ad6_avg<3)
  {
    stop=true;
    beep_time=10;
  }
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
  
  e1M2 = ad2_avg - ad1_avg;
  e1P2 = ad1_avg + ad2_avg;
  
  e3M4 = ad4_avg - ad3_avg;
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
  //duoji_Kp=35000-20*ad8_avg;
  duoji_Kp=30000;
  //duoji_Kp=30000/(arg1/arg3);
  //duoji_Kp=30000/arg1;
  duoji_Kd=2*duoji_Kp;
  
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
  else if(ad1_avg>100||ad7_avg>100||ad2_avg>100||ad3_avg>110||ad4_avg>110) 
  {
    left=false;
    right=false;
  }

  if(left==true&&ad1_avg<90&&ad7_avg<80&&ad3_avg<100)
  {
    left_max_f=true;
    right_max_f=false;
    beep_time=10;
  }
  if(right==true&&ad2_avg<90&&ad7_avg<80&&ad4_avg<100)
  {
    left_max_f=false;
    right_max_f=true;
    beep_time=10;
  }
  
  if(left_max_f)
  {
    if(ad1_avg+ad3_avg>ad2_avg+ad4_avg&&ad8_avg>60||left==false)
    {
      left_max_f=false;
      beep_time=10;
    }
  }
  else if(right_max_f)
  {
    if(ad2_avg+ad4_avg>ad1_avg+ad3_avg&&ad8_avg>60||right==false)
    {
      right_max_f=false;
      beep_time=10;
    }
  }
  
  if(he>35&&left_max_f==false&&right_max_f==false)
  {
    ep = cha / powf(he, 1.5);
  }
  else
  {
    if(right==true)
    {
      right_max_f=true;
    }
    if(left==true)
    {
      left_max_f=true;
    }
    else
    {
      ep=ep9;
    }
  }
  
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
  ed=ep2-ep4;
  
  duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
  
  /**
   *舵机限幅
  */
  if((duojiTemp <= duoji_left)||left_max_f)
  {
    ep0=-duojic_l/duoji_Kp;
    duojiTemp = duoji_left;
    //beep_time=10;
  }
  if((duojiTemp >= duoji_right)||right_max_f)
  {
    ep0=duojic_r/duoji_Kp;
    duojiTemp = duoji_right;
    //beep_time=10;
  }
  
  duojiTemp_old=duojiTemp;
  duoji=duojiTemp;
  
  duoji_ChangeDuty((u32)duoji);
  //duoji_ChangeDuty(duoji_left);
  
  
  if(ad1_avg<3&&ad7_avg<3&&ad2_avg<3&&ad8_avg<3&&ad3_avg<3&&ad4_avg<3&&ad5_avg<3&&ad6_avg<3)
  {
    stop=true;
    //beep_time=10;
  }
}
