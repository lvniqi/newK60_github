#ifndef __HEAD_H__
#define __HEAD_H__

#include "common.h"
#include "HAL_ADC.h"
#include "HAL_FTM.h"
#include "HAL_GPIO.h"
#include "HAL_MCG.h"
#include "HAL_PIT.h"
#include "OLED.h"
#include "control.h"
#include "dma.h"
#include "HAL_UART.h"
#include "bluetooth.h"
#include "math.h"

extern float ADValue1,ADValue2,ADValue3,ADValue4,ADValue5,ADValue6,ADValue7,ADValue8,ADValue9,ADValue10;
extern float AD1,AD2,AD3,AD4,AD5,AD6,AD7,AD8,AD9,AD10;
extern float pAD1,pAD2,pAD3,pAD4,pAD5,pAD6,pAD7,pAD8,pAD9,pAD10;
extern float preAD3,preAD4;
extern float pred,duoji;
extern float e0,e1,e2,e3,e4,e5,hc,hc1,hc2,hc_total,prehc;
extern float Kp,Kd;
extern float quan;
extern int right,left;
extern int circle_r,circle_l; 
extern int shizi;
extern int shizi_jishu;

extern int ad_time;
extern int sd_time;

extern float realspeed_r_0,realspeed_r_1,realspeed_l_0,realspeed_l_1,h0_r,h1_r,h0_l,h1_l;
extern float e2motor_r,e1motor_r,e0motor_r;
extern float e2motor_l,e1motor_l,e0motor_l;
extern float kp_r,ki_r,kd_r;
extern float kp_l,ki_l,kd_l;
extern float Motorerr_r,Motorpwm_r;
extern float Motorerr_l,Motorpwm_l;
extern float pre_Motorpwm_r,pre_Motorpwm_l;
extern float pre_Motorpwm_r_final,Motorpwm_r_final;
extern float pre_Motorpwm_l_final,Motorpwm_l_final;
extern float Expect_speed,Expect_speed_l,Expect_speed_r;
extern float a_r,b_r,c_r;
extern float a_l,b_l,c_l; 
extern int ting;

extern int podao_jishu_u,podao_jishu_d;
extern int podao_u,podao_d;

extern int time;
extern int fmq_time;
extern int chasu_flag;

extern int diuxian;
extern float tryhc;
extern float tryKd;
extern float tryKp;
extern float tryhc2;
extern float guiyizhi;


//×óÓÒ±àÂëÆ÷¼ÆÊý²ÎÊý
extern int RightMotorPulse_count; //ÓÒ¶ËÂö³åÊý
extern int LeftMotorPulse_count; //×ó¶ËÂö³åÊý

extern int leftMotor_temp;
extern int lastleftMotor_temp;
extern int rightMotor_temp;
extern int lastrightMotor_temp;
extern int nowspleftset;

extern int spleft_array[5];
extern int spright_array[5];
extern int spcount;
extern int protectcount;

extern float leftbrakecount;
extern float rightbrakecount;
extern int leftbrake_flag;
extern int rightbrake_flag;
extern float rightrealspeed;
extern float leftrealspeed;
extern float lastleftrealspeed;
extern float lastrightrealspeed;

extern float expectsp;
extern int duoji_left_time;
extern int duoji_right_time;
extern int wan_right;
extern int wan_left;
extern int duoji_left_jiasu;
extern int duoji_right_jiasu;
extern int huanzhiwan;
extern int tryleft;
extern int tryright;

extern float temp;
extern float temp_old;

extern int linjinsaidao;

extern float ADValue1_old;
extern float ADValue2_old;

extern float ad1_array[20];
extern float ad2_array[20];
extern int ad_count;
extern int duoji_left_jinwan;
extern float tryhc1;

extern int duoji_left_chuwan;
extern int duoji_right_chuwan;


#define duojic_r 1300
#define duojic_l 1300
#define duoji_mid 4900
/*
#define duojic_r 105
#define duojic_l 105
#define duoji_mid 829
*/
#define duoji_right (duoji_mid+duojic_r)
#define duoji_left (duoji_mid-duojic_l)
#define dingshi 15000



#define DMA_MAX_NUM (32767)

#endif