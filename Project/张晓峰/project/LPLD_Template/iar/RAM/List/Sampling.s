///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:53
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\Sampling.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\Sampling.c"
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\Sampling.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Abs
        EXTERN Brick_Dir
        EXTERN Brick_Flag
        EXTERN LPLD_ADC_SE_Get
        EXTERN LPLD_GPIO_Set_b
        EXTERN OLED_Print
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2d
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
        PUBLIC DC_flag
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
        PUBLIC rightvalue
        PUBLIC tly_flag
        PUBLIC tly_init
        PUBLIC tly_ji
        PUBLIC up
        PUBLIC value_l
        PUBLIC value_r

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\Sampling.c
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

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 uint8 gPixel[128] = {0};
gPixel:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int leftvalue=0;
leftvalue:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int rightvalue=0;
rightvalue:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   20 uint8 brick_l_flag = 0,brick_r_flag = 0;
brick_l_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
brick_r_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   21 uint8 brick_flag=0;
brick_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   22 uint8 brick=0;
brick:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   23 uint8 brick_l = 0,brick_r = 0;
brick_l:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
brick_r:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 float value_l = 0,value_r = 0;
value_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
value_r:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   25 uint8 CCD_flag=0;
CCD_flag:
        DS8 1
//   26 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   27 uint16 need_data0=0;
need_data0:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   28 uint16 need_data1=0;
need_data1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   29 uint16 need_data2=0;
need_data2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   30 uint16 need_data3=0;
need_data3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   31 uint16 need_data4=0;
need_data4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   32 uint16 need_data5=0;
need_data5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   33 uint16 need_data6=0;
need_data6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   34 uint16 need_data7=0;
need_data7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   35 float need_data9=0;
need_data9:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 int need_data8=0;
need_data8:
        DS8 4
//   37 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   38 uint16 AD_DATA0=0;
AD_DATA0:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   39 uint16 AD_DATA1=0; 
AD_DATA1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   40 uint16 AD_DATA2=0;
AD_DATA2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   41 uint16 AD_DATA3=0;
AD_DATA3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   42 uint16 AD_DATA4=0;
AD_DATA4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   43 uint16 AD_DATA5=0;
AD_DATA5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   44 uint16 AD_DATA6=0;
AD_DATA6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   45 uint16 AD_DATA7=0;
AD_DATA7:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   46 uint16 AD_DATA9=0;
AD_DATA9:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 int AD_DATA8=0;
AD_DATA8:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 int tly_ji=0;
tly_ji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 int tly_init=0;
tly_init:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 int tly_flag=0;
tly_flag:
        DS8 4
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void SampleAD()
//   53 {
SampleAD:
        PUSH     {R7,LR}
