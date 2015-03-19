///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:44
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\Control.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\Control.c"
//        -D IAR -D LPLD_K60 -lCN
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\"
//        -lB
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\"
//        -o
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files\IAR
//        Systems\Embedded Workbench 7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\app\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\cpu\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\cpu\headers\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\adc16\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\enet\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\lptmr\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\mcg\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\pmc\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\rtc\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\uart\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\wdog\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\platforms\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\LPLD\FatFs\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\LPLD\USB\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\iar_config_files\"
//        -Ol
//    List file    =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\Control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Beep_Flag
        EXTERN Brick
        EXTERN Brick_Dir
        EXTERN Brick_Flag
        EXTERN CCD
        EXTERN CCD_Mode
        EXTERN Dif
        EXTERN I
        EXTERN LPLD_FTM0_PWM_ChangeDuty
        EXTERN LPLD_FTM1_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Get_b
        EXTERN OLED_Print
        EXTERN P
        EXTERN SZ
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f
        EXTERN brick_l_flag
        EXTERN brick_r_flag
        EXTERN bs_up
        EXTERN d
        EXTERN exp
        EXTERN need_data0
        EXTERN need_data1
        EXTERN need_data2
        EXTERN need_data3
        EXTERN need_data4
        EXTERN need_data5
        EXTERN need_data6
        EXTERN need_data7
        EXTERN need_data8
        EXTERN p
        EXTERN podao
        EXTERN powf
        EXTERN straight_l
        EXTERN straight_r
        EXTERN t
        EXTERN tempbrick
        EXTERN v

        PUBLIC Abs
        PUBLIC Control_Dianji
        PUBLIC Control_Duoji
        PUBLIC Control_Duoji_2
        PUBLIC Expected_Speed_l
        PUBLIC Expected_Speed_r
        PUBLIC Expected_l
        PUBLIC Expected_r
        PUBLIC G_dif
        PUBLIC Kd_l
        PUBLIC Kd_r
        PUBLIC Ki_l
        PUBLIC Ki_r
        PUBLIC Kp_l
        PUBLIC Kp_r
        PUBLIC L_error
        PUBLIC PID_left
        PUBLIC PID_right
        PUBLIC R_error
        PUBLIC Speed_PID
        PUBLIC Temp
        PUBLIC Temp_Step
        PUBLIC Time
        PUBLIC U_l
        PUBLIC U_r
        PUBLIC V
        PUBLIC V_dif
        PUBLIC ad_error
        PUBLIC ave_error
        PUBLIC big_s
        PUBLIC bizhi
        PUBLIC ccd_temp
        PUBLIC cur_speed
        PUBLIC d_error
        PUBLIC dd
        PUBLIC dif
        PUBLIC dif_x
        PUBLIC dif_y
        PUBLIC dir
        PUBLIC e0_duoji
        PUBLIC e0_l
        PUBLIC e0_r
        PUBLIC e1_duoji
        PUBLIC e1_l
        PUBLIC e1_r
        PUBLIC e2_duoji
        PUBLIC e2_l
        PUBLIC e2_r
        PUBLIC e3_duoji
        PUBLIC e4_duoji
        PUBLIC e5_duoji
        PUBLIC e6_duoji
        PUBLIC e_speed
        PUBLIC end_ji
        PUBLIC error
        PUBLIC error_d
        PUBLIC error_dy
        PUBLIC final_dif
        PUBLIC final_sum
        PUBLIC i_l
        PUBLIC i_r
        PUBLIC i_speed_l
        PUBLIC i_speed_r
        PUBLIC kd_duoji
        PUBLIC kp_duoji
        PUBLIC last_dir
        PUBLIC last_error_d
        PUBLIC last_temp
        PUBLIC left
        PUBLIC left_dir
        PUBLIC leftmax_flag
        PUBLIC lock_pd
        PUBLIC long_flag
        PUBLIC max_ad
        PUBLIC max_speed
        PUBLIC mid_dir
        PUBLIC min_speed
        PUBLIC need_data_l
        PUBLIC need_data_m
        PUBLIC need_data_r
        PUBLIC pd
        PUBLIC pd_f
        PUBLIC pd_speed
        PUBLIC r_t0
        PUBLIC r_t1
        PUBLIC r_t2
        PUBLIC r_t3
        PUBLIC right
        PUBLIC right_dir
        PUBLIC rightmax_flag
        PUBLIC s
        PUBLIC speed_dif
        PUBLIC speed_error_l
        PUBLIC speed_error_r
        PUBLIC speed_fl
        PUBLIC speed_fr
        PUBLIC speed_l
        PUBLIC speed_l_1
        PUBLIC speed_l_2
        PUBLIC speed_r
        PUBLIC speed_r_1
        PUBLIC speed_r_2
        PUBLIC speed_sum
        PUBLIC stop_flag
        PUBLIC straight_speed
        PUBLIC sum
        PUBLIC sum_x
        PUBLIC sum_y
        PUBLIC temp1
        PUBLIC temp2
        PUBLIC temp3
        PUBLIC temp4
        PUBLIC temp_pwm
        PUBLIC test_speed_l
        PUBLIC test_speed_r
        PUBLIC vspeed_l
        PUBLIC vspeed_r
        PUBLIC wan_Speed
        PUBLIC wan_error
        PUBLIC xx
        PUBLIC yy
        PUBLIC zhi_Speed

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\Control.c
//    1 #include  "Control.h"
//    2 #include  "math.h"
//    3 
//    4 
//    5  
//    6 #define e_d          350.0
//    7 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 float e0_duoji=0,e1_duoji=0,e2_duoji=0,e3_duoji=0,e4_duoji=0,e5_duoji=0,e6_duoji=0; 
e0_duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e1_duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e2_duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e3_duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e4_duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e5_duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e6_duoji:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    9 int wan_Speed=160,zhi_Speed=230,wan_error=15; 
wan_Speed:
        DATA
        DC32 160

        SECTION `.data`:DATA:REORDER:NOROOT(2)
zhi_Speed:
        DATA
        DC32 230

        SECTION `.data`:DATA:REORDER:NOROOT(2)
wan_error:
        DATA
        DC32 15

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   10 float temp_pwm=Servomiddle,last_temp=0,Temp=0,ccd_temp=0;
temp_pwm:
        DATA
        DC32 4523A000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
last_temp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Temp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ccd_temp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 float Temp_Step=0,error=0,error_d=0,last_error_d=0;
Temp_Step:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
error_d:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
last_error_d:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 float kp_duoji=0,kd_duoji=0;
kp_duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
kd_duoji:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 float V_dif=0.5,V=0;
V_dif:
        DATA
        DC32 3F000000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
V:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 float dif_x=0,dif_y=0,sum_x=0,sum_y=0;
dif_x:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
dif_y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sum_x:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sum_y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 float final_dif=0,final_sum=0,speed_dif=0,speed_sum=0;
final_dif:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
final_sum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_dif:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_sum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 float temp1=0,temp2=0,temp3=0,temp4=0;
temp1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
temp2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
temp3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
temp4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 float dif=0,sum=0;
dif:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sum:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   18 int ad_error=30;
ad_error:
        DATA
        DC32 30

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int big_s=0,s=0;
big_s:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
s:
        DS8 4
//   20 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 float r_t0=0,r_t1=0,r_t2=0,r_t3=0,error_dy=0;//直角
r_t0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
r_t1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
r_t2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
r_t3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
error_dy:
        DS8 4
//   22 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 float speed_error_l=0,speed_error_r=0;
speed_error_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_error_r:
        DS8 4
//   24 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   25 float xx=0.32,yy=0.58;
xx:
        DATA
        DC32 3EA3D70AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
yy:
        DATA
        DC32 3F147AE1H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 float d_error=0,ave_error=0;
d_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ave_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 int dd=0;
dd:
        DS8 4
//   28 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 int vspeed_l=0,vspeed_r=0;
vspeed_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
vspeed_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   30 int Expected_Speed_l=0,Expected_Speed_r=0,Expected_r=0,Expected_l=0;
Expected_Speed_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Expected_Speed_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Expected_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Expected_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 float L_error=0,R_error=0;
L_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
R_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   32 float i_speed_l=0,i_speed_r=0,i_l=1,i_r=1,test_speed_l=0,test_speed_r=0;
i_speed_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
i_speed_r:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
i_l:
        DATA
        DC32 3F800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
i_r:
        DATA
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
test_speed_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
test_speed_r:
        DS8 4
//   33 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   34 int max_speed=200,min_speed=0,pd_speed = 0;
max_speed:
        DATA
        DC32 200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
min_speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pd_speed:
        DS8 4
//   35 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 int e0_l = 0, e1_l = 0, e2_l = 0, U_l = 199, speed_l=0,speed_l_1=0,speed_l_2=0;
e0_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e1_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e2_l:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
U_l:
        DATA
        DC32 199

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_l_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_l_2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 int e0_r = 0, e1_r = 0, e2_r = 0, U_r = 199, speed_r=0,speed_r_1=0,speed_r_2=0;
e0_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e1_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
e2_r:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
U_r:
        DATA
        DC32 199

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_r_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
speed_r_2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 int e_speed=0;
e_speed:
        DS8 4
//   39 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   40 int long_flag=0;
long_flag:
        DS8 4
//   41 
//   42 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   43 int speed_fl=150,speed_fr=150;//减速反转限幅
speed_fl:
        DATA
        DC32 150

        SECTION `.data`:DATA:REORDER:NOROOT(2)
speed_fr:
        DATA
        DC32 150
//   44 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 float Kp_l = 0, Ki_l = 0, Kd_l = 0;//left
Kp_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Ki_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Kd_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   46 float Kp_r = 0, Ki_r = 0, Kd_r = 0;//right
Kp_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Ki_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Kd_r:
        DS8 4
//   47 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 int dir=0,last_dir=0;
dir:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
last_dir:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 int lock_pd=0,pd=0,pd_f=0;
lock_pd:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pd:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pd_f:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 int stop_flag=0;  //停车标志
stop_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   51 int end_ji=0;
end_ji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   52 float G_dif=0;
G_dif:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   53 int mid_dir=0,left_dir=1,right_dir=2;
mid_dir:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
left_dir:
        DATA
        DC32 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
right_dir:
        DATA
        DC32 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   54 float bizhi=0;
bizhi:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   55 float straight_speed=0,cur_speed=0;
straight_speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
cur_speed:
        DS8 4
//   56 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   57 uint16 need_data_l=0;
need_data_l:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   58 uint16 need_data_m=0;
need_data_m:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   59 uint16 need_data_r=0;
need_data_r:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   60 uint16 max_ad=0;
max_ad:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 int PID_right=0,PID_left=0,left=0,right=0,leftmax_flag=0,rightmax_flag=0;
PID_right:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
PID_left:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
left:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
right:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
leftmax_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
rightmax_flag:
        DS8 4
//   62 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   63 uint16 Time = 0;     //计时
Time:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 float Abs(float j)
//   65 {
Abs:
        PUSH     {R7,LR}
        MOVS     R1,R0
//   66     float i=0;
        MOVS     R0,#+0
//   67     i=j;
        MOVS     R0,R1
//   68     if(i<0) i=i*(-1);
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??Abs_0
        LDR.W    R1,??DataTable2  ;; 0xbf800000
        BL       __aeabi_fmul
//   69     return i;
??Abs_0:
        POP      {R1,PC}          ;; return
//   70 }
//   71 
//   72 
//   73 /*************************************************************/
//   74 /*                         速度PID程序                       */
//   75 /*************************************************************/
//   76 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void Speed_PID()
//   78 {
Speed_PID:
        PUSH     {R3-R7,LR}
