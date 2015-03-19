///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       19/Mar/2015  11:05:20
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\tryspeed.c
//    Command line =  
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\tryspeed.c" -D IAR -D LPLD_K60
//        -lCN "G:\GitHub\newK60_github\Project\k60
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
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\tryspeed.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM0_PWM_ChangeDuty
        EXTERN __aeabi_f2iz
        EXTERN time
        EXTERN ting

        PUBLIC LeftMotorPulse_count
        PUBLIC RightMotorPulse_count
        PUBLIC brake_cnt
        PUBLIC duoji_left_jiasu
        PUBLIC duoji_left_jiasu_time
        PUBLIC duoji_left_jinwan
        PUBLIC duoji_left_time
        PUBLIC duoji_right_jiasu
        PUBLIC duoji_right_jiasu_time
        PUBLIC duoji_right_time
        PUBLIC expectsp
        PUBLIC flag_duoji_left
        PUBLIC flag_duoji_right
        PUBLIC jiwan_time
        PUBLIC kd_left_Motor
        PUBLIC kd_right_Motor
        PUBLIC ki_left_Motor
        PUBLIC ki_right_Motor
        PUBLIC kp_left_Motor
        PUBLIC kp_right_Motor
        PUBLIC lastlastsplefterror
        PUBLIC lastlastsplefterroreooro
        PUBLIC lastlastspleftset
        PUBLIC lastlastsprighterror
        PUBLIC lastlastsprighterroreooro
        PUBLIC lastlastsprightset
        PUBLIC lastleftMotor_temp
        PUBLIC lastleftrealspeed
        PUBLIC lastrightMotor_temp
        PUBLIC lastrightrealspeed
        PUBLIC lastsplefterror
        PUBLIC lastsplefterroreooro
        PUBLIC lastspleftset
        PUBLIC lastsprighterror
        PUBLIC lastsprighterroreooro
        PUBLIC lastsprightset
        PUBLIC leftMotor_temp
        PUBLIC leftbrake_flag
        PUBLIC leftbrakecount
        PUBLIC leftrealspeed
        PUBLIC motor_x
        PUBLIC nowsplefterror
        PUBLIC nowsplefterroreooro
        PUBLIC nowspleftset
        PUBLIC nowspleftset_old
        PUBLIC nowsprighterror
        PUBLIC nowsprighterroreooro
        PUBLIC nowsprightset
        PUBLIC nowsprightset_old
        PUBLIC play_motor
        PUBLIC protectcount
        PUBLIC rightMotor_temp
        PUBLIC rightbrake_flag
        PUBLIC rightbrakecount
        PUBLIC rightrealspeed
        PUBLIC spcount
        PUBLIC spleft_array
        PUBLIC spleftset
        PUBLIC splrightset
        PUBLIC spright_array
        PUBLIC spset
        PUBLIC try_isjiansu
        PUBLIC wan_left
        PUBLIC wan_right

// G:\GitHub\newK60_github\Project\k60 -1chen2mianqiangWin\project\hz\app\tryspeed.c
//    1 #include "head.h"
//    2 //速度pid控制参数

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 int nowspleftset = 0;
nowspleftset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int nowsplefterror = 0;
nowsplefterror:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int nowsplefterroreooro = 0;
nowsplefterroreooro:
        DS8 4
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 int lastspleftset = 0;
lastspleftset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 int lastsplefterror = 0;
lastsplefterror:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 int lastsplefterroreooro = 0;
lastsplefterroreooro:
        DS8 4
//   10 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 int lastlastspleftset = 0;
lastlastspleftset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 int lastlastsplefterror = 0;
lastlastsplefterror:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 int lastlastsplefterroreooro = 0;
lastlastsplefterroreooro:
        DS8 4
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int nowsprightset = 0;
nowsprightset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int nowsprighterror = 0;
nowsprighterror:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int nowsprighterroreooro = 0;
nowsprighterroreooro:
        DS8 4
