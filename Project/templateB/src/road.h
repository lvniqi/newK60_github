#ifndef __ROAD_H
#define __ROAD_H

#include "head.h"

#define other_f     1 //其他标志位
#define longStraight_f  2 //长直道标志位
#define cross_f     3 //十字标志位
#define bigS_f      4 //大S标志位
#define smallS_f    5 //小S标志位

extern u32 stright_cnt;

extern void judge_longStright(void); //判断长直道
extern void judge_cross(void); //判断十字
extern void judge_bigS(void); //判断大S
extern void judge_smallS(void); //判断小S

extern void road_info(void);

#endif // __ROAD_H
