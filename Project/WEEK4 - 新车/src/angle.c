#include "angle.h"
float angle_kp = 2394; //舵机控制P值
float angle_kd = 5814; //舵机控制d值
u32 angle = ANGLE_MID;

float _ANGLE_P_SEQ_DATABASE[ANGLE_P_SEQ_LEN];
float_sequeue ANGLE_P_SEQ;
int _ANGLE_SEQ_DATABASE[ANGLE_SEQ_LEN];
angle_sequeue ANGLE_SEQ;

void ANGLE_Init(void){
  FTM_PWM_QuickInit(FTM1_CH1_PA09, kPWM_EdgeAligned, 300);
  FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, ANGLE_MID);
  Sequeue_Init(&ANGLE_P_SEQ, _ANGLE_P_SEQ_DATABASE, ANGLE_P_SEQ_LEN);
  Sequeue_Init(&ANGLE_SEQ, _ANGLE_SEQ_DATABASE, ANGLE_SEQ_LEN);
  ANGLE_SEQ.lock = 0;
  for (int i = 0; i < ANGLE_P_SEQ_LEN - 1; i++){
    Sequeue_In_Queue(&ANGLE_P_SEQ, 0);
  }
  for (int i = 0; i < ANGLE_SEQ_LEN - 1; i++){
    Sequeue_In_Queue(&ANGLE_SEQ, ANGLE_MID);
  }
}

void ANGLE_Control(void){
  /**
   *舵机方向控制
   */
  //第一排 左侧减右侧
  float horizontal_1_cut = ADCDATA.horizontal_1[2] - ADCDATA.horizontal_1[0];
  //第二排 左侧减右侧
  float horizontal_2_cut = ADCDATA.horizontal_2[1] - ADCDATA.horizontal_2[0];
  //第一排 总和
  float horizontal_1_sum = MyADC_H1_Sum(&ADCDATA);
  //第二排 总和
  float horizontal_2_sum = MyADC_H2_Sum(&ADCDATA);
  //垂直 差 和
  float vertical_1_cut,vertical_1_sum;
  vertical_1_cut = ADCDATA.vertical_1[1] - ADCDATA.vertical_1[0];
  vertical_1_sum = MyADC_V1_Sum(&ADCDATA);
  int temp_angle = Sequeue_Get_Rear(&ANGLE_SEQ);
  if (((
       horizontal_2_sum/2>horizontal_1_sum &&
       horizontal_2_sum/3>vertical_1_sum
       )||(
       ANGLE_is_edge(temp_angle)&&
       vertical_1_sum+horizontal_1_sum <2000
       ))&&ANGLE_SEQ.lock != true
      ){
    ANGLE_goto_edge(Sequeue_Get_Rear(&ANGLE_SEQ));
    ANGLE_SEQ.lock = true;
    //Beep_Enable();
  }
  else if(horizontal_1_sum+vertical_1_sum>3800&&
           ANGLE_SEQ.lock == true
          ){
    ANGLE_SEQ.lock = false;
    Beep_Enable();
  }
  //如果前后差太大 更相信后方
  float temp1 = horizontal_1_cut/horizontal_1_sum;
  float temp2 = horizontal_2_cut/horizontal_2_sum;
  /*
  if (abs(temp2 + temp1)+0.2< 
      abs(temp2 - temp1) and
      horizontal_2_sum>2000 and
     (!ANGLE_SEQ.lock)){
    horizontal_1_cut += horizontal_2_cut * 0.1;
    horizontal_1_sum += MyADC_H2_Sum(&ADCDATA) *0.1;
    Beep_Enable();
  }
  */
  float cha = arg1 * horizontal_1_cut + arg2 * vertical_1_cut;
  float he =  horizontal_1_sum + vertical_1_sum;
  float ep;
  if (he > 50&&!(ANGLE_SEQ.lock)){
    ep = cha / powf(he, 1.5);
  }
  else{
    ep = Sequeue_Get_Rear(&ANGLE_P_SEQ);
  }
  Sequeue_In_Queue(&ANGLE_P_SEQ, ep);
  Sequeue_Out_Queue(&ANGLE_P_SEQ);
  float ed = Sequeue_Get_One(&ANGLE_P_SEQ, ANGLE_P_SEQ.len - 2) - Sequeue_Get_One
    (&ANGLE_P_SEQ, ANGLE_P_SEQ.len - 4);
  angle = ANGLE_MID + (angle_kp *ep + angle_kd * ed);
  ANGLE_Size_control(angle);
  /*if ((MyADC_H1_Average(&ADCDATA) < 150 and 
       MyADC_H1_Average(&ADCDATA) <MyADC_H2_Average(&ADCDATA) / 3 and 
       MyADC_V1_Average(&ADCDATA) < 200)or
      (MyADC_H1_Average(&ADCDATA) < 100 and MyADC_V1_Average(&ADCDATA) < 100)or
      (MyADC_H1_Average(&ADCDATA) < 300 and MyADC_H2_Average(&ADCDATA) < 500 and
       MyADC_V1_Average(&ADCDATA) < 300)){
      
      Sequeue_In_Queue(&ANGLE_SEQ, Sequeue_Get_One(&ANGLE_SEQ, ANGLE_SEQ.len - 4));
      for (int j = 0; j < 4; j++){
        Sequeue_Out_Queue(&ANGLE_SEQ);
        Sequeue_In_Queue(&ANGLE_SEQ, Sequeue_Get_Rear(&ANGLE_SEQ));
      }
  }
  else*/
  if(ANGLE_SEQ.lock){
    pass;
  }
  else{
    Sequeue_In_Queue(&ANGLE_SEQ, angle);
    Sequeue_Out_Queue(&ANGLE_SEQ);
  }
  ANGLE_ChangeDuty(Sequeue_Get_Rear(&ANGLE_SEQ));
}
