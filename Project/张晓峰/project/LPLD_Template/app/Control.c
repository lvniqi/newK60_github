#include  "Control.h"
#include  "math.h"


 
#define e_d          350.0

float e0_duoji=0,e1_duoji=0,e2_duoji=0,e3_duoji=0,e4_duoji=0,e5_duoji=0,e6_duoji=0; 
int wan_Speed=160,zhi_Speed=230,wan_error=15; 
float temp_pwm=Servomiddle,last_temp=0,Temp=0,ccd_temp=0;
float Temp_Step=0,error=0,error_d=0,last_error_d=0;
float kp_duoji=0,kd_duoji=0;
float V_dif=0.5,V=0;
float dif_x=0,dif_y=0,sum_x=0,sum_y=0;
float final_dif=0,final_sum=0,speed_dif=0,speed_sum=0;
float temp1=0,temp2=0,temp3=0,temp4=0;
float dif=0,sum=0;
int ad_error=30;
int big_s=0,s=0;

float r_t0=0,r_t1=0,r_t2=0,r_t3=0,error_dy=0;//直角

float speed_error_l=0,speed_error_r=0;

float xx=0.32,yy=0.68;
float d_error=0,ave_error=0;
int dd=0;

int vspeed_l=0,vspeed_r=0;
int Expected_Speed_l=0,Expected_Speed_r=0,Expected_r=0,Expected_l=0;
float L_error=0,R_error=0;
float i_speed_l=0,i_speed_r=0,i_l=1,i_r=1,test_speed_l=0,test_speed_r=0;

int max_speed=200,min_speed=0,pd_speed = 0;

int e0_l = 0, e1_l = 0, e2_l = 0, U_l = 199, speed_l=0,speed_l_1=0,speed_l_2=0;
int e0_r = 0, e1_r = 0, e2_r = 0, U_r = 199, speed_r=0,speed_r_1=0,speed_r_2=0;
int e_speed=0;

int long_flag=0;


int speed_fl=150,speed_fr=150;//减速反转限幅

float Kp_l = 0, Ki_l = 0, Kd_l = 0;//left
float Kp_r = 0, Ki_r = 0, Kd_r = 0;//right

int dir=0,last_dir=0;
int lock_pd=0,pd=0,pd_f=0;
int stop_flag=0;  //停车标志
int end_ji=0;
float G_dif=0;
int mid_dir=0,left_dir=1,right_dir=2;
float bizhi=0;
float straight_speed=0,cur_speed=0;

uint16 need_data_l=0;
uint16 need_data_m=0;
uint16 need_data_r=0;
uint16 max_ad=0;
int PID_right=0,PID_left=0,left=0,right=0,leftmax_flag=0,rightmax_flag=0;

uint16 Time = 0;     //计时
float Abs(float j)
{
    float i=0;
    i=j;
    if(i<0) i=i*(-1);
    return i;
}


/*************************************************************/
/*                         速度PID程序                       */
/*************************************************************/

