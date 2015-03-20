#ifndef __ENCODER_H
  #define __ENCODER_H

  #include "common.h"
  #include "DMA.h"
  #include "GPIO.h"
  #include "oled.h"
  #include "pit.h"
  /**
   *±àÂëÆ÷Í¨µÀ²ÎÊý PTC0 ÓÒ±àÂëÆ÷ PTD0 ×ó±àÂëÆ÷
   */

  #define SPEED_COUNTER1_addr HW_DMA_CH0

  extern u32 leftSpeed;
  extern u32 rightSpeed;

  extern void SPEED_COUNTER_Init(void);
  extern void DMA_PulseCountInit(uint32_t dmaChl, uint32_t instance, uint32_t pinIndex);
  extern u32 DMA_Count_Get(uint32_t dmaChl);
  extern void SPEED_COUNTER_Show(int speed);
  extern void PIT1_Isr(void);
#endif //__ENCODER_H