//   79     e2_l = e1_l;                
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   80     e1_l = e0_l;
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   81     e0_l = Expected_Speed_l - vspeed_l;
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//   82   
//   83     e2_r = e1_r;                
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_5
        STR      R0,[R1, #+0]
//   84     e1_r = e0_r;
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   85     e0_r = Expected_Speed_r - vspeed_r;
        LDR.W    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_3
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable2_6
        STR      R0,[R1, #+0]
//   86     
//   87       if(Abs(e0_l)>20)
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        BL       Abs
        LDR.W    R1,??DataTable2_7  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BHI.N    ??Speed_PID_0
//   88       {
//   89         Kp_l = P/70;
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_9  ;; 0x428c0000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_10
        STR      R0,[R1, #+0]
        B.N      ??Speed_PID_1
//   90  //     Ki_l = I/100;
//   91       }
//   92       else
//   93       {
//   94         Kp_l = P/100;
??Speed_PID_0:
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_10
        STR      R0,[R1, #+0]
//   95 //      Ki_l = 1.2*I/100;
//   96       }
//   97       
//   98       if(e0_l<-50)
??Speed_PID_1:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMN      R0,#+50
        BGE.N    ??Speed_PID_2
//   99       {
//  100         Kp_l = P/60;
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_12  ;; 0x42700000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_10
        STR      R0,[R1, #+0]
//  101  //     Ki_l = I/100;
//  102       }
//  103 
//  104       Ki_l=I/100-0.08/(1+exp(6-0.2*Abs(e0_l)));
??Speed_PID_2:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        BL       Abs
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable2_13  ;; 0x9999999a
        LDR.W    R3,??DataTable2_14  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_15  ;; 0x40180000
        BL       __aeabi_dsub
        BL       exp
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x42c80000
        BL       __aeabi_fdiv
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_17  ;; 0x3ff00000
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R0,??DataTable2_18  ;; 0x47ae147b
        LDR.W    R1,??DataTable2_19  ;; 0x3fb47ae1
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_20
        STR      R0,[R1, #+0]
//  105       //Ki_l = I/100;
//  106       Kd_l = Dif/100;//left
        LDR.W    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_22
        STR      R0,[R1, #+0]
//  107 
//  108       if(Abs(e0_r)>20)
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        BL       Abs
        LDR.W    R1,??DataTable2_7  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BHI.N    ??Speed_PID_3
//  109       {
//  110         Kp_r = P/70;
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_9  ;; 0x428c0000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_23
        STR      R0,[R1, #+0]
        B.N      ??Speed_PID_4
//  111 //        Ki_r = 1*I/100;
//  112       }
//  113       else
//  114       {
//  115         Kp_r = P/100;
??Speed_PID_3:
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_23
        STR      R0,[R1, #+0]
//  116  //       Ki_r = 1.2*I/100;
//  117       }
//  118        
//  119       if(e0_r<-50)
??Speed_PID_4:
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        CMN      R0,#+50
        BGE.N    ??Speed_PID_5
//  120       {
//  121         Kp_r = P/60;
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_12  ;; 0x42700000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_23
        STR      R0,[R1, #+0]
//  122  //     Ki_l = I/100;
//  123       }
//  124 
//  125     Ki_r=I/100-0.08/(1+exp(6-0.2*Abs(e0_r)));
??Speed_PID_5:
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        BL       Abs
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable2_13  ;; 0x9999999a
        LDR.W    R3,??DataTable2_14  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_15  ;; 0x40180000
        BL       __aeabi_dsub
        BL       exp
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x42c80000
        BL       __aeabi_fdiv
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_17  ;; 0x3ff00000
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R0,??DataTable2_18  ;; 0x47ae147b
        LDR.W    R1,??DataTable2_19  ;; 0x3fb47ae1
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_24
        STR      R0,[R1, #+0]
//  126     //Ki_r = I/100;
//  127     Kd_r = Dif/100;//right 
        LDR.W    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_25
        STR      R0,[R1, #+0]
//  128     
//  129     i_speed_l = i_l * Ki_l * (float) e0_l;
        LDR.W    R0,??DataTable2_26
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable2_27
        STR      R0,[R1, #+0]
//  130     i_speed_r = i_r * Ki_r * (float) e0_r;
        LDR.W    R0,??DataTable2_28
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_24
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable2_29
        STR      R0,[R1, #+0]
//  131     
//  132     test_speed_l+=i_speed_l;
        LDR.W    R0,??DataTable2_30
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable2_30
        STR      R0,[R1, #+0]
//  133     test_speed_r+=i_speed_r;
        LDR.W    R0,??DataTable2_31
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_29
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable2_31
        STR      R0,[R1, #+0]
//  134     
//  135     if(i_speed_l<=-100) 
        LDR.W    R0,??DataTable2_27
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_32  ;; 0xc2c7ffff
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_PID_6
//  136     {
//  137       //Beep_Flag = TRUE;
//  138       i_l=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_26
        STR      R0,[R1, #+0]
        B.N      ??Speed_PID_7
//  139     }
//  140     else
//  141       i_l=1;
??Speed_PID_6:
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable2_26
        STR      R0,[R1, #+0]
//  142     
//  143     if(i_speed_r<=-100) 
??Speed_PID_7:
        LDR.W    R0,??DataTable2_29
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_32  ;; 0xc2c7ffff
        BL       __aeabi_cfcmple
        BCS.N    ??Speed_PID_8
//  144     {
//  145      // Beep_Flag = TRUE;
//  146       i_r=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_28
        STR      R0,[R1, #+0]
        B.N      ??Speed_PID_9
//  147     }
//  148     else
//  149       i_r=1;
??Speed_PID_8:
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable2_28
        STR      R0,[R1, #+0]
//  150     
//  151 
//  152 ////////////遇限削弱积分/////////////////////
//  153 /*    if(vspeed_l<=min_speed)
//  154     {
//  155       if(i_speed_l<0)
//  156         i_speed_l=0;
//  157     }
//  158     if(vspeed_r<=min_speed)
//  159     {
//  160       if(i_speed_r<0)
//  161         i_speed_r=0;
//  162     }
//  163     if(speed_l>=max_speed)
//  164     {
//  165       if(i_speed_l>0)
//  166         i_speed_l=0;
//  167     }
//  168     if(speed_r>=max_speed)
//  169     {
//  170       if(i_speed_r>0)
//  171         i_speed_r=0;
//  172     }
//  173 */   
//  174    // U_l = (int) (Kp_l * (float) (e0_l - e1_l) +i_speed_l- Kd_l * (float) (2*speed_l - 3 * speed_l_1 + speed_l_2));
//  175    // U_r = (int) (Kp_r * (float) (e0_r - e1_r) +i_speed_r- Kd_r * (float) (2*speed_r - 3 * speed_r_1 + speed_r_2));
//  176     U_l = (int) (Kp_l * (float) (e0_l - e1_l) +i_speed_l- Kd_l * (float) (e0_l-2*e1_l+e2_l));
??Speed_PID_9:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable2_10
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable2_27
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1, LSL #+1
        LDR.W    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable2_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_33
        STR      R0,[R1, #+0]
//  177     U_r = (int) (Kp_r * (float) (e0_r - e1_r) +i_speed_r- Kd_r * (float) (e0_r-2*e1_r+e2_r)); 
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_4
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable2_23
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable2_29
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_4
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1, LSL #+1
        LDR.W    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable2_25
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_34
        STR      R0,[R1, #+0]
//  178     
//  179    // speed_l_2 = speed_l_1;
//  180     //speed_l_1 = speed_l;
//  181     speed_l = speed_l + U_l ;                                                        //增量PID
        LDR.W    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_33
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable2_35
        STR      R0,[R1, #+0]
//  182     
//  183     //speed_r_2 = speed_r_1;
//  184     //speed_r_1 = speed_r;
//  185     speed_r = speed_r + U_r ;                                                        //增量PID
        LDR.W    R0,??DataTable2_36
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_34
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable2_36
        STR      R0,[R1, #+0]
//  186   
//  187 //---------------------------------------速度限幅-------------------------------------------- 
//  188 
//  189    if(speed_l >= 199)
        LDR.W    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        CMP      R0,#+199
        BLT.N    ??Speed_PID_10
//  190     {
//  191       speed_l = 199;
        MOVS     R0,#+199
        LDR.W    R1,??DataTable2_35
        STR      R0,[R1, #+0]
//  192     }
//  193    if(speed_r >= 199)
??Speed_PID_10:
        LDR.W    R0,??DataTable2_36
        LDR      R0,[R0, #+0]
        CMP      R0,#+199
        BLT.N    ??Speed_PID_11
//  194     {
//  195       speed_r = 199;
        MOVS     R0,#+199
        LDR.W    R1,??DataTable2_36
        STR      R0,[R1, #+0]
//  196     }
//  197 
//  198    if(stop_flag==0) 
??Speed_PID_11:
        LDR.W    R0,??DataTable2_37
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Speed_PID_12
//  199      {    
//  200   //---------------------------------------右转弯减速--------------------------------------------
//  201   /*     
//  202       if(speed_l<=0)
//  203          speed_l=0;
//  204        if(speed_r<=0)
//  205          speed_r=0;
//  206 */       
//  207       
//  208       Expected_l=speed_l;
        LDR.W    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_38
        STR      R0,[R1, #+0]
//  209       Expected_r=speed_r; 
        LDR.W    R0,??DataTable2_36
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_39
        STR      R0,[R1, #+0]
//  210         if(speed_r>=0) 
        LDR.W    R0,??DataTable2_36
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BMI.N    ??Speed_PID_13
//  211           {
//  212             LPLD_FTM0_PWM_ChangeDuty(4, speed_r);
        LDR.W    R0,??DataTable2_36
        LDR      R1,[R0, #+0]
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  213             LPLD_FTM0_PWM_ChangeDuty(5, 0);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       LPLD_FTM0_PWM_ChangeDuty
        B.N      ??Speed_PID_14
//  214           } 
//  215         else 
//  216           {
//  217             if(Abs(speed_r)>= speed_fr)
??Speed_PID_13:
        LDR.W    R0,??DataTable2_40
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R4,R1
        LDR.W    R0,??DataTable2_36
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        BL       Abs
        MOVS     R1,R4
        BL       __aeabi_cfrcmple
        BHI.N    ??Speed_PID_15
//  218             {
//  219              // Beep_Flag = TRUE;
//  220               speed_r = -speed_fr;
        LDR.W    R0,??DataTable2_40
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable2_36
        STR      R0,[R1, #+0]
//  221             }
//  222             LPLD_FTM0_PWM_ChangeDuty(4, 0);
??Speed_PID_15:
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  223             LPLD_FTM0_PWM_ChangeDuty(5, -speed_r);
        LDR.W    R0,??DataTable2_36
        LDR      R0,[R0, #+0]
        RSBS     R1,R0,#+0
        MOVS     R0,#+5
        BL       LPLD_FTM0_PWM_ChangeDuty
//  224           }
//  225   
//  226   //---------------------------------------左转弯减速--------------------------------------------
//  227      
//  228         if(speed_l>=0) 
??Speed_PID_14:
        LDR.W    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BMI.N    ??Speed_PID_16
//  229           {
//  230             LPLD_FTM0_PWM_ChangeDuty(7, speed_l);
        LDR.W    R0,??DataTable2_35
        LDR      R1,[R0, #+0]
        MOVS     R0,#+7
        BL       LPLD_FTM0_PWM_ChangeDuty
//  231             LPLD_FTM0_PWM_ChangeDuty(6, 0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
        B.N      ??Speed_PID_12
//  232           } 
//  233         else 
//  234           {
//  235             if(Abs(speed_l)>= speed_fl)
??Speed_PID_16:
        LDR.W    R0,??DataTable2_41
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R4,R1
        LDR.W    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        BL       Abs
        MOVS     R1,R4
        BL       __aeabi_cfrcmple
        BHI.N    ??Speed_PID_17
//  236             {
//  237               //Beep_Flag = TRUE;
//  238               speed_l = -speed_fl;
        LDR.W    R0,??DataTable2_41
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable2_35
        STR      R0,[R1, #+0]
//  239             }
//  240             LPLD_FTM0_PWM_ChangeDuty(7, 0);
??Speed_PID_17:
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       LPLD_FTM0_PWM_ChangeDuty
//  241             LPLD_FTM0_PWM_ChangeDuty(6, -speed_l);
        LDR.W    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        RSBS     R1,R0,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  242           }
//  243      }
//  244        
//  245      if(stop_flag==1||Time<2000) 
??Speed_PID_12:
        LDR.W    R0,??DataTable2_37
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Speed_PID_18
        LDR.W    R0,??DataTable2_42
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2000
        BGE.N    ??Speed_PID_19
//  246      {
//  247        LPLD_FTM0_PWM_ChangeDuty(4, 0);
??Speed_PID_18:
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  248        LPLD_FTM0_PWM_ChangeDuty(5, 0);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       LPLD_FTM0_PWM_ChangeDuty
//  249        LPLD_FTM0_PWM_ChangeDuty(6, 0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  250        LPLD_FTM0_PWM_ChangeDuty(7, 0);
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       LPLD_FTM0_PWM_ChangeDuty
//  251      }
//  252 
//  253 }
??Speed_PID_19:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Expected_Speed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     vspeed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Expected_Speed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     vspeed_r
//  254 
//  255 /*************************************************************/
//  256 /*                      电机速度规划程序                     */
//  257 /*************************************************************/
//  258 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  259 void  Control_Dianji() 
//  260 {
Control_Dianji:
        PUSH     {R3-R7,LR}
//  261   if(Get_Switch(3)==0) podao=1;
        MOVS     R1,#+13
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+0
        BNE.N    ??Control_Dianji_0
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_43
        STRB     R0,[R1, #+0]
        B.N      ??Control_Dianji_1
//  262   else podao=0;
??Control_Dianji_0:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_43
        STRB     R0,[R1, #+0]
//  263   
//  264   if(need_data8>1000&&pd==0&&podao==1)
??Control_Dianji_1:
        LDR.W    R0,??DataTable2_44
        LDR      R0,[R0, #+0]
        CMP      R0,#+1000
        BLE.N    ??Control_Dianji_2
        LDR.W    R0,??DataTable2_45
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Dianji_2
        LDR.W    R0,??DataTable2_43
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Dianji_2
//  265   {
//  266     lock_pd=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_46
        STR      R0,[R1, #+0]
//  267     pd=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_45
        STR      R0,[R1, #+0]
//  268     pd_f=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_47
        STR      R0,[R1, #+0]
//  269     //Beep_Flag = TRUE;
//  270   }
//  271 
//  272  /* 
//  273   if(Get_Switch(6)==1&&Get_Switch(6)==1&&Get_Switch(6)==1)
//  274   {
//  275     zhi_Speed=230;
//  276     wan_Speed=160;
//  277     spd=0;
//  278   }
//  279   if(Get_Switch(6)==0)
//  280   {
//  281     zhi_Speed=220;
//  282     wan_Speed=155;
//  283     spd=1;
//  284   }
//  285   if(Get_Switch(5)==0)
//  286   {
//  287     zhi_Speed=210;
//  288     wan_Speed=155;
//  289     spd=2;
//  290   }
//  291   if(Get_Switch(4)==0)
//  292   {
//  293     zhi_Speed=200;
//  294     wan_Speed=150;
//  295     spd=3;
//  296   }
//  297   */
//  298 
//  299   V_dif=v/100;
??Control_Dianji_2:
        LDR.W    R0,??DataTable2_48
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_49
        STR      R0,[R1, #+0]
//  300   
//  301   if(vspeed_l+vspeed_r>2*(zhi_Speed-5))
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable2_51
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable2_52
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        CMP      R0,R1
        BGE.N    ??Control_Dianji_3
//  302   {
//  303     long_flag=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_53
        STR      R0,[R1, #+0]
//  304 
//  305     //Beep_Flag = TRUE;
//  306   }
//  307   if(((vspeed_l+vspeed_r)<=2*(wan_Speed+5))||lock_pd == 1)
??Control_Dianji_3:
        LDR.W    R0,??DataTable2_54
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+5
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable2_51
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable2_52
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        CMP      R0,R1
        BGE.N    ??Control_Dianji_4
        LDR.W    R0,??DataTable2_46
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Dianji_5
//  308   {
//  309     long_flag=0;
??Control_Dianji_4:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_53
        STR      R0,[R1, #+0]
//  310    // Beep_Flag = TRUE;
//  311   }
//  312     
//  313   
//  314   straight_speed=0*(straight_r+straight_l)/(2*5000);
??Control_Dianji_5:
        LDR.W    R0,??DataTable2_55
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_56
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R1,#+0
        MULS     R0,R1,R0
        MOVW     R1,#+10000
        UDIV     R0,R0,R1
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable2_57
        STR      R0,[R1, #+0]
//  315   
//  316   if(Abs(temp_pwm-Servomiddle)<50&&need_data2>120)
        LDR.W    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.W    R1,??DataTable2_60  ;; 0x42480000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Dianji_6
        LDR.W    R0,??DataTable2_61
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??Control_Dianji_6
//  317   {
//  318     Expected_Speed_l=(int)(zhi_Speed+1*straight_speed);
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_57
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  319     Expected_Speed_r=(int)(zhi_Speed+1*straight_speed);
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_57
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_63
        STR      R0,[R1, #+0]
        B.N      ??Control_Dianji_7
//  320   }
//  321   else
//  322   {
//  323      Expected_Speed_l=(int)(zhi_Speed-(zhi_Speed-wan_Speed)*powf(Abs(temp_pwm-Servomiddle)/(Servoleftmax-Servomiddle),1))+0*bs_up/4000;
??Control_Dianji_6:
        LDR.W    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        MOVS     R1,#+1065353216
        MOVS     R4,R1
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_64  ;; 0x4078d000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R1,R4
        BL       powf
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R5,R0
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_54
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_65
        LDR      R1,[R1, #+0]
        MOVS     R2,#+0
        MULS     R1,R2,R1
        MOV      R2,#+4000
        UDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  324      Expected_Speed_r=(int)(zhi_Speed-(zhi_Speed-wan_Speed)*powf(Abs(temp_pwm-Servomiddle)/(Servomiddle-Servorightmax),1))+0*bs_up/4000;
        LDR.W    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        MOVS     R1,#+1065353216
        MOVS     R4,R1
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_66  ;; 0x40780000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R1,R4
        BL       powf
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R5,R0
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_54
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_65
        LDR      R1,[R1, #+0]
        MOVS     R2,#+0
        MULS     R1,R2,R1
        MOV      R2,#+4000
        UDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable2_63
        STR      R0,[R1, #+0]
//  325      wan_error=25;
        MOVS     R0,#+25
        LDR.W    R1,??DataTable2_67
        STR      R0,[R1, #+0]
//  326   }
//  327   
//  328 ////////////////////////长直道入弯//////////////////////  
//  329   V=0.1;
??Control_Dianji_7:
        LDR.W    R0,??DataTable2_68  ;; 0x3dcccccd
        LDR.W    R1,??DataTable2_69
        STR      R0,[R1, #+0]
//  330   if(long_flag==1)
        LDR.W    R0,??DataTable2_53
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Control_Dianji_8
//  331   {
//  332     if(Abs(temp_pwm-Servomiddle)<30&&need_data2>120)
        LDR.W    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.W    R1,??DataTable2_70  ;; 0x41f00000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Dianji_9
        LDR.W    R0,??DataTable2_61
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??Control_Dianji_9
//  333     {
//  334       Expected_Speed_l=(int)(zhi_Speed+1*straight_speed);
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_57
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  335       Expected_Speed_r=(int)(zhi_Speed+1*straight_speed);
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_57
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_63
        STR      R0,[R1, #+0]
        B.N      ??Control_Dianji_8
//  336     }
//  337     else
//  338     {
//  339        Expected_Speed_l=(int)(zhi_Speed-(zhi_Speed-wan_Speed-20)*powf(Abs(temp_pwm-Servomiddle)/(Servoleftmax-Servomiddle),1));
??Control_Dianji_9:
        LDR.W    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        MOVS     R1,#+1065353216
        MOVS     R4,R1
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_64  ;; 0x4078d000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R1,R4
        BL       powf
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R5,R0
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_54
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+20
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  340        Expected_Speed_r=(int)(zhi_Speed-(zhi_Speed-wan_Speed-20)*powf(Abs(temp_pwm-Servomiddle)/(Servomiddle-Servorightmax),1));
        LDR.W    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        MOVS     R1,#+1065353216
        MOVS     R4,R1
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_66  ;; 0x40780000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R1,R4
        BL       powf
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R5,R0
        LDR.W    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_54
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+20
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable2_63
        STR      R0,[R1, #+0]
//  341        Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_71
        STRB     R0,[R1, #+0]
//  342        wan_error=50;
        MOVS     R0,#+50
        LDR.W    R1,??DataTable2_67
        STR      R0,[R1, #+0]
//  343        V=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_69
        STR      R0,[R1, #+0]
//  344        //Expected_Speed_l=wan_Speed;
//  345        //Expected_Speed_r=wan_Speed;
//  346     }
//  347   }
//  348 
//  349    
//  350 
//  351    if(Abs(temp_pwm-Servomiddle)>50) 
??Control_Dianji_8:
        LDR.N    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.W    R1,??DataTable2_72  ;; 0x42480001
        BL       __aeabi_cfrcmple
        BHI.W    ??Control_Dianji_10
//  352    {
//  353       if(temp_pwm-Servomiddle<0)     //右转
        LDR.N    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??Control_Dianji_11
//  354       {
//  355         speed_error_r=Expected_Speed_r*V_dif*(Servomiddle-temp_pwm)/(Servomiddle-Servorightmax);
        LDR.N    R0,??DataTable2_63
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_49
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_73  ;; 0x40a47400
        BL       __aeabi_dsub
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_66  ;; 0x40780000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_74
        STR      R0,[R1, #+0]
//  356         Expected_Speed_l=(int)(Expected_Speed_l*(1+((V*V_dif)*(Servomiddle-temp_pwm)/(Servomiddle-Servorightmax))));
        LDR.N    R0,??DataTable2_62
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable2_69
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_49
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_73  ;; 0x40a47400
        BL       __aeabi_dsub
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_66  ;; 0x40780000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_17  ;; 0x3ff00000
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  357         Expected_Speed_r=(int)(Expected_Speed_r-speed_error_r);
        LDR.N    R0,??DataTable2_63
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_74
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_63
        STR      R0,[R1, #+0]
//  358       } 
//  359        
//  360       if(temp_pwm-Servomiddle>=0)    //左转
??Control_Dianji_11:
        LDR.N    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BHI.N    ??Control_Dianji_10
//  361       {
//  362         speed_error_l=Expected_Speed_l*V_dif*(temp_pwm-Servomiddle)/(Servoleftmax-Servomiddle);
        LDR.N    R0,??DataTable2_62
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_49
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_64  ;; 0x4078d000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_75
        STR      R0,[R1, #+0]
//  363         Expected_Speed_l=(int)(Expected_Speed_l-speed_error_l);//Abs(temp_pwm-Servomiddle)*2
        LDR.N    R0,??DataTable2_62
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_75
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  364         Expected_Speed_r=(int)(Expected_Speed_r*(1+((V*V_dif)*(temp_pwm-Servomiddle)/(Servoleftmax-Servomiddle))));
        LDR.N    R0,??DataTable2_63
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable2_69
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_49
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_59  ;; 0xc0a47400
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_64  ;; 0x4078d000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_17  ;; 0x3ff00000
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable2_63
        STR      R0,[R1, #+0]
//  365       } 
//  366    } 
//  367 
//  368    if(Expected_Speed_l>=zhi_Speed)        //left
??Control_Dianji_10:
        LDR.N    R0,??DataTable2_62
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_50
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Control_Dianji_12
//  369     Expected_Speed_l=zhi_Speed;
        LDR.N    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  370    if(Expected_Speed_r>=zhi_Speed)        //right
??Control_Dianji_12:
        LDR.N    R0,??DataTable2_63
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_50
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Control_Dianji_13
//  371     Expected_Speed_r=zhi_Speed;
        LDR.N    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_63
        STR      R0,[R1, #+0]
//  372    
//  373    if(lock_pd==1)
??Control_Dianji_13:
        LDR.N    R0,??DataTable2_46
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Dianji_14
//  374    {
//  375      Expected_Speed_l=pd_speed;
        LDR.N    R0,??DataTable2_76
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  376      Expected_Speed_r=pd_speed;
        LDR.N    R0,??DataTable2_76
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_63
        STR      R0,[R1, #+0]
//  377      
//  378      min_speed=Expected_Speed_r;
        LDR.N    R0,??DataTable2_63
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_77
        STR      R0,[R1, #+0]
        B.N      ??Control_Dianji_15
//  379      //Beep_Flag = TRUE;
//  380    }  
//  381    else
//  382    {
//  383      if(Expected_Speed_l<=(wan_Speed-wan_error))        //left
??Control_Dianji_14:
        LDR.N    R0,??DataTable2_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_67
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable2_62
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Control_Dianji_16
//  384      {
//  385       Expected_Speed_l=(wan_Speed-wan_error);
        LDR.N    R0,??DataTable2_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_67
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  386       //Beep_Flag = TRUE;
//  387      }
//  388      if(Expected_Speed_r<=(wan_Speed-wan_error))        //right
??Control_Dianji_16:
        LDR.N    R0,??DataTable2_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_67
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable2_63
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Control_Dianji_17
//  389      {
//  390       Expected_Speed_r=(wan_Speed-wan_error);
        LDR.N    R0,??DataTable2_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_67
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable2_63
        STR      R0,[R1, #+0]
//  391       //Beep_Flag = TRUE;
//  392      }
//  393 
//  394      min_speed=wan_Speed-wan_error;
??Control_Dianji_17:
        LDR.N    R0,??DataTable2_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_67
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable2_77
        STR      R0,[R1, #+0]
//  395    }
//  396    
//  397    
//  398  
//  399 }
??Control_Dianji_15:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     e1_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     e2_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     e0_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     e1_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     e2_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     e0_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x41a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x428c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     Kp_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x42700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     0x40180000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     0x3fb47ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     Ki_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     Dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     Kd_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     Kp_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     Ki_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     Kd_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     i_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     i_speed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     i_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     i_speed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     test_speed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     test_speed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     0xc2c7ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     U_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     U_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     speed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_36:
        DC32     speed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_37:
        DC32     stop_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_38:
        DC32     Expected_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_39:
        DC32     Expected_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_40:
        DC32     speed_fr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_41:
        DC32     speed_fl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_42:
        DC32     Time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_43:
        DC32     podao

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_44:
        DC32     need_data8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_45:
        DC32     pd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_46:
        DC32     lock_pd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_47:
        DC32     pd_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_48:
        DC32     v

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_49:
        DC32     V_dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_50:
        DC32     zhi_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_51:
        DC32     vspeed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_52:
        DC32     vspeed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_53:
        DC32     long_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_54:
        DC32     wan_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_55:
        DC32     straight_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_56:
        DC32     straight_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_57:
        DC32     straight_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_58:
        DC32     temp_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_59:
        DC32     0xc0a47400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_60:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_61:
        DC32     need_data2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_62:
        DC32     Expected_Speed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_63:
        DC32     Expected_Speed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_64:
        DC32     0x4078d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_65:
        DC32     bs_up

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_66:
        DC32     0x40780000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_67:
        DC32     wan_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_68:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_69:
        DC32     V

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_70:
        DC32     0x41f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_71:
        DC32     Beep_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_72:
        DC32     0x42480001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_73:
        DC32     0x40a47400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_74:
        DC32     speed_error_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_75:
        DC32     speed_error_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_76:
        DC32     pd_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_77:
        DC32     min_speed
//  400 
//  401 /*************************************************************/
//  402 /*                         舵机PID程序                       */
//  403 /*************************************************************/ 
//  404           

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  405 void  Control_Duoji()
//  406 {
Control_Duoji:
        PUSH     {R3-R9,LR}
//  407     if((need_data0<5&&need_data1<5&&need_data5<5&&need_data3<5&&need_data4<5&&need_data7<5&&need_data6<5)||Time>t) stop_flag=1;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_0
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_0
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_0
        LDR.W    R0,??DataTable3_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_0
        LDR.W    R0,??DataTable3_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_0
        LDR.W    R0,??DataTable3_5
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_0
        LDR.W    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??Control_Duoji_1
??Control_Duoji_0:
        LDR.W    R0,??DataTable3_7
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_2
??Control_Duoji_1:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//  408 /*     
//  409     if((need_data0<2&&need_data1<2&&need_data5<2&&need_data3<2&&need_data4<2&&need_data7<2&&need_data6<2)) 
//  410       end_ji++;
//  411     else
//  412       end_ji=0;
//  413     if(end_ji>100)
//  414       stop_flag=1;
//  415     
//  416     if(Time>t) stop_flag=1;*/
//  417      
//  418     temp1=0.05/(1+exp(-5+0.014*need_data2*4))+xx; //横向   减小  0.32
??Control_Duoji_2:
        LDR.W    R0,??DataTable3_10
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2d
        LDR.W    R2,??DataTable3_11  ;; 0x3126e979
        LDR.W    R3,??DataTable3_12  ;; 0x3f8cac08
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_13  ;; 0x40100000
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_14  ;; 0xc0140000
        BL       __aeabi_dadd
        BL       exp
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_15  ;; 0x3ff00000
        BL       __aeabi_dadd
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R0,??DataTable3_16  ;; 0x9999999a
        LDR.W    R1,??DataTable3_17  ;; 0x3fa99999
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3_18
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable3_19
        STR      R0,[R1, #+0]
//  419     temp2=0.1/(1+exp(5-0.014*need_data2*4))+yy;  //纵向   加大   0.58 
        LDR.W    R0,??DataTable3_10
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2d
        LDR.W    R2,??DataTable3_11  ;; 0x3126e979
        LDR.W    R3,??DataTable3_12  ;; 0x3f8cac08
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_13  ;; 0x40100000
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_20  ;; 0x40140000
        BL       __aeabi_dsub
        BL       exp
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_15  ;; 0x3ff00000
        BL       __aeabi_dadd
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R0,??DataTable3_16  ;; 0x9999999a
        LDR.W    R1,??DataTable3_21  ;; 0x3fb99999
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3_22
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable3_23
        STR      R0,[R1, #+0]
//  420   
//  421 /*   
//  422     temp1=0.32; //横向   减小  0.32
//  423     temp2=0.68;  //纵向   加大   0.58 
//  424 */  
//  425     temp3=0.7;
        LDR.W    R0,??DataTable3_24  ;; 0x3f333333
        LDR.W    R1,??DataTable3_25
        STR      R0,[R1, #+0]
//  426     temp4=0.3; 
        LDR.W    R0,??DataTable3_26  ;; 0x3e99999a
        LDR.W    R1,??DataTable3_27
        STR      R0,[R1, #+0]
//  427 
//  428  
//  429 //////////////////路障////////////////////////////////////////
//  430      if(CCD_Mode == 0)
        LDR.W    R0,??DataTable3_28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_3
//  431     {
//  432       if(brick_r_flag==1&&tempbrick>0&&tempbrick<250&&lock_pd==0)
        LDR.W    R0,??DataTable3_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_4
        LDR.W    R0,??DataTable3_30
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_Duoji_4
        LDR.W    R0,??DataTable3_30
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??Control_Duoji_4
        LDR.W    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_4
//  433       { 
//  434         ccd_temp=-230;
        LDR.W    R0,??DataTable3_32  ;; 0xc3660000
        LDR.W    R1,??DataTable3_33
        STR      R0,[R1, #+0]
//  435         Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_34
        STRB     R0,[R1, #+0]
        B.N      ??Control_Duoji_3
//  436       }
//  437       else if(brick_l_flag==1&&tempbrick>0&&tempbrick<250&&lock_pd==0)
??Control_Duoji_4:
        LDR.W    R0,??DataTable3_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_5
        LDR.W    R0,??DataTable3_30
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_Duoji_5
        LDR.W    R0,??DataTable3_30
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??Control_Duoji_5
        LDR.W    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_5
//  438       {
//  439         Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_34
        STRB     R0,[R1, #+0]
//  440         ccd_temp=230;
        LDR.W    R0,??DataTable3_36  ;; 0x43660000
        LDR.W    R1,??DataTable3_33
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_3
//  441            
//  442       }
//  443       else
//  444         ccd_temp=0;
??Control_Duoji_5:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_33
        STR      R0,[R1, #+0]
//  445     }
//  446     if(CCD_Mode == 1)
??Control_Duoji_3:
        LDR.W    R0,??DataTable3_28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_6
//  447     {
//  448      if(Brick_Flag == TRUE&&lock_pd==0)
        LDR.W    R0,??DataTable3_37
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_6
        LDR.W    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_6
//  449       {
//  450         if(Brick_Dir == Left)
        LDR.W    R0,??DataTable3_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_7
//  451         {
//  452             Brick++;
        LDR.W    R0,??DataTable3_39
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_39
        STRH     R0,[R1, #+0]
//  453             Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_34
        STRB     R0,[R1, #+0]
//  454             if(CCD)
        LDR.W    R0,??DataTable3_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_Duoji_8
//  455             {
//  456               //Servomiddle = Middle+150;
//  457               ccd_temp=230;
        LDR.W    R0,??DataTable3_36  ;; 0x43660000
        LDR.W    R1,??DataTable3_33
        STR      R0,[R1, #+0]
//  458             }
//  459             
//  460             if(Brick>30)
??Control_Duoji_8:
        LDR.W    R0,??DataTable3_39
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Control_Duoji_7
//  461             {
//  462               Brick = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_39
        STRH     R0,[R1, #+0]
//  463               //Servomiddle = Middle;
//  464               ccd_temp = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_33
        STR      R0,[R1, #+0]
//  465               Brick_Dir = Straight;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_38
        STRB     R0,[R1, #+0]
//  466               Brick_Flag = FALSE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_37
        STRB     R0,[R1, #+0]
//  467               OLED_Print(60,2,"Strai");
        LDR.W    R2,??DataTable3_41
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_Print
//  468             }
//  469         }
//  470         if(Brick_Dir == Right)
??Control_Duoji_7:
        LDR.W    R0,??DataTable3_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Control_Duoji_6
//  471         {
//  472             Brick++;
        LDR.W    R0,??DataTable3_39
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_39
        STRH     R0,[R1, #+0]
//  473             Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_34
        STRB     R0,[R1, #+0]
//  474             if(CCD)
        LDR.W    R0,??DataTable3_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_Duoji_9
//  475             {
//  476               //Servomiddle = Middle-150;
//  477               ccd_temp=-230;
        LDR.W    R0,??DataTable3_32  ;; 0xc3660000
        LDR.W    R1,??DataTable3_33
        STR      R0,[R1, #+0]
//  478             }
//  479             if(Brick>30)
??Control_Duoji_9:
        LDR.W    R0,??DataTable3_39
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Control_Duoji_6
//  480             {
//  481               Brick = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_39
        STRH     R0,[R1, #+0]
//  482               //Servomiddle = Middle;
//  483               ccd_temp = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_33
        STR      R0,[R1, #+0]
//  484               Brick_Dir = Straight;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_38
        STRB     R0,[R1, #+0]
//  485               Brick_Flag = FALSE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_37
        STRB     R0,[R1, #+0]
//  486               OLED_Print(60,2,"Strai");
        LDR.W    R2,??DataTable3_41
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_Print
//  487             }
//  488         }
//  489       }
//  490     }
//  491 
//  492     //---------------------------------------方向判断-------------------------------------------- 
//  493     if(need_data3-10>need_data2&&need_data3-10>need_data4&&right==0) 
??Control_Duoji_6:
        LDR.W    R0,??DataTable3_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_3
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Control_Duoji_10
        LDR.W    R0,??DataTable3_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_3
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Control_Duoji_10
        LDR.W    R0,??DataTable3_42
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_10
//  494     {
//  495         left=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_43
        STR      R0,[R1, #+0]
//  496         right=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_42
        STR      R0,[R1, #+0]
//  497     }
//  498     if(need_data4-10>need_data2&&need_data4-10>need_data3&&left==0) 
??Control_Duoji_10:
        LDR.W    R0,??DataTable3_10
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_4
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Control_Duoji_11
        LDR.W    R0,??DataTable3_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_4
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Control_Duoji_11
        LDR.W    R0,??DataTable3_43
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_11
//  499     {    
//  500         
//  501         right=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_42
        STR      R0,[R1, #+0]
//  502         left=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_43
        STR      R0,[R1, #+0]
//  503     }
//  504     if(need_data0>100||need_data1>100||need_data2>100||need_data5>110||need_data6>110) 
??Control_Duoji_11:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??Control_Duoji_12
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??Control_Duoji_12
        LDR.W    R0,??DataTable3_10
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??Control_Duoji_12
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+111
        BGE.N    ??Control_Duoji_12
        LDR.W    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+111
        BLT.N    ??Control_Duoji_13
//  505     { 
//  506       right=0;
??Control_Duoji_12:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_42
        STR      R0,[R1, #+0]
//  507       left=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_43
        STR      R0,[R1, #+0]
//  508     }
//  509     
//  510     //---------------------------------------偏差计算--------------------------------------------
//  511     
//  512     /////////////////////十字/////////////////////
//  513     if(Get_Switch(6)==0)
??Control_Duoji_13:
        MOVS     R1,#+10
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_14
//  514     {
//  515       if(need_data0>=180&&need_data1>30&&need_data3<80&&pd_f==0) 
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+180
        BLT.N    ??Control_Duoji_15
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Control_Duoji_15
        LDR.W    R0,??DataTable3_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??Control_Duoji_15
        LDR.W    R0,??DataTable3_44
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_15
//  516       {
//  517         need_data1=30-(need_data0-180);
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        RSBS     R0,R0,#+30
        MOVW     R1,#+65356
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3_1
        STRH     R0,[R1, #+0]
//  518         if(need_data6>=40)
        LDR.W    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+40
        BLT.N    ??Control_Duoji_16
//  519         {
//  520           need_data6=need_data5-40;
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+40
        LDR.W    R1,??DataTable3_6
        STRH     R0,[R1, #+0]
//  521         }
//  522         Beep_Flag = TRUE;
??Control_Duoji_16:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_34
        STRB     R0,[R1, #+0]
//  523         left=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_43
        STR      R0,[R1, #+0]
//  524         right=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_42
        STR      R0,[R1, #+0]
//  525       }
//  526       if(need_data1>=180&&need_data0>30&&need_data4<80&&pd_f==0) 
??Control_Duoji_15:
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+180
        BLT.N    ??Control_Duoji_14
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Control_Duoji_14
        LDR.W    R0,??DataTable3_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??Control_Duoji_14
        LDR.W    R0,??DataTable3_44
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_14
//  527       {
//  528         need_data0=30-(need_data1-180);
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        RSBS     R0,R0,#+30
        MOVW     R1,#+65356
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+0]
//  529         if(need_data5>=40)
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+40
        BLT.N    ??Control_Duoji_17
//  530           need_data5=need_data6-40;
        LDR.W    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+40
        LDR.W    R1,??DataTable3_2
        STRH     R0,[R1, #+0]
//  531         Beep_Flag = TRUE;
??Control_Duoji_17:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_34
        STRB     R0,[R1, #+0]
//  532         right=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_42
        STR      R0,[R1, #+0]
//  533         left=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_43
        STR      R0,[R1, #+0]
//  534       }
//  535     }
//  536     
//  537     dif_x = need_data0 - need_data1;
??Control_Duoji_14:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable3_45
        STR      R0,[R1, #+0]
//  538     dif_y = need_data5 - need_data6;
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_6
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable3_46
        STR      R0,[R1, #+0]
//  539   
//  540     sum_x = need_data0 + need_data1+need_data2;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_1
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable3_10
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable3_47
        STR      R0,[R1, #+0]
//  541     sum_y = need_data5 + need_data6;
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_6
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R1,R0
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable3_48
        STR      R0,[R1, #+0]
//  542   
//  543     final_dif = temp1*dif_x + temp2*dif_y;
        LDR.W    R0,??DataTable3_19
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_45
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable3_23
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_46
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_49
        STR      R0,[R1, #+0]
//  544     final_sum = temp3*sum_x + temp4*sum_y;
        LDR.W    R0,??DataTable3_25
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_47
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable3_27
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_48
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_50
        STR      R0,[R1, #+0]
//  545     
//  546     speed_dif = 0*temp1*dif_x + 1*temp2*dif_y;
        LDR.W    R0,??DataTable3_19
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_45
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable3_23
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1065353216
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_46
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_51
        STR      R0,[R1, #+0]
//  547     
//  548     dif=need_data0-need_data1;
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable3_52
        STR      R0,[R1, #+0]
//  549     sum=need_data0+need_data1+need_data2;  
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_1
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable3_10
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable3_53
        STR      R0,[R1, #+0]
//  550     
//  551     G_dif=speed_dif/powf(final_sum,1.6);
        LDR.W    R1,??DataTable3_54  ;; 0x3fcccccd
        LDR.W    R0,??DataTable3_50
        LDR      R0,[R0, #+0]
        BL       powf
        MOVS     R1,R0
        LDR.W    R0,??DataTable3_51
        LDR      R0,[R0, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable3_55
        STR      R0,[R1, #+0]
//  552     
//  553     error= final_dif/powf(final_sum,1.6);
        LDR.W    R1,??DataTable3_54  ;; 0x3fcccccd
        LDR.W    R0,??DataTable3_50
        LDR      R0,[R0, #+0]
        BL       powf
        MOVS     R1,R0
        LDR.W    R0,??DataTable3_49
        LDR      R0,[R0, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable3_56
        STR      R0,[R1, #+0]
//  554     
//  555    // bizhi=(Servoleftmax-Servomiddle)/(Servomiddle-Servorightmax);//左右打角范围之比
//  556     
//  557 
//  558     kp_duoji = p*1000; 
        LDR.W    R0,??DataTable3_57
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_58  ;; 0x447a0000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_59
        STR      R0,[R1, #+0]
//  559     kd_duoji = d*1000;
        LDR.W    R0,??DataTable3_60
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_58  ;; 0x447a0000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_61
        STR      R0,[R1, #+0]
//  560      
//  561 /*     G_dif=dif_y/powf(sum_y+need_data2,1.6);
//  562    r_t3=r_t2;
//  563     r_t2=r_t1;
//  564     r_t1=r_t0;
//  565     r_t0=G_dif;
//  566     error_dy=r_t0-r_t3;
//  567 */
//  568     
//  569 
//  570   
//  571   if(left>0&&need_data0<80&&need_data2<60&&need_data5<100) 
        LDR.W    R0,??DataTable3_43
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Control_Duoji_18
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??Control_Duoji_18
        LDR.W    R0,??DataTable3_10
        LDRH     R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??Control_Duoji_18
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??Control_Duoji_18
//  572   { 
//  573     //Beep_Flag = TRUE;
//  574     leftmax_flag=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_62
        STR      R0,[R1, #+0]
//  575   }
//  576   if(right>0&&need_data1<80&&need_data2<60&&need_data6<100) 
??Control_Duoji_18:
        LDR.W    R0,??DataTable3_42
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Control_Duoji_19
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??Control_Duoji_19
        LDR.W    R0,??DataTable3_10
        LDRH     R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??Control_Duoji_19
        LDR.W    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??Control_Duoji_19
//  577   {
//  578     //Beep_Flag = TRUE;
//  579     rightmax_flag=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_63
        STR      R0,[R1, #+0]
//  580   }
//  581   
//  582   
//  583   
//  584  //-------------------------方向控制PID------------------------  
//  585   if(rightmax_flag>0&&pd_f==0)
??Control_Duoji_19:
        LDR.W    R0,??DataTable3_63
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Control_Duoji_20
        LDR.W    R0,??DataTable3_44
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_20
//  586   {
//  587     if(need_data1>need_data0&&need_data6>need_data5||right==0)
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_1
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??Control_Duoji_21
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_6
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Control_Duoji_22
??Control_Duoji_21:
        LDR.W    R0,??DataTable3_42
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_23
//  588     {
//  589       rightmax_flag=0;
??Control_Duoji_22:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_63
        STR      R0,[R1, #+0]
//  590     }
//  591 
//  592 
//  593     Temp_Step = Servorightmax ;
??Control_Duoji_23:
        LDR.W    R0,??DataTable3_64  ;; 0x450ba000
        LDR.W    R1,??DataTable3_65
        STR      R0,[R1, #+0]
//  594     Temp = Servorightmax;
        LDR.W    R0,??DataTable3_64  ;; 0x450ba000
        LDR.W    R1,??DataTable3_66
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_24
//  595   } 
//  596   else if(leftmax_flag>0&&pd_f==0) 
??Control_Duoji_20:
        LDR.W    R0,??DataTable3_62
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Control_Duoji_25
        LDR.W    R0,??DataTable3_44
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_25
//  597   {   
//  598     if(need_data0>need_data1&&need_data5>need_data6||left==0)
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??Control_Duoji_26
        LDR.W    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_2
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Control_Duoji_27
??Control_Duoji_26:
        LDR.W    R0,??DataTable3_43
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_28
//  599     {
//  600       leftmax_flag=0;
??Control_Duoji_27:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_62
        STR      R0,[R1, #+0]
//  601     }
//  602 
//  603     Temp_Step = Servoleftmax ; 
??Control_Duoji_28:
        LDR.W    R0,??DataTable3_67  ;; 0x453c7000
        LDR.W    R1,??DataTable3_65
        STR      R0,[R1, #+0]
//  604     Temp = Servoleftmax;
        LDR.W    R0,??DataTable3_67  ;; 0x453c7000
        LDR.W    R1,??DataTable3_66
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_24
//  605   }   
//  606   else{
//  607   //  e6_duoji = e5_duoji;
//  608    // e5_duoji = e4_duoji;
//  609     e4_duoji = e3_duoji;
??Control_Duoji_25:
        LDR.W    R0,??DataTable3_68
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_69
        STR      R0,[R1, #+0]
//  610     e3_duoji = e2_duoji;
        LDR.W    R0,??DataTable3_70
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_68
        STR      R0,[R1, #+0]
//  611     e2_duoji = e1_duoji;
        LDR.W    R0,??DataTable3_71
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_70
        STR      R0,[R1, #+0]
//  612     e1_duoji = e0_duoji;
        LDR.W    R0,??DataTable3_72
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_71
        STR      R0,[R1, #+0]
//  613     e0_duoji = error;
        LDR.W    R0,??DataTable3_56
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_72
        STR      R0,[R1, #+0]
//  614     
//  615     if(Abs(e0_duoji - e3_duoji)*kd_duoji>400)
        LDR.W    R0,??DataTable3_72
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_68
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       Abs
        LDR.W    R1,??DataTable3_61
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_73  ;; 0x43c80001
        BL       __aeabi_cfrcmple
        BHI.N    ??Control_Duoji_29
//  616       error_d=last_error_d;
        LDR.W    R0,??DataTable3_74
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_75
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_30
//  617     else
//  618       error_d=e0_duoji - e3_duoji;
??Control_Duoji_29:
        LDR.W    R0,??DataTable3_72
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_68
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable3_75
        STR      R0,[R1, #+0]
//  619     
//  620     last_error_d=error_d;
??Control_Duoji_30:
        LDR.W    R0,??DataTable3_75
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_74
        STR      R0,[R1, #+0]
//  621     
//  622     if(kd_duoji*error_d>e_d)
        LDR.W    R0,??DataTable3_61
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_75
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_76  ;; 0x43af0001
        BL       __aeabi_cfrcmple
        BHI.N    ??Control_Duoji_31
//  623       error_d=e_d/kd_duoji;
        LDR.W    R0,??DataTable3_61
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_77  ;; 0x4075e000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable3_75
        STR      R0,[R1, #+0]
//  624     if(kd_duoji*error_d<-e_d)
??Control_Duoji_31:
        LDR.W    R0,??DataTable3_61
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_75
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_78  ;; 0xc3af0000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_32
//  625       error_d=-e_d/kd_duoji;
        LDR.W    R0,??DataTable3_61
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_79  ;; 0xc075e000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable3_75
        STR      R0,[R1, #+0]
//  626     
//  627 //////////直道和大S/////////////    
//  628     dd++;
??Control_Duoji_32:
        LDR.W    R0,??DataTable3_80
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_80
        STR      R0,[R1, #+0]
//  629     d_error+=kd_duoji * Abs(error_d);
        LDR.W    R0,??DataTable3_75
        LDR      R0,[R0, #+0]
        BL       Abs
        LDR.W    R1,??DataTable3_61
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable3_81
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_81
        STR      R0,[R1, #+0]
//  630     if(dd>=4)
        LDR.W    R0,??DataTable3_80
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Control_Duoji_33
//  631     {
//  632      ave_error=d_error/4;
        LDR.W    R0,??DataTable3_81
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1082130432
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable3_82
        STR      R0,[R1, #+0]
//  633 
//  634      d_error=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_81
        STR      R0,[R1, #+0]
//  635      dd=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_80
        STR      R0,[R1, #+0]
//  636     }
//  637 
//  638    // bizhi=(Servoleftmax-Servomiddle)/(Servomiddle-Servorightmax);
//  639     if(pd_f==1)
??Control_Duoji_33:
        LDR.N    R0,??DataTable3_44
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_34
//  640     {
//  641       Temp_Step = Servomiddle+ kp_duoji * e0_duoji + kd_duoji * (0.7*error_d+0.3*last_error_d); 
        LDR.W    R0,??DataTable3_59
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable3_72
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_83  ;; 0x40a47400
        BL       __aeabi_dadd
        MOV      R8,R0
        MOV      R9,R1
        LDR.W    R0,??DataTable3_61
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable3_75
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable3_84  ;; 0x3fe66666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3_74
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable3_85  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable3_65
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_35
//  642       
//  643     }
//  644     else
//  645       Temp_Step = Servomiddle+ kp_duoji * e0_duoji + kd_duoji * (0.7*error_d+0.3*last_error_d);
??Control_Duoji_34:
        LDR.N    R0,??DataTable3_59
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_72
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_83  ;; 0x40a47400
        BL       __aeabi_dadd
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??DataTable3_61
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable3_75
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable3_84  ;; 0x3fe66666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3_74
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable3_85  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable3_65
        STR      R0,[R1, #+0]
//  646     
//  647     Temp_Step+=ccd_temp;
??Control_Duoji_35:
        LDR.N    R0,??DataTable3_65
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_33
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable3_65
        STR      R0,[R1, #+0]
//  648     
//  649     Temp=Servomiddle+ 2*kp_duoji * G_dif;//速度打角
        LDR.N    R0,??DataTable3_59
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable3_55
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_83  ;; 0x40a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable3_66
        STR      R0,[R1, #+0]
//  650 
//  651     //Temp_Step = Servomiddle+ kp_duoji * e0_duoji * bizhi + kd_duoji * error_d;  
//  652   }
//  653   if(SZ==1)
??Control_Duoji_24:
        LDR.N    R0,??DataTable3_86
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_36
//  654   {
//  655     
//  656     if(need_data2>120&&need_data6>70&&need_data5>70&&dir==0&&Abs(temp_pwm-Servomiddle)<80)
        LDR.N    R0,??DataTable3_10
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??Control_Duoji_36
        LDR.N    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Control_Duoji_36
        LDR.N    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Control_Duoji_36
        LDR.N    R0,??DataTable3_87
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_36
        LDR.N    R0,??DataTable3_88
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_89  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.N    R1,??DataTable3_90  ;; 0x42a00000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_36
//  657     {
//  658         if(need_data0-40>need_data1&&need_data4-50>need_data3&&Abs(need_data6-need_data5)<20&&need_data0>120&&need_data1>70)
        LDR.N    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+40
        CMP      R0,R1
        BGE.N    ??Control_Duoji_37
        LDR.N    R0,??DataTable3_3
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_4
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+50
        CMP      R0,R1
        BGE.N    ??Control_Duoji_37
        LDR.N    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       Abs
        LDR.N    R1,??DataTable3_91  ;; 0x41a00000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_37
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??Control_Duoji_37
        LDR.N    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Control_Duoji_37
//  659         {
//  660           dir=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_87
        STR      R0,[R1, #+0]
//  661         }
//  662         if(need_data1-40>need_data0&&need_data3-50>need_data4&&Abs(need_data6-need_data5)<20&&need_data1>120&&need_data0>70)
??Control_Duoji_37:
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_1
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+40
        CMP      R0,R1
        BGE.N    ??Control_Duoji_36
        LDR.N    R0,??DataTable3_4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_3
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+50
        CMP      R0,R1
        BGE.N    ??Control_Duoji_36
        LDR.N    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       Abs
        LDR.N    R1,??DataTable3_91  ;; 0x41a00000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_36
        LDR.N    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??Control_Duoji_36
        LDR.N    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Control_Duoji_36
//  663         {
//  664          dir=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_87
        STR      R0,[R1, #+0]
//  665         }
//  666     }
//  667   }
//  668 
//  669   
//  670 //---------------------------------------打角限幅--------------------------------------------
//  671     if(Temp < Servorightmax) Temp = Servorightmax;
??Control_Duoji_36:
        LDR.N    R0,??DataTable3_66
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_64  ;; 0x450ba000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_38
        LDR.N    R0,??DataTable3_64  ;; 0x450ba000
        LDR.N    R1,??DataTable3_66
        STR      R0,[R1, #+0]
//  672     if(Temp > Servoleftmax) Temp = Servoleftmax;
??Control_Duoji_38:
        LDR.N    R0,??DataTable3_66
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_92  ;; 0x453c7001
        BL       __aeabi_cfrcmple
        BHI.N    ??Control_Duoji_39
        LDR.N    R0,??DataTable3_67  ;; 0x453c7000
        LDR.N    R1,??DataTable3_66
        STR      R0,[R1, #+0]
//  673     
//  674     
//  675     if(Temp_Step < Servorightmax)     temp_pwm = Servorightmax;
??Control_Duoji_39:
        LDR.N    R0,??DataTable3_65
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_64  ;; 0x450ba000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_40
        LDR.N    R0,??DataTable3_64  ;; 0x450ba000
        LDR.N    R1,??DataTable3_88
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_41
//  676     else if(Temp_Step > Servoleftmax) temp_pwm = Servoleftmax;
??Control_Duoji_40:
        LDR.N    R0,??DataTable3_65
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_92  ;; 0x453c7001
        BL       __aeabi_cfrcmple
        BHI.N    ??Control_Duoji_42
        LDR.N    R0,??DataTable3_67  ;; 0x453c7000
        LDR.N    R1,??DataTable3_88
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_41
//  677     else temp_pwm=(int)Temp_Step;
??Control_Duoji_42:
        LDR.N    R0,??DataTable3_65
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_88
        STR      R0,[R1, #+0]
//  678     
//  679     LPLD_FTM1_PWM_ChangeDuty(0, (int)temp_pwm);
??Control_Duoji_41:
        LDR.N    R0,??DataTable3_88
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOVS     R0,#+0
        BL       LPLD_FTM1_PWM_ChangeDuty
//  680          
//  681  } 
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     need_data0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     need_data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     need_data5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     need_data3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     need_data4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     need_data7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     need_data6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     Time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     stop_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     need_data2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x3126e979

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x3f8cac08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x40100000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0xc0140000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0x3fa99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     xx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     temp1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     0x40140000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     yy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     temp2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     0x3f333333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     temp3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     temp4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     CCD_Mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     brick_r_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     tempbrick

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     lock_pd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     0xc3660000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     ccd_temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_34:
        DC32     Beep_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_35:
        DC32     brick_l_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_36:
        DC32     0x43660000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_37:
        DC32     Brick_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_38:
        DC32     Brick_Dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_39:
        DC32     Brick

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_40:
        DC32     CCD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_41:
        DC32     `?<Constant "Strai">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_42:
        DC32     right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_43:
        DC32     left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_44:
        DC32     pd_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_45:
        DC32     dif_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_46:
        DC32     dif_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_47:
        DC32     sum_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_48:
        DC32     sum_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_49:
        DC32     final_dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_50:
        DC32     final_sum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_51:
        DC32     speed_dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_52:
        DC32     dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_53:
        DC32     sum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_54:
        DC32     0x3fcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_55:
        DC32     G_dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_56:
        DC32     error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_57:
        DC32     p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_58:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_59:
        DC32     kp_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_60:
        DC32     d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_61:
        DC32     kd_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_62:
        DC32     leftmax_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_63:
        DC32     rightmax_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_64:
        DC32     0x450ba000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_65:
        DC32     Temp_Step

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_66:
        DC32     Temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_67:
        DC32     0x453c7000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_68:
        DC32     e3_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_69:
        DC32     e4_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_70:
        DC32     e2_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_71:
        DC32     e1_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_72:
        DC32     e0_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_73:
        DC32     0x43c80001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_74:
        DC32     last_error_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_75:
        DC32     error_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_76:
        DC32     0x43af0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_77:
        DC32     0x4075e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_78:
        DC32     0xc3af0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_79:
        DC32     0xc075e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_80:
        DC32     dd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_81:
        DC32     d_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_82:
        DC32     ave_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_83:
        DC32     0x40a47400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_84:
        DC32     0x3fe66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_85:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_86:
        DC32     SZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_87:
        DC32     dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_88:
        DC32     temp_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_89:
        DC32     0xc0a47400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_90:
        DC32     0x42a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_91:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_92:
        DC32     0x453c7001
//  682 
//  683 
//  684 /*************************************************************/
//  685 /*                         舵机PID程序（二）                       */
//  686 /*************************************************************/ 
//  687           

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  688 void  Control_Duoji_2()
//  689 {
Control_Duoji_2:
        PUSH     {R3-R9,LR}
//  690     if((need_data0<5&&need_data1<5&&need_data5<5&&need_data3<5&&need_data4<5&&need_data7<5&&need_data6<5)||Time>t) stop_flag=1;
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_2_0
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_2_0
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_2_0
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_2_0
        LDR.W    R0,??DataTable4_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_2_0
        LDR.W    R0,??DataTable4_5
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Control_Duoji_2_0
        LDR.W    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??Control_Duoji_2_1
??Control_Duoji_2_0:
        LDR.W    R0,??DataTable4_7
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_2_2
??Control_Duoji_2_1:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  691 /*     
//  692     if((need_data0<2&&need_data1<2&&need_data5<2&&need_data3<2&&need_data4<2&&need_data7<2&&need_data6<2)) 
//  693       end_ji++;
//  694     else
//  695       end_ji=0;
//  696     if(end_ji>100)
//  697       stop_flag=1;
//  698     
//  699     if(Time>t) stop_flag=1;*/
//  700 /*     
//  701     temp1=0.05/(1+exp(-5+0.014*need_data2*4))+xx; //横向   减小  0.32
//  702     temp2=0.1/(1+exp(5-0.014*need_data2*4))+yy;  //纵向   加大   0.58 
//  703 */  
//  704    
//  705     temp1=0.32; //横向   减小  0.32
??Control_Duoji_2_2:
        LDR.W    R0,??DataTable4_10  ;; 0x3ea3d70a
        LDR.W    R1,??DataTable4_11
        STR      R0,[R1, #+0]
//  706     temp2=0.68;  //纵向   加大   0.58 
        LDR.W    R0,??DataTable4_12  ;; 0x3f2e147b
        LDR.W    R1,??DataTable4_13
        STR      R0,[R1, #+0]
//  707   
//  708     temp3=0.7;
        LDR.W    R0,??DataTable4_14  ;; 0x3f333333
        LDR.W    R1,??DataTable4_15
        STR      R0,[R1, #+0]
//  709     temp4=0.3; 
        LDR.W    R0,??DataTable4_16  ;; 0x3e99999a
        LDR.W    R1,??DataTable4_17
        STR      R0,[R1, #+0]
//  710 
//  711  
//  712 //////////////////路障////////////////////////////////////////
//  713      if(CCD_Mode == 0)
        LDR.W    R0,??DataTable4_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_3
//  714     {
//  715       if(brick_r_flag==1&&tempbrick>0&&tempbrick<250&&lock_pd==0)
        LDR.W    R0,??DataTable4_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_2_4
        LDR.W    R0,??DataTable4_20
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_Duoji_2_4
        LDR.W    R0,??DataTable4_20
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??Control_Duoji_2_4
        LDR.W    R0,??DataTable4_21
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_4
//  716       { 
//  717         ccd_temp=-230;
        LDR.W    R0,??DataTable4_22  ;; 0xc3660000
        LDR.W    R1,??DataTable4_23
        STR      R0,[R1, #+0]
//  718         Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_24
        STRB     R0,[R1, #+0]
        B.N      ??Control_Duoji_2_3
//  719       }
//  720       else if(brick_l_flag==1&&tempbrick>0&&tempbrick<250&&lock_pd==0)
??Control_Duoji_2_4:
        LDR.W    R0,??DataTable4_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_2_5
        LDR.W    R0,??DataTable4_20
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_Duoji_2_5
        LDR.W    R0,??DataTable4_20
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??Control_Duoji_2_5
        LDR.W    R0,??DataTable4_21
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_5
//  721       {
//  722         Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_24
        STRB     R0,[R1, #+0]
//  723         ccd_temp=230;
        LDR.W    R0,??DataTable4_26  ;; 0x43660000
        LDR.W    R1,??DataTable4_23
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_2_3
//  724            
//  725       }
//  726       else
//  727         ccd_temp=0;
??Control_Duoji_2_5:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_23
        STR      R0,[R1, #+0]
//  728     }
//  729     if(CCD_Mode == 1)
??Control_Duoji_2_3:
        LDR.W    R0,??DataTable4_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_2_6
//  730     {
//  731      if(Brick_Flag == TRUE&&lock_pd==0)
        LDR.W    R0,??DataTable4_27
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_2_6
        LDR.W    R0,??DataTable4_21
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_6
//  732       {
//  733         if(Brick_Dir == Left)
        LDR.W    R0,??DataTable4_28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_2_7
//  734         {
//  735             Brick++;
        LDR.W    R0,??DataTable4_29
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable4_29
        STRH     R0,[R1, #+0]
//  736             Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_24
        STRB     R0,[R1, #+0]
//  737             if(CCD)
        LDR.W    R0,??DataTable4_30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_Duoji_2_8
//  738             {
//  739               //Servomiddle = Middle+150;
//  740               ccd_temp=230;
        LDR.W    R0,??DataTable4_26  ;; 0x43660000
        LDR.W    R1,??DataTable4_23
        STR      R0,[R1, #+0]
//  741             }
//  742             
//  743             if(Brick>30)
??Control_Duoji_2_8:
        LDR.W    R0,??DataTable4_29
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Control_Duoji_2_7
//  744             {
//  745               Brick = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_29
        STRH     R0,[R1, #+0]
//  746               //Servomiddle = Middle;
//  747               ccd_temp = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_23
        STR      R0,[R1, #+0]
//  748               Brick_Dir = Straight;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_28
        STRB     R0,[R1, #+0]
//  749               Brick_Flag = FALSE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_27
        STRB     R0,[R1, #+0]
//  750               OLED_Print(60,2,"Strai");
        LDR.W    R2,??DataTable4_31
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_Print
//  751             }
//  752         }
//  753         if(Brick_Dir == Right)
??Control_Duoji_2_7:
        LDR.W    R0,??DataTable4_28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Control_Duoji_2_6
//  754         {
//  755             Brick++;
        LDR.W    R0,??DataTable4_29
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable4_29
        STRH     R0,[R1, #+0]
//  756             Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_24
        STRB     R0,[R1, #+0]
//  757             if(CCD)
        LDR.W    R0,??DataTable4_30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_Duoji_2_9
//  758             {
//  759               //Servomiddle = Middle-150;
//  760               ccd_temp=-230;
        LDR.W    R0,??DataTable4_22  ;; 0xc3660000
        LDR.W    R1,??DataTable4_23
        STR      R0,[R1, #+0]
//  761             }
//  762             if(Brick>30)
??Control_Duoji_2_9:
        LDR.W    R0,??DataTable4_29
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Control_Duoji_2_6
//  763             {
//  764               Brick = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_29
        STRH     R0,[R1, #+0]
//  765               //Servomiddle = Middle;
//  766               ccd_temp = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_23
        STR      R0,[R1, #+0]
//  767               Brick_Dir = Straight;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_28
        STRB     R0,[R1, #+0]
//  768               Brick_Flag = FALSE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_27
        STRB     R0,[R1, #+0]
//  769               OLED_Print(60,2,"Strai");
        LDR.W    R2,??DataTable4_31
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_Print
//  770             }
//  771         }
//  772       }
//  773     }
//  774 
//  775     //---------------------------------------方向判断-------------------------------------------- 
//  776     if(need_data3-10>need_data2&&need_data3-10>need_data4&&right==0) 
??Control_Duoji_2_6:
        LDR.W    R0,??DataTable4_32
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_3
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Control_Duoji_2_10
        LDR.W    R0,??DataTable4_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_3
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Control_Duoji_2_10
        LDR.W    R0,??DataTable4_33
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_10
//  777     {
//  778         left=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  779         right=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_33
        STR      R0,[R1, #+0]
//  780     }
//  781     if(need_data4-10>need_data2&&need_data4-10>need_data3&&left==0) 
??Control_Duoji_2_10:
        LDR.W    R0,??DataTable4_32
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_4
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Control_Duoji_2_11
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_4
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+10
        CMP      R0,R1
        BGE.N    ??Control_Duoji_2_11
        LDR.W    R0,??DataTable4_34
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_11
//  782     {    
//  783         
//  784         right=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_33
        STR      R0,[R1, #+0]
//  785         left=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  786     }
//  787     if(need_data0>100||need_data1>100||need_data2>100||need_data5>110||need_data6>110) 
??Control_Duoji_2_11:
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??Control_Duoji_2_12
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??Control_Duoji_2_12
        LDR.W    R0,??DataTable4_32
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??Control_Duoji_2_12
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+111
        BGE.N    ??Control_Duoji_2_12
        LDR.W    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+111
        BLT.N    ??Control_Duoji_2_13
//  788     { 
//  789       right=0;
??Control_Duoji_2_12:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_33
        STR      R0,[R1, #+0]
//  790       left=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  791     }
//  792     
//  793     //---------------------------------------偏差计算--------------------------------------------
//  794     
//  795     /////////////////////十字/////////////////////
//  796     if(Get_Switch(6)==0)
??Control_Duoji_2_13:
        MOVS     R1,#+10
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_14
//  797     {
//  798       if(need_data0>=180&&need_data1>30&&need_data3<80&&pd_f==0) 
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+180
        BLT.N    ??Control_Duoji_2_15
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Control_Duoji_2_15
        LDR.W    R0,??DataTable4_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??Control_Duoji_2_15
        LDR.W    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_15
//  799       {
//  800         need_data1=30-(need_data0-180);
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        RSBS     R0,R0,#+30
        MOVW     R1,#+65356
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable4_1
        STRH     R0,[R1, #+0]
//  801         if(need_data6>=40)
        LDR.W    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+40
        BLT.N    ??Control_Duoji_2_16
//  802         {
//  803           need_data6=need_data5-40;
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+40
        LDR.W    R1,??DataTable4_6
        STRH     R0,[R1, #+0]
//  804         }
//  805         Beep_Flag = TRUE;
??Control_Duoji_2_16:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_24
        STRB     R0,[R1, #+0]
//  806         left=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  807         right=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_33
        STR      R0,[R1, #+0]
//  808       }
//  809       if(need_data1>=180&&need_data0>30&&need_data4<80&&pd_f==0) 
??Control_Duoji_2_15:
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+180
        BLT.N    ??Control_Duoji_2_14
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BLT.N    ??Control_Duoji_2_14
        LDR.W    R0,??DataTable4_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??Control_Duoji_2_14
        LDR.W    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_14
//  810       {
//  811         need_data0=30-(need_data1-180);
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        RSBS     R0,R0,#+30
        MOVW     R1,#+65356
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable4
        STRH     R0,[R1, #+0]
//  812         if(need_data5>=40)
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+40
        BLT.N    ??Control_Duoji_2_17
//  813           need_data5=need_data6-40;
        LDR.W    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+40
        LDR.W    R1,??DataTable4_2
        STRH     R0,[R1, #+0]
//  814         Beep_Flag = TRUE;
??Control_Duoji_2_17:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_24
        STRB     R0,[R1, #+0]
//  815         right=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_33
        STR      R0,[R1, #+0]
//  816         left=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  817       }
//  818     }
//  819     
//  820     dif_x = need_data0 - need_data1;
??Control_Duoji_2_14:
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_36
        STR      R0,[R1, #+0]
//  821     dif_y = need_data5 - need_data6;
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_6
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_37
        STR      R0,[R1, #+0]
//  822   
//  823     sum_x = need_data0 + need_data1+need_data2;
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_1
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable4_32
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_38
        STR      R0,[R1, #+0]
//  824     sum_y = need_data5 + need_data6;
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_6
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R1,R0
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_39
        STR      R0,[R1, #+0]
//  825   
//  826     final_dif = temp1*dif_x + temp2*dif_y;
        LDR.W    R0,??DataTable4_11
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_36
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable4_13
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_37
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable4_40
        STR      R0,[R1, #+0]
//  827     final_sum = temp3*sum_x + temp4*sum_y;
        LDR.W    R0,??DataTable4_15
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_38
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable4_17
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable4_41
        STR      R0,[R1, #+0]
//  828     
//  829     speed_dif = 0*temp1*dif_x + 1*temp2*dif_y;
        LDR.W    R0,??DataTable4_11
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_36
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable4_13
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1065353216
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable4_42
        STR      R0,[R1, #+0]
//  830     
//  831     dif=need_data0-need_data1;
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_43
        STR      R0,[R1, #+0]
//  832     sum=need_data0+need_data1+need_data2;  
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_1
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable4_32
        LDRH     R1,[R1, #+0]
        UXTAH    R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4_44
        STR      R0,[R1, #+0]
//  833     
//  834     G_dif=speed_dif/powf(final_sum,1.6);
        LDR.W    R1,??DataTable4_45  ;; 0x3fcccccd
        LDR.W    R0,??DataTable4_41
        LDR      R0,[R0, #+0]
        BL       powf
        MOVS     R1,R0
        LDR.W    R0,??DataTable4_42
        LDR      R0,[R0, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable4_46
        STR      R0,[R1, #+0]
//  835     
//  836     error= final_dif/powf(final_sum,1.6);
        LDR.W    R1,??DataTable4_45  ;; 0x3fcccccd
        LDR.W    R0,??DataTable4_41
        LDR      R0,[R0, #+0]
        BL       powf
        MOVS     R1,R0
        LDR.W    R0,??DataTable4_40
        LDR      R0,[R0, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable4_47
        STR      R0,[R1, #+0]
//  837     
//  838    // bizhi=(Servoleftmax-Servomiddle)/(Servomiddle-Servorightmax);//左右打角范围之比
//  839     
//  840 
//  841     kp_duoji = p*1000; 
        LDR.W    R0,??DataTable4_48
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_49  ;; 0x447a0000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_50
        STR      R0,[R1, #+0]
//  842     kd_duoji = d*1000;
        LDR.W    R0,??DataTable4_51
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_49  ;; 0x447a0000
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_52
        STR      R0,[R1, #+0]
//  843      
//  844 /*     G_dif=dif_y/powf(sum_y+need_data2,1.6);
//  845    r_t3=r_t2;
//  846     r_t2=r_t1;
//  847     r_t1=r_t0;
//  848     r_t0=G_dif;
//  849     error_dy=r_t0-r_t3;
//  850 */
//  851     
//  852 
//  853   
//  854   if(left>0&&need_data0<80&&need_data2<60&&need_data5<100) 
        LDR.W    R0,??DataTable4_34
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Control_Duoji_2_18
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??Control_Duoji_2_18
        LDR.W    R0,??DataTable4_32
        LDRH     R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??Control_Duoji_2_18
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??Control_Duoji_2_18
//  855   { 
//  856     //Beep_Flag = TRUE;
//  857     leftmax_flag=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_53
        STR      R0,[R1, #+0]
//  858   }
//  859   if(right>0&&need_data1<80&&need_data2<60&&need_data6<100) 
??Control_Duoji_2_18:
        LDR.W    R0,??DataTable4_33
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Control_Duoji_2_19
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??Control_Duoji_2_19
        LDR.W    R0,??DataTable4_32
        LDRH     R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??Control_Duoji_2_19
        LDR.W    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??Control_Duoji_2_19
//  860   {
//  861     //Beep_Flag = TRUE;
//  862     rightmax_flag=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_54
        STR      R0,[R1, #+0]
//  863   }
//  864   
//  865   
//  866   
//  867  //-------------------------方向控制PID------------------------  
//  868   if(rightmax_flag>0&&pd_f==0)
??Control_Duoji_2_19:
        LDR.W    R0,??DataTable4_54
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Control_Duoji_2_20
        LDR.W    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_20
//  869   {
//  870     if(need_data1>need_data0&&need_data6>need_data5||right==0)
        LDR.W    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_1
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??Control_Duoji_2_21
        LDR.W    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_6
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Control_Duoji_2_22
??Control_Duoji_2_21:
        LDR.W    R0,??DataTable4_33
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_23
//  871     {
//  872       rightmax_flag=0;
??Control_Duoji_2_22:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_54
        STR      R0,[R1, #+0]
//  873     }
//  874 
//  875 
//  876     Temp_Step = Servorightmax ;
??Control_Duoji_2_23:
        LDR.W    R0,??DataTable4_55  ;; 0x450ba000
        LDR.W    R1,??DataTable4_56
        STR      R0,[R1, #+0]
//  877     Temp = Servorightmax;
        LDR.W    R0,??DataTable4_55  ;; 0x450ba000
        LDR.W    R1,??DataTable4_57
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_2_24
//  878   } 
//  879   else if(leftmax_flag>0&&pd_f==0) 
??Control_Duoji_2_20:
        LDR.W    R0,??DataTable4_53
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??Control_Duoji_2_25
        LDR.W    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_25
//  880   {   
//  881     if(need_data0>need_data1&&need_data5>need_data6||left==0)
        LDR.W    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??Control_Duoji_2_26
        LDR.W    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Control_Duoji_2_27
??Control_Duoji_2_26:
        LDR.W    R0,??DataTable4_34
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_28
//  882     {
//  883       leftmax_flag=0;
??Control_Duoji_2_27:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_53
        STR      R0,[R1, #+0]
//  884     }
//  885 
//  886     Temp_Step = Servoleftmax ; 
??Control_Duoji_2_28:
        LDR.W    R0,??DataTable4_58  ;; 0x453c7000
        LDR.W    R1,??DataTable4_56
        STR      R0,[R1, #+0]
//  887     Temp = Servoleftmax;
        LDR.W    R0,??DataTable4_58  ;; 0x453c7000
        LDR.W    R1,??DataTable4_57
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_2_24
//  888   }   
//  889   else{
//  890   //  e6_duoji = e5_duoji;
//  891    // e5_duoji = e4_duoji;
//  892     e4_duoji = e3_duoji;
??Control_Duoji_2_25:
        LDR.W    R0,??DataTable4_59
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_60
        STR      R0,[R1, #+0]
//  893     e3_duoji = e2_duoji;
        LDR.W    R0,??DataTable4_61
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_59
        STR      R0,[R1, #+0]
//  894     e2_duoji = e1_duoji;
        LDR.W    R0,??DataTable4_62
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_61
        STR      R0,[R1, #+0]
//  895     e1_duoji = e0_duoji;
        LDR.W    R0,??DataTable4_63
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_62
        STR      R0,[R1, #+0]
//  896     e0_duoji = error;
        LDR.W    R0,??DataTable4_47
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_63
        STR      R0,[R1, #+0]
//  897     
//  898     if(Abs(e0_duoji - e3_duoji)*kd_duoji>400)
        LDR.W    R0,??DataTable4_63
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_59
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       Abs
        LDR.W    R1,??DataTable4_52
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_64  ;; 0x43c80001
        BL       __aeabi_cfrcmple
        BHI.N    ??Control_Duoji_2_29
//  899       error_d=last_error_d;
        LDR.W    R0,??DataTable4_65
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_66
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_2_30
//  900     else
//  901       error_d=e0_duoji - e3_duoji;
??Control_Duoji_2_29:
        LDR.W    R0,??DataTable4_63
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_59
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable4_66
        STR      R0,[R1, #+0]
//  902     
//  903     last_error_d=error_d;
??Control_Duoji_2_30:
        LDR.W    R0,??DataTable4_66
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_65
        STR      R0,[R1, #+0]
//  904     
//  905     if(kd_duoji*error_d>e_d)
        LDR.W    R0,??DataTable4_52
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_66
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_67  ;; 0x43af0001
        BL       __aeabi_cfrcmple
        BHI.N    ??Control_Duoji_2_31
//  906       error_d=e_d/kd_duoji;
        LDR.W    R0,??DataTable4_52
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_68  ;; 0x4075e000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable4_66
        STR      R0,[R1, #+0]
//  907     if(kd_duoji*error_d<-e_d)
??Control_Duoji_2_31:
        LDR.W    R0,??DataTable4_52
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_66
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_69  ;; 0xc3af0000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_2_32
//  908       error_d=-e_d/kd_duoji;
        LDR.W    R0,??DataTable4_52
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_70  ;; 0xc075e000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable4_66
        STR      R0,[R1, #+0]
//  909     
//  910 //////////直道和大S/////////////    
//  911     dd++;
??Control_Duoji_2_32:
        LDR.W    R0,??DataTable4_71
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable4_71
        STR      R0,[R1, #+0]
//  912     d_error+=kd_duoji * Abs(error_d);
        LDR.W    R0,??DataTable4_66
        LDR      R0,[R0, #+0]
        BL       Abs
        LDR.W    R1,??DataTable4_52
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable4_72
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable4_72
        STR      R0,[R1, #+0]
//  913     if(dd>=4)
        LDR.W    R0,??DataTable4_71
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Control_Duoji_2_33
//  914     {
//  915      ave_error=d_error/4;
        LDR.W    R0,??DataTable4_72
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1082130432
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable4_73
        STR      R0,[R1, #+0]
//  916 
//  917      d_error=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_72
        STR      R0,[R1, #+0]
//  918      dd=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_71
        STR      R0,[R1, #+0]
//  919     }
//  920 
//  921    // bizhi=(Servoleftmax-Servomiddle)/(Servomiddle-Servorightmax);
//  922     if(pd_f==1)
??Control_Duoji_2_33:
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_2_34
//  923     {
//  924       Temp_Step = Servomiddle+ kp_duoji * e0_duoji + kd_duoji * (0.7*error_d+0.3*last_error_d); 
        LDR.W    R0,??DataTable4_50
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_63
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_74  ;; 0x40a47400
        BL       __aeabi_dadd
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??DataTable4_52
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable4_66
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable4_75  ;; 0x3fe66666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable4_65
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable4_76  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_56
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_2_35
//  925       
//  926     }
//  927     else
//  928       Temp_Step = Servomiddle+ kp_duoji * e0_duoji + kd_duoji * (0.7*error_d+0.3*last_error_d);
??Control_Duoji_2_34:
        LDR.N    R0,??DataTable4_50
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_63
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_74  ;; 0x40a47400
        BL       __aeabi_dadd
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??DataTable4_52
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable4_66
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable4_75  ;; 0x3fe66666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable4_65
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable4_76  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_56
        STR      R0,[R1, #+0]
//  929     
//  930     Temp_Step+=ccd_temp;
??Control_Duoji_2_35:
        LDR.N    R0,??DataTable4_56
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable4_56
        STR      R0,[R1, #+0]
//  931     
//  932     Temp=Servomiddle+ 2*kp_duoji * G_dif;//速度打角
        LDR.N    R0,??DataTable4_50
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable4_46
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_74  ;; 0x40a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_57
        STR      R0,[R1, #+0]
//  933 
//  934     //Temp_Step = Servomiddle+ kp_duoji * e0_duoji * bizhi + kd_duoji * error_d;  
//  935   }
//  936   if(SZ==1)
??Control_Duoji_2_24:
        LDR.N    R0,??DataTable4_77
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Control_Duoji_2_36
//  937   {
//  938     
//  939     if(need_data2>120&&need_data6>70&&need_data5>70&&dir==0&&Abs(temp_pwm-Servomiddle)<80)
        LDR.N    R0,??DataTable4_32
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??Control_Duoji_2_36
        LDR.N    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Control_Duoji_2_36
        LDR.N    R0,??DataTable4_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Control_Duoji_2_36
        LDR.N    R0,??DataTable4_78
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Control_Duoji_2_36
        LDR.N    R0,??DataTable4_79
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_80  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.N    R1,??DataTable4_81  ;; 0x42a00000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_2_36
//  940     {
//  941         if(need_data0-40>need_data1&&need_data4-50>need_data3&&Abs(need_data6-need_data5)<20&&need_data0>120&&need_data1>70)
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable4
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+40
        CMP      R0,R1
        BGE.N    ??Control_Duoji_2_37
        LDR.N    R0,??DataTable4_3
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_4
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+50
        CMP      R0,R1
        BGE.N    ??Control_Duoji_2_37
        LDR.N    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       Abs
        LDR.N    R1,??DataTable4_82  ;; 0x41a00000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_2_37
        LDR.N    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??Control_Duoji_2_37
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Control_Duoji_2_37
//  942         {
//  943           dir=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_78
        STR      R0,[R1, #+0]
//  944         }
//  945         if(need_data1-40>need_data0&&need_data3-50>need_data4&&Abs(need_data6-need_data5)<20&&need_data1>120&&need_data0>70)
??Control_Duoji_2_37:
        LDR.N    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_1
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+40
        CMP      R0,R1
        BGE.N    ??Control_Duoji_2_36
        LDR.N    R0,??DataTable4_4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_3
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+50
        CMP      R0,R1
        BGE.N    ??Control_Duoji_2_36
        LDR.N    R0,??DataTable4_6
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       Abs
        LDR.N    R1,??DataTable4_82  ;; 0x41a00000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_2_36
        LDR.N    R0,??DataTable4_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??Control_Duoji_2_36
        LDR.N    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+71
        BLT.N    ??Control_Duoji_2_36
//  946         {
//  947          dir=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_78
        STR      R0,[R1, #+0]
//  948         }
//  949     }
//  950   }
//  951 
//  952   
//  953 //---------------------------------------打角限幅--------------------------------------------
//  954     if(Temp < Servorightmax) Temp = Servorightmax;
??Control_Duoji_2_36:
        LDR.N    R0,??DataTable4_57
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_55  ;; 0x450ba000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_2_38
        LDR.N    R0,??DataTable4_55  ;; 0x450ba000
        LDR.N    R1,??DataTable4_57
        STR      R0,[R1, #+0]
//  955     if(Temp > Servoleftmax) Temp = Servoleftmax;
??Control_Duoji_2_38:
        LDR.N    R0,??DataTable4_57
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_83  ;; 0x453c7001
        BL       __aeabi_cfrcmple
        BHI.N    ??Control_Duoji_2_39
        LDR.N    R0,??DataTable4_58  ;; 0x453c7000
        LDR.N    R1,??DataTable4_57
        STR      R0,[R1, #+0]
//  956     
//  957     
//  958     if(Temp_Step < Servorightmax)     temp_pwm = Servorightmax;
??Control_Duoji_2_39:
        LDR.N    R0,??DataTable4_56
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_55  ;; 0x450ba000
        BL       __aeabi_cfcmple
        BCS.N    ??Control_Duoji_2_40
        LDR.N    R0,??DataTable4_55  ;; 0x450ba000
        LDR.N    R1,??DataTable4_79
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_2_41
//  959     else if(Temp_Step > Servoleftmax) temp_pwm = Servoleftmax;
??Control_Duoji_2_40:
        LDR.N    R0,??DataTable4_56
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_83  ;; 0x453c7001
        BL       __aeabi_cfrcmple
        BHI.N    ??Control_Duoji_2_42
        LDR.N    R0,??DataTable4_58  ;; 0x453c7000
        LDR.N    R1,??DataTable4_79
        STR      R0,[R1, #+0]
        B.N      ??Control_Duoji_2_41
//  960     else temp_pwm=(int)Temp_Step;
??Control_Duoji_2_42:
        LDR.N    R0,??DataTable4_56
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_79
        STR      R0,[R1, #+0]
//  961     
//  962     LPLD_FTM1_PWM_ChangeDuty(0, (int)temp_pwm);
??Control_Duoji_2_41:
        LDR.N    R0,??DataTable4_79
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOVS     R0,#+0
        BL       LPLD_FTM1_PWM_ChangeDuty
//  963          
//  964  } 
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     need_data0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     need_data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     need_data5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     need_data3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     need_data4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     need_data7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     need_data6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     Time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     stop_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x3ea3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     temp1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x3f2e147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     temp2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x3f333333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     temp3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     temp4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     CCD_Mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     brick_r_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     tempbrick

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     lock_pd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0xc3660000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     ccd_temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     Beep_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     brick_l_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     0x43660000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     Brick_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     Brick_Dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     Brick

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     CCD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     `?<Constant "Strai">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     need_data2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_35:
        DC32     pd_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_36:
        DC32     dif_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_37:
        DC32     dif_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_38:
        DC32     sum_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_39:
        DC32     sum_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_40:
        DC32     final_dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_41:
        DC32     final_sum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_42:
        DC32     speed_dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_43:
        DC32     dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_44:
        DC32     sum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_45:
        DC32     0x3fcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_46:
        DC32     G_dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_47:
        DC32     error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_48:
        DC32     p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_49:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_50:
        DC32     kp_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_51:
        DC32     d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_52:
        DC32     kd_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_53:
        DC32     leftmax_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_54:
        DC32     rightmax_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_55:
        DC32     0x450ba000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_56:
        DC32     Temp_Step

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_57:
        DC32     Temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_58:
        DC32     0x453c7000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_59:
        DC32     e3_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_60:
        DC32     e4_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_61:
        DC32     e2_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_62:
        DC32     e1_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_63:
        DC32     e0_duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_64:
        DC32     0x43c80001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_65:
        DC32     last_error_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_66:
        DC32     error_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_67:
        DC32     0x43af0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_68:
        DC32     0x4075e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_69:
        DC32     0xc3af0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_70:
        DC32     0xc075e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_71:
        DC32     dd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_72:
        DC32     d_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_73:
        DC32     ave_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_74:
        DC32     0x40a47400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_75:
        DC32     0x3fe66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_76:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_77:
        DC32     SZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_78:
        DC32     dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_79:
        DC32     temp_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_80:
        DC32     0xc0a47400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_81:
        DC32     0x42a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_82:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_83:
        DC32     0x453c7001

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Strai">`:
        DATA
        DC8 "Strai"
        DC8 0, 0

        END
//  965 
//  966 
//  967  
// 
//   390 bytes in section .bss
//    68 bytes in section .data
//     8 bytes in section .rodata
// 9 580 bytes in section .text
// 
// 9 580 bytes of CODE  memory
//     8 bytes of CONST memory
//   458 bytes of DATA  memory
//
//Errors: none
//Warnings: none
