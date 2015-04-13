#ifndef __ANGLE_H
  #define __ANGLE_H
  #include "common.h"
  #include "FTM.h"
  #include "Threads.h"
  #include "ymath.h"
  #include "math.h"
  #include "sequeue.h"
  /**
   *舵机参数：
   *ANGLE_LIMIT:舵机右边最大偏移值
   *duojic_l:舵机左边最大偏移值
   *ANGLE_MID:舵机中心值
   *duoji_right:舵机右最大值
   *duoji_left:舵机左最大值
   */
  #define ANGLE_LIMIT 1300
  #define ANGLE_MID 4600
  #define ANGLE_LEFT_LOCK 1
  #define ANGLE_RIGHT_LOCK 2
  #define ANGLE_LEFT_MAX_LOCK 1
  #define ANGLE_RIGHT_MAX_LOCK 2
  #define ANGLE_MAX_NOLOCK 0
  #define ANGLE_NOLOCK 0
  #define ANGLE_LIMIT_LEFT (ANGLE_MID-ANGLE_LIMIT)
  #define ANGLE_LIMIT_RIGHT  (ANGLE_MID+ANGLE_LIMIT)
  #define ANGLE_type_edge(angle)        ((angle)>ANGLE_MID?ANGLE_RIGHT_LOCK:ANGLE_LEFT_LOCK)
  #define ANGLE_almost_edge(angle)      ((angle) > ANGLE_MID+400||(angle) <ANGLE_MID-400)
  #define ANGLE_is_edge(angle)      ((angle) > ANGLE_LIMIT_RIGHT-300||(angle) <ANGLE_LIMIT_LEFT+300)
  #define ANGLE_goto_edge(angle)        {if((angle) > ANGLE_LIMIT_RIGHT-750){(angle) = ANGLE_LIMIT_RIGHT;}\
                                         else if((angle) <ANGLE_LIMIT_LEFT+750){(angle) = ANGLE_LIMIT_LEFT;}}   
  #define ANGLE_Size_control(angle){ if(angle > ANGLE_LIMIT_RIGHT) angle =\
  ANGLE_LIMIT_RIGHT;if(angle<ANGLE_LIMIT_LEFT)angle = ANGLE_LIMIT_LEFT;}

  #define arg1 30
  #define arg2 (100-arg1)
  extern float angle_kp; //舵机控制P值
  extern float angle_kd; //舵机控制d值
  extern float angle_ki; //舵机控制i值
  #define ANGLE_P_SEQ_LEN ANGLE_SEQ_LEN
  extern float_sequeue ANGLE_P_SEQ;
  #define ANGLE_SEQ_LEN 10
  extern angle_sequeue ANGLE_SEQ;
  extern u32 angle;

  #define ANGLE_ChangeDuty(duty) {int temp = (duty);ANGLE_Size_control(temp);FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, temp);}
  //舵机打角程序

  extern void ANGLE_Init(void); //舵机初始化
  extern void ANGLE_Control(void); //舵机控制
void duoji_Control(void);

#endif //__ANGLE_H
