
#ifndef SPEED_CONTROL_H_
#define SPEED_CONTROL_H_
#include "common.h"
#include "sequeue.h"
#define SPEED_LEN 6

extern float SPEED_P;
extern float SPEED_I;
extern float SPEED_D;

/*速度数据*/
typedef struct _speeddata
{
    float speed_error;
    float speed_set;
} speeddata;
/*速度队列*/
typedef struct _speed_sequeue
{
    speeddata dataspace[SPEED_LEN];
    char front;
    char rear; 
    char len;
    char len_max;
}speed_sequeue;
extern speed_sequeue SPEED_LIST;
extern u8 SPEED_GET_FLAG;
extern float speed_mid_PID(float set_speed,double kp,double ki,double kd);
/****************/
//extern PT_THREAD( SPEED_GET(PT *pt) );
/****************/
#define SPEED_SET(speed) speed_mid_PID(speed,SPEED_P,SPEED_I,SPEED_D)
extern void Speed_Sequeue_Init(void);
/*现有速度*/
extern int SPEED_CURR ;
#endif