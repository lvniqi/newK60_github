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
#define duojic_r 1100
#define duojic_l 1100
//#define duoji_mid 4250 //新车的舵机中心值
#define duoji_mid 4600
#define duoji_right (duoji_mid+duojic_r)
#define duoji_left  (duoji_mid-duojic_l)

extern float duoji_Kp; //舵机控制P值
extern float duoji_Kd; //舵机控制d值
extern float duoji_Ki; //舵机控制i值

extern float ep;
extern float ep0;
extern float ep1;
extern float ep2;
extern float ep3;
extern float ep4;
extern float ep5;
extern float ep6;
extern float ep7;
extern float ep8;
extern float ep9;
extern float ed;

extern float e1M2;
extern float e1P2;
extern float e3M4;
extern float e3P4;
extern float e5M6;
extern float e5P6;
extern float fit_left;
extern float fit_right;

extern float cha;
extern float he;
extern float cha1;
extern float he1;

extern u32 duoji;
extern u32 duojiTemp;
extern u32 duojiTemp_old;

extern float arg1;
extern float arg2;
extern float arg3;
extern float arg4;

extern bool right;
extern bool right_max_f;
extern bool left;
extern bool left_max_f;

#define duoji_ChangeDuty(duty) (FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, duty)) //舵机打角程序
#define duoji_is_edge(duoji)      ((duoji) > duoji_right-100||(duoji) <duoji_left+100)

extern void duoji_Init(void); //舵机初始化
extern void duoji_Control1(void); //舵机控制1
extern void duoji_Control2(void); //舵机控制2
extern void duoji_Control3(void); //舵机控制3
extern void duoji_Control4(void); //舵机控制4
extern void duoji_Control5(void); //舵机控制5
extern void duoji_Control6(void); //舵机控制6
extern void duoji_Control7(void); //舵机控制7
extern void duoji_Control8(void); //舵机控制8

extern float quan;

extern float far_x;
extern float near_x;

extern bool SZ_left;
extern bool SZ_right;

extern float sum_h1;
extern float sum_h2;
extern float sum_v1;
extern bool lock;
extern bool left_lock;
extern bool right_lock;

#endif //__DUOJI_H
