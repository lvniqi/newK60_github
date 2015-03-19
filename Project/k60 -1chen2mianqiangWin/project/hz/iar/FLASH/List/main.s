///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       19/Mar/2015  11:05:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\main.c
//    Command line =  
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\main.c" -D IAR -D LPLD_K60 -lCN
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\" -lB
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\" -o
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\FLASH\Obj\" --no_cse --no_unroll
//        --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e --fpu=None
//        --dlib_config "D:\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\app\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\common\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\cpu\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\cpu\headers\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\drivers\adc16\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\drivers\enet\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\drivers\lptmr\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\drivers\mcg\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\drivers\pmc\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\drivers\rtc\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\drivers\uart\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\drivers\wdog\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\platforms\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\LPLD\" -I
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\..\..\..\lib\iar_config_files\"
//        -Ol
//    List file    =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DMA_count_Init
        EXTERN DMA_count_get
        EXTERN DMA_count_reset
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_ADC_SE_Get
        EXTERN LPLD_FTM0_PWM_ChangeDuty
        EXTERN LPLD_FTM0_PWM_Init
        EXTERN LPLD_FTM0_PWM_Open
        EXTERN LPLD_FTM1_PWM_Init
        EXTERN LPLD_FTM1_PWM_Open
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Set_b
        EXTERN LPLD_PIT_Init
        EXTERN LPLD_UART_Init
        EXTERN LeftMotorPulse_count
        EXTERN OLED_Init
        EXTERN OutPut_Data
        EXTERN RightMotorPulse_count
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2f
        EXTERN expectsp
        EXTERN get
        EXTERN huanzhiwan
        EXTERN lastleftrealspeed
        EXTERN lastrightrealspeed
        EXTERN leftrealspeed
        EXTERN play_motor
        EXTERN play_servo
        EXTERN rightrealspeed
        EXTERN tryleft
        EXTERN tryright

        PUBLIC AD1
        PUBLIC AD10
        PUBLIC AD2
        PUBLIC AD3
        PUBLIC AD4
        PUBLIC AD5
        PUBLIC AD6
        PUBLIC AD7
        PUBLIC AD8
        PUBLIC AD9
        PUBLIC ADValue1
        PUBLIC ADValue10
        PUBLIC ADValue1_old
        PUBLIC ADValue2
        PUBLIC ADValue2_old
        PUBLIC ADValue3
        PUBLIC ADValue4
        PUBLIC ADValue5
        PUBLIC ADValue6
        PUBLIC ADValue7
        PUBLIC ADValue8
        PUBLIC ADValue9
        PUBLIC Expect_speed
        PUBLIC Expect_speed_l
        PUBLIC Expect_speed_r
        PUBLIC Kd
        PUBLIC Kp
        PUBLIC Motorerr_l
        PUBLIC Motorerr_r
        PUBLIC Motorpwm_l
        PUBLIC Motorpwm_l_final
        PUBLIC Motorpwm_r
        PUBLIC Motorpwm_r_final
        PUBLIC OutData
        PUBLIC a_l
        PUBLIC a_r
        PUBLIC ad1_array
        PUBLIC ad2_array
        PUBLIC ad_count
        PUBLIC ad_time
        PUBLIC b_l
        PUBLIC b_r
        PUBLIC bluetooth
        PUBLIC c_l
        PUBLIC c_r
        PUBLIC chasu_flag
        PUBLIC circle_l
        PUBLIC circle_r
        PUBLIC diuxian
        PUBLIC duoji
        PUBLIC e0
        PUBLIC e0motor_l
        PUBLIC e0motor_r
        PUBLIC e1
        PUBLIC e1motor_l
        PUBLIC e1motor_r
        PUBLIC e2
        PUBLIC e2motor_l
        PUBLIC e2motor_r
        PUBLIC e3
        PUBLIC e4
        PUBLIC e5
        PUBLIC fmq_time
        PUBLIC h0_l
        PUBLIC h0_r
        PUBLIC h1_l
        PUBLIC h1_r
        PUBLIC hc
        PUBLIC hc1
        PUBLIC hc2
        PUBLIC hc_total
        PUBLIC kd_l
        PUBLIC kd_r
        PUBLIC ki_l
        PUBLIC ki_r
        PUBLIC kp_l
        PUBLIC kp_r
        PUBLIC left
        PUBLIC main
        PUBLIC my_pit0_isr
        PUBLIC oled_time
        PUBLIC pAD1
        PUBLIC pAD10
        PUBLIC pAD2
        PUBLIC pAD3
        PUBLIC pAD4
        PUBLIC pAD5
        PUBLIC pAD6
        PUBLIC pAD7
        PUBLIC pAD8
        PUBLIC pAD9
        PUBLIC podao_d
        PUBLIC podao_jishu_d
        PUBLIC podao_jishu_u
        PUBLIC podao_u
        PUBLIC preAD3
        PUBLIC preAD4
        PUBLIC pre_Motorpwm_l
        PUBLIC pre_Motorpwm_l_final
        PUBLIC pre_Motorpwm_r
        PUBLIC pre_Motorpwm_r_final
        PUBLIC pred
        PUBLIC prehc
        PUBLIC quan
        PUBLIC realspeed_l_0
        PUBLIC realspeed_l_1
        PUBLIC realspeed_r_0
        PUBLIC realspeed_r_1
        PUBLIC right
        PUBLIC sd_time
        PUBLIC shizi
        PUBLIC shizi_jishu
        PUBLIC time
        PUBLIC ting

