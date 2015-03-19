///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       19/Mar/2015  11:05:19
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\trycontrol.c
//    Command line =  
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\trycontrol.c" -D IAR -D LPLD_K60
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
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\trycontrol.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ADValue1
        EXTERN ADValue2
        EXTERN ADValue3
        EXTERN ADValue4
        EXTERN ADValue5
        EXTERN ADValue6
        EXTERN ADValue7
        EXTERN ADValue8
        EXTERN LPLD_FTM1_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Set_b
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN duoji
        EXTERN fmq_time
        EXTERN powf
        EXTERN ting

        PUBLIC dajiao_jishu
        PUBLIC dajiao_left_jishu
        PUBLIC dajiao_right_jishu
        PUBLIC delittles
        PUBLIC delittles_old
        PUBLIC direction_array
        PUBLIC direction_count
        PUBLIC direction_flag
        PUBLIC duoji_left_chuwan
        PUBLIC duoji_right_chuwan
        PUBLIC guiyizhi
        PUBLIC guiyizhi_old
        PUBLIC guiyizhi_temp
        PUBLIC huanzhi
        PUBLIC huanzhiguiyizhi
        PUBLIC huanzhiguiyizhi_old
        PUBLIC huanzhiwan
        PUBLIC huanzhiwan_count
        PUBLIC huanzhiwan_in
        PUBLIC last_direction_flag
        PUBLIC left_dir
        PUBLIC left_lock
        PUBLIC limit
        PUBLIC linjinsaidao
        PUBLIC lock
        PUBLIC lock_dir
        PUBLIC max
        PUBLIC max_ad
        PUBLIC mid_dir
        PUBLIC only_one
        PUBLIC play_servo
        PUBLIC right_dir
        PUBLIC right_lock
        PUBLIC temp
        PUBLIC temp0
        PUBLIC temp1
        PUBLIC temp10
        PUBLIC temp11
        PUBLIC temp12
        PUBLIC temp2
        PUBLIC temp3
        PUBLIC temp4
        PUBLIC temp5
        PUBLIC temp6
        PUBLIC temp7
        PUBLIC temp8
        PUBLIC temp9
        PUBLIC temp_old
        PUBLIC tryKd
        PUBLIC tryKp
        PUBLIC tryKp1
        PUBLIC trycha
        PUBLIC trydirection
        PUBLIC trye0
        PUBLIC trye1
        PUBLIC trye2
        PUBLIC trye3
        PUBLIC trye4
        PUBLIC trye5
        PUBLIC tryhc
        PUBLIC tryhc0
        PUBLIC tryhc1
        PUBLIC tryhc2
        PUBLIC tryhc2_old
        PUBLIC tryhe
        PUBLIC tryleft
        PUBLIC tryright

// G:\GitHub\newK60_github\Project\k60 -1chen2mianqiangWin\project\hz\app\trycontrol.c
//    1 #include "head.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 int tryleft = 0;
tryleft:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int tryright = 0;
tryright:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 int trydirection = 0; //1 为right -1 为left
trydirection:
        DS8 4
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 float guiyizhi = 0.0;
guiyizhi:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 float guiyizhi_old = 0.0;
guiyizhi_old:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 float delittles = 0;
delittles:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 float delittles_old = 0;
delittles_old:
        DS8 4
//   11 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   12 float temp = duoji_mid;
temp:
        DATA
        DC32 45992000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 float temp_old = duoji_mid;
temp_old:
        DATA
        DC32 45992000H
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 float tryhc0;
tryhc0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 float trye0;
trye0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 float trye1;
trye1:
        DS8 4
//   18 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 float tryhc1;
tryhc1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 float trye2;
trye2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 float trye3;
trye3:
        DS8 4
//   22 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 float tryhc2;
tryhc2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 float tryhc2_old;
tryhc2_old:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 float trye4;
trye4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 float trye5;
trye5:
        DS8 4
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 float tryhc;
tryhc:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   29 float temp0 = 0.3;
temp0:
        DATA
        DC32 3E99999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   30 float temp1 = 0.6;
temp1:
        DATA
        DC32 3F19999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   31 float temp2 = 0.6;
temp2:
        DATA
        DC32 3F19999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   32 float temp3 = 0.3;
