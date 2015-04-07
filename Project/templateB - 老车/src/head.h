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

//ʱ��
extern u32 time; //��ʱ��
extern u32 oled_time; //OLEDˢ��ʱ��

extern u8 duoji_time; //�������ʱ��
extern u8 dianji_time; //�������ʱ��
extern u32 startTime; //�������ʱ��

#define duoji_ControlTime 5 //�������ʱ��
#define dianji_ControlTime 10 //�������ʱ��
#define dianji_StartTime 2000 //�������ʱ��

#define dingshi 30000

extern bool stop; //ͣ����־

#endif //__HEAD_H
