#ifndef __BEEP_H
#define __BEEP_H

#include "head.h"

#define BEEP_PORT HW_GPIOD
#define BEEP_PIN  10

#define beep(enable) (GPIO_WriteBit(BEEP_PORT, BEEP_PIN, enable))

extern void beep_Init(void);
extern u32 beep_time;

#endif //__BEEP_H
