#ifndef __INCLUDE_H__
#define __INCLUDE_H__

#include  "common.h"

/*
 * Include �û��Զ����ͷ�ļ�
*/

#include  "HAL_GPIO.h"      //IO�ڲ���
#include  "HAL_eDMA.h"
#include  "HAL_UART.h"      //����
#include  "HAL_ADC.h"       //ADCģ��
#include  "HAL_FTM.h"       //FTMģ�飨FTM0��������� / ͨ�� /PWM     FTM1��2���������� / ͨ�� /PWM ��
#include  "HAL_PIT.h"       //�����жϼ�ʱ��
#include  "HAL_LPTMR.h"     //�͹��Ķ�ʱ��(��ʱ)
#include  "General.h"
#include  "HAL_SDHC.h"
#include  "OLED.h"
#include  "Control.h"
#include  "Sampling.h"
#include  "HAL_FLASH.h"
#include  "VisualScope.h"

#define Straight 0
#define Left     1
#define Right    2

#define LCD_Mode1      1
#define LCD_Mode2      2
#define LCD_Mode3      3

#define Integration 10
/*
 * Extern  ȫ�ֱ�������
*/

extern uint8 CCD;
extern uint8 ad_flag;
extern uint32 straight_l;
extern uint32 straight_r;
extern uint32 bs_up;
extern uint8 Beep_Flag;
extern uint8 pipe_flag;
extern float P,I,Dif,p,d,t,v;
extern int zhi_speed,wan_speed,SZ;
extern uint16 tempbrick,pd_flag;
extern uint8 spd,podao;
extern uint8 CCD_left,CCD_right;

#endif  //__INCLUDE_H__

/*End of "includes.h */