// G:\GitHub\newK60_github\Project\k60 -1chen2mianqiangWin\project\hz\app\main.c
//    1 #include "head.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 float ADValue1=0,ADValue2=0,ADValue3=0,ADValue4=0,ADValue5=0,ADValue6=0,ADValue7=0,ADValue8=0,ADValue9=0,ADValue10=0;
ADValue1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue5:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue6:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue7:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue8:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue9:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue10:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 float ADValue1_old = 0,ADValue2_old = 0;
ADValue1_old:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADValue2_old:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 float AD1=0,AD2=0,AD3=0,AD4=0,AD5=0,AD6=0,AD7=0,AD8=0,AD9=0,AD10=0;
AD1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD5:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD6:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD7:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD8:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD9:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
AD10:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 float pAD1=0,pAD2=0,pAD3=0,pAD4=0,pAD5=0,pAD6=0,pAD7=0,pAD8=0,pAD9=0,pAD10=0;
pAD1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD5:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD6:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD7:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD8:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD9:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pAD10:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 float preAD3=0,preAD4=0;
preAD3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
preAD4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 float e0=0,e1=0,e2=0,e3=0,e4=0,e5=0,hc=0,hc1=0,hc2=0,hc_total=0,prehc=0;
e0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e5:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
hc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
hc1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
hc2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
hc_total:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
prehc:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    9 float Kp=35,Kd=375;
Kp:
        DATA
        DC32 420C0000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Kd:
        DATA
        DC32 43BB8000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 float pred=0,duoji=0;
pred:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 int right=0,left=0;
right:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
left:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 int circle_r=0,circle_l=0; 
circle_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
circle_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 float quan=0;
quan:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 int shizi=1;
shizi:
        DATA
        DC32 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int shizi_jishu=0;
shizi_jishu:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int chasu_flag=0;
chasu_flag:
        DS8 4
//   17 
//   18 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int ad_time=0;
ad_time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int sd_time=0;
sd_time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int time=0;
time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int fmq_time=0;
fmq_time:
        DS8 4
