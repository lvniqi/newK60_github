///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       19/Mar/2015  11:04:56
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\control.c
//    Command line =  
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\control.c" -D IAR -D LPLD_K60 -lCN
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
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\control.s
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
        EXTERN Expect_speed
        EXTERN Expect_speed_l
        EXTERN Expect_speed_r
        EXTERN Kd
        EXTERN Kp
        EXTERN LPLD_FTM0_PWM_ChangeDuty
        EXTERN LPLD_FTM1_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Set_b
        EXTERN Motorerr_l
        EXTERN Motorerr_r
        EXTERN Motorpwm_l
        EXTERN Motorpwm_r
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN duoji
        EXTERN e0
        EXTERN e0motor_l
        EXTERN e0motor_r
        EXTERN e1
        EXTERN e1motor_l
        EXTERN e1motor_r
        EXTERN e2
        EXTERN e2motor_l
        EXTERN e2motor_r
        EXTERN e3
        EXTERN e4
        EXTERN e5
        EXTERN fmq_time
        EXTERN h0_l
        EXTERN h0_r
        EXTERN h1_l
        EXTERN h1_r
        EXTERN hc
        EXTERN hc1
        EXTERN hc2
        EXTERN hc_total
        EXTERN kd_l
        EXTERN kd_r
        EXTERN ki_l
        EXTERN ki_r
        EXTERN kp_l
        EXTERN kp_r
        EXTERN left
        EXTERN pAD7
        EXTERN powf
        EXTERN preAD3
        EXTERN preAD4
        EXTERN pred
        EXTERN prehc
        EXTERN quan
        EXTERN realspeed_l_0
        EXTERN realspeed_l_1
        EXTERN realspeed_r_0
        EXTERN realspeed_r_1
        EXTERN right
        EXTERN ting

        PUBLIC duoji_control
        PUBLIC speed_control
        PUBLIC speed_define

// G:\GitHub\newK60_github\Project\k60 -1chen2mianqiangWin\project\hz\app\control.c
//    1 #include "head.h"
//    2 
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void duoji_control()
//    5 {
duoji_control:
        PUSH     {R4,LR}
//    6   //蜂鸣器的处理
//    7   if(fmq_time>=0)
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BMI.N    ??duoji_control_0
//    8   {
//    9       //设置 PortPortPortPort口某一位 某一位 的输出值。 的输出值。
//   10       //函数原型 函数原型
//   11       //void LPLD_GPIO_Set_b(PTx ptx, uint8 port_bit, data1)
//   12       //#define OUTPUT_L        0
//   13       //#define OUTPUT_H        1
//   14       LPLD_GPIO_Set_b(PTC,10,OUTPUT_H);
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       LPLD_GPIO_Set_b
//   15       fmq_time--;
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
        B.N      ??duoji_control_1
