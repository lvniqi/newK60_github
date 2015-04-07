#include "angle.h"
float angle_kp = 950; //舵机控制P值
float angle_kd = 1200; //舵机控制d值
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
int ANGLE_not_same_type(float angle1,float angle2){
  if(angle1 >0){
    if(angle2 >=0){
      return 0;
    }
  }
  else{
    if(angle2 <=0){
      return 0;
    }
  }
  float temp1 = abs(angle1);
  float temp2 = abs(angle2);
  return temp1-temp2;
}
#define ANGLE_same_type(angle1,angle2) (ANGLE_not_same_type((angle1),(angle2)) == 0)
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
  float h_1_cut = ADCDATA.h_1[2] - ADCDATA.h_1[0];
  //第二排 左侧减右侧
  float h_2_cut = ADCDATA.h_2[2] - ADCDATA.h_2[0];
  //第一排 总和
  float h_1_sum = MyADC_H1_Sum(&ADCDATA);
  //第二排 总和
  float h_2_sum = MyADC_H2_Sum(&ADCDATA);
  //垂直 差 和
  float v_1_cut,v_1_sum;
  v_1_cut = ADCDATA.v_1[1] - ADCDATA.v_1[0];
  v_1_sum = MyADC_V1_Sum(&ADCDATA);
  int temp_angle = Sequeue_Get_Rear(&ANGLE_SEQ);
  float arg3 = 1,arg4 = 0.5;
  float cha;
  int temp_dif = ANGLE_not_same_type(h_1_cut,v_1_cut);
  int temp_arg1 = 0.25*abs(h_1_cut)/(abs(v_1_cut)+abs(h_1_cut));
  int temp_arg2 = 0.25-temp_arg1;
  if(temp_dif){
    cha = (0.75+temp_arg1)*arg1 * h_1_cut+(0.75+temp_arg2)*arg2 * v_1_cut;
    if(temp_dif>0){
      arg4 *= 0.5;
    }
    else if(temp_dif <0){
      arg3 *= 0.5;
    }
  }
  else
  {
    cha = arg1 * h_1_cut + arg2 * v_1_cut;
  }
  float he =  arg3 * h_1_sum + arg4 * v_1_sum;
  float ep;
  if(
     ((he>100&&
           h_2_sum>50&&
           ANGLE_same_type(cha,h_2_cut)&&
           (abs(h_2_cut/h_2_sum)<0.3||(he>187))
         )||
     (he>260))&&
           ANGLE_SEQ.lock != ANGLE_NOLOCK
          ){
    ANGLE_SEQ.lock = ANGLE_NOLOCK;
    //Beep_Enable();
  }

  if (he > 4&&(ANGLE_SEQ.lock == ANGLE_NOLOCK)){
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
  
  float ed = Sequeue_Get_One(&ANGLE_P_SEQ, ANGLE_P_SEQ.len - 1) - 
    Sequeue_Get_One(&ANGLE_P_SEQ, ANGLE_P_SEQ.len - 3);
  angle = ANGLE_MID + (angle_kp *ep + angle_kd * ed);
    ANGLE_Size_control(angle);
    Sequeue_In_Queue(&ANGLE_SEQ, angle);
    Sequeue_Out_Queue(&ANGLE_SEQ);
  if (((
     h_2_sum/4>h_1_sum &&
     h_2_sum/5>v_1_sum
     )||(
     ANGLE_is_edge(temp_angle)&&
     he >30&&
     he <250
     ))&&ANGLE_SEQ.lock == ANGLE_NOLOCK
    ){
    ANGLE_goto_edge(Sequeue_Get_Rear(&ANGLE_SEQ));
    ANGLE_SEQ.lock = ANGLE_type_edge(angle);
    //Beep_Enable();
  }
    ANGLE_ChangeDuty(Sequeue_Get_Rear(&ANGLE_SEQ));
}
