#ifndef __MYUART_H
  #define __MYUART_H
  #include "gpio.h"
  #include "common.h"
  #include "uart.h"
  #include "Sequeue.h"
  #include "stdbool.h"
  #define TXD_LENTH 300
  #define RXD_LENTH 100
  typedef struct _txd_sequeue
  {
	u8* dataspace;
	u16 front;
	u16 rear;
	u16 len;
	u16 len_should_cut;
	u16 len_max;
        bool  sending;
  }txd_sequeue;
  typedef struct _rxd_data
  {
	u8* dataspace;
	u16 len_max;
        bool  isgeted;
  }rxd_data;
  extern char MyPrint(u8* p, int len);
  extern char MyPutchar(u8 p);
  extern txd_sequeue TXD_SEQUEUE;
  extern rxd_data RXD_DATA;
  extern void myUart_Init();
#endif //__RF2401_H