void Speed_PID()
{
    e2_l = e1_l;                
    e1_l = e0_l;
    e0_l = Expected_Speed_l - vspeed_l;
  
    e2_r = e1_r;                
    e1_r = e0_r;
    e0_r = Expected_Speed_r - vspeed_r;
    
      if(Abs(e0_l)>20)
      {
        Kp_l = P/70;
 //     Ki_l = I/100;
      }
      else
      {
        Kp_l = P/100;
//      Ki_l = 1.2*I/100;
      }
      
      if(e0_l<-50&&lock_pd==0)
      {
        Kp_l = P/60;
 //     Ki_l = I/100;
      }
      
      //Kp_l = P/100;
      Ki_l=I/100-0.08/(1+exp(6-0.2*Abs(e0_l)));
      //Ki_l = I/100;
      Kd_l = Dif/100;//left

      if(Abs(e0_r)>20)
      {
        Kp_r = P/70;
//        Ki_r = 1*I/100;
      }
      else
      {
        Kp_r = P/100;
 //       Ki_r = 1.2*I/100;
      }
       
      if(e0_r<-50&&lock_pd==0)
      {
        Kp_r = P/60;
 //     Ki_l = I/100;
      }
      
    //Kp_r = P/100;
    Ki_r=I/100-0.08/(1+exp(6-0.2*Abs(e0_r)));
    //Ki_r = I/100;
    Kd_r = Dif/100;//right 
    
    i_speed_l = i_l * Ki_l * (float) e0_l;
    i_speed_r = i_r * Ki_r * (float) e0_r;
    
    test_speed_l+=i_speed_l;
    test_speed_r+=i_speed_r;
    
    if(i_speed_l<=-100) 
    {
      //Beep_Flag = TRUE;
      i_l=0;
    }
    else
      i_l=1;
    
    if(i_speed_r<=-100) 
    {
     // Beep_Flag = TRUE;
      i_r=0;
    }
    else
      i_r=1;
    

////////////遇限削弱积分/////////////////////
/*    if(vspeed_l<=min_speed)
    {
      if(i_speed_l<0)
        i_speed_l=0;
    }
    if(vspeed_r<=min_speed)
    {
      if(i_speed_r<0)
        i_speed_r=0;
    }
    if(speed_l>=max_speed)
    {
      if(i_speed_l>0)
        i_speed_l=0;
    }
    if(speed_r>=max_speed)
    {
      if(i_speed_r>0)
        i_speed_r=0;
    }
*/   
   // U_l = (int) (Kp_l * (float) (e0_l - e1_l) +i_speed_l- Kd_l * (float) (2*speed_l - 3 * speed_l_1 + speed_l_2));
   // U_r = (int) (Kp_r * (float) (e0_r - e1_r) +i_speed_r- Kd_r * (float) (2*speed_r - 3 * speed_r_1 + speed_r_2));
    U_l = (int) (Kp_l * (float) (e0_l - e1_l) +i_speed_l- Kd_l * (float) (e0_l-2*e1_l+e2_l));
    U_r = (int) (Kp_r * (float) (e0_r - e1_r) +i_speed_r- Kd_r * (float) (e0_r-2*e1_r+e2_r)); 
    
   // speed_l_2 = speed_l_1;
    //speed_l_1 = speed_l;
    speed_l = speed_l + U_l ;                                                        //增量PID
    
    //speed_r_2 = speed_r_1;
    //speed_r_1 = speed_r;
    speed_r = speed_r + U_r ;                                                        //增量PID
  
//---------------------------------------速度限幅-------------------------------------------- 

   if(speed_l >= 199)
    {
      speed_l = 199;
    }
   if(speed_r >= 199)
    {
      speed_r = 199;
    }

   if(stop_flag==0) 
     {    
  //---------------------------------------右转弯减速--------------------------------------------
  /*     
      if(speed_l<=0)
         speed_l=0;
       if(speed_r<=0)
         speed_r=0;
*/       
      
      Expected_l=speed_l;
      Expected_r=speed_r; 
        if(speed_r>=0) 
          {
            LPLD_FTM0_PWM_ChangeDuty(4, speed_r);
            LPLD_FTM0_PWM_ChangeDuty(5, 0);
          } 
        else 
          {
            if(Abs(speed_r)>= speed_fr)
            {
             // Beep_Flag = TRUE;
              speed_r = -speed_fr;
            }
            LPLD_FTM0_PWM_ChangeDuty(4, 0);
            LPLD_FTM0_PWM_ChangeDuty(5, -speed_r);
          }
  
  //---------------------------------------左转弯减速--------------------------------------------
     
        if(speed_l>=0) 
          {
            LPLD_FTM0_PWM_ChangeDuty(7, speed_l);
            LPLD_FTM0_PWM_ChangeDuty(6, 0);
          } 
        else 
          {
            if(Abs(speed_l)>= speed_fl)
            {
              //Beep_Flag = TRUE;
              speed_l = -speed_fl;
            }
            LPLD_FTM0_PWM_ChangeDuty(7, 0);
            LPLD_FTM0_PWM_ChangeDuty(6, -speed_l);
          }
     }
       
     if(stop_flag==1||Time<2000) 
     {
       LPLD_FTM0_PWM_ChangeDuty(4, 0);
       LPLD_FTM0_PWM_ChangeDuty(5, 0);
       LPLD_FTM0_PWM_ChangeDuty(6, 0);
       LPLD_FTM0_PWM_ChangeDuty(7, 0);
     }

}

