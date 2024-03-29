/*
* CCD.c
*
*  Created on: 2013-12-2
*      Author: lvniqi
*      Email: lvniqi@gmail.com
*/
/*
	警告！使用时必须非常小心！
        使用前必须初始化！
        勿要滥用数据 保证数据不遭到修改!
	同时 请防止缓冲区溢出 ！
	
 */
#ifndef SEQUEUE_H_
#define SEQUEUE_H_
/*************队列定义*******************************************/
typedef struct _u8_sequeue
{
	u8* dataspace;
	u16 front;
	u16 rear;
	u16 len;
	u16 len_should_cut;
	u16 len_max;
} u8_sequeue;
typedef struct _u16_sequeue
{
	u16* dataspace;
	u16 front;
	u16 rear;
	u16 len;
	u16 len_should_cut;
	u16 len_max;
} u16_sequeue;
typedef struct _int_sequeue
{
	int* dataspace;
	u16 front;
	u16 rear;
	u16 len;
	u16 len_should_cut;
	u16 len_max;
} int_sequeue;
typedef struct _angle_sequeue
{
        int* dataspace;
        u16 front;
        u16 rear;
        u16 len;
        u16 len_should_cut;
        u16 len_max;
        u8 lock;
        u8 lockmax;
        u8 lock_last;
        u8 lockmax_last;
        u8 count;
        
} angle_sequeue;
typedef struct _float_sequeue
{
	float* dataspace;
	u16 front;
	u16 rear;
	u16 len;
	u16 len_should_cut;
	u16 len_max;
} float_sequeue;

/**************循环缓冲区 函数*************************************/
/*得到队列长度*/
#define Sequeue_Getlen(sq)	\
	((sq)->len)

#define Sequeue_GetlenMax(sq)	\
	((sq)->len_max)


#define Sequeue_Full(sq)\
	( ((sq)->len) >=(sq)->len_max-1)

/*置空队*/
#define Sequeue_Set_Null(sq,len_base)	\
{	\
    (sq)->front = 0;	\
    (sq)->rear = 0;	\
    (sq)->len = 0;	\
    (sq)->len_max = (len_base);	\
}

	
/*判队空*/
#define Sequeue_Empty(sq)	\
    (!Sequeue_Getlen(sq))



/*取头节点*/
#define Sequeue_Get_Front(sq)	\
	(((sq)->dataspace)[((sq)->front)])

/*取尾节点*/
#define Sequeue_Get_Rear(sq)	\
	(  ((sq)->dataspace)[(((sq)->front)+((sq)->len)-1)%((sq)->len_max)]  )
	
/*取得节点I*/
#define Sequeue_Get_One(sq,i)	\
    (  ((sq)->dataspace)[((sq)->front+i)%((sq)->len_max)])	
	
/*入队*/
#define Sequeue_In_Queue(sq,x)	\
{										\
	(((sq)->dataspace)[(sq)->rear]) = x;		\
	(sq)->rear = ((sq)->rear +1)%((sq)->len_max);	\
        ((sq)->len)++;						\
}

/*出队 警告！ 不是POP*/
#define Sequeue_Out_Queue(sq)	\
{								\
	((sq)->len)--;				\
	(sq)->front = ((sq)->front+1)%((sq)->len_max);	\
}
#define Sequeue_Init(sq,_data,len_m)\
{	\
	Sequeue_Set_Null(sq,len_m);\
	(sq)->len_should_cut = 0;	\
	(sq)->dataspace = _data;	\
}
#endif
