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
    int speed_set;
  }my2401_data;
  typedef struct _my2401_data_sequeue{
        my2401_data* dataspace;
        u16 front;
        u16 rear;
        u16 len;
        u16 len_should_cut;
        u16 len_max;
        u8 base_len;
  } my2401_data_sequeue;
  #define MY2401_DATA_SEQ_LEN 100
  extern my2401_data _MY2401_DATA_SEQ_DATABASE[MY2401_DATA_SEQ_LEN];
  extern my2401_data_sequeue RF_SEQ;
  extern my2401_data RF2401_RXD;
  extern void NFR24l01_RX_Init();
  extern void NFR24l01_TX_Init();
#endif //__RF2401_H