//   23 /***************************************************************/ //舵机参数
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 float realspeed_r_0=0,realspeed_r_1=0,realspeed_l_0=0,realspeed_l_1=0,h0_r,h1_r=0,h0_l,h1_l=0;
realspeed_r_0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
realspeed_r_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
realspeed_l_0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
realspeed_l_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
h0_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
h1_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
h0_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
h1_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 float e2motor_r=0,e1motor_r=0,e0motor_r=0;
e2motor_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e1motor_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e0motor_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 float e2motor_l=0,e1motor_l=0,e0motor_l=0;
e2motor_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e1motor_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e0motor_l:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   28 float kp_r=0.8,ki_r=0.17,kd_r=0;//kp_r=0.53,ki_r=0.043,kd_r=0;
kp_r:
        DATA
        DC32 3F4CCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
ki_r:
        DATA
        DC32 3E2E147BH

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
kd_r:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   29 float kp_l=0.8,ki_l=0.17,kd_l=0;//kp_l=0.53,ki_l=0.043,kd_l=0;
kp_l:
        DATA
        DC32 3F4CCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
ki_l:
        DATA
        DC32 3E2E147BH

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
kd_l:
        DS8 4
//   30 
//   31 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   32 float a_r=0.4,b_r=4.6,c_r=4;
a_r:
        DATA
        DC32 3ECCCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
b_r:
        DATA
        DC32 40933333H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
c_r:
        DATA
        DC32 40800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   33 float a_l=0.4,b_l=4.6,c_l=4;   
a_l:
        DATA
        DC32 3ECCCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
b_l:
        DATA
        DC32 40933333H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
c_l:
        DATA
        DC32 40800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 float Motorerr_r=0,Motorpwm_r=0;
Motorerr_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Motorpwm_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   35 float Motorerr_l=0,Motorpwm_l=0;
Motorerr_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Motorpwm_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 float pre_Motorpwm_r=0,pre_Motorpwm_l=0;
pre_Motorpwm_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pre_Motorpwm_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 float pre_Motorpwm_r_final=0,Motorpwm_r_final=0;
pre_Motorpwm_r_final:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Motorpwm_r_final:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 float pre_Motorpwm_l_final=0,Motorpwm_l_final=0;
pre_Motorpwm_l_final:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Motorpwm_l_final:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 float Expect_speed=0,Expect_speed_l=0,Expect_speed_r=0;
Expect_speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Expect_speed_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Expect_speed_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   40 int ting=0;
ting:
        DS8 4
//   41 
//   42 /***************************************************************/ //电机参数
//   43 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   44 int podao_jishu_u=0,podao_jishu_d=0;
podao_jishu_u:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
podao_jishu_d:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   45 int podao_u=1,podao_d=1;
podao_u:
        DATA
        DC32 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
podao_d:
        DATA
        DC32 1
//   46 
//   47 /***************************************************************/
//   48 /*LPLD_eDMA_Cfg_t User_Def_DMA_Init_a;
//   49 LPLD_eDMA_Cfg_t User_Def_DMA_Init_b;
//   50 char pData1[1];
//   51 char pData2[1];
//   52 void dma0_isr(void);
//   53 void dma1_isr(void);*/
//   54 //DMA采集
//   55 /***************************************************************/
//   56 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   57 float ad1_array[20] = {0.0};
ad1_array:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 float ad2_array[20] = {0.0};
ad2_array:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   59 int ad_count = 0;
ad_count:
        DS8 4
//   60 
//   61 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   62 uint32 oled_time=0;
oled_time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   63 unsigned int OutData[4]={0};
OutData:
        DS8 16
//   64 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   65 int diuxian = 0;
diuxian:
        DS8 4
//   66 
//   67 void my_pit0_isr(void);// 1ms 定时器
//   68 
//   69 void bluetooth(void);
//   70 
//   71 /********************************************************************/
//   72 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   73 void main (void)
//   74 { 
main:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
//   75   
//   76   DisableInterrupts; 
        CPSID i
//   77   
//   78   
//   79   LPLD_ADC_Init(ADC0,MODE_8,CONV_SING);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LPLD_ADC_Init
//   80   LPLD_ADC_Init(ADC1,MODE_8,CONV_SING);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       LPLD_ADC_Init
//   81   
//   82   LPLD_FTM0_PWM_Init(20000);//控制电机 20khz
        MOVW     R0,#+20000
        BL       LPLD_FTM0_PWM_Init