/*************************************************************/
/*                      电机速度规划程序                     */
/*************************************************************/

void  Control_Dianji() 
{
  if(Get_Switch(3)==0) podao=1;
  else podao=0;
  
  if(need_data8>800&&pd==0&&podao==1)
  {
    lock_pd=1;
    pd=1;
    pd_f=1;
    Beep_Flag = TRUE;
  }

 /* 
  if(Get_Switch(6)==1&&Get_Switch(6)==1&&Get_Switch(6)==1)
  {
    zhi_Speed=230;
    wan_Speed=160;
    spd=0;
  }
  if(Get_Switch(6)==0)
  {
    zhi_Speed=220;
    wan_Speed=155;
    spd=1;
  }
  if(Get_Switch(5)==0)
  {
    zhi_Speed=210;
    wan_Speed=155;
    spd=2;
  }
  if(Get_Switch(4)==0)
  {
    zhi_Speed=200;
    wan_Speed=150;
    spd=3;
  }
  */

  V_dif=v/100;
  
  if(vspeed_l+vspeed_r>2*(zhi_Speed-5))
  {
    long_flag=1;

    //Beep_Flag = TRUE;
  }
  if(((vspeed_l+vspeed_r)<=2*(wan_Speed+5))||lock_pd == 1)
  {
    long_flag=0;
   // Beep_Flag = TRUE;
  }
    
  
  straight_speed=0*(straight_r+straight_l)/(2*5000);
  
  if(Abs(temp_pwm-Servomiddle)<80&&need_data2>120)
  {
    Expected_Speed_l=(int)(zhi_Speed+1*straight_speed);
    Expected_Speed_r=(int)(zhi_Speed+1*straight_speed);
  }
  else
  {
     Expected_Speed_l=(int)(zhi_Speed-(zhi_Speed-wan_Speed)*powf(Abs(temp_pwm-Servomiddle)/(Servoleftmax-Servomiddle),1))+0*bs_up/4000;
     Expected_Speed_r=(int)(zhi_Speed-(zhi_Speed-wan_Speed)*powf(Abs(temp_pwm-Servomiddle)/(Servomiddle-Servorightmax),1))+0*bs_up/4000;
     wan_error=25;
  }
  
////////////////////////长直道入弯//////////////////////  
  V=0;
/*  if(long_flag==1)
  {
    if(Abs(temp_pwm-Servomiddle)<30&&need_data2>120)
    {
      Expected_Speed_l=(int)(zhi_Speed+1*straight_speed);
      Expected_Speed_r=(int)(zhi_Speed+1*straight_speed);
    }
    else
    {
       Expected_Speed_l=(int)(zhi_Speed-(zhi_Speed-wan_Speed-20)*powf(Abs(temp_pwm-Servomiddle)/(Servoleftmax-Servomiddle),1));
       Expected_Speed_r=(int)(zhi_Speed-(zhi_Speed-wan_Speed-20)*powf(Abs(temp_pwm-Servomiddle)/(Servomiddle-Servorightmax),1));
       Beep_Flag = TRUE;
       wan_error=50;
       V=0;
       //Expected_Speed_l=wan_Speed;
       //Expected_Speed_r=wan_Speed;
    }
  }
*/   

   if(Abs(temp_pwm-Servomiddle)>80) 
   {
      if(temp_pwm-Servomiddle<0)     //右转
      {
        speed_error_r=Expected_Speed_r*V_dif*(Servomiddle-temp_pwm)/(Servomiddle-Servorightmax);
        Expected_Speed_l=(int)(Expected_Speed_l*(1+((V*V_dif)*(Servomiddle-temp_pwm)/(Servomiddle-Servorightmax))));
        Expected_Speed_r=(int)(Expected_Speed_r-speed_error_r);
      } 
       
      if(temp_pwm-Servomiddle>=0)    //左转
      {
        speed_error_l=Expected_Speed_l*V_dif*(temp_pwm-Servomiddle)/(Servoleftmax-Servomiddle);
        Expected_Speed_l=(int)(Expected_Speed_l-speed_error_l);//Abs(temp_pwm-Servomiddle)*2
        Expected_Speed_r=(int)(Expected_Speed_r*(1+((V*V_dif)*(temp_pwm-Servomiddle)/(Servoleftmax-Servomiddle))));
      } 
   } 

   if(Expected_Speed_l>=zhi_Speed)        //left
    Expected_Speed_l=zhi_Speed;
   if(Expected_Speed_r>=zhi_Speed)        //right
    Expected_Speed_r=zhi_Speed;
   
   if(lock_pd==1)
   {
     Expected_Speed_l=pd_speed;
     Expected_Speed_r=pd_speed;
     
     min_speed=Expected_Speed_r;
     //Beep_Flag = TRUE;
   }  
   else
   {
     if(Expected_Speed_l<=(wan_Speed-wan_error))        //left
     {
      Expected_Speed_l=(wan_Speed-wan_error);
      //Beep_Flag = TRUE;
     }
     if(Expected_Speed_r<=(wan_Speed-wan_error))        //right
     {
      Expected_Speed_r=(wan_Speed-wan_error);
      //Beep_Flag = TRUE;
     }

     min_speed=wan_Speed-wan_error;
   }
}

