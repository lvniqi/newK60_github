#ifndef __DUOJI_H
#define __DUOJI_H

#include "head.h"

/**
 *���������
 *duojic_r:����ұ����ƫ��ֵ
 *duojic_l:���������ƫ��ֵ
 *duoji_mid:�������ֵ
 *duoji_right:��������ֵ
 *duoji_left:��������ֵ
*/
#define duojic_r 300
#define duojic_l 300
#define duoji_mid 825 //825
#define duoji_right (duoji_mid+duojic_r)
#define duoji_left  (duoji_mid-duojic_l)

extern float duoji_Kp; //�������Pֵ
extern float duoji_Kd; //�������dֵ
extern float duoji_Ki; //�������iֵ

extern float ep;
extern float ep1;
extern float ep2;
extern float ep3;
extern float ep4;
extern float ed;
extern float ed_old;

extern int e1M2;
extern int e1P2;
extern int e3M4;
extern int e3P4;
extern int e5M6;
extern int e5P6;

extern float cha;
extern float he;

extern u32 duoji;
extern u32 duojiTemp;

extern bool stop;
extern u8 right;
extern u8 left;
extern u8 rightMax;
extern u8 leftMax;

extern float arg1;
extern float arg2;
extern float arg3;
extern float arg4;

#define dingshi 20000
#define duoji_D_Limit 100

#define duoji_ChangeDuty(duty) (FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, duty)) //�����ǳ���

extern void duoji_Init(void); //�����ʼ��
extern void duoji_Control(void); //�������

#endif //__DUOJI_H
