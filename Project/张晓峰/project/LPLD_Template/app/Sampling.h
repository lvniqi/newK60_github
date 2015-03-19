#ifndef __SAMPLING_H__
#define __SAMPLING_H__ 1

#include  "includes.h"

#define THRESHOLD       100     //设置二值化阈值
#define WINDOW_WIDTH    128     //设置串口打印的像素个数，最大128，最小0

extern uint16 need_data0;
extern uint16 need_data1;
extern uint16 need_data2;
extern uint16 need_data3;
extern uint16 need_data4;
extern uint16 need_data5;
extern uint16 need_data6;
extern uint16 need_data7;
extern float need_data9;
extern int need_data8;
extern int AD_DATA8;
extern int tly_init;
extern uint8 Samplecomplete;
extern uint8 AD_Sample; 
extern uint8 gPixel[];
extern int leftvalue;
extern int rightvalue;
extern float value_l,value_r;
extern uint8 brick_l_flag,brick_r_flag;
extern uint8 brick_flag,DC_flag;
extern uint8 brick;
extern uint8 CCD_flag;

extern float CCD_averl;
extern float CCD_averr;
extern uint16 Straight_Brick;
extern uint8  Max_Pixel;
extern uint8  Min_Pixel;
extern uint8  up;

extern uint8 Samplecomplete;
extern uint8 Brick_Flag;
extern uint8 Brick_Dir;
extern uint8 AD_Sample; 
extern uint8 gPixel_t[];
extern uint8 gPixel_s[];
extern float lastsum[];
extern float lasterror;
extern uint8  Inout;

void SampleAD();
void CCD_GetResults(uint8 *pixel);
void BrickJudge();
void ScanBrick(uint8 *pixel);
#endif /* __SAMPLING_H__ */