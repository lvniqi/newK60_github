#ifndef MYADC_H_
  #define MYADC_H_
  #include "common.h"
  #include "adc.h"
  #include "threads.h"
  #define AD_H1_LEN 3
  #define AD_H2_LEN 3
  #define AD_V1_LEN 2
  typedef struct _adc{
    u16 horizontal_1[AD_H1_LEN]; //前方水平电感
    u16 horizontal_2[AD_H2_LEN]; //后方水平电感
    u16 vertical_1[AD_V1_LEN]; //垂直电感
    //u16 protect; //保护电感
  } adc;

  typedef struct _adc_sequeue{
    adc *dataspace;
    u16 front;
    u16 rear;
    u16 len;
    u16 len_should_cut;
    u16 len_max;
  } adc_sequeue;
  #define ADC_SEQ_LEN 10
  extern adc ADCDATA;
  extern adc _ADC_SEQ_DATABASE[ADC_SEQ_LEN];
  extern adc_sequeue ADC_SEQ;
  extern void MyADC_Init();
  extern void MyADC_Get(adc *adcdata);
  extern void MyADC_Show(adc *adcdata);
  extern u16 MyADC_H1_Sum(adc *adcdata);
  #define MyADC_H1_Average(adcdata) (MyADC_H1_Sum(adcdata)/AD_H1_LEN)
  extern u16 MyADC_H2_Sum(adc *adcdata);
  #define MyADC_H2_Average(adcdata) (MyADC_H2_Sum(adcdata)/AD_H2_LEN)
  extern u16 MyADC_V1_Sum(adc *adcdata);
  extern u16 MyADC_V1_Min(adc *adcdata);
  #define MyADC_V1_Average(adcdata) (MyADC_V1_Sum(adcdata)/AD_V1_LEN)
#endif
