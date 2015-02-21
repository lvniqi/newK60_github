#ifndef __SPEED_H
#define __SPEED_H

#include "common.h"
#include "ftm.h"
#include "speed_counter.h"
#include "speed_control.h"
extern u8 STOP_FLAG;
extern void SPEED_Init(void);
extern void SPEED_Stop(void);
extern void SPEED_Control(u32 duty);
#endif //__SPEED_H