#ifndef __EXTI_H
#define __EXTI_H

#include "head.h"

#define SWITCH_PORT HW_GPIOC

/**
channel:  1~8 对应的是 PTC2~PTC9
*/

#define UP 1
#define DOWN 2
#define PLUS 3
#define MINUS 4

extern u8 mode;
extern u8 operation;

#define get_Switch(channel) (GPIO_ReadBit(HW_GPIOC, 1+channel))

#define mode (GPIO_ReadBit(HW_GPIOC, 2)<<3)|(GPIO_ReadBit(HW_GPIOC, 3)<<2)|(GPIO_ReadBit(HW_GPIOC, 4)<<1)|(GPIO_ReadBit(HW_GPIOC, 5)<<0)

extern void switch_Init(void);
extern void GPIOC_ISR(u32 array);

extern void up(void);
extern void down(void);
extern void plus(void);
extern void minus(void);

#endif //__EXTI_H