//   83   LPLD_FTM0_PWM_Open(4,0); //ptd4
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_Open
//   84   LPLD_FTM0_PWM_Open(5,0); //ptd5
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       LPLD_FTM0_PWM_Open
//   85   LPLD_FTM0_PWM_Open(6,0); //ptd6
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_Open
//   86   LPLD_FTM0_PWM_Open(7,0); //ptd7
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       LPLD_FTM0_PWM_Open
//   87   
//   88   LPLD_FTM1_PWM_Init(300);//控制舵机 50hz
        MOV      R0,#+300
        BL       LPLD_FTM1_PWM_Init
//   89   LPLD_FTM1_PWM_Open(1,0);//pta9
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       LPLD_FTM1_PWM_Open
//   90   
//   91 
//   92   LPLD_GPIO_Init(PTC,2,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+2
        BL       LPLD_GPIO_Init
//   93   LPLD_GPIO_Init(PTC,3,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+2
        BL       LPLD_GPIO_Init
//   94   LPLD_GPIO_Init(PTC,4,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+2
        BL       LPLD_GPIO_Init
//   95   LPLD_GPIO_Init(PTC,5,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+2
        BL       LPLD_GPIO_Init
//   96   LPLD_GPIO_Init(PTC,6,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+2
        BL       LPLD_GPIO_Init
//   97   LPLD_GPIO_Init(PTC,7,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+2
        BL       LPLD_GPIO_Init
//   98   LPLD_GPIO_Init(PTC,8,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       LPLD_GPIO_Init
//   99   LPLD_GPIO_Init(PTC,9,DIR_INPUT,INPUT_PDOWN,IRQC_DIS); //拨码开关
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       LPLD_GPIO_Init
//  100  
//  101   
//  102   //LPLD_GPIO_Get_b(PTC,2);  返回某个口的值
//  103   
//  104   LPLD_GPIO_Init(PTD,10,DIR_OUTPUT,OUTPUT_H,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
//  105   
//  106   LPLD_GPIO_Set_b(PTD,10,OUTPUT_L); //蜂鸣器PTC10
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+3
        BL       LPLD_GPIO_Set_b
//  107   
//  108   DMA_count_Init(DMA_CH0,PTC0,32767,DMA_rising);
        MOVS     R3,#+1
        MOVW     R2,#+32767
        MOVS     R1,#+64
        MOVS     R0,#+0
        BL       DMA_count_Init
//  109   DMA_count_Init(DMA_CH10,PTD0,32767,DMA_rising);//DMA编码器采集
        MOVS     R3,#+1
        MOVW     R2,#+32767
        MOVS     R1,#+96
        MOVS     R0,#+10
        BL       DMA_count_Init
//  110   
//  111 
//  112   
//  113   LPLD_PIT_Init(PIT1,1000,my_pit0_isr);//1ms中断
        ADR.W    R2,my_pit0_isr
        MOV      R1,#+1000
        MOVS     R0,#+1
        BL       LPLD_PIT_Init
//  114   
//  115   OLED_Init(); //液晶初始化
        BL       OLED_Init
//  116   
//  117   
//  118   LPLD_UART_Init(UART3, 9600);// 初始化串口
        MOV      R1,#+9600
        MOVS     R0,#+3
        BL       LPLD_UART_Init
//  119   
//  120   
//  121   EnableInterrupts;
        CPSIE i
//  122   
//  123   while(1)
//  124   {
//  125    //bluetooth();
//  126    oled_time++;
??main_0:
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//  127    if(oled_time>=300000)
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_1  ;; 0x493e0
        CMP      R0,R1
        BCC.W    ??main_1