temp3:
        DATA
        DC32 3E99999AH
//   33 //float temp4 = 0.8;
//   34 //float temp5 = 0.2;

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   35 float temp4 = 1.0;
temp4:
        DATA
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 float temp5 = 0.0;
temp5:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   37 float temp6 = 1.0;
temp6:
        DATA
        DC32 3F800000H
//   38 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   39 float temp7 = 0.3;
temp7:
        DATA
        DC32 3E99999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   40 float temp8 = 0.6;
temp8:
        DATA
        DC32 3F19999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   41 float temp9 = 0.6;
temp9:
        DATA
        DC32 3F19999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   42 float temp10 = 0.3;
temp10:
        DATA
        DC32 3E99999AH
//   43 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   44 float temp11 = 0.0;
temp11:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 float temp12 = 0.0;
temp12:
        DS8 4
//   46 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 float tryKp;
tryKp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 float tryKp1;
tryKp1:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   49 float tryKd = 5.0;
tryKd:
        DATA
        DC32 40A00000H
//   50 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   51 float tryhe;
tryhe:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   52 float trycha = 0.0;
trycha:
        DS8 4
//   53 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   54 int linjinsaidao = 0; 
linjinsaidao:
        DS8 4
//   55 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   56 float guiyizhi_temp = 0.0;
guiyizhi_temp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   57 int huanzhiwan = 0;
huanzhiwan:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 int huanzhiwan_count = 0;
huanzhiwan_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   59 int huanzhi = 0;
huanzhi:
        DS8 4
//   60 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 int direction_array[50] = {0};
direction_array:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   62 float direction_count = 0.0;
direction_count:
        DS8 4
//   63 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   64 int duoji_left_chuwan = 0;
duoji_left_chuwan:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   65 int duoji_right_chuwan = 0;
duoji_right_chuwan:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   66 int lock = 0;
lock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   67 int huanzhiwan_in = 0;
huanzhiwan_in:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   68 int dajiao_left_jishu = 0;
dajiao_left_jishu:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   69 int dajiao_right_jishu = 0;
dajiao_right_jishu:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   70 int dajiao_jishu = 0;
dajiao_jishu:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   71 int left_lock = 0;
left_lock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   72 int right_lock = 0;
right_lock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   73 int only_one = 0;
only_one:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   74 int max = -duoji_right;
max:
        DATA
        DC32 -6200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   75 float huanzhiguiyizhi_old = 0.0;
huanzhiguiyizhi_old:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   76 float huanzhiguiyizhi = 0.0;
huanzhiguiyizhi:
        DS8 4
//   77 
//   78 /**
//   79  *方向锁定参数
//   80 */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   81 int direction_flag=0; //-1 左弯 1 右弯
direction_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   82 int last_direction_flag=0; //-1 左弯 1 右弯
last_direction_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   83 int lock_dir=0; //0 未锁定方向 1 锁定方向
lock_dir:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   84 int max_ad=0; //-1 左边最大 0 中间最大 1 右边最大
max_ad:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   85 int left_dir=-1;
left_dir:
        DATA
        DC32 -1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   86 int mid_dir=0;
mid_dir:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   87 int right_dir=1;
right_dir:
        DATA
        DC32 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   88 int limit=0; //0 不限幅 1 限幅 防止电感跳变
limit:
        DS8 4
//   89 
//   90 //限幅参数
//   91 #define limit_value 20
//   92 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   93 void play_servo() 
//   94 { 
play_servo:
        PUSH     {R3-R5,LR}
//   95   //蜂鸣器的处理
//   96   if(fmq_time>=0)
        LDR.N    R0,??play_servo_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BMI.N    ??play_servo_1
//   97   {
//   98     LPLD_GPIO_Set_b(PTD,10,OUTPUT_H);
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+3
        BL       LPLD_GPIO_Set_b
