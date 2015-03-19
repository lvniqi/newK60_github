///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       17/Aug/2014  18:47:09
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\app\Sampling.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\app\Sampling.c"
//        -D IAR -D LPLD_K60 -lCN
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\List\"
//        -lB
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\List\"
//        -o
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files\IAR
//        Systems\Embedded Workbench 7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\app\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\cpu\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\cpu\headers\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\adc16\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\enet\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\lptmr\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\mcg\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\pmc\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\rtc\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\uart\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\drivers\wdog\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\platforms\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\LPLD\FatFs\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\LPLD\USB\"
//        -I
//        "C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\..\..\..\lib\iar_config_files\"
//        -Ol
//    List file    =  
//        C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\List\Sampling.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Abs
        EXTERN Beep_Flag
        EXTERN Brick_Dir
        EXTERN Brick_Flag
        EXTERN LPLD_ADC_SE_Get
        EXTERN LPLD_GPIO_Set_b
        EXTERN OLED_Print
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2f
        EXTERN ad_flag
        EXTERN straight_l
        EXTERN straight_r
        EXTERN temp_pwm

        PUBLIC AD_DATA0
        PUBLIC AD_DATA1
        PUBLIC AD_DATA2
        PUBLIC AD_DATA3
        PUBLIC AD_DATA4
        PUBLIC AD_DATA5
        PUBLIC AD_DATA6
        PUBLIC AD_DATA7
        PUBLIC AD_DATA8
        PUBLIC AD_DATA9
        PUBLIC BrickJudge
        PUBLIC CCD_GetResults
        PUBLIC CCD_averl
        PUBLIC CCD_averr
        PUBLIC CCD_flag
        PUBLIC CCD_left
        PUBLIC CCD_right
        PUBLIC DC_flag
        PUBLIC Inout
        PUBLIC Max_Pixel
        PUBLIC Min_Pixel
        PUBLIC PD_flag
        PUBLIC PDzero_flag
        PUBLIC SampleAD
        PUBLIC ScanBrick
        PUBLIC ad_brik
        PUBLIC brick
        PUBLIC brick_flag
        PUBLIC brick_l
        PUBLIC brick_l_flag
        PUBLIC brick_r
        PUBLIC brick_r_flag
        PUBLIC gPixel
        PUBLIC gPixel_s
        PUBLIC gPixel_t
        PUBLIC lasterror
        PUBLIC lastsum
        PUBLIC leftvalue
        PUBLIC need_data0
        PUBLIC need_data1
        PUBLIC need_data2
        PUBLIC need_data3
        PUBLIC need_data4
        PUBLIC need_data5
        PUBLIC need_data6
        PUBLIC need_data7
        PUBLIC need_data8
        PUBLIC need_data9
        PUBLIC numberflag
        PUBLIC rightvalue
        PUBLIC tly_flag
        PUBLIC tly_init
        PUBLIC tly_ji
        PUBLIC up
        PUBLIC value_l
        PUBLIC value_r

// C:\Users\zxf\Desktop\8.16\7.17(CCD修改)\project\LPLD_Template\app\Sampling.c
//    1 #include  "Sampling.h"
//    2 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    3 uint8 ad_brik=140;
ad_brik:
        DATA
        DC8 140

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    4 uint8 PD_flag=0;//坡道
PD_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    5 uint8 PDzero_flag=0;//坡道
PDzero_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    6 uint8 DC_flag=0;//电池电压
DC_flag:
        DS8 1
//    7 
//    8 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 float CCD_averl=0;
CCD_averl:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 float CCD_averr=0;
CCD_averr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 uint8 Max_Pixel=0;
Max_Pixel:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   12 uint8 Min_Pixel=255;
Min_Pixel:
        DATA
        DC8 255

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8 up = 0;
up:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 uint8 gPixel_s[128] = {0};
gPixel_s:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 uint8 gPixel_t[128] = {0};
gPixel_t:
        DS8 128
//   16 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   17 uint8 CCD_left = 0,CCD_right = 0;
CCD_left:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
CCD_right:
        DS8 1
//   18 
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 uint8 gPixel[128] = {0};
gPixel:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int leftvalue=0;
leftvalue:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int rightvalue=0;
rightvalue:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   23 uint8 brick_l_flag = 0,brick_r_flag = 0;
brick_l_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
brick_r_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   24 uint8 brick_flag=0;
brick_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   25 uint8 brick=0;
brick:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   26 uint8 brick_l = 0,brick_r = 0;
brick_l:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
brick_r:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 float value_l = 0,value_r = 0;
value_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
value_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   28 uint8 CCD_flag=0;
CCD_flag:
        DS8 1
