#ifndef __DIANJI_H
#define __DIANJI_H

#include "head.h"

extern u32 dianji;
extern u32 dianji_last;

extern float dianji_Kp;
extern float dianji_Ki;
extern float dianji_Kd;

extern u32 sp;
extern u32 sp_expect;

extern int sp_e0;
extern int sp_e0_last;
extern int sp_e0_last_last;

extern int sp_e1;
extern int sp_e2;

extern bool dianji_protect;
extern u32 dianji_max_cnt;
extern u32 dianji_min_cnt;

extern void dianji_Init(void); //电机初始化
extern void dianji_Stop(void); //停车
extern void dianji_PTurn(u32 duty); //电机正转
extern void dianji_NTurn(u32 duty); //电机反转
extern void dianji_Control(void); //电机控制
extern void dianji_PID(void); //电机PID调节

#endif //__DIANJI_H