/*************************************************************/
/*                         舵机PID程序                       */
/*************************************************************/ 
          
void  Control_Duoji()
{
    if((need_data0<5&&need_data1<5&&need_data5<5&&need_data3<5&&need_data4<5&&need_data7<5&&need_data6<5)||Time>t) stop_flag=1;
/*     
    if((need_data0<2&&need_data1<2&&need_data5<2&&need_data3<2&&need_data4<2&&need_data7<2&&need_data6<2)) 
      end_ji++;
    else
      end_ji=0;
    if(end_ji>100)
      stop_flag=1;
    
    if(Time>t) stop_flag=1;*/
     
    temp1=0.05/(1+exp(-5+0.014*need_data2*4))+xx; //横向   减小  0.32
    temp2=0.1/(1+exp(5-0.014*need_data2*4))+yy;  //纵向   加大   0.58 
  
/*  
    temp1=0.32; //横向   减小  0.32
    temp2=0.78;  //纵向   加大   0.58 
*/   
    temp3=0.7;
    temp4=0.3; 

 
//////////////////路障////////////////////////////////////////
     if(CCD_Mode == 0)
    {
      if(brick_r_flag==1&&tempbrick>0&&tempbrick<250&&lock_pd==0)
      { 
        ccd_temp=-230;
        Beep_Flag = TRUE;
      }
      else if(brick_l_flag==1&&tempbrick>0&&tempbrick<250&&lock_pd==0)
      {
        Beep_Flag = TRUE;
        ccd_temp=230;
           
      }
      else
        ccd_temp=0;
    }
    if(CCD_Mode == 1)
    {
     if(Brick_Flag == TRUE&&(pd_flag==0||pd_flag>1500))
      {
        if(Brick_Dir == Left)
        {
            Brick++;
            //Beep_Flag = TRUE;
            if(CCD)
            {
              //Servomiddle = Middle+150;
              ccd_temp=230;
            }
            
            if(Brick>30)
            {
              Brick = 0;
              //Servomiddle = Middle;
              ccd_temp = 0;
              Brick_Dir = Straight;
              Brick_Flag = FALSE;
              OLED_Print(60,2,"Strai");
            }
        }
        if(Brick_Dir == Right)
        {
            Brick++;
            //Beep_Flag = TRUE;
            if(CCD)
            {
              //Servomiddle = Middle-150;
              ccd_temp=-230;
            }
            if(Brick>30)
            {
              Brick = 0;
              //Servomiddle = Middle;
              ccd_temp = 0;
              Brick_Dir = Straight;
              Brick_Flag = FALSE;
              OLED_Print(60,2,"Strai");
            }
        }
      }
    }

    /*****0---3---2----4--1*****/
    /*****5------------6*****/
    
    //---------------------------------------方向判断-------------------------------------------- 
    if(need_data3-10>need_data2&&need_data3-10>need_data4&&right==0) 
    {
        left=1;
        right=0;
    }
    if(need_data4-10>need_data2&&need_data4-10>need_data3&&left==0) 
    {    
        
        right=1;
        left=0;
    }
    if(need_data0>100||need_data1>100||need_data2>100||need_data5>110||need_data6>110) 
    { 
      right=0;
      left=0; 
    }
    
 /*   
  if(need_data2>100&&Abs(temp_pwm-Servomiddle)>10&&Abs(temp_pwm-Servomiddle)<300)
  {
    if(need_data0-40>need_data1&&need_data4-40>need_data3&&error>0&&right==0)
    {
     // Beep_Flag = TRUE;
      left=1;
      right=0;
    }
    if(need_data1-40>need_data0&&need_data3-40>need_data4&&error<0&&left==0)
    {
      //Beep_Flag = TRUE;
      left=0;
      right=1;
    }
  }
*/    
    //---------------------------------------偏差计算--------------------------------------------
    
    /////////////////////十字/////////////////////
    if(Get_Switch(6)==0)
    {
      if(need_data0>=180&&need_data1>30&&need_data3<80&&need_data4-need_data3>20&&pd_f==0) 
      {
        need_data1=30-(need_data0-180);
        if(need_data6>=40)
        {
          need_data6=(need_data5-40)>0?(need_data5-40):0;
        }
        Beep_Flag = TRUE;
        left=1;
        right=0;
      }
      if(need_data1>=180&&need_data0>30&&need_data4<80&&need_data3-need_data4>20&&pd_f==0) 
      {
        need_data0=30-(need_data1-180);
        if(need_data5>=40)
          need_data5=(need_data6-40)>0?(need_data6-40):0;
        Beep_Flag = TRUE;
        right=1;
        left=0;
      }
    }
    
    dif_x = need_data0 - need_data1;
    dif_y = need_data5 - need_data6;
  
    sum_x = need_data0 + need_data1+need_data2;
    sum_y = need_data5 + need_data6;
  
    final_dif = temp1*dif_x + temp2*dif_y;
    final_sum = temp3*sum_x + temp4*sum_y;
    
    speed_dif = 0*temp1*dif_x + 1*temp2*dif_y;
    
    dif=need_data0-need_data1;
    sum=need_data0+need_data1+need_data2;  
    
    G_dif=speed_dif/powf(final_sum,1.6);
    
    error= final_dif/powf(final_sum,1.6);
    
   // bizhi=(Servoleftmax-Servomiddle)/(Servomiddle-Servorightmax);//左右打角范围之比
    

    kp_duoji = p*1000-need_data2*7; 
    kd_duoji = d*1000;
/*    
    if(ave_error<-80)
    {
      kp_duoji=0.5*kp_duoji;
      Beep_Flag = TRUE;
    }
    */
     
/*     G_dif=dif_y/powf(sum_y+need_data2,1.6);
   r_t3=r_t2;
    r_t2=r_t1;
    r_t1=r_t0;
    r_t0=G_dif;
    error_dy=r_t0-r_t3;
*/
    

  /*****0---3---2----4--1*****/
  /*****5------------6*****/
  if(left>0&&need_data0<80&&need_data2<60&&need_data5<100) 
  { 
    //Beep_Flag = TRUE;
    leftmax_flag=1;
  }
  if(right>0&&need_data1<80&&need_data2<60&&need_data6<100) 
  {
    //Beep_Flag = TRUE;
    rightmax_flag=1;
  }
  
  
      /*****0---3---2----4--1*****/
    /*****5------------6*****/
 //-------------------------方向控制PID------------------------  
  if(rightmax_flag>0&&pd_f==0)
  {
    if(need_data1>need_data0&&need_data6>need_data5||right==0)
    {
      rightmax_flag=0;
    }
    
    Temp_Step = Servorightmax ;
    Temp = Servorightmax;
  } 
  else if(leftmax_flag>0&&pd_f==0) 
  {   
    if(need_data0>need_data1&&need_data5>need_data6||left==0)
    {
      leftmax_flag=0;
    }
    Temp_Step = Servoleftmax ; 
    Temp = Servoleftmax;
  }   
  else
  {
  //  e6_duoji = e5_duoji;
   // e5_duoji = e4_duoji;
    e4_duoji = e3_duoji;
    e3_duoji = e2_duoji;
    e2_duoji = e1_duoji;
    e1_duoji = e0_duoji;
    e0_duoji = error;
    
    if(Abs(e0_duoji - e3_duoji)*kd_duoji>350)
      error_d=last_error_d;
    else
      error_d=e0_duoji - e3_duoji;
    
    last_error_d=error_d;
    
    if(kd_duoji*error_d>e_d)
      error_d=e_d/kd_duoji;
    if(kd_duoji*error_d<-e_d)
      error_d=-e_d/kd_duoji;
    
//////////直道和大S/////////////    
    dd++;
    d_error+=kd_duoji * (Abs(e0_duoji) - Abs(e3_duoji));
    if(dd>=8)
    {
     ave_error=d_error/8;

     d_error=0;
     dd=0;
    }
    

   // bizhi=(Servoleftmax-Servomiddle)/(Servomiddle-Servorightmax);
    if(pd_f==1)
    {
      Temp_Step = Servomiddle+ kp_duoji * e0_duoji + kd_duoji * (0.7*error_d+0.3*last_error_d); 
      
    }
    else
      Temp_Step = Servomiddle+ kp_duoji * e0_duoji + kd_duoji * (0.7*error_d+0.3*last_error_d);
    
    Temp_Step+=ccd_temp;
    
    Temp=Servomiddle+ 2*kp_duoji * G_dif;//速度打角

    //Temp_Step = Servomiddle+ kp_duoji * e0_duoji * bizhi + kd_duoji * error_d;  
  }
  if(SZ==1)
  {
    
    if(need_data2>120&&need_data6>70&&need_data5>70&&dir==0&&Abs(temp_pwm-Servomiddle)<80)
    {
        if(need_data0-40>need_data1&&need_data4-50>need_data3&&Abs(need_data6-need_data5)<20&&need_data0>120&&need_data1>70)
        {
          dir=1;
        }
        if(need_data1-40>need_data0&&need_data3-50>need_data4&&Abs(need_data6-need_data5)<20&&need_data1>120&&need_data0>70)
        {
         dir=1;
        }
    }
  }

  
//---------------------------------------打角限幅--------------------------------------------
    if(Temp < Servorightmax) Temp = Servorightmax;
    if(Temp > Servoleftmax) Temp = Servoleftmax;
    
    
    if(Temp_Step < Servorightmax)     temp_pwm = Servorightmax;
    else if(Temp_Step > Servoleftmax) temp_pwm = Servoleftmax;
    else temp_pwm=(int)Temp_Step;
    
    LPLD_FTM1_PWM_ChangeDuty(0, (int)temp_pwm);
         
 } 



















