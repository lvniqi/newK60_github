#include "head.h"
//速度pid控制参数
int nowspleftset = 0;
int nowsplefterror = 0;
int nowsplefterroreooro = 0;

int lastspleftset = 0;
int lastsplefterror = 0;
int lastsplefterroreooro = 0;

int lastlastspleftset = 0;
int lastlastsplefterror = 0;
int lastlastsplefterroreooro = 0;

int nowsprightset = 0;
int nowsprighterror = 0;
int nowsprighterroreooro = 0;

int lastsprightset = 0;
int lastsprighterror = 0;
int lastsprighterroreooro = 0;

int lastlastsprightset = 0;
int lastlastsprighterror = 0;
int lastlastsprighterroreooro = 0;

int leftMotor_temp = 0;
int lastleftMotor_temp = 0;
int rightMotor_temp = 0;
int lastrightMotor_temp = 0;

int kp_left_Motor = 48;
int kd_left_Motor = 0;
int ki_left_Motor = 2;

int kp_right_Motor = 48;
int kd_right_Motor = 0;
int ki_right_Motor = 2;
int jiwan_time = 0;

//左右编码器计数参数
int RightMotorPulse_count = 0; //右端脉冲数
int LeftMotorPulse_count = 0; //左端脉冲数

int spset;
int spleftset;
int splrightset;

int spleft_array[5] = {0};
int spright_array[5] = {0};
int spcount = 0;
int protectcount = 0;
float leftbrakecount = 0;
float rightbrakecount = 0;
int leftbrake_flag = 0;
int rightbrake_flag = 0;

float leftrealspeed = 0.0;
float rightrealspeed = 0.0;
float lastleftrealspeed = 0.0;
float lastrightrealspeed = 0.0;

float expectsp = 0.0;
float brake_cnt = 0.0;
float motor_x = 0.0;

int duoji_right_time = 0;
int duoji_left_time = 0;

int flag_duoji_left = 0;
int flag_duoji_right = 0;

int wan_right = 0;
int wan_left = 0;
float try_isjiansu = 0;

int duoji_left_jiasu_time = 0;
int duoji_right_jiasu_time = 0;
int duoji_left_jiasu = 20;
int duoji_right_jiasu = 20;
int nowspleftset_old;
int nowsprightset_old;

#define duoji_range 20
#define wan_time 40


#define Max_speed 140 //55 34
#define Min_speed 110

#define brake_degree  5//刹车灵敏度 越小越灵敏

int duoji_left_jinwan = 0;

void play_motor()
{
  nowspleftset_old = nowspleftset;
  nowsprightset_old = nowsprightset;
  
  nowspleftset = 120;
  nowsprightset = 120;
  
  nowsplefterror = nowspleftset - (int)leftrealspeed;
  nowsprighterror = nowsprightset - (int)rightrealspeed;
  
  leftMotor_temp = ki_left_Motor * nowsplefterror + kp_left_Motor * (nowsplefterror - lastsplefterror) + kd_left_Motor * (nowsplefterror + lastlastsplefterror - lastsplefterror * 2) + lastleftMotor_temp;
  rightMotor_temp = ki_right_Motor * nowsprighterror + kp_right_Motor * (nowsprighterror - lastsprighterror) + kd_right_Motor * (nowsprighterror + lastlastsprighterror - lastsprighterror * 2) + lastrightMotor_temp;
  
  //保存速度参数上一次的值  
  lastleftMotor_temp = leftMotor_temp;
  lastrightMotor_temp = rightMotor_temp;
 
  lastsplefterror= nowsplefterror;
  lastsprighterror = nowsprighterror;
  
  lastlastsplefterror = lastsplefterror;
  lastlastsprighterror = lastsprighterror;
  if(ting == 0 && time < dingshi)
  {
    LPLD_FTM0_PWM_ChangeDuty(4,leftMotor_temp);
    LPLD_FTM0_PWM_ChangeDuty(6,rightMotor_temp);
  }
  else
  {
    LPLD_FTM0_PWM_ChangeDuty(4,0);
    LPLD_FTM0_PWM_ChangeDuty(6,0);
  }
}