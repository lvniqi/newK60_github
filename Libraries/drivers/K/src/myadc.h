#ifndef MYADC_H_
#define MYADC_H_
#include "common.h"
#include "adc.h"
typedef struct _adc
{
  u16 horizontal_1[3];//ǰ��ˮƽ���
  u16 horizontal_2[2];//��ˮƽ���
  u16 vertical_1[2];//��ֱ���
  u16 protect;//�������
}adc;
adc ADCDATA;//ADC����
extern void MyADC_Init();
extern void MyADC_Get(adc* adcdata);
#endif