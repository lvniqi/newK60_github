#ifndef __DIANJI_H
#define __DIANJI_H

#include "head.h"

extern void dianji_Init(void); //�����ʼ��
extern void dianji_Stop(void); //ͣ��
extern void dianji_LPTurn(u32 duty); //������ת
extern void dianji_RPTurn(u32 duty); //�ҵ����ת
extern void dianji_LNTurn(u32 duty); //������ת
extern void dianji_RNTurn(u32 duty); //�ҵ����ת
extern void dianji_Control(void); //�������

#endif //__DIANJI_H
