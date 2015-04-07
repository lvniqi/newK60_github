#ifndef __ENCODER_H
#define __ENCODER_H

#include "head.h"

/**
 *编码器通道参数 PTD0 左编码器
*/
#define BIANMAQI HW_GPIOD
#define BIANMAQIPIN 0

#define DMAChannel HW_DMA_CH0

extern void encoder_Init(void);
extern void DMA_PulseCountInit(u32 dmaChl, u32 instance, u32 pinIndex);
extern u32 DMA_count_get(u32 dmaChl);

#endif //__ENCODER_H
