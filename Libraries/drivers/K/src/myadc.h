#ifndef MYADC_H_
#define MYADC_H_
#include "common.h"
#include "adc.h"
typedef struct _adc
{
  u16 horizontal_1[3];//前方水平电感
  u16 horizontal_2[2];//后方水平电感
  u16 vertical_1[2];//垂直电感
  u16 protect;//保护电感
}adc;
adc ADCDATA;//ADC数据
extern void MyADC_Init();
extern void MyADC_Get(adc* adcdata);
#endif