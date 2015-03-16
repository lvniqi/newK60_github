#include "angle.h"
float angle_kp = 4100; //舵机控制P值
float angle_kd = 6100; //舵机控制d值
u32 angle = ANGLE_MID;

float _ANGLE_P_SEQ_DATABASE[ANGLE_P_SEQ_LEN];
float_sequeue ANGLE_P_SEQ;
int _ANGLE_SEQ_DATABASE[ANGLE_SEQ_LEN];
angle_sequeue ANGLE_SEQ;
bool ANGLE_bigger(float angle1,float angle2){
  if(angle1 >0){
    if(angle2 >angle1){
      return true;
    }
  }
  else{
    if(angle2 <angle1){
      return true;
    }
  }
  return false;
}
bool ANGLE_same_type(float angle1,float angle2){
  if(angle1 >0){
    if(angle2 >=0){
      return true;
    }
  }
  else{
    if(angle2 <=0){
      return true;
    }
  }
  return false;
}
void ANGLE_Init(void){
  FTM_PWM_QuickInit(FTM1_CH1_PA09, kPWM_EdgeAligned, 300);
  FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, ANGLE_MID);
  Sequeue_Init(&ANGLE_P_SEQ, _ANGLE_P_SEQ_DATABASE, ANGLE_P_SEQ_LEN);
  Sequeue_Init(&ANGLE_SEQ, _ANGLE_SEQ_DATABASE, ANGLE_SEQ_LEN);
  ANGLE_SEQ.lock = ANGLE_NOLOCK;
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
  float horizontal_2_cut = ADCDATA.horizontal_2[2] - ADCDATA.horizontal_2[0];
  //第一排 总和
  float horizontal_1_sum = MyADC_H1_Sum(&ADCDATA);
  //第二排 总和
  float horizontal_2_sum = MyADC_H2_Sum(&ADCDATA);
  //垂直 差 和
  float vertical_1_cut,vertical_1_sum;
  vertical_1_cut = ADCDATA.vertical_1[1] - ADCDATA.vertical_1[0];
  vertical_1_sum = MyADC_V1_Sum(&ADCDATA);
  int temp_angle = Sequeue_Get_Rear(&ANGLE_SEQ);
  float cha = arg1 * horizontal_1_cut + arg2 * vertical_1_cut;
  float he =  horizontal_1_sum + 0.5*vertical_1_sum;
  float ep;
  if (((
       horizontal_2_sum/3>horizontal_1_sum &&
       horizontal_2_sum/4>vertical_1_sum//&&
       //horizontal_2_sum > 1300
       )||(
       ANGLE_is_edge(temp_angle)&&
       he <2200&&
       he >150
       ))&&ANGLE_SEQ.lock == ANGLE_NOLOCK
      ){
    ANGLE_goto_edge(Sequeue_Get_Rear(&ANGLE_SEQ));
    ANGLE_SEQ.lock = ANGLE_type_edge(angle);
    Beep_Enable();
  }
  else if(he>2500&&
           horizontal_2_sum>2500&&
           ANGLE_same_type(horizontal_1_cut,horizontal_2_cut)&&
           //horizontal_1_cut+vertical_1_cut<-200&&
           //horizontal_1_cut+vertical_1_cut>-600&&
           ANGLE_SEQ.lock == ANGLE_LEFT_LOCK
          ){
    ANGLE_SEQ.lock = ANGLE_NOLOCK;
    //Beep_Enable();
  }
  else if(he>2500&&
           horizontal_2_sum>2500&&
           ANGLE_same_type(horizontal_1_cut,horizontal_2_cut)&&
           //horizontal_1_cut+vertical_1_cut>200&&
           //horizontal_1_cut+vertical_1_cut<600&&
           ANGLE_SEQ.lock == ANGLE_RIGHT_LOCK
          ){
    ANGLE_SEQ.lock = ANGLE_NOLOCK;
    //Beep_Enable();
  }
  //如果前后差太大 更相信后方
  float temp1 = horizontal_1_cut/horizontal_1_sum;
  float temp2 = horizontal_2_cut/horizontal_2_sum;

  if (he > 50&&!(ANGLE_SEQ.lock)){
    ep = cha / powf(he, 1.6);
  }
  else if(ANGLE_SEQ.lock){
    float temp = cha / powf(he, 1.6);
    if(ANGLE_bigger(Sequeue_Get_Rear(&ANGLE_P_SEQ),temp)){
      ep = temp;
    }
    else{
      ep = Sequeue_Get_Rear(&ANGLE_P_SEQ);
    }
  }
  else{
    ep = Sequeue_Get_Rear(&ANGLE_P_SEQ);
  }
  Sequeue_In_Queue(&ANGLE_P_SEQ, ep);
  Sequeue_Out_Queue(&ANGLE_P_SEQ);
  
  float ed = Sequeue_Get_One(&ANGLE_P_SEQ, ANGLE_P_SEQ.len - 2) - 
    Sequeue_Get_One(&ANGLE_P_SEQ, ANGLE_P_SEQ.len - 4);
  angle = ANGLE_MID + (angle_kp *ep + angle_kd * ed);
  
    Sequeue_In_Queue(&ANGLE_SEQ, angle);
    Sequeue_Out_Queue(&ANGLE_SEQ);
    
    ANGLE_ChangeDuty(Sequeue_Get_Rear(&ANGLE_SEQ));
}
