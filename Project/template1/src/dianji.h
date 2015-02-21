#ifndef __DIANJI_H
#define __DIANJI_H

#include "head.h"

extern void dianji_Init(void); //电机初始化
extern void dianji_Stop(void); //停车
extern void dianji_LPTurn(u32 duty); //左电机正转
extern void dianji_RPTurn(u32 duty); //右电机正转
extern void dianji_LNTurn(u32 duty); //左电机反转
extern void dianji_RNTurn(u32 duty); //右电机反转
extern void dianji_Control(void); //电机控制

#endif //__DIANJI_H
