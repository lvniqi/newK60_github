#include "myadc.h"
adc ADCDATA;
adc_sequeue ADC_SEQ;
adc _ADC_SEQ_DATABASE[ADC_SEQ_LEN];
/*
 * ADC初始化
 *B0 B1 B4 B5 B6 B7 B10 B11
 *pragma none
 *
 * */
void MyADC_Init(){
  ADC_QuickInit(ADC0_SE8_PB0, kADC_SingleDiff8or9);
  ADC_QuickInit(ADC0_SE9_PB1, kADC_SingleDiff8or9);
  ADC_QuickInit(ADC1_SE10_PB04, kADC_SingleDiff8or9);
  ADC_QuickInit(ADC1_SE11_PB05, kADC_SingleDiff8or9);
  ADC_QuickInit(ADC1_SE12_PB06, kADC_SingleDiff8or9);
  ADC_QuickInit(ADC1_SE13_PB07, kADC_SingleDiff8or9);
  ADC_QuickInit(ADC1_SE14_PB10, kADC_SingleDiff8or9);
  ADC_QuickInit(ADC1_SE15_PB11, kADC_SingleDiff8or9);
  //红外
  ADC_QuickInit(ADC0_SE14_PC0,  kADC_SingleDiff8or9);
  Sequeue_Init(&ADC_SEQ, _ADC_SEQ_DATABASE, ADC_SEQ_LEN);
  for (int i = 0; i < ADC_SEQ.len_max - 1; i++){
    Sequeue_In_Queue(&ADC_SEQ, ADCDATA);
  }
}

/*
 *得到ADC数据
 *pragma in adc*
 *
 */
void MyADC_Get(adc *adcdata){
  adcdata->h_1[0] = ADC_QuickReadValue(ADC0_SE8_PB0); //第一排左侧
  adcdata->h_1[1] = ADC_QuickReadValue(ADC1_SE14_PB10); //第一排中间
  adcdata->h_1[2] = ADC_QuickReadValue(ADC1_SE15_PB11); //第一排右侧
  adcdata->v_1[0] = ADC_QuickReadValue(ADC1_SE10_PB04); //垂直左侧
  adcdata->v_1[1] = ADC_QuickReadValue(ADC1_SE11_PB05); //垂直右侧
  adcdata->h_2[0] = ADC_QuickReadValue(ADC1_SE12_PB06); //第二排左侧
  adcdata->h_2[1] = ADC_QuickReadValue(ADC0_SE9_PB1); //第二排中间
  adcdata->h_2[2] = ADC_QuickReadValue(ADC1_SE13_PB07); //第二排右侧
  //adcdata->protect = ADC_QuickReadValue(ADC1_SE15_PB11); //第二排右侧
  //adcdata->IR = (5556-ADC_QuickReadValue(ADC0_SE14_PC0))/(24.6);//红外
  Sequeue_In_Queue(&ADC_SEQ, ADCDATA);
  Sequeue_Out_Queue(&ADC_SEQ);
}

u16 MyADC_H1_Sum(adc *adcdata){
  u32 temp = 0;
  int i;
  for (i = 0; i < AD_H1_LEN; i++){
    temp += adcdata->h_1[i];
  }
  return temp;
}

u16 MyADC_H1_Min(adc *adcdata){
  u32 temp = adcdata->h_1[0];
  int i;
  for (i = 1; i < AD_H1_LEN; i++){
    if (temp > adcdata->h_1[i])
      temp = adcdata->h_1[i];
  }
  return temp;
}

u16 MyADC_H2_Sum(adc *adcdata){
  u32 temp = 0;
  int i;
  for (i = 0; i < AD_H2_LEN; i++){
    temp += adcdata->h_2[i];
  }
  return temp;
}

u16 MyADC_H2_Min(adc *adcdata){
  u32 temp = adcdata->h_2[0];
  int i;
  for (i = 1; i < AD_H2_LEN; i++){
    if (temp > adcdata->h_2[i])
      temp = adcdata->h_2[i];
  }
  return temp;
}

u16 MyADC_V1_Sum(adc *adcdata){
  u32 temp = 0;
  int i;
  for (i = 0; i < AD_V1_LEN; i++){
    temp += adcdata->v_1[i];
  }
  return temp;
}

u16 MyADC_V1_Min(adc *adcdata){
  u32 temp = adcdata->v_1[0];
  int i;
  for (i = 1; i < AD_H2_LEN; i++){
    if (temp > adcdata->v_1[i])
      temp = adcdata->v_1[i];
  }
  return temp;
}

void MyADC_Show(adc *adcdata){
  
  OLED_PrintShort_3(30, 0, (adcdata->h_1)[0]);
  OLED_PrintShort_3(60, 0, (adcdata->h_1)[1]);
  OLED_PrintShort_3(90, 0, (adcdata->h_1)[2]);
  OLED_PrintShort_3(50, 1, (adcdata->v_1)[0]);
  OLED_PrintShort_3(80, 1, (adcdata->v_1)[1]);
  OLED_PrintShort_3(30, 2, (adcdata->h_2)[0]);
  OLED_PrintShort_3(60, 2, (adcdata->h_2)[1]);
  OLED_PrintShort_3(90, 2, (adcdata->h_2)[2]);
}
void MyADC_Uart_Show(adc *adcdata){
  u8 data[9] = {0,};
  int i;
  for(i=0;i<3;i++){
    data[i] = (adcdata->h_1)[i];
  }
  for(i=0;i<2;i++){
    data[3+i] = (adcdata->v_1)[i];
  }
  MyPrint(data,7);
}