//   18 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int lastsprightset = 0;
lastsprightset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int lastsprighterror = 0;
lastsprighterror:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int lastsprighterroreooro = 0;
lastsprighterroreooro:
        DS8 4
//   22 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 int lastlastsprightset = 0;
lastlastsprightset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 int lastlastsprighterror = 0;
lastlastsprighterror:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 int lastlastsprighterroreooro = 0;
lastlastsprighterroreooro:
        DS8 4
//   26 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 int leftMotor_temp = 0;
leftMotor_temp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 int lastleftMotor_temp = 0;
lastleftMotor_temp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 int rightMotor_temp = 0;
rightMotor_temp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   30 int lastrightMotor_temp = 0;
lastrightMotor_temp:
        DS8 4
//   31 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   32 int kp_left_Motor = 48;
kp_left_Motor:
        DATA
        DC32 48

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 int kd_left_Motor = 0;
kd_left_Motor:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   34 int ki_left_Motor = 2;
ki_left_Motor:
        DATA
        DC32 2
//   35 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   36 int kp_right_Motor = 48;
kp_right_Motor:
        DATA
        DC32 48

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 int kd_right_Motor = 0;
kd_right_Motor:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   38 int ki_right_Motor = 2;
ki_right_Motor:
        DATA
        DC32 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 int jiwan_time = 0;
jiwan_time:
        DS8 4
//   40 
//   41 //左右编码器计数参数

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   42 int RightMotorPulse_count = 0; //右端脉冲数
RightMotorPulse_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 int LeftMotorPulse_count = 0; //左端脉冲数
LeftMotorPulse_count:
        DS8 4
//   44 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 int spset;
spset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   46 int spleftset;
spleftset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 int splrightset;
splrightset:
        DS8 4
//   48 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 int spleft_array[5] = {0};
spleft_array:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 int spright_array[5] = {0};
spright_array:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   51 int spcount = 0;
spcount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   52 int protectcount = 0;
protectcount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   53 float leftbrakecount = 0;
leftbrakecount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   54 float rightbrakecount = 0;
rightbrakecount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   55 int leftbrake_flag = 0;
leftbrake_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   56 int rightbrake_flag = 0;
rightbrake_flag:
        DS8 4
//   57 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 float leftrealspeed = 0.0;
leftrealspeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   59 float rightrealspeed = 0.0;
rightrealspeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 float lastleftrealspeed = 0.0;
lastleftrealspeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 float lastrightrealspeed = 0.0;
lastrightrealspeed:
        DS8 4
//   62 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   63 float expectsp = 0.0;
expectsp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   64 float brake_cnt = 0.0;
brake_cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   65 float motor_x = 0.0;
motor_x:
        DS8 4
//   66 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   67 int duoji_right_time = 0;
duoji_right_time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   68 int duoji_left_time = 0;
duoji_left_time:
        DS8 4
//   69 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   70 int flag_duoji_left = 0;
flag_duoji_left:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   71 int flag_duoji_right = 0;
flag_duoji_right:
        DS8 4
//   72 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   73 int wan_right = 0;
wan_right:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   74 int wan_left = 0;
wan_left:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   75 float try_isjiansu = 0;
try_isjiansu:
        DS8 4
//   76 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   77 int duoji_left_jiasu_time = 0;
duoji_left_jiasu_time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   78 int duoji_right_jiasu_time = 0;
duoji_right_jiasu_time:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   79 int duoji_left_jiasu = 20;
duoji_left_jiasu:
        DATA
        DC32 20

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   80 int duoji_right_jiasu = 20;
duoji_right_jiasu:
        DATA
        DC32 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   81 int nowspleftset_old;
nowspleftset_old:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   82 int nowsprightset_old;
nowsprightset_old:
        DS8 4
