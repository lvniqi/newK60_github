#include "duoji.h"

/**
 * @brief   ��װFTM�⺯��ʵ��PTA9���PWM�����ƶ�� Ƶ��Ϊ50Hz
 * @code    //�����ʼ��
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
   *����������
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
   *����޷�
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
  
  duoji_ChangeDuty(duoji);
  //duoji_ChangeDuty(duoji_mid);
  
  if(ad1_avg<6&&ad7_avg<6&&ad2_avg<6&&ad8_avg<6)
    stop=true;
}

void duoji_Control2(void)
{
  
  /**
   *����������
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
   *����޷�
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
  
  duoji_ChangeDuty(duoji);
  //duoji_ChangeDuty(duoji_mid);
  
  if(ad1_avg<6&&ad7_avg<6&&ad2_avg<6&&ad8_avg<6)
    stop=true;
  
}

void duoji_Control3(void)
{
  /**
   *����������
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
  
  //Ҫ��Ҫ���Ƕ����д�ʵ��
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
    //ep = cha / powf(he, 1.5) + 0.001*far_x; //X��Χ�ϵĵ���
    //ep = cha / powf(he, 1.5) + powf((far_x-near_x),3)*0; //powf((far_x-near_x),3)������Ч��������Լ�СSֱ��
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
    beep_time=10;
  }
  else if(right_max_f==true)
  {
    //duojiTemp = (u32)(duoji_Kp * ep + duoji_Kd * ed + duoji_mid);
    duojiTemp=duoji_right;
    beep_time=10;
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
  //�ж������
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
  
  //�ж�ʮ�� 3 4��ֱ��б���
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
   *����޷�
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
  
  duoji_ChangeDuty(duoji);
  //duoji_ChangeDuty(duoji_left);
  
  if(ad1_avg<6&&ad7_avg<6&&ad2_avg<6&&ad8_avg<6)
    stop=true;
}