//   99     fmq_time--;
        LDR.N    R0,??play_servo_0
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??play_servo_0
        STR      R0,[R1, #+0]
//  100   }
//  101   
//  102   guiyizhi_old = guiyizhi;
??play_servo_1:
        LDR.N    R0,??play_servo_0+0x4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x8
        STR      R0,[R1, #+0]
//  103   delittles_old = delittles;
        LDR.N    R0,??play_servo_0+0xC
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x10
        STR      R0,[R1, #+0]
//  104   last_direction_flag = direction_flag;
        LDR.N    R0,??play_servo_0+0x14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x18
        STR      R0,[R1, #+0]
//  105   
//  106   trye0 = ADValue2 - ADValue1;
        LDR.N    R0,??play_servo_0+0x1C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x20
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??play_servo_0+0x24
        STR      R0,[R1, #+0]
//  107   trye1 = ADValue2 + ADValue1;
        LDR.N    R0,??play_servo_0+0x1C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x20
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??play_servo_0+0x28
        STR      R0,[R1, #+0]
//  108   
//  109   if(ADValue3 <= 10&&ADValue4 <= 10)
        LDR.N    R0,??play_servo_0+0x2C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x30  ;; 0x41200001
        BL       __aeabi_cfcmple
        BCS.N    ??play_servo_2
        LDR.N    R0,??play_servo_0+0x34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x30  ;; 0x41200001
        BL       __aeabi_cfcmple
        BCS.N    ??play_servo_2
//  110   {
//  111     trye2 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??play_servo_0+0x38
        STR      R0,[R1, #+0]
//  112     trye3 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??play_servo_0+0x3C
        STR      R0,[R1, #+0]
//  113     tryhc1 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??play_servo_0+0x40
        STR      R0,[R1, #+0]
        B.N      ??play_servo_3
//  114   }
//  115   else
//  116   {
//  117     trye2 = ADValue4 - ADValue3;
??play_servo_2:
        LDR.N    R0,??play_servo_0+0x34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x2C
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??play_servo_0+0x38
        STR      R0,[R1, #+0]
//  118     trye3 = ADValue4 + ADValue3;
        LDR.N    R0,??play_servo_0+0x34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x2C
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??play_servo_0+0x3C
        STR      R0,[R1, #+0]
//  119     tryhc1 = trye2 / trye3;
        LDR.N    R0,??play_servo_0+0x38
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x3C
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.N    R1,??play_servo_0+0x40
        STR      R0,[R1, #+0]
//  120   }
//  121   
//  122   trye4 = ADValue6 - ADValue5;
??play_servo_3:
        LDR.N    R0,??play_servo_0+0x44
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x48
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??play_servo_0+0x4C
        STR      R0,[R1, #+0]
//  123   trye5 = ADValue6 + ADValue5;
        LDR.N    R0,??play_servo_0+0x44
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x48
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??play_servo_0+0x50
        STR      R0,[R1, #+0]
//  124  
//  125   tryKp1 = 100*powf(2.6,-(ADValue7/180-1.93));
        LDR.N    R0,??play_servo_0+0x54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x58  ;; 0x43340000
        BL       __aeabi_fdiv
        BL       __aeabi_f2d
        LDR.N    R2,??play_servo_0+0x5C  ;; 0xae147ae1
        LDR.N    R3,??play_servo_0+0x60  ;; 0xbffee147
        BL       __aeabi_dadd
        EORS     R1,R1,#0x80000000
        BL       __aeabi_d2f
        MOVS     R1,R0
        LDR.N    R0,??play_servo_0+0x64  ;; 0x40266666
        BL       powf
        LDR.N    R1,??play_servo_0+0x68  ;; 0x42c80000
        BL       __aeabi_fmul
        LDR.N    R1,??play_servo_0+0x6C
        STR      R0,[R1, #+0]
//  126   tryhc2 = 90 * trye4 / trye5;
        LDR.N    R0,??play_servo_0+0x4C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x70  ;; 0x42b40000
        BL       __aeabi_fmul
        LDR.N    R1,??play_servo_0+0x50
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.N    R1,??play_servo_0+0x74
        STR      R0,[R1, #+0]
//  127 
//  128   if(tryhc2 > duojic_r)
        LDR.N    R0,??play_servo_0+0x74
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x78  ;; 0x44a28001
        BL       __aeabi_cfrcmple
        BHI.N    ??play_servo_4
//  129   {
//  130     tryhc2 = duojic_r;
        LDR.N    R0,??play_servo_0+0x7C  ;; 0x44a28000
        LDR.N    R1,??play_servo_0+0x74
        STR      R0,[R1, #+0]
        B.N      ??play_servo_5
//  131   }
//  132   else if(tryhc2 < -duojic_r)
??play_servo_4:
        LDR.N    R0,??play_servo_0+0x74
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x80  ;; 0xc4a28000
        BL       __aeabi_cfcmple
        BCS.N    ??play_servo_5
//  133   {
//  134     tryhc2 = -duojic_r;
        LDR.N    R0,??play_servo_0+0x80  ;; 0xc4a28000
        LDR.N    R1,??play_servo_0+0x74
        STR      R0,[R1, #+0]
//  135   }
//  136   
//  137   /*
//  138   temp0=0.05/(1+exp(-5+0.014*ADValue7*4))+0.32; //0.32
//  139   temp1=0.1/(1+exp(5-0.014*ADValue7*4))+0.58;  //0.58  
//  140   temp2=0.7;
//  141   temp3=0.3; 
//  142   */
//  143   
//  144   trycha = temp0 * trye0 + temp1 * trye2;
??play_servo_5:
        LDR.N    R0,??play_servo_0+0x84
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x24
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??play_servo_0+0x88
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x38
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        LDR.N    R1,??play_servo_0+0x8C
        STR      R0,[R1, #+0]
//  145   tryhe = temp2 * (trye1 + ADValue7) + temp3 * trye3;
        LDR.N    R0,??play_servo_0+0x28
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x54
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??play_servo_0+0x90
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??play_servo_0+0x94
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x3C
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        LDR.N    R1,??play_servo_0+0x98
        STR      R0,[R1, #+0]
//  146 
//  147   tryhc = trycha / (powf(tryhe,1.5)*0.05);
        LDR.N    R0,??play_servo_0+0x8C
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R1,#+1069547520
        LDR.N    R0,??play_servo_0+0x98
        LDR      R0,[R0, #+0]
        BL       powf
        BL       __aeabi_f2d
        LDR.N    R2,??play_servo_0+0x9C  ;; 0x9999999a
        LDR.N    R3,??play_servo_0+0xA0  ;; 0x3fa99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??play_servo_0+0xA4
        STR      R0,[R1, #+0]
//  148   tryhc=tryhc*2500+trye0/trye1*50;
        LDR.N    R0,??play_servo_0+0xA4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xA8  ;; 0x451c4000
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??play_servo_0+0x24
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x28
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.N    R1,??play_servo_0+0xAC  ;; 0x42480000
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        LDR.N    R1,??play_servo_0+0xA4
        STR      R0,[R1, #+0]
//  149   //tryhc=tryhc*abs(2.8-0.0001*ADValue7);
//  150   //tryhc = 20000*trycha / powf(tryhe,1.5);
//  151   guiyizhi=tryhc;
        LDR.N    R0,??play_servo_0+0xA4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x4
        STR      R0,[R1, #+0]
//  152   //guiyizhi = 0.4*guiyizhi + 0.6*guiyizhi_old;
//  153   
//  154   delittles = (int)(tryKd * (guiyizhi - guiyizhi_old));
        LDR.N    R0,??play_servo_0+0x4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0x8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??play_servo_0+0xB0
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        BL       __aeabi_i2f
        LDR.N    R1,??play_servo_0+0xC
        STR      R0,[R1, #+0]
//  155   
//  156   temp = duoji_mid + (int)(guiyizhi) + delittles;
        LDR.N    R0,??play_servo_0+0x4
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        ADD      R0,R0,#+4864
        ADDS     R0,R0,#+36
        BL       __aeabi_i2f
        LDR.N    R1,??play_servo_0+0xC
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??play_servo_0+0xB4
        STR      R0,[R1, #+0]
//  157   
//  158   //舵机的最后把关
//  159   if(temp < duoji_left) 
        LDR.N    R0,??play_servo_0+0xB4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xB8  ;; 0x45610000
        BL       __aeabi_cfcmple
        BCS.N    ??play_servo_6
//  160   {
//  161    temp = duoji_left;
        LDR.N    R0,??play_servo_0+0xB8  ;; 0x45610000
        LDR.N    R1,??play_servo_0+0xB4
        STR      R0,[R1, #+0]
        B.N      ??play_servo_7
//  162   } 
//  163   else if(temp > duoji_right)
??play_servo_6:
        LDR.N    R0,??play_servo_0+0xB4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xBC  ;; 0x45c1c001
        BL       __aeabi_cfrcmple
        BHI.N    ??play_servo_7
//  164   {
//  165     temp = duoji_right;
        LDR.N    R0,??play_servo_0+0xC0  ;; 0x45c1c000
        LDR.N    R1,??play_servo_0+0xB4
        STR      R0,[R1, #+0]
//  166   }
//  167   
//  168   //保存舵机参数上一次的值
//  169   temp_old = temp;   
??play_servo_7:
        LDR.N    R0,??play_servo_0+0xB4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xC4
        STR      R0,[R1, #+0]
//  170   duoji = temp;
        LDR.N    R0,??play_servo_0+0xB4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xC8
        STR      R0,[R1, #+0]
//  171   
//  172   LPLD_FTM1_PWM_ChangeDuty(1,(int)temp);
        LDR.N    R0,??play_servo_0+0xB4
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOVS     R0,#+1
        BL       LPLD_FTM1_PWM_ChangeDuty
//  173   //LPLD_FTM1_PWM_ChangeDuty(1,duoji_left);
//  174   //舵机的控制结束
//  175   if(ADValue1<3&&ADValue2<3&&ADValue7<3&&ADValue8<3)
        LDR.N    R0,??play_servo_0+0x20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xCC  ;; 0x40400000
        BL       __aeabi_cfcmple
        BCS.N    ??play_servo_8
        LDR.N    R0,??play_servo_0+0x1C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xCC  ;; 0x40400000
        BL       __aeabi_cfcmple
        BCS.N    ??play_servo_8
        LDR.N    R0,??play_servo_0+0x54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xCC  ;; 0x40400000
        BL       __aeabi_cfcmple
        BCS.N    ??play_servo_8
        LDR.N    R0,??play_servo_0+0xD0
        LDR      R0,[R0, #+0]
        LDR.N    R1,??play_servo_0+0xCC  ;; 0x40400000
        BL       __aeabi_cfcmple
        BCS.N    ??play_servo_8
//  176     ting=1;
        MOVS     R0,#+1
        LDR.N    R1,??play_servo_0+0xD4
        STR      R0,[R1, #+0]
//  177 }
??play_servo_8:
        POP      {R0,R4,R5,PC}    ;; return
        DATA
??play_servo_0:
        DC32     fmq_time
        DC32     guiyizhi
        DC32     guiyizhi_old
        DC32     delittles
        DC32     delittles_old
        DC32     direction_flag
        DC32     last_direction_flag
        DC32     ADValue2
        DC32     ADValue1
        DC32     trye0
        DC32     trye1
        DC32     ADValue3
        DC32     0x41200001
        DC32     ADValue4
        DC32     trye2
        DC32     trye3
        DC32     tryhc1
        DC32     ADValue6
        DC32     ADValue5
        DC32     trye4
        DC32     trye5
        DC32     ADValue7
        DC32     0x43340000
        DC32     0xae147ae1
        DC32     0xbffee147
        DC32     0x40266666
        DC32     0x42c80000
        DC32     tryKp1
        DC32     0x42b40000
        DC32     tryhc2
        DC32     0x44a28001
        DC32     0x44a28000
        DC32     0xc4a28000
        DC32     temp0
        DC32     temp1
        DC32     trycha
        DC32     temp2
        DC32     temp3
        DC32     tryhe
        DC32     0x9999999a
        DC32     0x3fa99999
        DC32     tryhc
        DC32     0x451c4000
        DC32     0x42480000
        DC32     tryKd
        DC32     temp
        DC32     0x45610000
        DC32     0x45c1c001
        DC32     0x45c1c000
        DC32     temp_old
        DC32     duoji
        DC32     0x40400000
        DC32     ADValue8
        DC32     ting

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
// 396 bytes in section .bss
//  64 bytes in section .data
// 912 bytes in section .text
// 
// 912 bytes of CODE memory
// 460 bytes of DATA memory
//
//Errors: none
//Warnings: none
