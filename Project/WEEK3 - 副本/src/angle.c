#include "angle.h"
float angle_kp = 10500; //舵机控制P值
float angle_kd = 25500; //舵机控制d值
float angle_ki = 0; //舵机控制i值
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
  ANGLE_SEQ.left_lock_max = false;
  ANGLE_SEQ.right_lock_max = false;
  for (int i = 0; i < ANGLE_P_SEQ_LEN - 1; i++){
    Sequeue_In_Queue(&ANGLE_P_SEQ, 0);
  }
  for (int i = 0; i < ANGLE_SEQ_LEN - 1; i++){
    Sequeue_In_Queue(&ANGLE_SEQ, ANGLE_MID);
  }
}

//测试！
  /*
  if((vertical_1_cut>=320)&&
     (ADCDATA.vertical_1[0]-ADCDATA.horizontal_1[1]>=320)&&
      ANGLE_SEQ.right_lock_max==false&&
      MyADC_H1_Average(&ADCDATA)<1600){
    ANGLE_SEQ.left_lock_max=true;
  }
  else if((vertical_1_cut<=-320)&&
           (ADCDATA.vertical_1[1]-ADCDATA.horizontal_1[1]>=320)&&
            ANGLE_SEQ.left_lock_max==false&&
            MyADC_H1_Average(&ADCDATA)<1600){
    ANGLE_SEQ.right_lock_max=true;
  }
  if(MyADC_H1_Average(&ADCDATA)>1600||
     MyADC_H2_Average(&ADCDATA)>1600||
     MyADC_V1_Average(&ADCDATA)>1600){
    ANGLE_SEQ.left_lock_max=false;
    ANGLE_SEQ.right_lock_max=false;
  }
  else if(true==ANGLE_SEQ.left_lock_max &&
     ADCDATA.horizontal_1[2] > ADCDATA.horizontal_1[0]&&
     ADCDATA.horizontal_1[2] > ADCDATA.horizontal_1[1]){
    ANGLE_SEQ.left_lock_max=false;
  }
  else if(true==ANGLE_SEQ.right_lock_max &&
     ADCDATA.horizontal_1[0] > ADCDATA.horizontal_1[1]&&
     ADCDATA.horizontal_1[0] > ADCDATA.horizontal_1[2]){
    ANGLE_SEQ.right_lock_max=false;
  }
  float arg1=0.05/(1+exp(-5+0.004*ADCDATA.horizontal_1[1]))+0.3; //0.3
  float arg2=0.1/(1+exp(5-0.004*ADCDATA.horizontal_1[1]))+0.6;  //0.6  
  float arg3=0.6;
  float arg4=0.3;
  float cha = arg1 * horizontal_1_cut + arg2 * vertical_1_cut;
  float he = arg3 * horizontal_1_sum + arg4 * vertical_1_sum;
  float far_x;
  float near_x;
  //要不要考虑丢线有待实验
  if(horizontal_1_sum>200){
    far_x = horizontal_1_cut/horizontal_1_sum;
  }
  else{
    far_x = 0;
  }
  if(horizontal_2_sum>200){
    near_x = horizontal_2_cut/horizontal_2_sum;
  }
  else{
    near_x = 0;
  }
  float duoji_Kp=ABS(70000-ADCDATA.horizontal_1[1]);
  float duoji_Kd=20000;
  float ed = Sequeue_Get_Rear(&ANGLE_P_SEQ)-Sequeue_Get_One(&ANGLE_P_SEQ,ANGLE_P_SEQ.len-3);
  if(he>50){
    if(MyADC_H2_Sum(&ADCDATA)>MyADC_H1_Sum(&ADCDATA)+MyADC_V1_Sum(&ADCDATA)){
      pass;
    }
    else if(MyADC_H2_Sum(&ADCDATA)/3 < MyADC_H1_Sum(&ADCDATA)||
       MyADC_H2_Sum(&ADCDATA)/3 < MyADC_V1_Sum(&ADCDATA)){
        Sequeue_Out_Queue(&ANGLE_P_SEQ);
        float ep = cha / powf(he, 1.5);// + powf((near_x-far_x),3)*0.5; //powf((far_x-near_x),3)可以有效弯道内切以及小S直冲
        Sequeue_In_Queue(&ANGLE_P_SEQ,(ep));
    }
  }
  int duojiTemp;
  if(true == ANGLE_SEQ.left_lock_max){
    duojiTemp=ANGLE_LIMIT_LEFT;
  }
  else if(true == ANGLE_SEQ.right_lock_max){
    duojiTemp=ANGLE_LIMIT_RIGHT;
  }
  else{
    duojiTemp = duoji_Kp * Sequeue_Get_Rear(&ANGLE_P_SEQ) + ANGLE_MID;
    //duojiTemp = duoji_Kp*Sequeue_Get_Rear(&ANGLE_P_SEQ) + duoji_Kd * ed + ANGLE_MID;
    
  }
  Sequeue_Out_Queue(&ANGLE_SEQ);
  ANGLE_Size_control(duojiTemp);
  Sequeue_In_Queue(&ANGLE_SEQ,duojiTemp);*/

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
  
  if((
       horizontal_2_sum/2.2>horizontal_1_sum &&
       horizontal_2_sum/4>vertical_1_sum &&
       ANGLE_SEQ.lock != true
      )){
    ANGLE_goto_edge(Sequeue_Get_Rear(&ANGLE_SEQ));
    ANGLE_SEQ.lock = true;
    //Beep_Enable();
  }
  else if(horizontal_1_sum+vertical_1_sum>2800){
    ANGLE_SEQ.lock = false;
  }
  
  float arg1_chen=1.2;
  float arg2_chen=2.6;  
  float arg3_chen=0.3;
  float arg4_chen=0.3;
  
  float cha = arg1_chen * horizontal_1_cut + arg2_chen * vertical_1_cut;
  float he = arg3_chen * horizontal_1_sum + arg4_chen * vertical_1_sum;
  
  float ep;
  
  if (he > 50&&!(ANGLE_SEQ.lock)){
    ep = cha / powf(he, 1.5);
  }
  else{
    ep = Sequeue_Get_Rear(&ANGLE_P_SEQ);
    //Beep_Enable();
  }
  
  Sequeue_In_Queue(&ANGLE_P_SEQ, ep);
  Sequeue_Out_Queue(&ANGLE_P_SEQ);
 
  float ed = Sequeue_Get_One(&ANGLE_P_SEQ, ANGLE_P_SEQ.len - 2) - Sequeue_Get_One(&ANGLE_P_SEQ, ANGLE_P_SEQ.len - 4);
  angle = ANGLE_MID + (angle_kp *ep + angle_kd * ed);
  ANGLE_Size_control(angle);

  if(ANGLE_SEQ.lock){
    pass;
  }
  else{
    Sequeue_In_Queue(&ANGLE_SEQ, angle);
  }

  Sequeue_Out_Queue(&ANGLE_SEQ);
  
  if (STOP_FLAG > 100){
    SPEED_Stop();
    ANGLE_ChangeDuty(ANGLE_MID);
  }
  else
  {
    ANGLE_ChangeDuty(Sequeue_Get_Rear(&ANGLE_SEQ));
  }
}

