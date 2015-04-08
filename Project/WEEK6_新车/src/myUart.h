#ifndef __MYUART_H
  #define __MYUART_H
  #include "gpio.h"
  #include "common.h"
  #include "uart.h"
  #include "Sequeue.h"
  #define TXD_LENTH 300
  typedef struct _txd_sequeue
  {
	u8* dataspace;
	u16 front;
	u16 rear;
	u16 len;
	u16 len_should_cut;
	u16 len_max;
        u8  full;
  }txd_sequeue;
  extern u8 _TXD_DATASPACE[TXD_LENTH];
  extern char MyPrint(u8* p, int len);
  extern char MyPutchar(u8 p);
  extern txd_sequeue TXD_SEQUEUE;
  extern void myUart_Init();
#endif //__RF2401_H

