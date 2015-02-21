#ifndef __DUOJI_H
#define __DUOJI_H

#include "head.h"

/**
 *舵机参数：
 *duojic_r:舵机右边最大偏移值
 *duojic_l:舵机左边最大偏移值
 *duoji_mid:舵机中心值
 *duoji_right:舵机右最大值
 *duoji_left:舵机左最大值
*/
#define duojic_r 300
#define duojic_l 300
#define duoji_mid 825 //825
#define duoji_right (duoji_mid+duojic_r)
#define duoji_left  (duoji_mid-duojic_l)

extern float duoji_Kp; //舵机控制P值
extern float duoji_Kd; //舵机控制d值
extern float duoji_Ki; //舵机控制i值

extern float ep;
extern float ep1;
extern float ep2;
extern float ep3;
extern float ep4;
extern float ed;
extern float ed_old;

extern int e1M2;
extern int e1P2;
extern int e3M4;
extern int e3P4;
extern int e5M6;
extern int e5P6;

extern float cha;
extern float he;

extern u32 duoji;
extern u32 duojiTemp;

extern bool stop;
extern u8 right;
extern u8 left;
extern u8 rightMax;
extern u8 leftMax;

extern float arg1;
extern float arg2;
extern float arg3;
extern float arg4;

#define dingshi 20000
#define duoji_D_Limit 100

#define duoji_ChangeDuty(duty) (FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, duty)) //舵机打角程序

extern void duoji_Init(void); //舵机初始化
extern void duoji_Control(void); //舵机控制

#endif //__DUOJI_H
