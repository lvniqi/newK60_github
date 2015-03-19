#ifndef __VISUALSCOPE_H__
#define __VISUALSCOPE_H__
#include  "common.h"
#include  "HAL_UART.h"
#include  "General.h"

extern float OutData[4];

void OutPut_Data(void);
void OutPut_Sonic(void);
void SendImageData(unsigned char * ImageData);
void SendHex(unsigned char hex);

#endif  //__VISUALSCOPE_H__