#ifndef __RF2401_H
  #define __RF2401_H
  #include "common.h"
  #include "gpio.h"
  #include "nrf24l01.h"
  #include "spi.h"
  #include "oled.h"
  typedef struct _my2401_data
  {
    u8 status_flag;
    int angle;
    int speed;
  }my2401_data;
  extern my2401_data RF2401_RXD;
  extern void NFR24l01_RX_Init();
  extern void NFR24l01_TX_Init();
#endif //__RF2401_H