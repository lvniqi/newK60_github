#ifndef INIT_H_
#define INIT_H_
#include "common.h"
#include "pit.h"
#include "pt.h"
#include "sequeue.h"
#include "nrf24l01.h"
#define THREAD_NUM 5//线程数为5
#include "threads.h"
extern u32 RunTime ;
/********************************************************************
 * 名称 : Pit0Init
 * 功能 : 1ms时钟调度定时器
 * 输入 : 无
 * 输出 : 无
 ***********************************************************************/
extern void BaseTimer_Init(void);
/********************************************************************
 * 名称 : BaseTimer
 * 功能 : 时钟调度定时器
 * 输入 : 无
 * 输出 : 无
 ***********************************************************************/
extern void BaseTimer(void);
/********************************************************************
 * 名称 : beep_Init
 * 功能 : 蜂鸣器初始化
 * 输入 : 无
 * 输出 : 无
 ***********************************************************************/
extern void beep_Init(void);
extern int abs(int a);
#endif