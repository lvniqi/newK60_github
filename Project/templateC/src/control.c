#include "head.h"


void duoji_control()
{
  //蜂鸣器的处理
  if(fmq_time>=0)
  {
      //设置 PortPortPortPort口某一位 某一位 的输出值。 的输出值。
      //函数原型 函数原型
      //void LPLD_GPIO_Set_b(PTx ptx, uint8 port_bit, data1)
      //#define OUTPUT_L        0
      //#define OUTPUT_H        1
      LPLD_GPIO_Set_b(PTC,10,OUTPUT_H);
      fmq_time--;
  }
  else
  {
      LPLD_GPIO_Set_b(PTC,10,OUTPUT_L);
  }
  
  //保留上一次的duoji和hc
  prehc=hc;
  pred=duoji;
  
  //1 3 5 7 6 4 2
  //3 4 是竖直电感
  //5 6 是倾斜电感(只用来判断判别方向，没有计算)
  //1和2是左右电感，7为中间电感
  
  //1 3 7 4 2
  //3 4 是竖直电感
  //1 2 是远端水平左右电感
  //7 是远端水平中间电感
  //5 6 是近端水平电感
  
  preAD3=ADValue3;
  preAD4=ADValue4;
  pAD7=ADValue7;
  
  if(fabsf(ADValue7-pAD7)>10)
  {
    fmq_time=40;//和我们一样，如果丢线了蜂鸣器就叫
  }
  
  //远端左右水平电感归一化处理
  //e0是远端左右水平电感之差
  e0=ADValue1-ADValue2;
  //e1是远端左右水平电感之和
  e1=ADValue1+ADValue2;
  
  //竖直电感归一化处理
  //e2是竖直电感之差
  e2=ADValue3-ADValue4;
  //e3是竖直电感之和
  e3=ADValue3+ADValue4;
  
  //近端左右水平电感归一化处理
  //e4是近端左右水平电感之差
  e4=ADValue5-ADValue6;
  //e5是近端左右水平电感之和
  e5=ADValue5+ADValue6;
  
  //防止除0
  if(ADValue7!=0)
  {
    //和中间的电感偏移量有关
    //将这个应用到舵机打脚的计算上
    quan=190/ADValue7;
  }
  
  //直道的时候hc1就是0
  //弯道和直角等情况是e2/e3竖直电感归一化
  
  if(ADValue3<=10&&ADValue4<=10)
  {
    hc1=0;
  }
  else
  {
    hc1=e2/e3;
  }
  
  //近端左右水平电感归一化
  hc2=e4/e5;
  
  if(ADValue1 > ADValue2)
  {
    left = 1;
    right = 0;
  }
  else if(ADValue2 < ADValue1)
  {
    right = 1;
    left = 0;
  }
  
  //那么如果上一次是>60然而下一次是在-60和60之间但是又偏向于-59
  //那按照这个算法的话应该不会进入条件，还是左转，而实际上已经有点
  //要右转了
  
  //和归一化差不多，不过这里多了一个quan
  if(left==1)
   hc=(quan*ADValue1-ADValue2)/(ADValue1+ADValue2);
  else if(right==1)
   hc=(ADValue1-quan*ADValue2)/(ADValue1+ADValue2);
  else
    hc=0;
  
  //hc_total=0.7*hc+hc1;
  hc_total=0.7*hc;
  
  //这是经过计算而得到的kp值
  Kp=14.5*powf(2.6,-(ADValue7/183-1.93));
                              
  duoji = duoji_mid + Kp * hc_total + (hc - prehc) * Kd;

  //中间电感值非常小的时候或者右电感的值非常小的时候舵机打死
  if(right==1&&(ADValue7<25||ADValue2<20))
  {
   duoji=duoji_right;
  }
  //中间电感值非常小的时候或者左电感的值非常小的时候舵机打死
  if(left==1&&(ADValue7<25||ADValue1<20))
  {
   duoji=duoji_left;
  }
  
  //电感保护程序
  //电感8是保护电感加上其他的电感空气值判断使其保护更好
  if(ADValue8<=2&&ADValue1<5&&ADValue2<5&&ADValue7<5)
    ting=1;

  //舵机超出了左右舵机的最大值使其等于舵机
  //最大值和最小值
  if(duoji>=duoji_left)
   duoji=duoji_left;
  else if(duoji<=duoji_right)
   duoji=duoji_right;
  
  
  LPLD_FTM1_PWM_ChangeDuty(1,duoji);
  
  //应该不能确定进入坡道的好坏，如果一味地进入坡道
  //而让duoji打正，可能造成的情况是
  //在进入弯道前其实已经有点歪了，如果还是大正就会飞出弯道
  
  //ChangeDutyLPLD_FTM1_PWM_ChangeDuty 
  //该函数改变 FTM0模块 PWM输出通道的占空比。
  //LPLD_FTM1_PWM_ChangeDuty(uint8 channel, uint32 duty)
  //1 PTA9输出
  
  /*
  if(podao_jishu_u>=60)
    LPLD_FTM1_PWM_ChangeDuty(1,duoji_mid);
  */
}


