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
  #define ANGLE_LIMIT 1200
  #define ANGLE_MID 4600
  #define ANGLE_LIMIT_LEFT (ANGLE_MID-ANGLE_LIMIT)
  #define ANGLE_LIMIT_RIGHT  (ANGLE_MID+ANGLE_LIMIT)
  #define ANGLE_almost_edge(angle)      ((angle) > ANGLE_LIMIT_RIGHT-300||(angle) <ANGLE_LIMIT_LEFT+300)
  #define ANGLE_goto_edge(angle)        {if((angle) > ANGLE_LIMIT_RIGHT-300){(angle) = ANGLE_LIMIT_RIGHT;}\
                                         else if((angle) <ANGLE_LIMIT_LEFT+300){(angle) = ANGLE_LIMIT_LEFT;}}   
  #define ANGLE_Size_control(angle){ if(angle > ANGLE_LIMIT_RIGHT) angle =\
  ANGLE_LIMIT_RIGHT;if(angle<ANGLE_LIMIT_LEFT)angle = ANGLE_LIMIT_LEFT;}

  #define arg1 0.6
  #define arg2 1.3
  #define arg3 0.3
  #define arg4 0.3
  extern float angle_kp; //舵机控制P值
  extern float angle_kd; //舵机控制d值
  extern float angle_ki; //舵机控制i值
  #define ANGLE_P_SEQ_LEN ANGLE_SEQ_LEN
  extern float_sequeue ANGLE_P_SEQ;
  #define ANGLE_SEQ_LEN 10
  extern angle_sequeue ANGLE_SEQ;
  extern u32 angle;

  #define ANGLE_ChangeDuty(duty) (FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, duty))
  //舵机打角程序

  extern void ANGLE_Init(void); //舵机初始化
  extern void ANGLE_Control(void); //舵机控制

#endif //__ANGLE_H