//   54   AD_DATA0 += LPLD_ADC_SE_Get(ADC1, 4);                                        //PTE0
        MOVS     R1,#+4
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+0]
//   55   AD_DATA1 += LPLD_ADC_SE_Get(ADC1, 5);                                        //PTE1
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_1
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_1
        STRH     R0,[R1, #+0]
//   56   AD_DATA2 += LPLD_ADC_SE_Get(ADC1, 6);                                        //PTE2
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_2
        STRH     R0,[R1, #+0]
//   57   AD_DATA3 += LPLD_ADC_SE_Get(ADC1, 7);                                       //PTE24
        MOVS     R1,#+7
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_3
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_3
        STRH     R0,[R1, #+0]
//   58   AD_DATA4 += LPLD_ADC_SE_Get(ADC1, 10);                                       //PTE25
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_4
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_4
        STRH     R0,[R1, #+0]
//   59   AD_DATA5 += LPLD_ADC_SE_Get(ADC1, 11);                                       //PTB6
        MOVS     R1,#+11
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_5
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_5
        STRH     R0,[R1, #+0]
//   60   AD_DATA6 += LPLD_ADC_SE_Get(ADC1, 12);                                       //PTB7
        MOVS     R1,#+12
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_6
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_6
        STRH     R0,[R1, #+0]
//   61   AD_DATA7 += LPLD_ADC_SE_Get(ADC1, 13);                                       //PTB11
        MOVS     R1,#+13
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_7
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable3_7
        STRH     R0,[R1, #+0]
//   62   
//   63   
//   64   if(tly_ji<10)
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??SampleAD_0
//   65   {
//   66     tly_ji++;
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//   67     tly_init+=LPLD_ADC_SE_Get(ADC1, 14);
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        LDR.W    R1,??DataTable3_9
        LDR      R1,[R1, #+0]
        UXTAH    R0,R1,R0
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//   68   }
//   69   if(tly_flag==0&&tly_ji>=10)
??SampleAD_0:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SampleAD_1
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??SampleAD_1
//   70   {
//   71     tly_init=tly_init/10;
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//   72     tly_flag=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_10
        STR      R0,[R1, #+0]
//   73   }
//   74   if(ad_flag>=5)
??SampleAD_1:
        LDR.W    R0,??DataTable3_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.W    ??SampleAD_2
//   75     {
//   76       ad_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_11
        STRB     R0,[R1, #+0]
//   77       need_data0 = AD_DATA0/5;                                        //PTE0
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_12
        STRH     R0,[R1, #+0]
//   78       need_data1 = AD_DATA1/5;                                        //PTE1
        LDR.W    R0,??DataTable3_1
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_13
        STRH     R0,[R1, #+0]
//   79       need_data2 = AD_DATA2/5;                                        //PTE2
        LDR.W    R0,??DataTable3_2
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_14
        STRH     R0,[R1, #+0]
//   80       need_data3 = AD_DATA3/5;                                       //PTE24
        LDR.W    R0,??DataTable3_3
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_15
        STRH     R0,[R1, #+0]
//   81       need_data4 = AD_DATA4/5;                                       //PTE25
        LDR.W    R0,??DataTable3_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_16
        STRH     R0,[R1, #+0]
//   82       need_data5 = AD_DATA5/5;                                       //PTB6
        LDR.W    R0,??DataTable3_5
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_17
        STRH     R0,[R1, #+0]
//   83       need_data6 = AD_DATA6/5;                                       //PTB7
        LDR.W    R0,??DataTable3_6
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_18
        STRH     R0,[R1, #+0]
//   84       need_data7 = AD_DATA7/5;                           //PTB5
        LDR.W    R0,??DataTable3_7
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3_19
        STRH     R0,[R1, #+0]
//   85       PDzero_flag++;
        LDR.W    R0,??DataTable3_20
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_20
        STRB     R0,[R1, #+0]
//   86       DC_flag++;
        LDR.W    R0,??DataTable3_21
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_21
        STRB     R0,[R1, #+0]
//   87       
//   88       
//   89       if(need_data0<=1)  need_data0=1;
        LDR.W    R0,??DataTable3_12
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_3
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_12
        STRH     R0,[R1, #+0]
//   90       if(need_data1<=1)  need_data1=1;
??SampleAD_3:
        LDR.W    R0,??DataTable3_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_4
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_13
        STRH     R0,[R1, #+0]
//   91       if(need_data2<=1)  need_data2=1;   
??SampleAD_4:
        LDR.W    R0,??DataTable3_14
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_5
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_14
        STRH     R0,[R1, #+0]
//   92       if(need_data3<=1)  need_data3=1;   
??SampleAD_5:
        LDR.W    R0,??DataTable3_15
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_6
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_15
        STRH     R0,[R1, #+0]
//   93       if(need_data4<=1)  need_data4=1;  
??SampleAD_6:
        LDR.W    R0,??DataTable3_16
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_7
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_16
        STRH     R0,[R1, #+0]
//   94       if(need_data5<=1)  need_data5=1;  
??SampleAD_7:
        LDR.W    R0,??DataTable3_17
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_8
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_17
        STRH     R0,[R1, #+0]
//   95       if(need_data6<=1)  need_data6=1; 
??SampleAD_8:
        LDR.W    R0,??DataTable3_18
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_9
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_18
        STRH     R0,[R1, #+0]
//   96       if(need_data7<=1)  need_data7=1;
??SampleAD_9:
        LDR.W    R0,??DataTable3_19
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??SampleAD_10
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_19
        STRH     R0,[R1, #+0]
//   97 
//   98       AD_DATA0=0;
??SampleAD_10:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+0]
//   99       AD_DATA1=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_1
        STRH     R0,[R1, #+0]
//  100       AD_DATA2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_2
        STRH     R0,[R1, #+0]
//  101       AD_DATA3=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_3
        STRH     R0,[R1, #+0]
//  102       AD_DATA4=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_4
        STRH     R0,[R1, #+0]
//  103       AD_DATA5=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_5
        STRH     R0,[R1, #+0]
//  104       AD_DATA6=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_6
        STRH     R0,[R1, #+0]
//  105       AD_DATA7=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_7
        STRH     R0,[R1, #+0]
//  106       
//  107     }
//  108    if(tly_flag==1)
??SampleAD_2:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SampleAD_11
//  109    {
//  110      AD_DATA8 = (LPLD_ADC_SE_Get(ADC1, 14)-tly_init-4); 
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       LPLD_ADC_SE_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable3_9
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+4
        LDR.W    R1,??DataTable3_22
        STR      R0,[R1, #+0]
//  111      PD_flag++;
        LDR.W    R0,??DataTable3_23
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable3_23
        STRB     R0,[R1, #+0]
//  112      if(PD_flag>=1)
        LDR.W    R0,??DataTable3_23
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SampleAD_12
//  113      { 
//  114        if(AD_DATA8>=10||AD_DATA8<-10)
        LDR.W    R0,??DataTable3_22
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        CMP      R0,#+20
        BCC.N    ??SampleAD_13
//  115        need_data8 += AD_DATA8;
        LDR.W    R0,??DataTable3_24
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_22
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3_24
        STR      R0,[R1, #+0]
//  116        if(need_data8<=0)
??SampleAD_13:
        LDR.W    R0,??DataTable3_24
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??SampleAD_14
//  117          need_data8=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_24
        STR      R0,[R1, #+0]
//  118       // AD_DATA8=0;
//  119        PD_flag=0;
??SampleAD_14:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_23
        STRB     R0,[R1, #+0]
//  120        
//  121      }
//  122      if(PDzero_flag>=5)
??SampleAD_12:
        LDR.W    R0,??DataTable3_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??SampleAD_11
//  123      {
//  124        need_data8=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_24
        STR      R0,[R1, #+0]
//  125        PDzero_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_20
        STRB     R0,[R1, #+0]
//  126      }
//  127   }
//  128 }  
??SampleAD_11:
        POP      {R0,PC}          ;; return
//  129 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  130 void CCD_GetResults(uint8 *pixel)
//  131 {
CCD_GetResults:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  132   uint8 i,j,k,temp;
//  133   leftvalue = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_25
        STR      R0,[R1, #+0]
//  134   rightvalue = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_26
        STR      R0,[R1, #+0]
//  135   Max_Pixel = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_27
        STRB     R0,[R1, #+0]
//  136   Min_Pixel = 255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable3_28
        STRB     R0,[R1, #+0]
//  137   //采集上次曝光得到的图像
//  138   //开始SI
//  139   TSL1401_SI(1);
        MOVS     R2,#+1
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  140   asm("nop");
        nop
//  141   TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  142   //delay();
//  143   TSL1401_SI(0);
        MOVS     R2,#+0
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  144   //delay();
//  145   //采集第1个点
//  146   pixel[0] = LPLD_ADC_SE_Get(ADC0, AO);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_ADC_SE_Get
        STRB     R0,[R4, #+0]
//  147   TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  148   gPixel_s[0] = pixel[0];
        LDRB     R0,[R4, #+0]
        LDR.W    R1,??DataTable3_29
        STRB     R0,[R1, #+0]
//  149   CCD_averl += pixel[0];
        LDRB     R0,[R4, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_30
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_30
        STR      R0,[R1, #+0]
//  150  // Max_Pixel = Max_Pixel>pixel[0] ? Max_Pixel : pixel[0];
//  151  // Min_Pixel = Min_Pixel<pixel[0] ? Min_Pixel : pixel[0];
//  152   //采集第2~128个点
//  153   for(i=1; i<64; i++)
        MOVS     R5,#+1
        B.N      ??CCD_GetResults_0
//  154   {
//  155     asm("nop");
??CCD_GetResults_1:
        nop
//  156     TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  157     //delay(); 
//  158     pixel[i] = LPLD_ADC_SE_Get(ADC0, AO);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_ADC_SE_Get
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R4]
//  159     TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  160     gPixel_s[i] = pixel[i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_29
        STRB     R0,[R5, R1]
//  161     CCD_averl += pixel[i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_30
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_30
        STR      R0,[R1, #+0]
//  162    // Max_Pixel = Max_Pixel>pixel[i] ? Max_Pixel : pixel[i];
//  163   //  Min_Pixel = Min_Pixel<pixel[i] ? Min_Pixel : pixel[i];
//  164   }
        ADDS     R5,R5,#+1
??CCD_GetResults_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+64
        BLT.N    ??CCD_GetResults_1
//  165   CCD_averl /=64;
        LDR.W    R0,??DataTable3_30
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1115684864
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable3_30
        STR      R0,[R1, #+0]
//  166   for(i=64; i<128; i++)
        MOVS     R5,#+64
        B.N      ??CCD_GetResults_2
//  167   {
//  168     asm("nop");
??CCD_GetResults_3:
        nop
//  169     TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  170     //delay(); 
//  171     pixel[i] = LPLD_ADC_SE_Get(ADC0, AO);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_ADC_SE_Get
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R4]
//  172     TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  173     gPixel_s[i] = pixel[i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_29
        STRB     R0,[R5, R1]
//  174     CCD_averr += pixel[i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R5, R4]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_31
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_31
        STR      R0,[R1, #+0]
//  175   //  Max_Pixel = Max_Pixel>pixel[i] ? Max_Pixel : pixel[i];
//  176    // Min_Pixel = Min_Pixel<pixel[i] ? Min_Pixel : pixel[i];
//  177   }
        ADDS     R5,R5,#+1
??CCD_GetResults_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BLT.N    ??CCD_GetResults_3
//  178   CCD_averr /= 64;
        LDR.W    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1115684864
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable3_31
        STR      R0,[R1, #+0]
//  179   //发送第129个clk
//  180   asm("nop");
        nop
//  181   TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  182   asm("nop");
        nop
//  183   TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  184   asm("nop");
        nop
//  185   for(j=0;j<128;j++)
        MOVS     R0,#+0
        B.N      ??CCD_GetResults_4
//  186   {
//  187     for(k=0;k<128-j;k++)
//  188     {
//  189       if(gPixel_s[k]>gPixel_s[k+1])
??CCD_GetResults_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable3_29
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable3_29
        LDRB     R3,[R1, R3]
        CMP      R2,R3
        BCS.N    ??CCD_GetResults_6
//  190       {
//  191         temp = gPixel_s[k];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable3_29
        LDRB     R2,[R1, R2]
//  192         gPixel_s[k] = gPixel_s[k+1];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable3_29
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R5,??DataTable3_29
        STRB     R3,[R1, R5]
//  193         gPixel_s[k+1] = temp;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable3_29
        ADDS     R3,R1,R3
        STRB     R2,[R3, #+1]
//  194       }
//  195     }
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
//  196   }
//  197     Max_Pixel = gPixel_s[98];
??CCD_GetResults_8:
        LDR.W    R0,??DataTable3_29
        LDRB     R0,[R0, #+98]
        LDR.W    R1,??DataTable3_27
        STRB     R0,[R1, #+0]
//  198     Min_Pixel = gPixel_s[30];
        LDR.W    R0,??DataTable3_29
        LDRB     R0,[R0, #+30]
        LDR.W    R1,??DataTable3_28
        STRB     R0,[R1, #+0]
//  199   for(i=0;i<128;i++)
        MOVS     R5,#+0
        B.N      ??CCD_GetResults_9
//  200     {
//  201       if(Max_Pixel-Min_Pixel>150)
//  202       {
//  203         if(pixel[i]<(CCD_averl+CCD_averr)/2&&pixel[i]<Min_Pixel+4) gPixel_t[i] = 0;
//  204         else gPixel_t[i] = 255;
//  205       }
//  206       else gPixel_t[i] = 255;
??CCD_GetResults_10:
        MOVS     R0,#+255
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_32
        STRB     R0,[R5, R1]
??CCD_GetResults_11:
        ADDS     R5,R5,#+1
??CCD_GetResults_9:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??CCD_GetResults_12
        LDR.W    R0,??DataTable3_27
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable3_28
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+151
        BLT.N    ??CCD_GetResults_10
        LDR.W    R0,??DataTable3_30
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_31
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
        LDR.W    R1,??DataTable3_28
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+4
        CMP      R0,R1
        BGE.N    ??CCD_GetResults_13
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable3_32
        STRB     R0,[R5, R1]
        B.N      ??CCD_GetResults_11
??CCD_GetResults_13:
        MOVS     R0,#+255
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.N    R1,??DataTable3_32
        STRB     R0,[R5, R1]
        B.N      ??CCD_GetResults_11
//  207     }
//  208 }
??CCD_GetResults_12:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  209 void ScanBrick(uint8 *pixel)
//  210 {
ScanBrick:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
//  211   uint8 i,j,flag = 0;
        MOVS     R4,#+0
//  212   if(temp_pwm-Servomiddle>-100&&temp_pwm-Servomiddle<100)
        LDR.N    R0,??DataTable3_33
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_34  ;; 0xc0a47400
        BL       __aeabi_dadd
        MOVS     R2,#-1
        LDR.N    R3,??DataTable3_35  ;; 0xc058ffff
        BL       __aeabi_cdrcmple
        BHI.W    ??ScanBrick_0
        LDR.N    R0,??DataTable3_33
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_34  ;; 0xc0a47400
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_36  ;; 0x40590000
        BL       __aeabi_cdcmple
        BCS.W    ??ScanBrick_0
//  213   {
//  214     if(CCD_averl>CCD_averr)
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_30
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??ScanBrick_1
//  215     {
//  216       if(CCD_averr<0.8*Max_Pixel)
        LDR.N    R0,??DataTable3_27
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable3_37  ;; 0x9999999a
        LDR.N    R3,??DataTable3_38  ;; 0x3fe99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??ScanBrick_0
//  217       {
//  218          for(i=64;i<113;i++)
        MOVS     R0,#+64
        B.N      ??ScanBrick_2
??ScanBrick_3:
        ADDS     R0,R0,#+1
??ScanBrick_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+113
        BGE.N    ??ScanBrick_0
//  219         {
//  220           flag = 0;
        MOVS     R4,#+0
//  221           for(j=i;j<i+10;j++)
        MOVS     R1,R0
        B.N      ??ScanBrick_4
//  222           {
//  223             if(pixel[j]!=0) 
//  224             {
//  225               flag = 1;
//  226               break;
//  227             }
//  228             up = j;
??ScanBrick_5:
        LDR.N    R2,??DataTable3_39
        STRB     R1,[R2, #+0]
        ADDS     R1,R1,#+1
??ScanBrick_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R0,#+10
        CMP      R1,R2
        BGE.N    ??ScanBrick_6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R2,[R1, R6]
        CMP      R2,#+0
        BEQ.N    ??ScanBrick_5
        MOVS     R4,#+1
//  229           }
//  230           if(flag!=1)
??ScanBrick_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ScanBrick_3
//  231           {
//  232             if((straight_r+straight_l)>1000)
        LDR.N    R1,??DataTable3_40
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable3_41
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        CMP      R1,#+1000
        BLS.N    ??ScanBrick_3
//  233             {
//  234               Brick_Dir = Left;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_42
        STRB     R0,[R1, #+0]
//  235               OLED_Print(60,2,"Left ");
        LDR.N    R2,??DataTable3_43
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_Print
//  236               Brick_Flag = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_44
        STRB     R0,[R1, #+0]
//  237               break;
        B.N      ??ScanBrick_0
//  238             }
//  239           }
//  240         }
//  241       }
//  242     }
//  243     else
//  244     {
//  245       if(CCD_averl<0.8*Max_Pixel)
??ScanBrick_1:
        LDR.N    R0,??DataTable3_27
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable3_37  ;; 0x9999999a
        LDR.N    R3,??DataTable3_38  ;; 0x3fe99999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable3_30
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??ScanBrick_0
//  246       {
//  247         for(i=64;i>19;i--)
        MOVS     R0,#+64
        B.N      ??ScanBrick_7
??ScanBrick_8:
        SUBS     R0,R0,#+1
??ScanBrick_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+20
        BLT.N    ??ScanBrick_0
//  248         {
//  249           flag = 0;
        MOVS     R4,#+0
//  250           for(j=i;j>i-10;j--)
        MOVS     R1,R0
        B.N      ??ScanBrick_9
//  251           {
//  252             if(pixel[j]!=0) 
//  253             {
//  254               flag = 1;
//  255               break;
//  256             }
//  257             up = j;
??ScanBrick_10:
        LDR.N    R2,??DataTable3_39
        STRB     R1,[R2, #+0]
        SUBS     R1,R1,#+1
??ScanBrick_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R2,R0,#+10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R2,R1
        BGE.N    ??ScanBrick_11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R2,[R1, R6]
        CMP      R2,#+0
        BEQ.N    ??ScanBrick_10
        MOVS     R4,#+1
//  258           }
//  259           if(flag!=1)
??ScanBrick_11:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ScanBrick_8
//  260           {
//  261             if((straight_r+straight_l)>1000)
        LDR.N    R1,??DataTable3_40
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable3_41
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        CMP      R1,#+1000
        BLS.N    ??ScanBrick_8
//  262             {
//  263               Brick_Dir = Right;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable3_42
        STRB     R0,[R1, #+0]
//  264               OLED_Print(60,2,"Right");
        LDR.N    R2,??DataTable3_45
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_Print
//  265               Brick_Flag = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_44
        STRB     R0,[R1, #+0]
//  266               break;
//  267             }
//  268           }
//  269         }
//  270       }   
//  271     }
//  272   }
//  273 }
??ScanBrick_0:
        POP      {R4-R6,PC}       ;; return
//  274 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 void BrickJudge()
//  276 {
BrickJudge:
        PUSH     {R7,LR}
//  277   int i=0;
        MOVS     R2,#+0
//  278   if(temp_pwm>Servomiddle-60&&temp_pwm<Servomiddle+60)
        LDR.N    R0,??DataTable3_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_46  ;; 0x451fe001
        BL       __aeabi_cfrcmple
        BHI.W    ??BrickJudge_0
        LDR.N    R0,??DataTable3_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_47  ;; 0x45276000
        BL       __aeabi_cfcmple
        BCS.W    ??BrickJudge_0
//  279   {
//  280     
//  281     for(i=0;i<128;i++)
        MOVS     R2,#+0
        B.N      ??BrickJudge_1
//  282     {
//  283       if(i>63&&i<128) {rightvalue += gPixel[i];}
??BrickJudge_2:
        SUBS     R0,R2,#+64
        CMP      R0,#+64
        BCS.N    ??BrickJudge_3
        LDR.N    R0,??DataTable3_26
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_48
        LDRB     R1,[R2, R1]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable3_26
        STR      R0,[R1, #+0]
//  284       if(i>0&&i<=63) {leftvalue += gPixel[i];}
??BrickJudge_3:
        SUBS     R0,R2,#+1
        CMP      R0,#+63
        BCS.N    ??BrickJudge_4
        LDR.N    R0,??DataTable3_25
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_48
        LDRB     R1,[R2, R1]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable3_25
        STR      R0,[R1, #+0]
//  285     }
??BrickJudge_4:
        ADDS     R2,R2,#+1
??BrickJudge_1:
        CMP      R2,#+128
        BLT.N    ??BrickJudge_2
//  286     rightvalue /=63;  
        LDR.N    R0,??DataTable3_26
        LDR      R0,[R0, #+0]
        MOVS     R1,#+63
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable3_26
        STR      R0,[R1, #+0]
//  287     leftvalue /=63;
        LDR.N    R0,??DataTable3_25
        LDR      R0,[R0, #+0]
        MOVS     R1,#+63
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable3_25
        STR      R0,[R1, #+0]
//  288     
//  289     if(Abs(rightvalue-leftvalue)>=50)   CCD_flag=1;
        LDR.N    R0,??DataTable3_26
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_25
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       Abs
        LDR.N    R1,??DataTable3_49  ;; 0x42480000
        BL       __aeabi_cfrcmple
        BHI.N    ??BrickJudge_5
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_50
        STRB     R0,[R1, #+0]
        B.N      ??BrickJudge_6
//  290     else CCD_flag=0;
??BrickJudge_5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_50
        STRB     R0,[R1, #+0]
//  291     
//  292     if(rightvalue-leftvalue>=50&&brick_flag==0&&(straight_r+straight_l)>3000)
??BrickJudge_6:
        LDR.N    R0,??DataTable3_26
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_25
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+50
        BLT.N    ??BrickJudge_7
        LDR.N    R0,??DataTable3_51
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??BrickJudge_7
        LDR.N    R0,??DataTable3_40
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_41
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVW     R1,#+3001
        CMP      R0,R1
        BCC.N    ??BrickJudge_7
//  293     {
//  294        brick_r_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_52
        STRB     R0,[R1, #+0]
//  295        brick_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_51
        STRB     R0,[R1, #+0]
//  296     }
//  297     if(leftvalue-rightvalue>=50&&brick_flag==0&&(straight_r+straight_l)>3000)
??BrickJudge_7:
        LDR.N    R0,??DataTable3_25
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_26
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+50
        BLT.N    ??BrickJudge_8
        LDR.N    R0,??DataTable3_51
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??BrickJudge_8
        LDR.N    R0,??DataTable3_40
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_41
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVW     R1,#+3001
        CMP      R0,R1
        BCC.N    ??BrickJudge_8
//  298     {
//  299        brick_l_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_53
        STRB     R0,[R1, #+0]
//  300        brick_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_51
        STRB     R0,[R1, #+0]
//  301     }
//  302     if(brick_flag==0&&Abs(leftvalue-rightvalue)<50)
??BrickJudge_8:
        LDR.N    R0,??DataTable3_51
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??BrickJudge_0
        LDR.N    R0,??DataTable3_25
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_26
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        BL       Abs
        LDR.N    R1,??DataTable3_49  ;; 0x42480000
        BL       __aeabi_cfcmple
        BCS.N    ??BrickJudge_0
//  303     {
//  304       brick_l_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_53
        STRB     R0,[R1, #+0]
//  305       brick_r_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_52
        STRB     R0,[R1, #+0]
//  306     }
//  307    }
//  308 }
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
        DC32     need_data0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     need_data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     need_data2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     need_data3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     need_data4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     need_data5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     need_data6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     need_data7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     PDzero_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     DC_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     AD_DATA8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     PD_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     need_data8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     leftvalue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     rightvalue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     Max_Pixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     Min_Pixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     gPixel_s

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     CCD_averl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     CCD_averr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     gPixel_t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     temp_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_34:
        DC32     0xc0a47400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_35:
        DC32     0xc058ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_36:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_37:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_38:
        DC32     0x3fe99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_39:
        DC32     up

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_40:
        DC32     straight_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_41:
        DC32     straight_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_42:
        DC32     Brick_Dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_43:
        DC32     `?<Constant "Left ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_44:
        DC32     Brick_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_45:
        DC32     `?<Constant "Right">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_46:
        DC32     0x451fe001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_47:
        DC32     0x45276000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_48:
        DC32     gPixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_49:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_50:
        DC32     CCD_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_51:
        DC32     brick_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_52:
        DC32     brick_r_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_53:
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
//  309 
//  310     /*
//  311     if(brick_r==0)
//  312     {
//  313       for(i=64;i<=127;i++)//right
//  314       {   
//  315         i++;
//  316         if(gPixel[i-1]<ad_brik&&gPixel[i]<ad_brik)
//  317         {
//  318           brick_r=1;  
//  319           break;
//  320         }
//  321       }
//  322     }
//  323     
//  324     if(brick_r==1&&brick_r_flag==0)
//  325     {
//  326       for(j=i-1;j<i+15;j++)
//  327       {
//  328         if(gPixel[j]<ad_brik)
//  329          value_r++;
//  330       }
//  331       if(value_r>=10)
//  332       {
//  333         value_r=0;
//  334         brick_r_flag=1;
//  335       }
//  336       else
//  337         brick_r=0;
//  338     }
//  339     
//  340     
//  341     if(brick_l==0)
//  342     {
//  343       for(i=63;i>=0;i--)//left
//  344       {   
//  345         i--;
//  346         if(gPixel[i+1]<ad_brik&&gPixel[i]<ad_brik&&brick_r==0)
//  347         {
//  348           brick_l=1;  
//  349           break;
//  350         }
//  351       }
//  352     }
//  353     
//  354     if(brick_l==1&&brick_l_flag==0)
//  355     {
//  356       for(j=i-1;j<i+15;j++)
//  357       {
//  358         if(gPixel[j]<ad_brik)
//  359          value_l++;
//  360       }
//  361       if(value_l>=10)
//  362       {
//  363         value_l=0;
//  364         brick_l_flag=1;
//  365       }
//  366     }
//  367     
//  368   }
//  369 }*/
//  370 
// 
//   478 bytes in section .bss
//     2 bytes in section .data
//    16 bytes in section .rodata
// 2 270 bytes in section .text
// 
// 2 270 bytes of CODE  memory
//    16 bytes of CONST memory
//   480 bytes of DATA  memory
//
//Errors: none
//Warnings: none
