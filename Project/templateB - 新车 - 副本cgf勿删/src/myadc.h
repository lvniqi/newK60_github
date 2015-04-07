#ifndef MYADC_H_
#define MYADC_H_

#include "head.h"

#define AD1_PORT    8//ADC1_SE8_PB0
#define AD2_PORT    9//ADC1_SE9_PB1
#define AD3_PORT    10//ADC1_SE10_PB04
#define AD4_PORT    11//ADC1_SE11_PB05

#define AD5_PORT    12//ADC1_SE12_PB06
#define AD6_PORT    13//ADC1_SE13_PB07

#define AD7_PORT    14//ADC1_SE14_PB10
#define AD8_PORT    15//ADC1_SE15_PB11

extern void MyADC_Init(void); //ADC通道初始化
extern void ADC0_init(void); //ADC0通道初始化
extern void ADC1_init(void); //ADC1通道初始化
extern void ADC0_Channelx_Init(u8 x); //ADC0通道x初始化
extern void ADC1_Channelx_Init(u8 x); //ADC1通道x初始化
extern u16 ADC0_Channelx_GETDATA(u8 x); //ADC0通道x读取AD值
extern u16 ADC1_Channelx_GETDATA(u8 x); //ADC1通道x读取AD值
extern u16 ADC_GETDATA(u8 x); //ADC通道读取AD值

extern float ad1,ad2,ad3,ad4,ad5,ad6,ad7,ad8;
extern float ad1_avg,ad2_avg,ad3_avg,ad4_avg,ad5_avg,ad6_avg,ad7_avg,ad8_avg;

#endif
