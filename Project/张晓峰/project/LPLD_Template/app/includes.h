#ifndef __INCLUDE_H__
#define __INCLUDE_H__

#include  "common.h"

/*
 * Include 用户自定义的头文件
*/

#include  "HAL_GPIO.h"      //IO口操作
#include  "HAL_eDMA.h"
#include  "HAL_UART.h"      //串口
#include  "HAL_ADC.h"       //ADC模块
#include  "HAL_FTM.h"       //FTM模块（FTM0：电机控制 / 通用 /PWM     FTM1、2：正交解码 / 通用 /PWM ）
#include  "HAL_PIT.h"       //周期中断计时器
#include  "HAL_LPTMR.h"     //低功耗定时器(延时)
#include  "General.h"
#include  "HAL_SDHC.h"
#include  "OLED.h"
#include  "Control.h"
#include  "Sampling.h"
#include  "HAL_FLASH.h"
#include  "VisualScope.h"

#define Straight 0
#define Left     1
#define Right    2

#define LCD_Mode1      1
#define LCD_Mode2      2
#define LCD_Mode3      3

#define Integration 10
/*
 * Extern  全局变量声明
*/

extern uint8 CCD;
extern uint8 ad_flag;
extern uint32 straight_l;
extern uint32 straight_r;
extern uint32 bs_up;
extern uint8 Beep_Flag;
extern uint8 pipe_flag;
extern float P,I,Dif,p,d,t,v;
extern int zhi_speed,wan_speed,SZ;
extern uint16 tempbrick,pd_flag;
extern uint8 spd,podao;
extern uint8 CCD_left,CCD_right;

#endif  //__INCLUDE_H__

/*End of "includes.h */