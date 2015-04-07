#ifndef __TIMER_H
#define __TIMER_H

#include "head.h"

extern void PIT0_CallBack(void); //PIT0中断回调函数 1ms定时
extern void PIT0_Init(void);     //PIT0初始化函数

#endif //__TIMER_H
