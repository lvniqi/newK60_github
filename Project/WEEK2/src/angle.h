#ifndef __ANGLE_H
  #define __ANGLE_H
  #include "common.h"
  #include "FTM.h"
  #include "Threads.h"
  #include "ymath.h"
  #include "sequeue.h"
  /**
   *���������
   *ANGLE_LIMIT:����ұ����ƫ��ֵ
   *duojic_l:���������ƫ��ֵ
   *ANGLE_MID:�������ֵ
   *duoji_right:��������ֵ
   *duoji_left:��������ֵ
   */
  #define ANGLE_LIMIT 1200
  #define ANGLE_MID 4470
  #define ANGLE_LIMIT_LEFT (ANGLE_MID-ANGLE_LIMIT)
  #define ANGLE_LIMIT_RIGHT  (ANGLE_MID+ANGLE_LIMIT)
  #define ANGLE_Size_control(angle){ if(angle > ANGLE_LIMIT_RIGHT) angle =\
  ANGLE_LIMIT_RIGHT;if(angle<ANGLE_LIMIT_LEFT)angle = ANGLE_LIMIT_LEFT;}

  //#define arg1 0.6
  //#define arg2 1.3
  //#define arg3 0.3
  //#define arg4 0.3
  extern float angle_kp; //�������Pֵ
  extern float angle_kd; //�������dֵ
  extern float angle_ki; //�������iֵ
  #define INDUCT_SEQ_LEN 10
  extern float_sequeue INDUCT_SEQ;
  #define ANGLE_SEQ_LEN 10
  extern angle_sequeue ANGLE_SEQ;
  extern u32 angle;

  #define ANGLE_ChangeDuty(duty) (FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, duty))
  //�����ǳ���

  extern void ANGLE_Init(void); //�����ʼ��
  extern void ANGLE_Control(void); //�������

#endif //__ANGLE_H
