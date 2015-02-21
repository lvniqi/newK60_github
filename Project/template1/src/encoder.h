#ifndef __ENCODER_H
#define __ENCODER_H

#include "head.h"

/**
 *编码器通道参数 PTC0 右编码器 PTD0 左编码器
*/
#define BIANMAQILEFT HW_GPIOD
#define BIANMAQILEFTPIN 0

#define BIANMAQIRIGHT HW_GPIOC
#define BIANMAQIRIGHTPIN 0

#define DMALEFT HW_DMA_CH0
#define DMARIGHT HW_DMA_CH1

extern u32 leftSpeed;
extern u32 rightSpeed;

extern void encoder_Init(void);
static void DMA_PulseCountInit(uint32_t dmaChl, uint32_t instance, uint32_t pinIndex);
extern u32 DMA_count_get(uint32_t dmaChl);

#endif //__ENCODER_H
