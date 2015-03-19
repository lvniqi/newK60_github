#ifndef __CONTROL_H__
#define __CONTROL_H__ 1

#include  "includes.h"

#define Servomiddle   2677.0  
#define Servoleftmax  3062.0  
#define Servorightmax 2297.0  
 

extern uint16 Time;
extern int vspeed_l;
extern int vspeed_r;
extern int zhi_Speed,wan_Speed;
extern int e0_l,e0_r,speed_l,speed_r,speed_fl,speed_fr;
extern uint8 CCD_Mode;
extern float temp_pwm,Temp;
extern int stop_flag;
extern int Expected_Speed_l;
extern int Expected_Speed_r;
extern int Expected_l;
extern int Expected_r;
extern float straight_speed;
extern int left,right,dir,lock_pd,pd;
extern int leftmax_flag,rightmax_flag;
extern float error_d,last_error_d,e0_duoji;
extern float i_speed_l,i_speed_r;
extern float d_error,ave_error,error_dy,G_dif;
extern int pd_f,long_flag;
extern uint16 Brick;
extern int pd_speed;
void  Control_Duoji();
void  Control_Duoji_2();
void  Control_Dianji();
void  Speed_PID();
float Abs(float j);



#endif /* __CONTROL_H__ */