void speed_define()
{
   //Expect_speed=170-9.5*powf(2.7,-(ADValue7/46.5-2.6642));
  
   //左右差速最大200
   //Expect_speed_l=Expect_speed+(duoji_mid-duoji)/(duoji_r/100);
   //Expect_speed_r=Expect_speed+(duoji-duoji_mid)/(duoji_r/100);
   //左右差速max = max(Expect_speed_l - Expect_speed_l) = 200;
   
   //Expect_speed_l=Expect_speed+(duoji_mid-duoji)/1.00;
   //Expect_speed_r=Expect_speed+(duoji-duoji_mid)/1.00;
   Expect_speed = 100;
   Expect_speed_l = 100;
   Expect_speed_r = 100;
  
  /*
  if(podao_jishu_u>=1&&podao_u==1)
  {
    podao_jishu_u--;  }

  if(podao_jishu_u>=1&&podao_u==-1)
  {
    //fmq_time=40;
    Expect_speed_l=Expect_speed_r=100; 
    podao_jishu_u--;
  }
  if(ADValue9<45&&podao_jishu_u==0)         
  {
    podao_u=-podao_u;
    podao_jishu_u=100;
  } 
  
  if(ting==1 || time >= dingshi)
  {
    time = dingshi;
    Expect_speed_l=Expect_speed_r=0;
  }
 */
}
void speed_control()
{
  h1_r=h0_r;
  realspeed_r_1=realspeed_r_0; 
  //h0_r=a_r*h1_r+b_r*realspeed_r_0-c_r*realspeed_r_1;
  h0_r=realspeed_r_0;
  
  e2motor_r=e1motor_r;
  e1motor_r=e0motor_r;
  e0motor_r=Expect_speed_r-h0_r;
 
 
  h1_l=h0_l;
  realspeed_l_1=realspeed_l_0;
  //h0_l=a_l*h1_l+b_l*realspeed_l_0-c_l*realspeed_l_1; 
  h0_l=realspeed_l_0;
  
  e2motor_l=e1motor_l;
  e1motor_l=e0motor_l;
  e0motor_l=Expect_speed_l-h0_l;

 
  Motorerr_r=kp_r*(e0motor_r-e1motor_r)+ki_r*e0motor_r+kd_r*(e0motor_r-2*e1motor_r+e2motor_r);  
        
  Motorpwm_r+=(int)Motorerr_r;  
 
  Motorerr_l=kp_l*(e0motor_l-e1motor_l)+ki_l*e0motor_l+kd_l*(e0motor_l-2*e1motor_l+e2motor_l);  
  
  Motorpwm_l+=(int)Motorerr_l; 
 
  if(Motorpwm_r>=500)
   Motorpwm_r=500;
  else if(Motorpwm_r<0)
   Motorpwm_r=0;
  
  if(Motorpwm_l>=500)
   Motorpwm_l=500;
  else if(Motorpwm_l<0)
   Motorpwm_l=0;
 
  if(Expect_speed_r==0&&Expect_speed_l==0)
  {
   LPLD_FTM0_PWM_ChangeDuty(4,0);
   LPLD_FTM0_PWM_ChangeDuty(6,0);
  }
  else
  {
    LPLD_FTM0_PWM_ChangeDuty(4,Motorpwm_l*20);
    LPLD_FTM0_PWM_ChangeDuty(6,Motorpwm_r*20);
  }
  
}