#ifndef __RF2401_H
  #define __RF2401_H
  #include "common.h"
  #include "gpio.h"
  #include "nrf24l01.h"
  #include "spi.h"
  #include "oled.h"
  typedef struct _my2401_data
  {
    int angle;
    u32 speed;
  }my2401_data;
  extern void NFR24l01_RX_Init();
#endif //__RF2401_H