//   29 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   30 uint16 need_data0=0;
need_data0:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   31 uint16 need_data1=0;
need_data1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   32 uint16 need_data2=0;
need_data2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   33 uint16 need_data3=0;
need_data3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   34 uint16 need_data4=0;
need_data4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   35 uint16 need_data5=0;
need_data5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   36 uint16 need_data6=0;
need_data6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   37 uint16 need_data7=0;
need_data7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 float need_data9=0;
need_data9:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 int need_data8=0;
need_data8:
        DS8 4
//   40 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   41 float lastsum[10]={0};
lastsum:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   42 float lasterror=0;
lasterror:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   43 uint8  Inout=0;
Inout:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   44 uint16  numberflag=0;
numberflag:
        DS8 2
//   45 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   46 uint16 AD_DATA0=0;
AD_DATA0:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   47 uint16 AD_DATA1=0; 
AD_DATA1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   48 uint16 AD_DATA2=0;
AD_DATA2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   49 uint16 AD_DATA3=0;
AD_DATA3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   50 uint16 AD_DATA4=0;
AD_DATA4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   51 uint16 AD_DATA5=0;
AD_DATA5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   52 uint16 AD_DATA6=0;
AD_DATA6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   53 uint16 AD_DATA7=0;
AD_DATA7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   54 uint16 AD_DATA9=0;
AD_DATA9:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   55 int AD_DATA8=0;
AD_DATA8:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   56 int tly_ji=0;
tly_ji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   57 int tly_init=0;
tly_init:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 int tly_flag=0;
tly_flag:
        DS8 4
//   59 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void SampleAD()
//   61 {
SampleAD:
        PUSH     {R7,LR}
