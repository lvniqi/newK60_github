#ifndef __HEAD_H__
#define __HEAD_H__

#include "common.h"
#include "math.h"
#include "gpio.h"
#include "pit.h"
#include "ftm.h"
#include "adc.h"
#include "dma.h"

#include "oled.h"
#include "timer.h"
#include "duoji.h"
#include "dianji.h"
#include "switch.h"
#include "beep.h"
#include "myadc.h"
#include "flash.h"
#include "encoder.h"


//Ê±¼ä
extern u32 time;
extern u8 duoji_time;
extern u8 dianji_time;

extern u8 temp;

extern u32 reset[5];

extern u32 duoji_Kd_Flash;

extern u32 arg1_Flash;
extern u32 arg2_Flash;
extern u32 arg3_Flash;
extern u32 arg4_Flash;

extern u8 changeStatus;
extern u32 startTime;

#define duoji_ControlTime 5
#define dingshi 20000

extern void readParemeter(void);
extern void writeParemeter(void);
extern void resetParemeter(void);

extern void view(void);

#endif //__HEAD_H