//   16   }
//   17   else
//   18   {
//   19       LPLD_GPIO_Set_b(PTC,10,OUTPUT_L);
??duoji_control_0:
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       LPLD_GPIO_Set_b
//   20   }
//   21   
//   22   //保留上一次的duoji和hc
//   23   prehc=hc;
??duoji_control_1:
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   24   pred=duoji;
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   25   
//   26   //1 3 5 7 6 4 2
//   27   //3 4 是竖直电感
//   28   //5 6 是倾斜电感(只用来判断判别方向，没有计算)
//   29   //1和2是左右电感，7为中间电感
//   30   
//   31   //1 3 7 4 2
//   32   //3 4 是竖直电感
//   33   //1 2 是远端水平左右电感
//   34   //7 是远端水平中间电感
//   35   //5 6 是近端水平电感
//   36   
//   37   preAD3=ADValue3;
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_6
        STR      R0,[R1, #+0]
//   38   preAD4=ADValue4;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_8
        STR      R0,[R1, #+0]
//   39   pAD7=ADValue7;
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_10
        STR      R0,[R1, #+0]
//   40   
//   41   if(fabsf(ADValue7-pAD7)>10)
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_10
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BICS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable2_11  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??duoji_control_2
//   42   {
//   43     fmq_time=40;//和我们一样，如果丢线了蜂鸣器就叫
        MOVS     R0,#+40
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+0]
//   44   }
//   45   
//   46   //远端左右水平电感归一化处理
//   47   //e0是远端左右水平电感之差
//   48   e0=ADValue1-ADValue2;
??duoji_control_2:
        LDR.W    R0,??DataTable2_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable2_14
        STR      R0,[R1, #+0]
//   49   //e1是远端左右水平电感之和
//   50   e1=ADValue1+ADValue2;
        LDR.W    R0,??DataTable2_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable2_15
        STR      R0,[R1, #+0]
//   51   
//   52   //竖直电感归一化处理
//   53   //e2是竖直电感之差
//   54   e2=ADValue3-ADValue4;
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable2_16
        STR      R0,[R1, #+0]
//   55   //e3是竖直电感之和
//   56   e3=ADValue3+ADValue4;
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_7
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable2_17
        STR      R0,[R1, #+0]
//   57   
//   58   //近端左右水平电感归一化处理
//   59   //e4是近端左右水平电感之差
//   60   e4=ADValue5-ADValue6;
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable2_20
        STR      R0,[R1, #+0]
//   61   //e5是近端左右水平电感之和
//   62   e5=ADValue5+ADValue6;
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable2_21
        STR      R0,[R1, #+0]
//   63   
//   64   //防止除0
//   65   if(ADValue7!=0)
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BEQ.N    ??duoji_control_3
//   66   {
//   67     //和中间的电感偏移量有关
//   68     //将这个应用到舵机打脚的计算上
//   69     quan=190/ADValue7;
        LDR.W    R0,??DataTable2_22  ;; 0x433e0000
        LDR.W    R1,??DataTable2_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_23
        STR      R0,[R1, #+0]
//   70   }
//   71   
//   72   //直道的时候hc1就是0
//   73   //弯道和直角等情况是e2/e3竖直电感归一化
//   74   
//   75   if(ADValue3<=10&&ADValue4<=10)
??duoji_control_3:
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x41200001
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_4
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_11  ;; 0x41200001
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_4
//   76   {
//   77     hc1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_24
        STR      R0,[R1, #+0]
        B.N      ??duoji_control_5
//   78   }
//   79   else
//   80   {
//   81     hc1=e2/e3;
??duoji_control_4:
        LDR.W    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_17
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_24
        STR      R0,[R1, #+0]
//   82   }
//   83   
//   84   //近端左右水平电感归一化
//   85   hc2=e4/e5;
??duoji_control_5:
        LDR.W    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_21
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_25
        STR      R0,[R1, #+0]
//   86   
//   87   if(ADValue1 > ADValue2)
        LDR.W    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_6
//   88   {
//   89     left = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_26
        STR      R0,[R1, #+0]
//   90     right = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_27
        STR      R0,[R1, #+0]
        B.N      ??duoji_control_7
//   91   }
//   92   else if(ADValue2 < ADValue1)
??duoji_control_6:
        LDR.W    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_7
//   93   {
//   94     right = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_27
        STR      R0,[R1, #+0]
//   95     left = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_26
        STR      R0,[R1, #+0]
//   96   }
//   97   
//   98   //那么如果上一次是>60然而下一次是在-60和60之间但是又偏向于-59
//   99   //那按照这个算法的话应该不会进入条件，还是左转，而实际上已经有点
//  100   //要右转了
//  101   
//  102   //和归一化差不多，不过这里多了一个quan
//  103   if(left==1)
??duoji_control_7:
        LDR.W    R0,??DataTable2_26
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??duoji_control_8
//  104    hc=(quan*ADValue1-ADValue2)/(ADValue1+ADValue2);
        LDR.W    R0,??DataTable2_23
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable2_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
        B.N      ??duoji_control_9
//  105   else if(right==1)
??duoji_control_8:
        LDR.W    R0,??DataTable2_27
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??duoji_control_10
//  106    hc=(ADValue1-quan*ADValue2)/(ADValue1+ADValue2);
        LDR.W    R0,??DataTable2_23
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable2_12
        LDR      R0,[R0, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
        B.N      ??duoji_control_9
//  107   else
//  108     hc=0;
??duoji_control_10:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//  109   
//  110   //hc_total=0.7*hc+hc1;
//  111   hc_total=0.7*hc;
??duoji_control_9:
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable2_28  ;; 0x3fe66666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_29
        STR      R0,[R1, #+0]
//  112   
//  113   //这是经过计算而得到的kp值
//  114   Kp=14.5*powf(2.6,-(ADValue7/183-1.93));
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_30  ;; 0x43370000
        BL       __aeabi_fdiv
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable2_31  ;; 0xae147ae1
        LDR.W    R3,??DataTable2_32  ;; 0xbffee147
        BL       __aeabi_dadd
        EORS     R1,R1,#0x80000000
        BL       __aeabi_d2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable2_33  ;; 0x40266666
        BL       powf
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_34  ;; 0x402d0000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable2_35
        STR      R0,[R1, #+0]
//  115                               
//  116   duoji = duoji_mid + Kp * hc_total + (hc - prehc) * Kd;
        LDR.W    R0,??DataTable2_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_29
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable2_36  ;; 0x45992000
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable2_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  117 
//  118   //中间电感值非常小的时候或者右电感的值非常小的时候舵机打死
//  119   if(right==1&&(ADValue7<25||ADValue2<20))
        LDR.W    R0,??DataTable2_27
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??duoji_control_11
        LDR.N    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_38  ;; 0x41c80000
        BL       __aeabi_cfcmple
        BCC.N    ??duoji_control_12
        LDR.N    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_39  ;; 0x41a00000
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_11
//  120   {
//  121    duoji=duoji_right;
??duoji_control_12:
        LDR.W    R0,??DataTable2_40  ;; 0x45c1c000
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  122   }
//  123   //中间电感值非常小的时候或者左电感的值非常小的时候舵机打死
//  124   if(left==1&&(ADValue7<25||ADValue1<20))
??duoji_control_11:
        LDR.W    R0,??DataTable2_26
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??duoji_control_13
        LDR.N    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_38  ;; 0x41c80000
        BL       __aeabi_cfcmple
        BCC.N    ??duoji_control_14
        LDR.N    R0,??DataTable2_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_39  ;; 0x41a00000
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_13
//  125   {
//  126    duoji=duoji_left;
??duoji_control_14:
        LDR.W    R0,??DataTable2_41  ;; 0x45610000
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  127   }
//  128   
//  129   //电感保护程序
//  130   //电感8是保护电感加上其他的电感空气值判断使其保护更好
//  131   if(ADValue8<=2&&ADValue1<5&&ADValue2<5&&ADValue7<5)
??duoji_control_13:
        LDR.W    R0,??DataTable2_42
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_43  ;; 0x40000001
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_15
        LDR.N    R0,??DataTable2_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_44  ;; 0x40a00000
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_15
        LDR.N    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_44  ;; 0x40a00000
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_15
        LDR.N    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_44  ;; 0x40a00000
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_15
//  132     ting=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_45
        STR      R0,[R1, #+0]
//  133 
//  134   //舵机超出了左右舵机的最大值使其等于舵机
//  135   //最大值和最小值
//  136   if(duoji>=duoji_left)
??duoji_control_15:
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_41  ;; 0x45610000
        BL       __aeabi_cfrcmple
        BHI.N    ??duoji_control_16
//  137    duoji=duoji_left;
        LDR.N    R0,??DataTable2_41  ;; 0x45610000
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
        B.N      ??duoji_control_17
//  138   else if(duoji<=duoji_right)
??duoji_control_16:
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_46  ;; 0x45c1c001
        BL       __aeabi_cfcmple
        BCS.N    ??duoji_control_17
//  139    duoji=duoji_right;
        LDR.N    R0,??DataTable2_40  ;; 0x45c1c000
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  140   
//  141   
//  142   LPLD_FTM1_PWM_ChangeDuty(1,duoji);
??duoji_control_17:
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        MOVS     R1,R0
        MOVS     R0,#+1
        BL       LPLD_FTM1_PWM_ChangeDuty
//  143   
//  144   //应该不能确定进入坡道的好坏，如果一味地进入坡道
//  145   //而让duoji打正，可能造成的情况是
//  146   //在进入弯道前其实已经有点歪了，如果还是大正就会飞出弯道
//  147   
//  148   //ChangeDutyLPLD_FTM1_PWM_ChangeDuty 
//  149   //该函数改变 FTM0模块 PWM输出通道的占空比。
//  150   //LPLD_FTM1_PWM_ChangeDuty(uint8 channel, uint32 duty)
//  151   //1 PTA9输出
//  152   
//  153   /*
//  154   if(podao_jishu_u>=60)
//  155     LPLD_FTM1_PWM_ChangeDuty(1,duoji_mid);
//  156   */
//  157 }
        POP      {R4,PC}          ;; return
//  158 
//  159 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 void speed_define()
//  161 {
//  162    //Expect_speed=170-9.5*powf(2.7,-(ADValue7/46.5-2.6642));
//  163   
//  164    //左右差速最大200
//  165    //Expect_speed_l=Expect_speed+(duoji_mid-duoji)/(duoji_r/100);
//  166    //Expect_speed_r=Expect_speed+(duoji-duoji_mid)/(duoji_r/100);
//  167    //左右差速max = max(Expect_speed_l - Expect_speed_l) = 200;
//  168    
//  169    //Expect_speed_l=Expect_speed+(duoji_mid-duoji)/1.00;
//  170    //Expect_speed_r=Expect_speed+(duoji-duoji_mid)/1.00;
//  171    Expect_speed = 100;
speed_define:
        LDR.N    R0,??DataTable2_47  ;; 0x42c80000
        LDR.N    R1,??DataTable2_48
        STR      R0,[R1, #+0]
//  172    Expect_speed_l = 100;
        LDR.N    R0,??DataTable2_47  ;; 0x42c80000
        LDR.N    R1,??DataTable2_49
        STR      R0,[R1, #+0]
//  173    Expect_speed_r = 100;
        LDR.N    R0,??DataTable2_47  ;; 0x42c80000
        LDR.N    R1,??DataTable2_50
        STR      R0,[R1, #+0]
//  174   
//  175   /*
//  176   if(podao_jishu_u>=1&&podao_u==1)
//  177   {
//  178     podao_jishu_u--;  }
//  179 
//  180   if(podao_jishu_u>=1&&podao_u==-1)
//  181   {
//  182     //fmq_time=40;
//  183     Expect_speed_l=Expect_speed_r=100; 
//  184     podao_jishu_u--;
//  185   }
//  186   if(ADValue9<45&&podao_jishu_u==0)         
//  187   {
//  188     podao_u=-podao_u;
//  189     podao_jishu_u=100;
//  190   } 
//  191   
//  192   if(ting==1 || time >= dingshi)
//  193   {
//  194     time = dingshi;
//  195     Expect_speed_l=Expect_speed_r=0;
//  196   }
//  197  */
//  198 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  199 void speed_control()
//  200 {
speed_control:
        PUSH     {R4,LR}
//  201   h1_r=h0_r;
        LDR.N    R0,??DataTable2_51
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_52
        STR      R0,[R1, #+0]
//  202   realspeed_r_1=realspeed_r_0; 
        LDR.N    R0,??DataTable2_53
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_54
        STR      R0,[R1, #+0]
//  203   //h0_r=a_r*h1_r+b_r*realspeed_r_0-c_r*realspeed_r_1;
//  204   h0_r=realspeed_r_0;
        LDR.N    R0,??DataTable2_53
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_51
        STR      R0,[R1, #+0]
//  205   
//  206   e2motor_r=e1motor_r;
        LDR.N    R0,??DataTable2_55
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_56
        STR      R0,[R1, #+0]
//  207   e1motor_r=e0motor_r;
        LDR.N    R0,??DataTable2_57
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_55
        STR      R0,[R1, #+0]
//  208   e0motor_r=Expect_speed_r-h0_r;
        LDR.N    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_51
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_57
        STR      R0,[R1, #+0]
//  209  
//  210  
//  211   h1_l=h0_l;
        LDR.N    R0,??DataTable2_58
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_59
        STR      R0,[R1, #+0]
//  212   realspeed_l_1=realspeed_l_0;
        LDR.N    R0,??DataTable2_60
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_61
        STR      R0,[R1, #+0]
//  213   //h0_l=a_l*h1_l+b_l*realspeed_l_0-c_l*realspeed_l_1; 
//  214   h0_l=realspeed_l_0;
        LDR.N    R0,??DataTable2_60
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_58
        STR      R0,[R1, #+0]
//  215   
//  216   e2motor_l=e1motor_l;
        LDR.N    R0,??DataTable2_62
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_63
        STR      R0,[R1, #+0]
//  217   e1motor_l=e0motor_l;
        LDR.N    R0,??DataTable2_64
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_62
        STR      R0,[R1, #+0]
//  218   e0motor_l=Expect_speed_l-h0_l;
        LDR.N    R0,??DataTable2_49
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_58
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_64
        STR      R0,[R1, #+0]
//  219 
//  220  
//  221   Motorerr_r=kp_r*(e0motor_r-e1motor_r)+ki_r*e0motor_r+kd_r*(e0motor_r-2*e1motor_r+e2motor_r);  
        LDR.N    R0,??DataTable2_57
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_55
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_65
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_66
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_57
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_55
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable2_57
        LDR      R0,[R0, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_56
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_67
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_68
        STR      R0,[R1, #+0]
//  222         
//  223   Motorpwm_r+=(int)Motorerr_r;  
        LDR.N    R0,??DataTable2_68
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_69
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_69
        STR      R0,[R1, #+0]
//  224  
//  225   Motorerr_l=kp_l*(e0motor_l-e1motor_l)+ki_l*e0motor_l+kd_l*(e0motor_l-2*e1motor_l+e2motor_l);  
        LDR.N    R0,??DataTable2_64
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_62
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_70
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_71
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_64
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_62
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable2_64
        LDR      R0,[R0, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2_63
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_72
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_73
        STR      R0,[R1, #+0]
//  226   
//  227   Motorpwm_l+=(int)Motorerr_l; 
        LDR.N    R0,??DataTable2_73
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_74
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2_74
        STR      R0,[R1, #+0]
//  228  
//  229   if(Motorpwm_r>=500)
        LDR.N    R0,??DataTable2_69
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_75  ;; 0x43fa0000
        BL       __aeabi_cfrcmple
        BHI.N    ??speed_control_0
//  230    Motorpwm_r=500;
        LDR.N    R0,??DataTable2_75  ;; 0x43fa0000
        LDR.N    R1,??DataTable2_69
        STR      R0,[R1, #+0]
        B.N      ??speed_control_1
//  231   else if(Motorpwm_r<0)
??speed_control_0:
        LDR.N    R0,??DataTable2_69
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??speed_control_1
//  232    Motorpwm_r=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_69
        STR      R0,[R1, #+0]
//  233   
//  234   if(Motorpwm_l>=500)
??speed_control_1:
        LDR.N    R0,??DataTable2_74
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_75  ;; 0x43fa0000
        BL       __aeabi_cfrcmple
        BHI.N    ??speed_control_2
//  235    Motorpwm_l=500;
        LDR.N    R0,??DataTable2_75  ;; 0x43fa0000
        LDR.N    R1,??DataTable2_74
        STR      R0,[R1, #+0]
        B.N      ??speed_control_3
//  236   else if(Motorpwm_l<0)
??speed_control_2:
        LDR.N    R0,??DataTable2_74
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??speed_control_3
//  237    Motorpwm_l=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_74
        STR      R0,[R1, #+0]
//  238  
//  239   if(Expect_speed_r==0&&Expect_speed_l==0)
??speed_control_3:
        LDR.N    R0,??DataTable2_50
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??speed_control_4
        LDR.N    R0,??DataTable2_49
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??speed_control_4
//  240   {
//  241    LPLD_FTM0_PWM_ChangeDuty(4,0);
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  242    LPLD_FTM0_PWM_ChangeDuty(6,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
        B.N      ??speed_control_5
//  243   }
//  244   else
//  245   {
//  246     LPLD_FTM0_PWM_ChangeDuty(4,Motorpwm_l*20);
??speed_control_4:
        LDR.N    R0,??DataTable2_74
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_39  ;; 0x41a00000
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R1,R0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  247     LPLD_FTM0_PWM_ChangeDuty(6,Motorpwm_r*20);
        LDR.N    R0,??DataTable2_69
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_39  ;; 0x41a00000
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        MOVS     R1,R0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  248   }
//  249   
//  250 }
??speed_control_5:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     fmq_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     hc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     prehc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     pred

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     ADValue3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     preAD3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     ADValue4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     preAD4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     ADValue7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     pAD7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x41200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     ADValue1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     ADValue2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     e0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     e1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     e2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     e3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     ADValue5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     ADValue6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     e4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     e5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     0x433e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     quan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     hc1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     hc2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     0x3fe66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     hc_total

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     0x43370000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     0xae147ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     0xbffee147

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     0x40266666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     0x402d0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     Kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_36:
        DC32     0x45992000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_37:
        DC32     Kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_38:
        DC32     0x41c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_39:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_40:
        DC32     0x45c1c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_41:
        DC32     0x45610000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_42:
        DC32     ADValue8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_43:
        DC32     0x40000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_44:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_45:
        DC32     ting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_46:
        DC32     0x45c1c001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_47:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_48:
        DC32     Expect_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_49:
        DC32     Expect_speed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_50:
        DC32     Expect_speed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_51:
        DC32     h0_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_52:
        DC32     h1_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_53:
        DC32     realspeed_r_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_54:
        DC32     realspeed_r_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_55:
        DC32     e1motor_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_56:
        DC32     e2motor_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_57:
        DC32     e0motor_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_58:
        DC32     h0_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_59:
        DC32     h1_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_60:
        DC32     realspeed_l_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_61:
        DC32     realspeed_l_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_62:
        DC32     e1motor_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_63:
        DC32     e2motor_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_64:
        DC32     e0motor_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_65:
        DC32     kp_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_66:
        DC32     ki_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_67:
        DC32     kd_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_68:
        DC32     Motorerr_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_69:
        DC32     Motorpwm_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_70:
        DC32     kp_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_71:
        DC32     ki_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_72:
        DC32     kd_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_73:
        DC32     Motorerr_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_74:
        DC32     Motorpwm_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_75:
        DC32     0x43fa0000

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
// 1 824 bytes in section .text
// 
// 1 824 bytes of CODE memory
//
//Errors: none
//Warnings: 3