//   62   AD_DATA0 += LPLD_ADC_SE_Get(ADC1, 4);                                        //PTE0
        MOVS     R1,#+4
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+0]
//   63   AD_DATA1 += LPLD_ADC_SE_Get(ADC1, 5);                                        //PTE1
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_1
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_1
        STRH     R0,[R1, #+0]
//   64   AD_DATA2 += LPLD_ADC_SE_Get(ADC1, 6);                                        //PTE2
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_2
        STRH     R0,[R1, #+0]
//   65   AD_DATA3 += LPLD_ADC_SE_Get(ADC1, 7);                                       //PTE24
        MOVS     R1,#+7
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_3
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_3
        STRH     R0,[R1, #+0]
//   66   AD_DATA4 += LPLD_ADC_SE_Get(ADC1, 10);                                       //PTE25
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_4
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_4
        STRH     R0,[R1, #+0]
//   67   AD_DATA5 += LPLD_ADC_SE_Get(ADC1, 11);                                       //PTB6
        MOVS     R1,#+11
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_5
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_5
        STRH     R0,[R1, #+0]
//   68   AD_DATA6 += LPLD_ADC_SE_Get(ADC1, 12);                                       //PTB7
        MOVS     R1,#+12
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_6
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_6
        STRH     R0,[R1, #+0]
//   69   AD_DATA7 += LPLD_ADC_SE_Get(ADC1, 13);                                       //PTB11
        MOVS     R1,#+13
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_7
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_7
        STRH     R0,[R1, #+0]
//   70   
//   71   
//   72   if(tly_ji<10)
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??SampleAD_0
//   73   {
//   74     tly_ji++;
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//   75     tly_init+=LPLD_ADC_SE_Get(ADC1, 14);
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_9
        LDR      R1,[R1, #+0]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//   76   }
//   77   if(tly_flag==0&&tly_ji>=10)
??SampleAD_0:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SampleAD_1
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??SampleAD_1
//   78   {
//   79     tly_init=tly_init/10;
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//   80     tly_flag=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_10
        STR      R0,[R1, #+0]
//   81   }
//   82   if(ad_flag>=5)
??SampleAD_1:
        LDR.W    R0,??DataTable3_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.W    ??SampleAD_2
//   83     {
//   84       lasterror = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_12
        STR      R0,[R1, #+0]
//   85       
//   86       ad_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_11
        STRB     R0,[R1, #+0]
//   87       need_data0 = AD_DATA0/5;                                        //PTE0
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_13
        STRH     R0,[R1, #+0]
//   88       need_data1 = AD_DATA1/5;                                        //PTE1
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_14
        STRH     R0,[R1, #+0]
//   89       need_data2 = AD_DATA2/5;                                        //PTE2
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_15
        STRH     R0,[R1, #+0]
//   90       need_data3 = AD_DATA3/5;                                       //PTE24
        LDR.W    R0,??DataTable3_3
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_16
        STRH     R0,[R1, #+0]
//   91       need_data4 = AD_DATA4/5;                                       //PTE25
        LDR.W    R0,??DataTable3_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_17
        STRH     R0,[R1, #+0]
//   92       need_data5 = AD_DATA5/5;                                       //PTB6
        LDR.W    R0,??DataTable3_5
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_18
        STRH     R0,[R1, #+0]
//   93       need_data6 = AD_DATA6/5;                                       //PTB7
        LDR.W    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_19
        STRH     R0,[R1, #+0]
//   94       need_data7 = AD_DATA7/5;                           //PTB5
        LDR.W    R0,??DataTable3_7
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_20
        STRH     R0,[R1, #+0]
//   95       PDzero_flag++;
        LDR.W    R0,??DataTable3_21
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_21
        STRB     R0,[R1, #+0]
//   96       DC_flag++;
        LDR.W    R0,??DataTable3_22
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_22
        STRB     R0,[R1, #+0]
//   97       
//   98                                       
//   99       
//  100 
//  101       for(numberflag = 9;numberflag>0;numberflag--)
        MOVS     R0,#+9
        LDR.W    R1,??DataTable3_23
        STRH     R0,[R1, #+0]
        B.N      ??SampleAD_3
//  102       {
//  103         lastsum[numberflag]=lastsum[numberflag-1];
??SampleAD_4:
        LDR.W    R0,??DataTable3_23
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_24
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #-4]
        LDR.W    R1,??DataTable3_23
        LDRH     R1,[R1, #+0]
        LDR.W    R2,??DataTable3_24
        STR      R0,[R2, R1, LSL #+2]
//  104       }
        LDR.W    R0,??DataTable3_23
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable3_23
        STRH     R0,[R1, #+0]
??SampleAD_3:
        LDR.W    R0,??DataTable3_23
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SampleAD_4
//  105       lastsum[0] = need_data2;                                        //PTE2
        LDR.W    R0,??DataTable3_15
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_24
        STR      R0,[R1, #+0]
//  106                    //PTB7
//  107       for(numberflag = 0;numberflag<9;numberflag++)
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_23
        STRH     R0,[R1, #+0]
        B.N      ??SampleAD_5
//  108       {
//  109         lasterror += lastsum[numberflag]-lastsum[numberflag+1];
??SampleAD_6:
        LDR.W    R0,??DataTable3_23
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_24
        LDR      R0,[R1, R0, LSL #+2]
        LDR.W    R1,??DataTable3_23
        LDRH     R1,[R1, #+0]
        LDR.W    R2,??DataTable3_24
        ADDS     R1,R2,R1, LSL #+2
        LDR      R1,[R1, #+4]
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR.W    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_12
        STR      R0,[R1, #+0]
//  110       }
        LDR.W    R0,??DataTable3_23
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_23
        STRH     R0,[R1, #+0]
??SampleAD_5:
        LDR.W    R0,??DataTable3_23
        LDRH     R0,[R0, #+0]
        CMP      R0,#+9
        BLT.N    ??SampleAD_6
//  111       
//  112      
//  113       if(lasterror>350)
        LDR.W    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_25  ;; 0x43af0001
        BL       __aeabi_cfrcmple
        BHI.N    ??SampleAD_7
//  114       {
//  115         Inout = 2;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable3_26
        STRB     R0,[R1, #+0]
        B.N      ??SampleAD_8
//  116       }
//  117       else if(lasterror<-350)
??SampleAD_7:
        LDR.W    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_27  ;; 0xc3af0000
        BL       __aeabi_cfcmple
        BCS.N    ??SampleAD_8
//  118       {
//  119         Inout = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_26
        STRB     R0,[R1, #+0]
//  120       }
//  121 
//  122   
//  123 
//  124     /*  
//  125       if(need_data0<=1)  need_data0=1;
//  126       if(need_data1<=1)  need_data1=1;
//  127          
//  128       if(need_data3<=1)  need_data3=1;   
//  129       if(need_data4<=1)  need_data4=1;  
//  130       if(need_data5<=1)  need_data5=1;  
//  131       if(need_data6<=1)  need_data6=1; 
//  132       if(need_data7<=1)  need_data7=1;
//  133       */
//  134       if(need_data2<=1)  need_data2=1;
??SampleAD_8:
        LDR.W    R0,??DataTable3_15
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_9
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_15
        STRH     R0,[R1, #+0]
//  135       AD_DATA0=0;
??SampleAD_9:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+0]
//  136       AD_DATA1=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_1
        STRH     R0,[R1, #+0]
//  137       AD_DATA2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_2
        STRH     R0,[R1, #+0]
//  138       AD_DATA3=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_3
        STRH     R0,[R1, #+0]
//  139       AD_DATA4=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_4
        STRH     R0,[R1, #+0]
//  140       AD_DATA5=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_5
        STRH     R0,[R1, #+0]
//  141       AD_DATA6=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_6
        STRH     R0,[R1, #+0]
//  142       AD_DATA7=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_7
        STRH     R0,[R1, #+0]
//  143       
//  144     }
//  145    if(tly_flag==1)
??SampleAD_2:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SampleAD_10
//  146    {
//  147      AD_DATA8 = (tly_init-LPLD_ADC_SE_Get(ADC1, 14)); 
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_9
        LDR      R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        SUBS     R0,R1,R0
        LDR.W    R1,??DataTable3_28
        STR      R0,[R1, #+0]
//  148      PD_flag++;
        LDR.W    R0,??DataTable3_29
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_29
        STRB     R0,[R1, #+0]
//  149      if(PD_flag>=1)
        LDR.W    R0,??DataTable3_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SampleAD_11
//  150      { 
//  151        if(AD_DATA8>=8||AD_DATA8<=-8)
        LDR.W    R0,??DataTable3_28
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+7
        CMP      R0,#+15
        BCC.N    ??SampleAD_12
//  152        need_data8 += AD_DATA8;
        LDR.W    R0,??DataTable3_30
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_28
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3_30
        STR      R0,[R1, #+0]
//  153        if(need_data8<=0)
??SampleAD_12:
        LDR.W    R0,??DataTable3_30
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??SampleAD_13
//  154          need_data8=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_30
        STR      R0,[R1, #+0]
//  155       // AD_DATA8=0;
//  156        PD_flag=0;
??SampleAD_13:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_29
        STRB     R0,[R1, #+0]
//  157        
//  158      }
//  159      if(PDzero_flag>=5)
??SampleAD_11:
        LDR.W    R0,??DataTable3_21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??SampleAD_10
//  160      {
//  161        need_data8=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_30
        STR      R0,[R1, #+0]
//  162        PDzero_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_21
        STRB     R0,[R1, #+0]
//  163      }
//  164   }
//  165 }  
??SampleAD_10:
        POP      {R0,PC}          ;; return
//  166 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  167 void CCD_GetResults(uint8 *pixel)
//  168 {
CCD_GetResults:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  169   uint8 i,j,k,temp;
//  170   leftvalue = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_31
        STR      R0,[R1, #+0]
//  171   rightvalue = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_32
        STR      R0,[R1, #+0]
//  172   Max_Pixel = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_33
        STRB     R0,[R1, #+0]
//  173   Min_Pixel = 255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable3_34
        STRB     R0,[R1, #+0]
//  174   //采集上次曝光得到的图像
//  175   //开始SI
//  176   TSL1401_SI(1);
        MOVS     R2,#+1
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  177   asm("nop");
        nop
//  178   TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  179   //delay();
//  180   TSL1401_SI(0);
        MOVS     R2,#+0
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  181   //delay();
//  182   //采集第1个点
//  183   pixel[0] = LPLD_ADC_SE_Get(ADC0, AO);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_ADC_SE_Get
        STRB     R0,[R4, #+0]
//  184   TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  185   gPixel_s[0] = pixel[0];
        LDRB     R0,[R4, #+0]
        LDR.W    R1,??DataTable3_35
        STRB     R0,[R1, #+0]
//  186   CCD_averl += pixel[0];
        LDRB     R0,[R4, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_36
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_36
        STR      R0,[R1, #+0]
//  187  // Max_Pixel = Max_Pixel>pixel[0] ? Max_Pixel : pixel[0];
//  188  // Min_Pixel = Min_Pixel<pixel[0] ? Min_Pixel : pixel[0];
//  189   //采集第2~128个点
//  190   for(i=1; i<64; i++)
        MOVS     R5,#+1
        B.N      ??CCD_GetResults_0
//  191   {
//  192     asm("nop");
??CCD_GetResults_1:
        nop
//  193     TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  194     //delay(); 
//  195     pixel[i] = LPLD_ADC_SE_Get(ADC0, AO);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_ADC_SE_Get
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R4]
//  196     TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  197     gPixel_s[i] = pixel[i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_35
        STRB     R0,[R5, R1]
//  198     CCD_averl += pixel[i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_36
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_36
        STR      R0,[R1, #+0]
//  199    // Max_Pixel = Max_Pixel>pixel[i] ? Max_Pixel : pixel[i];
//  200   //  Min_Pixel = Min_Pixel<pixel[i] ? Min_Pixel : pixel[i];
//  201   }
        ADDS     R5,R5,#+1
??CCD_GetResults_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+64
        BLT.N    ??CCD_GetResults_1
//  202   CCD_averl /=64;
        LDR.W    R0,??DataTable3_36
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1115684864
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable3_36
        STR      R0,[R1, #+0]
//  203   for(i=64; i<128; i++)
        MOVS     R5,#+64
        B.N      ??CCD_GetResults_2
//  204   {
//  205     asm("nop");
??CCD_GetResults_3:
        nop
//  206     TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  207     //delay(); 
//  208     pixel[i] = LPLD_ADC_SE_Get(ADC0, AO);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_ADC_SE_Get
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R4]
//  209     TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  210     gPixel_s[i] = pixel[i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_35
        STRB     R0,[R5, R1]
//  211     CCD_averr += pixel[i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_37
        STR      R0,[R1, #+0]
//  212   //  Max_Pixel = Max_Pixel>pixel[i] ? Max_Pixel : pixel[i];
//  213    // Min_Pixel = Min_Pixel<pixel[i] ? Min_Pixel : pixel[i];
//  214   }
        ADDS     R5,R5,#+1
??CCD_GetResults_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BLT.N    ??CCD_GetResults_3
//  215   CCD_averr /= 64;
        LDR.W    R0,??DataTable3_37
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1115684864
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable3_37
        STR      R0,[R1, #+0]
//  216   //发送第129个clk
//  217   asm("nop");
        nop
//  218   TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  219   asm("nop");
        nop
//  220   TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  221   asm("nop");
        nop
//  222   for(j=0;j<128;j++)
        MOVS     R0,#+0
        B.N      ??CCD_GetResults_4
//  223   {
//  224     for(k=0;k<128-j;k++)
//  225     {
//  226       if(gPixel_s[k]>gPixel_s[k+1])
??CCD_GetResults_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable3_35
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable3_35
        LDRB     R3,[R1, R3]
        CMP      R2,R3
        BCS.N    ??CCD_GetResults_6
//  227       {
//  228         temp = gPixel_s[k];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable3_35
        LDRB     R2,[R1, R2]
//  229         gPixel_s[k] = gPixel_s[k+1];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable3_35
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R5,??DataTable3_35
        STRB     R3,[R1, R5]
//  230         gPixel_s[k+1] = temp;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable3_35
        ADDS     R3,R1,R3
        STRB     R2,[R3, #+1]
//  231       }
//  232     }
??CCD_GetResults_6:
        ADDS     R1,R1,#+1
??CCD_GetResults_7:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        RSBS     R2,R0,#+128
        CMP      R1,R2
        BLT.N    ??CCD_GetResults_5
        ADDS     R0,R0,#+1
??CCD_GetResults_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+128
        BGE.N    ??CCD_GetResults_8
        MOVS     R1,#+0
        B.N      ??CCD_GetResults_7
//  233   }
//  234     Max_Pixel = gPixel_s[108];
??CCD_GetResults_8:
        LDR.W    R0,??DataTable3_35
        LDRB     R0,[R0, #+108]
        LDR.W    R1,??DataTable3_33
        STRB     R0,[R1, #+0]
//  235     Min_Pixel = gPixel_s[20];
        LDR.W    R0,??DataTable3_35
        LDRB     R0,[R0, #+20]
        LDR.W    R1,??DataTable3_34
        STRB     R0,[R1, #+0]
//  236   for(i=0;i<128;i++)
        MOVS     R5,#+0
        B.N      ??CCD_GetResults_9
//  237     {
//  238       if(Max_Pixel-Min_Pixel>150)
//  239       {
//  240         if(pixel[i]<(CCD_averl+CCD_averr)/2&&pixel[i]<Min_Pixel+8) gPixel_t[i] = 0;
//  241         else gPixel_t[i] = 255;
//  242       }
//  243       else gPixel_t[i] = 255;
??CCD_GetResults_10:
        MOVS     R0,#+255
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_38
        STRB     R0,[R5, R1]
??CCD_GetResults_11:
        ADDS     R5,R5,#+1
??CCD_GetResults_9:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??CCD_GetResults_12
        LDR.W    R0,??DataTable3_33
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_34
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+151
        BLT.N    ??CCD_GetResults_10
        LDR.W    R0,??DataTable3_36
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOVS     R6,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_cfcmple
        BCS.N    ??CCD_GetResults_13
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        LDR.W    R1,??DataTable3_34
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+8
        CMP      R0,R1
        BGE.N    ??CCD_GetResults_13
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_38
        STRB     R0,[R5, R1]
        B.N      ??CCD_GetResults_11
??CCD_GetResults_13:
        MOVS     R0,#+255
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_38
        STRB     R0,[R5, R1]
        B.N      ??CCD_GetResults_11
//  244     }
//  245 }
??CCD_GetResults_12:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  246 void ScanBrick(uint8 *pixel)
//  247 {
ScanBrick:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  248   uint8 i,j,flag = 0;
        MOVS     R6,#+0
//  249   if(temp_pwm-Servomiddle>-80&&temp_pwm-Servomiddle<80)
        LDR.W    R0,??DataTable3_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_40  ;; 0xc0a4ea00
        BL       __aeabi_dadd
        MOVS     R2,#-1
        LDR.W    R3,??DataTable3_41  ;; 0xc053ffff
        BL       __aeabi_cdrcmple
        BHI.W    ??ScanBrick_0
        LDR.W    R0,??DataTable3_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_40  ;; 0xc0a4ea00
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_42  ;; 0x40540000
        BL       __aeabi_cdcmple
        BCS.W    ??ScanBrick_0
//  250   {
//  251     if(temp_pwm-Servomiddle>0)
        LDR.W    R0,??DataTable3_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_40  ;; 0xc0a4ea00
        BL       __aeabi_dadd
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BCS.N    ??ScanBrick_1
//  252     {
//  253       CCD_left=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_43
        STRB     R0,[R1, #+0]
//  254       CCD_right=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_44
        STRB     R0,[R1, #+0]
//  255     }
//  256     if(temp_pwm-Servomiddle<0)
??ScanBrick_1:
        LDR.W    R0,??DataTable3_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_40  ;; 0xc0a4ea00
        BL       __aeabi_dadd
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??ScanBrick_2
//  257     {
//  258       CCD_left=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_43
        STRB     R0,[R1, #+0]
//  259       CCD_right=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_44
        STRB     R0,[R1, #+0]
//  260     }
//  261     if(CCD_averl>CCD_averr)
??ScanBrick_2:
        LDR.W    R0,??DataTable3_37
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_36
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??ScanBrick_3
//  262     {
//  263       if(CCD_averr<Max_Pixel)
        LDR.N    R0,??DataTable3_33
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable3_37
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.W    ??ScanBrick_0
//  264       {
//  265          for(i=64;i<108-CCD_right*Abs(temp_pwm-Servomiddle)/5;i++)
        MOVS     R5,#+64
        B.N      ??ScanBrick_4
??ScanBrick_5:
        ADDS     R5,R5,#+1
??ScanBrick_4:
        LDR.N    R0,??DataTable3_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_40  ;; 0xc0a4ea00
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        MOVS     R6,R0
        LDR.N    R0,??DataTable3_44
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable3_45  ;; 0x40a00000
        BL       __aeabi_fdiv
        MOVS     R1,R0
        LDR.N    R0,??DataTable3_46  ;; 0x42d80000
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R6,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_cfcmple
        BCS.W    ??ScanBrick_0
//  266         {
//  267           flag = 0;
        MOVS     R6,#+0
//  268           for(j=i;j<i+15;j++)
        MOVS     R0,R5
        B.N      ??ScanBrick_6
//  269           {
//  270             if(pixel[j]!=0) 
//  271             {
//  272               flag = 1;
//  273               break;
//  274             }
//  275             up = j;
??ScanBrick_7:
        LDR.N    R1,??DataTable3_47
        STRB     R0,[R1, #+0]
        ADDS     R0,R0,#+1
??ScanBrick_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,#+15
        CMP      R0,R1
        BGE.N    ??ScanBrick_8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R4]
        CMP      R1,#+0
        BEQ.N    ??ScanBrick_7
        MOVS     R6,#+1
//  276           }
//  277           if(flag!=1)
??ScanBrick_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??ScanBrick_5
//  278           {
//  279             Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_48
        STRB     R0,[R1, #+0]
//  280             if((straight_r+straight_l)>0)
        LDR.N    R0,??DataTable3_49
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_50
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        CMP      R0,#+0
        BEQ.N    ??ScanBrick_5
//  281             {
//  282               Brick_Dir = Left;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_51
        STRB     R0,[R1, #+0]
//  283               OLED_Print(60,2,"Left ");
        LDR.N    R2,??DataTable3_52
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_Print
//  284               Brick_Flag = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_53
        STRB     R0,[R1, #+0]
//  285               break;
        B.N      ??ScanBrick_0
//  286             }
//  287           }
//  288         }
//  289       }
//  290     }
//  291     else
//  292     {
//  293       if(CCD_averl<Max_Pixel)
??ScanBrick_3:
        LDR.N    R0,??DataTable3_33
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR.N    R0,??DataTable3_36
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??ScanBrick_0
//  294       {
//  295         for(i=64;i>24+CCD_left*Abs(temp_pwm-Servomiddle)/5;i--)
        MOVS     R5,#+64
        B.N      ??ScanBrick_9
??ScanBrick_10:
        SUBS     R5,R5,#+1
??ScanBrick_9:
        LDR.N    R0,??DataTable3_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_40  ;; 0xc0a4ea00
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        MOVS     R6,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable3_43
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable3_45  ;; 0x40a00000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable3_54  ;; 0x41c00000
        BL       __aeabi_fadd
        MOVS     R1,R7
        BL       __aeabi_cfcmple
        BCS.N    ??ScanBrick_0
//  296         {
//  297           flag = 0;
        MOVS     R6,#+0
//  298           for(j=i;j>i-15;j--)
        MOVS     R0,R5
        B.N      ??ScanBrick_11
//  299           {
//  300             if(pixel[j]!=0) 
//  301             {
//  302               flag = 1;
//  303               break;
//  304             }
//  305             up = j;
??ScanBrick_12:
        LDR.N    R1,??DataTable3_47
        STRB     R0,[R1, #+0]
        SUBS     R0,R0,#+1
??ScanBrick_11:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R1,R5,#+15
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??ScanBrick_13
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R4]
        CMP      R1,#+0
        BEQ.N    ??ScanBrick_12
        MOVS     R6,#+1
//  306           }
//  307           if(flag!=1)
??ScanBrick_13:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??ScanBrick_10
//  308           {
//  309             Beep_Flag = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_48
        STRB     R0,[R1, #+0]
//  310             if((straight_r+straight_l)>400)
        LDR.N    R0,??DataTable3_49
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_50
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        CMP      R0,#+400
        BLS.N    ??ScanBrick_10
//  311             {
//  312               Brick_Dir = Right;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable3_51
        STRB     R0,[R1, #+0]
//  313               OLED_Print(60,2,"Right");
        LDR.N    R2,??DataTable3_55
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_Print
//  314               Brick_Flag = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_53
        STRB     R0,[R1, #+0]
//  315               break;
//  316             }
//  317           }
//  318         }
//  319       }   
//  320     }
//  321   }
//  322 }
??ScanBrick_0:
        POP      {R0,R4-R7,PC}    ;; return
//  323 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  324 void BrickJudge()
//  325 {
BrickJudge:
        PUSH     {R7,LR}
//  326   int i=0;
        MOVS     R2,#+0
//  327   if(temp_pwm>Servomiddle-60&&temp_pwm<Servomiddle+60)
        LDR.N    R0,??DataTable3_39
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_56  ;; 0x45239001
        BL       __aeabi_cfrcmple
        BHI.W    ??BrickJudge_0
        LDR.N    R0,??DataTable3_39
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_57  ;; 0x452b1000
        BL       __aeabi_cfcmple
        BCS.W    ??BrickJudge_0
//  328   {
//  329     
//  330     for(i=0;i<128;i++)
        MOVS     R2,#+0
        B.N      ??BrickJudge_1
//  331     {
//  332       if(i>63&&i<128) {rightvalue += gPixel[i];}
??BrickJudge_2:
        SUBS     R0,R2,#+64
        CMP      R0,#+64
        BCS.N    ??BrickJudge_3
        LDR.N    R0,??DataTable3_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_58
        LDRB     R1,[R2, R1]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable3_32
        STR      R0,[R1, #+0]
//  333       if(i>0&&i<=63) {leftvalue += gPixel[i];}
??BrickJudge_3:
        SUBS     R0,R2,#+1
        CMP      R0,#+63
        BCS.N    ??BrickJudge_4
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_58
        LDRB     R1,[R2, R1]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable3_31
        STR      R0,[R1, #+0]
//  334     }
??BrickJudge_4:
        ADDS     R2,R2,#+1
??BrickJudge_1:
        CMP      R2,#+128
        BLT.N    ??BrickJudge_2
//  335     rightvalue /=63;  
        LDR.N    R0,??DataTable3_32
        LDR      R0,[R0, #+0]
        MOVS     R1,#+63
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable3_32
        STR      R0,[R1, #+0]
//  336     leftvalue /=63;
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        MOVS     R1,#+63
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable3_31
        STR      R0,[R1, #+0]
//  337     
//  338     if(Abs(rightvalue-leftvalue)>=50)   CCD_flag=1;
        LDR.N    R0,??DataTable3_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_31
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       Abs
        LDR.N    R1,??DataTable3_59  ;; 0x42480000
        BL       __aeabi_cfrcmple
        BHI.N    ??BrickJudge_5
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_60
        STRB     R0,[R1, #+0]
        B.N      ??BrickJudge_6
//  339     else CCD_flag=0;
??BrickJudge_5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_60
        STRB     R0,[R1, #+0]
//  340     
//  341     if(rightvalue-leftvalue>=50&&brick_flag==0&&(straight_r+straight_l)>3000)
??BrickJudge_6:
        LDR.N    R0,??DataTable3_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_31
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+50
        BLT.N    ??BrickJudge_7
        LDR.N    R0,??DataTable3_61
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??BrickJudge_7
        LDR.N    R0,??DataTable3_49
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_50
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVW     R1,#+3001
        CMP      R0,R1
        BCC.N    ??BrickJudge_7
//  342     {
//  343        brick_r_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_62
        STRB     R0,[R1, #+0]
//  344        brick_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_61
        STRB     R0,[R1, #+0]
//  345     }
//  346     if(leftvalue-rightvalue>=50&&brick_flag==0&&(straight_r+straight_l)>3000)
??BrickJudge_7:
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_32
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+50
        BLT.N    ??BrickJudge_8
        LDR.N    R0,??DataTable3_61
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??BrickJudge_8
        LDR.N    R0,??DataTable3_49
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_50
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVW     R1,#+3001
        CMP      R0,R1
        BCC.N    ??BrickJudge_8
//  347     {
//  348        brick_l_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_63
        STRB     R0,[R1, #+0]
//  349        brick_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_61
        STRB     R0,[R1, #+0]
//  350     }
//  351     if(brick_flag==0&&Abs(leftvalue-rightvalue)<50)
??BrickJudge_8:
        LDR.N    R0,??DataTable3_61
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??BrickJudge_0
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_32
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       Abs
        LDR.N    R1,??DataTable3_59  ;; 0x42480000
        BL       __aeabi_cfcmple
        BCS.N    ??BrickJudge_0
//  352     {
//  353       brick_l_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_63
        STRB     R0,[R1, #+0]
//  354       brick_r_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_62
        STRB     R0,[R1, #+0]
//  355     }
//  356    }
//  357 }
??BrickJudge_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     AD_DATA0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     AD_DATA1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     AD_DATA2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     AD_DATA3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     AD_DATA4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     AD_DATA5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     AD_DATA6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     AD_DATA7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     tly_ji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     tly_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     tly_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     ad_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     lasterror

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     need_data0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     need_data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     need_data2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     need_data3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     need_data4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     need_data5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     need_data6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     need_data7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     PDzero_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     DC_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     numberflag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     lastsum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     0x43af0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     Inout

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     0xc3af0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     AD_DATA8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     PD_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     need_data8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     leftvalue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     rightvalue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     Max_Pixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_34:
        DC32     Min_Pixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_35:
        DC32     gPixel_s

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_36:
        DC32     CCD_averl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_37:
        DC32     CCD_averr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_38:
        DC32     gPixel_t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_39:
        DC32     temp_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_40:
        DC32     0xc0a4ea00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_41:
        DC32     0xc053ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_42:
        DC32     0x40540000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_43:
        DC32     CCD_left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_44:
        DC32     CCD_right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_45:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_46:
        DC32     0x42d80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_47:
        DC32     up

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_48:
        DC32     Beep_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_49:
        DC32     straight_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_50:
        DC32     straight_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_51:
        DC32     Brick_Dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_52:
        DC32     `?<Constant "Left ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_53:
        DC32     Brick_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_54:
        DC32     0x41c00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_55:
        DC32     `?<Constant "Right">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_56:
        DC32     0x45239001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_57:
        DC32     0x452b1000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_58:
        DC32     gPixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_59:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_60:
        DC32     CCD_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_61:
        DC32     brick_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_62:
        DC32     brick_r_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_63:
        DC32     brick_l_flag

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Left ">`:
        DATA
        DC8 "Left "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Right">`:
        DATA
        DC8 "Right"
        DC8 0, 0

        END
//  358 
//  359     /*
//  360     if(brick_r==0)
//  361     {
//  362       for(i=64;i<=127;i++)//right
//  363       {   
//  364         i++;
//  365         if(gPixel[i-1]<ad_brik&&gPixel[i]<ad_brik)
//  366         {
//  367           brick_r=1;  
//  368           break;
//  369         }
//  370       }
//  371     }
//  372     
//  373     if(brick_r==1&&brick_r_flag==0)
//  374     {
//  375       for(j=i-1;j<i+15;j++)
//  376       {
//  377         if(gPixel[j]<ad_brik)
//  378          value_r++;
//  379       }
//  380       if(value_r>=10)
//  381       {
//  382         value_r=0;
//  383         brick_r_flag=1;
//  384       }
//  385       else
//  386         brick_r=0;
//  387     }
//  388     
//  389     
//  390     if(brick_l==0)
//  391     {
//  392       for(i=63;i>=0;i--)//left
//  393       {   
//  394         i--;
//  395         if(gPixel[i+1]<ad_brik&&gPixel[i]<ad_brik&&brick_r==0)
//  396         {
//  397           brick_l=1;  
//  398           break;
//  399         }
//  400       }
//  401     }
//  402     
//  403     if(brick_l==1&&brick_l_flag==0)
//  404     {
//  405       for(j=i-1;j<i+15;j++)
//  406       {
//  407         if(gPixel[j]<ad_brik)
//  408          value_l++;
//  409       }
//  410       if(value_l>=10)
//  411       {
//  412         value_l=0;
//  413         brick_l_flag=1;
//  414       }
//  415     }
//  416     
//  417   }
//  418 }*/
//  419 
// 
//   527 bytes in section .bss
//     2 bytes in section .data
//    16 bytes in section .rodata
// 2 624 bytes in section .text
// 
// 2 624 bytes of CODE  memory
//    16 bytes of CONST memory
//   529 bytes of DATA  memory
//
//Errors: none
//Warnings: none
