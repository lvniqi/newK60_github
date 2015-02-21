#include "angle.h"
float angle_kp = 25000; //舵机控制P值
float angle_kd = 1000; //舵机控制d值
float angle_ki = 0; //舵机控制i值
u32 angle = 0;
float_sequeue ANGLE_SEQ;
float _ANGLE_SEQ_DATABASE[ANGLE_SEQ_LEN];

void ANGLE_Init(void)
{
  FTM_PWM_QuickInit(FTM1_CH1_PA09, kPWM_EdgeAligned, 300);
  FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, ANGLE_MID);
  Sequeue_Init(&ANGLE_SEQ,_ANGLE_SEQ_DATABASE,ANGLE_SEQ_LEN);
  for(int i=0;i<ANGLE_SEQ_LEN-1;i++)
  {
    Sequeue_In_Queue(&ANGLE_SEQ,0);
  }
}

void ANGLE_Control(void)
{
  /**
   *舵机方向控制
  */
  //第一排 左侧减右侧
  float horizontal_1_cut = ADCDATA.horizontal_1[0] - ADCDATA.horizontal_1[2];
  //第一排 左侧加右侧
  float horizontal_1_sum = MyADC_H1_Sum(&ADCDATA);
  //垂直 差 和
  float vertical_1_cut,vertical_1_sum;
  if(ADCDATA.vertical_1[0] <= 250&&ADCDATA.vertical_1[1]<= 250)
  {
    vertical_1_cut = 0;
    vertical_1_sum = 0;
  }
  else
  {
    vertical_1_cut = ADCDATA.vertical_1[0] - ADCDATA.vertical_1[1];
    vertical_1_sum = MyADC_V1_Sum(&ADCDATA);
    if(ABS(vertical_1_cut) < 200)
    {
      vertical_1_sum = 0;
      vertical_1_cut = 0;
    }
  }
  
  float cha = arg1 * horizontal_1_cut + arg2 * vertical_1_cut;
  float he = arg3 * horizontal_1_sum + arg4 * vertical_1_sum;
  float
  ep = cha / powf(he,1.5);
  if(MyADC_H1_Average(&ADCDATA) <600 && MyADC_V1_Average(&ADCDATA)<600)
  {
    Sequeue_In_Queue(&ANGLE_SEQ,Sequeue_Get_Rear(&ANGLE_SEQ));
  }
  else
  {
    Sequeue_In_Queue(&ANGLE_SEQ,ep);
  }
  Sequeue_Out_Queue(&ANGLE_SEQ);
  float ed = Sequeue_Get_One(&ANGLE_SEQ,ANGLE_SEQ.len-2)-Sequeue_Get_One(&ANGLE_SEQ,ANGLE_SEQ.len-4);
  angle = ANGLE_MID-((angle_kp+40960/(MyADC_H1_Average(&ADCDATA)+1)) * Sequeue_Get_Rear(&ANGLE_SEQ) + angle_kd * ed);
  ANGLE_Size_control(angle);
  ANGLE_ChangeDuty(angle);
}
