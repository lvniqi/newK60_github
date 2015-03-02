#ifndef __DIANJI_H
#define __DIANJI_H

#include "head.h"

extern u32 dianji;
extern u32 dianji_last;

extern float dianji_Kp;
extern float dianji_Ki;
extern float dianji_Kd;

extern u32 sp;
extern u32 sp_expect;

extern int sp_e0;
extern int sp_e0_last;
extern int sp_e0_last_last;

extern int sp_e1;
extern int sp_e2;

extern bool dianji_protect;
extern u32 dianji_max_cnt;
extern u32 dianji_min_cnt;

extern void dianji_Init(void); //�����ʼ��
extern void dianji_Stop(void); //ͣ��
extern void dianji_PTurn(u32 duty); //�����ת
extern void dianji_NTurn(u32 duty); //�����ת
extern void dianji_Control(void); //�������
extern void dianji_PID(void); //���PID����

#endif //__DIANJI_H