/*************************************************************/
/*                         舵机PID程序（二）                       */
/*************************************************************/ 
          
void  Control_Duoji_2()
{
    if((need_data0<5&&need_data1<5&&need_data5<5&&need_data3<5&&need_data4<5&&need_data7<5&&need_data6<5)||Time>t) stop_flag=1;
/*     
    if((need_data0<2&&need_data1<2&&need_data5<2&&need_data3<2&&need_data4<2&&need_data7<2&&need_data6<2)) 
      end_ji++;
    else
      end_ji=0;
    if(end_ji>100)
      stop_flag=1;
    
    if(Time>t) stop_flag=1;*/
    
    temp1=0.05/(1+exp(-5+0.014*need_data2*4))+0.32; //横向   减小  0.32
    temp2=0.1/(1+exp(5-0.014*need_data2*4))+0.58;  //纵向   加大   0.58 
 
/*    
    temp1=0.32; //横向   减小  0.32
    temp2=0.72;  //纵向   加大   0.58 
*/   
    temp3=0.7;
    temp4=0.3; 

 
//////////////////路障////////////////////////////////////////
     if(CCD_Mode == 0)
    {
      if(brick_r_flag==1&&tempbrick>0&&tempbrick<250&&lock_pd==0)
      { 
        ccd_temp=-230;
        Beep_Flag = TRUE;
      }
      else if(brick_l_flag==1&&tempbrick>0&&tempbrick<250&&lock_pd==0)
      {
        Beep_Flag = TRUE;
        ccd_temp=230;
           
      }
      else
        ccd_temp=0;
    }
    if(CCD_Mode == 1)
    {
     if(Brick_Flag == TRUE&&lock_pd==0)
      {
        if(Brick_Dir == Left)
        {
            Brick++;
            Beep_Flag = TRUE;
            if(CCD)
            {
              //Servomiddle = Middle+150;
              ccd_temp=230;
            }
            
            if(Brick>30)
            {
              Brick = 0;
              //Servomiddle = Middle;
              ccd_temp = 0;
              Brick_Dir = Straight;
              Brick_Flag = FALSE;
              OLED_Print(60,2,"Strai");
            }
        }
        if(Brick_Dir == Right)
        {
            Brick++;
            Beep_Flag = TRUE;
            if(CCD)
            {
              //Servomiddle = Middle-150;
              ccd_temp=-230;
            }
            if(Brick>30)
            {
              Brick = 0;
              //Servomiddle = Middle;
              ccd_temp = 0;
              Brick_Dir = Straight;
              Brick_Flag = FALSE;
              OLED_Print(60,2,"Strai");
            }
        }
      }
    }

    //---------------------------------------方向判断-------------------------------------------- 
    if(need_data3-10>need_data2&&need_data3-10>need_data4&&right==0) 
    {
        left=1;
        right=0;
    }
    if(need_data4-10>need_data2&&need_data4-10>need_data3&&left==0) 
    {    
        
        right=1;
        left=0;
    }
    if(need_data0>100||need_data1>100||need_data2>100||need_data5>110||need_data6>110) 
    { 
      right=0;
      left=0; 
    }
    
    //---------------------------------------偏差计算--------------------------------------------
    
    /////////////////////十字/////////////////////
    if(Get_Switch(6)==0)
    {
      if(need_data0>=180&&need_data1>30&&need_data3<80&&pd_f==0) 
      {
        need_data1=30-(need_data0-180);
        if(need_data6>=40)
        {
          need_data6=need_data5-40;
        }
        Beep_Flag = TRUE;
        left=1;
        right=0;
      }
      if(need_data1>=180&&need_data0>30&&need_data4<80&&pd_f==0) 
      {
        need_data0=30-(need_data1-180);
        if(need_data5>=40)
          need_data5=need_data6-40;
        Beep_Flag = TRUE;
        right=1;
        left=0;
      }
    }
    
    dif_x = need_data0 - need_data1;
    dif_y = need_data5 - need_data6;
  
    sum_x = need_data0 + need_data1+need_data2;
    sum_y = need_data5 + need_data6;
  
    final_dif = temp1*dif_x + temp2*dif_y;
    final_sum = temp3*sum_x + temp4*sum_y;
    
    speed_dif = 0*temp1*dif_x + 1*temp2*dif_y;
    
    dif=need_data0-need_data1;
    sum=need_data0+need_data1+need_data2;  
    
    G_dif=speed_dif/powf(final_sum,1.6);
    
    error= final_dif/powf(final_sum,1.6);
    
   // bizhi=(Servoleftmax-Servomiddle)/(Servomiddle-Servorightmax);//左右打角范围之比
    

    kp_duoji = p*1000; 
    kd_duoji = d*1000;
     
/*     G_dif=dif_y/powf(sum_y+need_data2,1.6);
   r_t3=r_t2;
    r_t2=r_t1;
    r_t1=r_t0;
    r_t0=G_dif;
    error_dy=r_t0-r_t3;
*/
    

  
  if(left>0&&need_data0<80&&need_data2<60&&need_data5<100) 
  { 
    //Beep_Flag = TRUE;
    leftmax_flag=1;
  }
  if(right>0&&need_data1<80&&need_data2<60&&need_data6<100) 
  {
    //Beep_Flag = TRUE;
    rightmax_flag=1;
  }
  
  
  
 //-------------------------方向控制PID------------------------  
  if(rightmax_flag>0&&pd_f==0)
  {
    if(need_data1>need_data0&&need_data6>need_data5||right==0)
    {
      rightmax_flag=0;
    }


    Temp_Step = Servorightmax ;
    Temp = Servorightmax;
  } 
  else if(leftmax_flag>0&&pd_f==0) 
  {   
    if(need_data0>need_data1&&need_data5>need_data6||left==0)
    {
      leftmax_flag=0;
    }

    Temp_Step = Servoleftmax ; 
    Temp = Servoleftmax;
  }   
  else{
  //  e6_duoji = e5_duoji;
   // e5_duoji = e4_duoji;
    e4_duoji = e3_duoji;
    e3_duoji = e2_duoji;
    e2_duoji = e1_duoji;
    e1_duoji = e0_duoji;
    e0_duoji = error;
    
    if(Abs(e0_duoji - e3_duoji)*kd_duoji>400)
      error_d=last_error_d;
    else
      error_d=e0_duoji - e3_duoji;
    
    last_error_d=error_d;
    
    if(kd_duoji*error_d>e_d)
      error_d=e_d/kd_duoji;
    if(kd_duoji*error_d<-e_d)
      error_d=-e_d/kd_duoji;
    
//////////直道和大S/////////////    
    dd++;
    d_error+=kd_duoji * error_d;
    if(dd>=8)
    {
     ave_error=d_error/8;

     d_error=0;
     dd=0;
    }

   // bizhi=(Servoleftmax-Servomiddle)/(Servomiddle-Servorightmax);
    if(pd_f==1)
    {
      Temp_Step = Servomiddle+ kp_duoji * e0_duoji + kd_duoji * (0.7*error_d+0.3*last_error_d); 
      
    }
    else
      Temp_Step = Servomiddle+ kp_duoji * e0_duoji + kd_duoji * (0.7*error_d+0.3*last_error_d);
    
    Temp_Step+=ccd_temp;
    
    Temp=Servomiddle+ 2*kp_duoji * G_dif;//速度打角

    //Temp_Step = Servomiddle+ kp_duoji * e0_duoji * bizhi + kd_duoji * error_d;  
  }
  if(SZ==1)
  {
    
    if(need_data2>120&&need_data6>70&&need_data5>70&&dir==0&&Abs(temp_pwm-Servomiddle)<80)
    {
        if(need_data0-40>need_data1&&need_data4-50>need_data3&&Abs(need_data6-need_data5)<20&&need_data0>120&&need_data1>70)
        {
          dir=1;
        }
        if(need_data1-40>need_data0&&need_data3-50>need_data4&&Abs(need_data6-need_data5)<20&&need_data1>120&&need_data0>70)
        {
         dir=1;
        }
    }
  }

  
//---------------------------------------打角限幅--------------------------------------------
    if(Temp < Servorightmax) Temp = Servorightmax;
    if(Temp > Servoleftmax) Temp = Servoleftmax;
    
    
    if(Temp_Step < Servorightmax)     temp_pwm = Servorightmax;
    else if(Temp_Step > Servoleftmax) temp_pwm = Servoleftmax;
    else temp_pwm=(int)Temp_Step;
    
    LPLD_FTM1_PWM_ChangeDuty(0, (int)temp_pwm);
         
 } 


 