//   83 
//   84 #define duoji_range 20
//   85 #define wan_time 40
//   86 
//   87 
//   88 #define Max_speed 140 //55 34
//   89 #define Min_speed 110
//   90 
//   91 #define brake_degree  5//刹车灵敏度 越小越灵敏
//   92 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   93 int duoji_left_jinwan = 0;
duoji_left_jinwan:
        DS8 4
//   94 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   95 void play_motor()
//   96 {
play_motor:
        PUSH     {R4,LR}
//   97   nowspleftset_old = nowspleftset;
        LDR.N    R0,??play_motor_0
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x4
        STR      R0,[R1, #+0]
//   98   nowsprightset_old = nowsprightset;
        LDR.N    R0,??play_motor_0+0x8
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0xC
        STR      R0,[R1, #+0]
//   99   
//  100   nowspleftset = 120;
        MOVS     R0,#+120
        LDR.N    R1,??play_motor_0
        STR      R0,[R1, #+0]
//  101   nowsprightset = 120;
        MOVS     R0,#+120
        LDR.N    R1,??play_motor_0+0x8
        STR      R0,[R1, #+0]
//  102   
//  103   nowsplefterror = nowspleftset - (int)leftrealspeed;
        LDR.N    R0,??play_motor_0
        LDR      R4,[R0, #+0]
        LDR.N    R0,??play_motor_0+0x10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        SUBS     R0,R4,R0
        LDR.N    R1,??play_motor_0+0x14
        STR      R0,[R1, #+0]
//  104   nowsprighterror = nowsprightset - (int)rightrealspeed;
        LDR.N    R0,??play_motor_0+0x8
        LDR      R4,[R0, #+0]
        LDR.N    R0,??play_motor_0+0x18
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        SUBS     R0,R4,R0
        LDR.N    R1,??play_motor_0+0x1C
        STR      R0,[R1, #+0]
//  105   
//  106   leftMotor_temp = ki_left_Motor * nowsplefterror + kp_left_Motor * (nowsplefterror - lastsplefterror) + kd_left_Motor * (nowsplefterror + lastlastsplefterror - lastsplefterror * 2) + lastleftMotor_temp;
        LDR.N    R0,??play_motor_0+0x20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x14
        LDR      R1,[R1, #+0]
        LDR.N    R2,??play_motor_0+0x24
        LDR      R2,[R2, #+0]
        LDR.N    R3,??play_motor_0+0x14
        LDR      R3,[R3, #+0]
        LDR.N    R4,??play_motor_0+0x28
        LDR      R4,[R4, #+0]
        SUBS     R3,R3,R4
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.N    R1,??play_motor_0+0x2C
        LDR      R1,[R1, #+0]
        LDR.N    R2,??play_motor_0+0x14
        LDR      R2,[R2, #+0]
        LDR.N    R3,??play_motor_0+0x30
        LDR      R3,[R3, #+0]
        ADDS     R2,R3,R2
        LDR.N    R3,??play_motor_0+0x28
        LDR      R3,[R3, #+0]
        SUBS     R2,R2,R3, LSL #+1
        MLA      R0,R2,R1,R0
        LDR.N    R1,??play_motor_0+0x34
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??play_motor_0+0x38
        STR      R0,[R1, #+0]
//  107   rightMotor_temp = ki_right_Motor * nowsprighterror + kp_right_Motor * (nowsprighterror - lastsprighterror) + kd_right_Motor * (nowsprighterror + lastlastsprighterror - lastsprighterror * 2) + lastrightMotor_temp;
        LDR.N    R0,??play_motor_0+0x3C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x1C
        LDR      R1,[R1, #+0]
        LDR.N    R2,??play_motor_0+0x40
        LDR      R2,[R2, #+0]
        LDR.N    R3,??play_motor_0+0x1C
        LDR      R3,[R3, #+0]
        LDR.N    R4,??play_motor_0+0x44
        LDR      R4,[R4, #+0]
        SUBS     R3,R3,R4
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.N    R1,??play_motor_0+0x48
        LDR      R1,[R1, #+0]
        LDR.N    R2,??play_motor_0+0x1C
        LDR      R2,[R2, #+0]
        LDR.N    R3,??play_motor_0+0x4C
        LDR      R3,[R3, #+0]
        ADDS     R2,R3,R2
        LDR.N    R3,??play_motor_0+0x44
        LDR      R3,[R3, #+0]
        SUBS     R2,R2,R3, LSL #+1
        MLA      R0,R2,R1,R0
        LDR.N    R1,??play_motor_0+0x50
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??play_motor_0+0x54
        STR      R0,[R1, #+0]
//  108   
//  109   //保存速度参数上一次的值  
//  110   lastleftMotor_temp = leftMotor_temp;
        LDR.N    R0,??play_motor_0+0x38
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x34
        STR      R0,[R1, #+0]
//  111   lastrightMotor_temp = rightMotor_temp;
        LDR.N    R0,??play_motor_0+0x54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x50
        STR      R0,[R1, #+0]
//  112  
//  113   lastsplefterror= nowsplefterror;
        LDR.N    R0,??play_motor_0+0x14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x28
        STR      R0,[R1, #+0]
//  114   lastsprighterror = nowsprighterror;
        LDR.N    R0,??play_motor_0+0x1C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x44
        STR      R0,[R1, #+0]
//  115   
//  116   lastlastsplefterror = lastsplefterror;
        LDR.N    R0,??play_motor_0+0x28
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x30
        STR      R0,[R1, #+0]
//  117   lastlastsprighterror = lastsprighterror;
        LDR.N    R0,??play_motor_0+0x44
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_motor_0+0x4C
        STR      R0,[R1, #+0]
//  118   if(ting == 0 && time < dingshi)
        LDR.N    R0,??play_motor_0+0x58
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??play_motor_1
        LDR.N    R0,??play_motor_0+0x5C
        LDR      R0,[R0, #+0]
        MOVW     R1,#+15000
        CMP      R0,R1
        BGE.N    ??play_motor_1
//  119   {
//  120     LPLD_FTM0_PWM_ChangeDuty(4,leftMotor_temp);
        LDR.N    R0,??play_motor_0+0x38
        LDR      R1,[R0, #+0]
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  121     LPLD_FTM0_PWM_ChangeDuty(6,rightMotor_temp);
        LDR.N    R0,??play_motor_0+0x54
        LDR      R1,[R0, #+0]
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
        B.N      ??play_motor_2
//  122   }
//  123   else
//  124   {
//  125     LPLD_FTM0_PWM_ChangeDuty(4,0);
??play_motor_1:
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  126     LPLD_FTM0_PWM_ChangeDuty(6,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  127   }
//  128 }
??play_motor_2:
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??play_motor_0:
        DC32     nowspleftset
        DC32     nowspleftset_old
        DC32     nowsprightset
        DC32     nowsprightset_old
        DC32     leftrealspeed
        DC32     nowsplefterror
        DC32     rightrealspeed
        DC32     nowsprighterror
        DC32     ki_left_Motor
        DC32     kp_left_Motor
        DC32     lastsplefterror
        DC32     kd_left_Motor
        DC32     lastlastsplefterror
        DC32     lastleftMotor_temp
        DC32     leftMotor_temp
        DC32     ki_right_Motor
        DC32     kp_right_Motor
        DC32     lastsprighterror
        DC32     kd_right_Motor
        DC32     lastlastsprighterror
        DC32     lastrightMotor_temp
        DC32     rightMotor_temp
        DC32     ting
        DC32     time

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
// 260 bytes in section .bss
//  24 bytes in section .data
// 400 bytes in section .text
// 
// 400 bytes of CODE memory
// 284 bytes of DATA memory
//
//Errors: none
//Warnings: none
