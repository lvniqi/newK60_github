#ifndef __ROAD_H
#define __ROAD_H

#include "head.h"

#define other_f     1 //������־λ
#define longStraight_f  2 //��ֱ����־λ
#define cross_f     3 //ʮ�ֱ�־λ
#define bigS_f      4 //��S��־λ
#define smallS_f    5 //СS��־λ

extern u32 stright_cnt;

extern void judge_longStright(void); //�жϳ�ֱ��
extern void judge_cross(void); //�ж�ʮ��
extern void judge_bigS(void); //�жϴ�S
extern void judge_smallS(void); //�ж�СS

extern void road_info(void);

#endif // __ROAD_H
