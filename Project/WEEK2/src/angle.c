#include "angle.h"
float angle_kp = 30000; //舵机控制P值
float angle_kd = 18000; //舵机控制d值
float angle_ki = 0; //舵机控制i值
u32 angle = ANGLE_MID;

float _INDUCT_SEQ_DATABASE[INDUCT_SEQ_LEN];
float_sequeue INDUCT_SEQ;
int _ANGLE_SEQ_DATABASE[ANGLE_SEQ_LEN];
int_sequeue ANGLE_SEQ;

void ANGLE_Init(void)
{
  FTM_PWM_QuickInit(FTM1_CH1_PA09, kPWM_EdgeAligned, 300);
  FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, ANGLE_MID);
  Sequeue_Init(&INDUCT_SEQ,_INDUCT_SEQ_DATABASE,INDUCT_SEQ_LEN);
  Sequeue_Init(&ANGLE_SEQ,_ANGLE_SEQ_DATABASE,ANGLE_SEQ_LEN);
  for(int i=0;i<INDUCT_SEQ_LEN-1;i++)
  {
    Sequeue_In_Queue(&INDUCT_SEQ,0);
  }
  for(int i=0;i<ANGLE_SEQ_LEN-1;i++)
  {
    Sequeue_In_Queue(&ANGLE_SEQ,ANGLE_MID);
  }
}

void ANGLE_Control(void)
{
  /**
   *舵机方向控制
  */
  //第一排 左侧减右侧
  float horizontal_1_cut = ADCDATA.horizontal_1[0] - ADCDATA.horizontal_1[2];
  //第二排 左侧减右侧
  float horizontal_2_cut = ADCDATA.horizontal_2[0] - ADCDATA.horizontal_2[1];
  //第一排 左侧加右侧
  float horizontal_1_sum = MyADC_H1_Sum(&ADCDATA);
  //垂直 差 和
  float vertical_1_cut,vertical_1_sum;
  vertical_1_cut = ADCDATA.vertical_1[0] - ADCDATA.vertical_1[1];
  vertical_1_sum = MyADC_V1_Sum(&ADCDATA);
  if(MyADC_H1_Average(&ADCDATA) > 1400 and abs(vertical_1_cut)>400 and MyADC_H2_Average(&ADCDATA) > 700
     and MyADC_V1_Min(&ADCDATA) >700
     and abs(horizontal_1_cut)>300
     and abs(vertical_1_cut+horizontal_1_cut)<abs(vertical_1_cut-horizontal_1_cut)
     and abs(horizontal_2_cut+horizontal_1_cut)>abs(horizontal_2_cut-horizontal_1_cut)+100
     )
  {
    vertical_1_sum /= 5;
    horizontal_1_cut =horizontal_1_cut*2 + horizontal_2_cut*2;
    vertical_1_cut /= 5;
    Beep_Enable();
  }
  if(abs(horizontal_2_cut+horizontal_1_cut)+500<abs(horizontal_2_cut-horizontal_1_cut))
  {
    horizontal_1_cut = horizontal_1_cut*0.8+horizontal_2_cut*0.2;
    horizontal_1_sum = horizontal_1_sum*0.8+MyADC_H2_Sum(&ADCDATA)*0.2;
  }
  float cha = arg1 * horizontal_1_cut + arg2 * vertical_1_cut;
  float he = arg3 * horizontal_1_sum + arg4 * vertical_1_sum;
  float ep;
  if(he >100 or he <-100)
  {
    ep = cha / powf(he,1.5);
  }
  else
  {
    ep = Sequeue_Get_Rear(&INDUCT_SEQ);
  }
  Sequeue_In_Queue(&INDUCT_SEQ,ep);
  if(MyADC_H1_Average(&ADCDATA)/100<MyADC_H1_Average(&Sequeue_Get_One(&ADC_SEQ,ADC_SEQ.len-2))/100
     and angle_kp<35000)
  {
    angle_kp += 1;
  }
  else if(MyADC_H1_Average(&ADCDATA)/100>MyADC_H1_Average(&Sequeue_Get_One(&ADC_SEQ,ADC_SEQ.len-2))/100
          and angle_kp > 25000)
  {
    angle_kp -= 2;
  }
  Sequeue_Out_Queue(&INDUCT_SEQ);
  float ed = Sequeue_Get_One(&INDUCT_SEQ,INDUCT_SEQ.len-2)-Sequeue_Get_One(&INDUCT_SEQ,INDUCT_SEQ.len-4);
  angle = ANGLE_MID+(angle_kp*ep + angle_kd * ed);
  ANGLE_Size_control(angle);
  if( (MyADC_H1_Average(&ADCDATA)<150
      and MyADC_H1_Average(&ADCDATA) <MyADC_H2_Average(&ADCDATA)/3 
      and MyADC_V1_Average(&ADCDATA)<200)
     or (MyADC_H1_Average(&ADCDATA)<100 and MyADC_V1_Average(&ADCDATA)<100)
     or (MyADC_H1_Average(&ADCDATA)<300 and MyADC_H2_Average(&ADCDATA)<500 and MyADC_V1_Average(&ADCDATA)<300)
       )
  {
    Sequeue_In_Queue(&ANGLE_SEQ,Sequeue_Get_One(&ANGLE_SEQ,ANGLE_SEQ.len-3));
    for(int j=0;j<3;j++)
    {
      Sequeue_Out_Queue(&ANGLE_SEQ);
      Sequeue_In_Queue(&ANGLE_SEQ,Sequeue_Get_Rear(&ANGLE_SEQ));
    }
  }
  else
  {
    Sequeue_In_Queue(&ANGLE_SEQ,angle);
  }
  Sequeue_Out_Queue(&ANGLE_SEQ);
  ANGLE_ChangeDuty(Sequeue_Get_Rear(&ANGLE_SEQ));
}
