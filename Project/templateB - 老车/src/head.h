#ifndef __HEAD_H__
#define __HEAD_H__

#include "common.h"
#include "math.h"
#include "gpio.h"
#include "pit.h"
#include "ftm.h"
#include "adc.h"
#include "dma.h"
#include "uart.h"

//#include "nrf24l01.h"

#include "oled.h"
#include "timer.h"
#include "duoji.h"
#include "dianji.h"
#include "myadc.h"
#include "beep.h"
#include "encoder.h"
#include "bluetooth.h"
#include "road.h"

//时间
extern u32 time; //总时间
extern u32 oled_time; //OLED刷新时间

extern u8 duoji_time; //舵机处理时间
extern u8 dianji_time; //电机处理时间
extern u32 startTime; //电机出发时间

#define duoji_ControlTime 5 //舵机控制时间
#define dianji_ControlTime 10 //电机控制时间
#define dianji_StartTime 2000 //电机出发时间

#define dingshi 30000

extern bool stop; //停车标志

#endif //__HEAD_H