//  128    {
//  129        get(ADValue1,ADValue7,ADValue2,172,0);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+172
        MOVS     R4,R3
        LDR.W    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOVS     R3,R4
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOVS     R3,R5
        MOVS     R2,R4
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
        BL       get
//  130        get(ADValue5,ADValue6,5,6,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+5
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOVS     R3,R5
        MOVS     R2,R4
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
        BL       get
//  131        
//  132        get(ADValue3,ADValue4,duoji,34,2);
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
        MOVS     R3,#+34
        MOVS     R4,R3
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOVS     R3,R4
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOVS     R3,R5
        MOVS     R2,R4
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
        BL       get
//  133        get(ADValue8,huanzhiwan,tryleft,tryright,3);
        MOVS     R0,#+3
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable2_10
        LDR      R3,[R0, #+0]
        LDR.W    R0,??DataTable2_11
        LDR      R2,[R0, #+0]
        LDR.W    R0,??DataTable2_12
        LDR      R1,[R0, #+0]
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR.W    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
        BL       get
//  134        //get(fabsf(tryKp * tryhc),fabs(tryhc2),fabs(10.0*powf(2.6,-(ADValue7/183-1.93)) * tryhc1),fabs(10.0*powf(2.6,-(ADValue7/183-1.93)) * (180/ADValue7*ADValue5 - ADValue6)/(ADValue5 + ADValue6)*2.5),3);
//  135        //get(ADValue8,expectsp,duoji_left_jiasu,duoji_right_jiasu,3);
//  136        get(ADValue8,expectsp,tryleft,tryright,4);
        MOVS     R0,#+4
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable2_10
        LDR      R3,[R0, #+0]
        LDR.N    R0,??DataTable2_11
        LDR      R2,[R0, #+0]
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable2_14
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOVS     R3,R5
        MOVS     R2,R4
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR.N    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
        BL       get
//  137        //get(Expect_speed_l,Expect_speed_r,realspeed_l_0,realspeed_r_0,3);
//  138        //get(ADValue9,podao_jishu_u,hc_total*1000,LPLD_GPIO_Get_b(PTC,4),4);
//  139        oled_time=0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//  140    }
//  141    if(oled_time>=300000)
??main_1:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_1  ;; 0x493e0
        CMP      R0,R1
        BCC.W    ??main_0
//  142       oled_time=0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
        B.N      ??main_0
//  143   }
//  144 }
//  145 
//  146 
//  147 
//  148 
//  149 /********************************************************************/
//  150 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  151 void my_pit0_isr()
//  152 {
my_pit0_isr:
        PUSH     {R7,LR}
//  153    DisableInterrupts;
        CPSID i
//  154    time++;
        LDR.N    R0,??DataTable2_15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_15
        STR      R0,[R1, #+0]
//  155    sd_time++;
        LDR.N    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_16
        STR      R0,[R1, #+0]
//  156    ad_time++;
        LDR.N    R0,??DataTable2_17
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_17
        STR      R0,[R1, #+0]
//  157    AD1+=LPLD_ADC_SE_Get(ADC1,8);//B0
        MOVS     R1,#+8
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_18
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_18
        STR      R0,[R1, #+0]
//  158    AD2+=LPLD_ADC_SE_Get(ADC1,9);//B1
        MOVS     R1,#+9
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_19
        STR      R0,[R1, #+0]
//  159    AD3+=LPLD_ADC_SE_Get(ADC1,10);//B4
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_20
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_20
        STR      R0,[R1, #+0]
//  160    AD4+=LPLD_ADC_SE_Get(ADC1,11);//B5
        MOVS     R1,#+11
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_21
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_21
        STR      R0,[R1, #+0]
//  161    AD5+=LPLD_ADC_SE_Get(ADC1,12);//B6
        MOVS     R1,#+12
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_22
        STR      R0,[R1, #+0]
//  162    AD6+=LPLD_ADC_SE_Get(ADC1,13);//B7
        MOVS     R1,#+13
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_23
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_23
        STR      R0,[R1, #+0]
//  163    AD7+=LPLD_ADC_SE_Get(ADC1,14);//B10
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_24
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_24
        STR      R0,[R1, #+0]
//  164    AD8+=LPLD_ADC_SE_Get(ADC1,15);//B11
        MOVS     R1,#+15
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_25
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_25
        STR      R0,[R1, #+0]
//  165    AD9+=LPLD_ADC_SE_Get(ADC0,12);//B2
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable2_26
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_26
        STR      R0,[R1, #+0]
//  166   
//  167    if(ad_time>=5)
        LDR.N    R0,??DataTable2_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??my_pit0_isr_0
//  168    {
//  169     //bluetooth();
//  170     ad_time=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_17
        STR      R0,[R1, #+0]
//  171     //ADValue1_old = ADValue1;
//  172     //ADValue2_old = ADValue2;
//  173     /*
//  174     ad1_array[ad_count] = ADValue1;
//  175     ad2_array[ad_count] = ADValue2;
//  176     ad_count ++;
//  177     if(ad_count == 10)
//  178     {
//  179       ad_count = 0;
//  180     }
//  181     */
//  182     
//  183     
//  184     ADValue1=AD1/5;
        LDR.N    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//  185     ADValue2=AD2/5;
        LDR.N    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//  186     ADValue3=AD3/5;
        LDR.N    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_9
        STR      R0,[R1, #+0]
//  187     ADValue4=AD4/5;
        LDR.N    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
//  188     ADValue5=AD5/5;
        LDR.N    R0,??DataTable2_22
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+0]
//  189     ADValue6=AD6/5;
        LDR.N    R0,??DataTable2_23
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_5
        STR      R0,[R1, #+0]
//  190     ADValue7=AD7/5;
        LDR.N    R0,??DataTable2_24
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  191     ADValue8=AD8/5;
        LDR.N    R0,??DataTable2_25
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_13
        STR      R0,[R1, #+0]
//  192     ADValue9=AD9/5;
        LDR.N    R0,??DataTable2_26
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_27  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_28
        STR      R0,[R1, #+0]
//  193     
//  194     AD1=AD2=AD3=AD4=AD5=AD6=AD7=AD8=AD9=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_26
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable2_25
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable2_24
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable2_23
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable2_22
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable2_21
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable2_20
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable2_19
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable2_18
        STR      R0,[R1, #+0]
//  195     play_servo();
        BL       play_servo
//  196   } 
//  197   
//  198   if(sd_time>=10)
??my_pit0_isr_0:
        LDR.N    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??my_pit0_isr_1
//  199   {
//  200     sd_time=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_16
        STR      R0,[R1, #+0]
//  201     
//  202     LeftMotorPulse_count=DMA_count_get(DMA_CH0);
        MOVS     R0,#+0
        BL       DMA_count_get
        LDR.N    R1,??DataTable2_29
        STR      R0,[R1, #+0]
//  203     RightMotorPulse_count=DMA_count_get(DMA_CH10);
        MOVS     R0,#+10
        BL       DMA_count_get
        LDR.N    R1,??DataTable2_30
        STR      R0,[R1, #+0]
//  204     
//  205     lastleftrealspeed = leftrealspeed;
        LDR.N    R0,??DataTable2_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_32
        STR      R0,[R1, #+0]
//  206     lastrightrealspeed = rightrealspeed;
        LDR.N    R0,??DataTable2_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_34
        STR      R0,[R1, #+0]
//  207     
//  208     leftrealspeed = LeftMotorPulse_count;
        LDR.N    R0,??DataTable2_29
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_31
        STR      R0,[R1, #+0]
//  209     rightrealspeed = RightMotorPulse_count;
        LDR.N    R0,??DataTable2_30
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_33
        STR      R0,[R1, #+0]
//  210     
//  211     if(leftrealspeed >= 400)
        LDR.N    R0,??DataTable2_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_35  ;; 0x43c80000
        BL       __aeabi_cfrcmple
        BHI.N    ??my_pit0_isr_2
//  212     {
//  213       leftrealspeed = 400;
        LDR.N    R0,??DataTable2_35  ;; 0x43c80000
        LDR.N    R1,??DataTable2_31
        STR      R0,[R1, #+0]
//  214     }
//  215     if(rightrealspeed >= 400)
??my_pit0_isr_2:
        LDR.N    R0,??DataTable2_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_35  ;; 0x43c80000
        BL       __aeabi_cfrcmple
        BHI.N    ??my_pit0_isr_3
//  216     {
//  217       rightrealspeed = 400;
        LDR.N    R0,??DataTable2_35  ;; 0x43c80000
        LDR.N    R1,??DataTable2_33
        STR      R0,[R1, #+0]
//  218     }
//  219 
//  220     //10ms累计一次然后重新计数
//  221     DMA_count_reset(DMA_CH0);
??my_pit0_isr_3:
        MOVS     R0,#+0
        BL       DMA_count_reset
//  222     DMA_count_reset(DMA_CH10); //获得最终的脉冲累加值 
        MOVS     R0,#+10
        BL       DMA_count_reset
//  223     
//  224     play_motor();
        BL       play_motor
//  225     
//  226     if(ting == 1)
        LDR.N    R0,??DataTable2_36
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??my_pit0_isr_4
//  227     {
//  228       LPLD_FTM0_PWM_ChangeDuty(4,0);
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  229       LPLD_FTM0_PWM_ChangeDuty(6,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  230     }
//  231     
//  232     if(time>=dingshi)
??my_pit0_isr_4:
        LDR.N    R0,??DataTable2_15
        LDR      R0,[R0, #+0]
        MOVW     R1,#+15000
        CMP      R0,R1
        BLT.N    ??my_pit0_isr_1
//  233     {
//  234       time=dingshi;
        MOVW     R0,#+15000
        LDR.N    R1,??DataTable2_15
        STR      R0,[R1, #+0]
//  235       LPLD_FTM0_PWM_ChangeDuty(4,0);
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  236       LPLD_FTM0_PWM_ChangeDuty(6,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  237     }
//  238     
//  239   }
//  240   EnableInterrupts;
??my_pit0_isr_1:
        CPSIE i
//  241 }
        POP      {R0,PC}          ;; return
//  242 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  243 void bluetooth()
//  244 {
bluetooth:
        PUSH     {R7,LR}
//  245   OutData[0]=realspeed_r_0;
        LDR.N    R0,??DataTable2_37
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        LDR.N    R1,??DataTable2_38
        STR      R0,[R1, #+0]
//  246   OutData[1]=realspeed_l_0;
        LDR.N    R0,??DataTable2_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        LDR.N    R1,??DataTable2_38
        STR      R0,[R1, #+4]
//  247   //OutData[2]=Expect_speed_r;
//  248   //OutData[3]=Expect_speed_l;
//  249   OutPut_Data();
        BL       OutPut_Data
//  250 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     oled_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x493e0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ADValue2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     ADValue7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     ADValue1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     ADValue6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     ADValue5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     ADValue4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     ADValue3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     tryright

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     tryleft

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     huanzhiwan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     ADValue8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     expectsp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     sd_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     ad_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     AD1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     AD2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     AD3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     AD4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     AD5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     AD6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     AD7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     AD8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     AD9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     ADValue9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     LeftMotorPulse_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     RightMotorPulse_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     leftrealspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     lastleftrealspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     rightrealspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     lastrightrealspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     0x43c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_36:
        DC32     ting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_37:
        DC32     realspeed_r_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_38:
        DC32     OutData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_39:
        DC32     realspeed_l_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//   548 bytes in section .bss
//    60 bytes in section .data
// 1 474 bytes in section .text
// 
// 1 474 bytes of CODE memory
//   608 bytes of DATA memory
//
//Errors: none
//Warnings: 15
