///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:46
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\General.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\General.c"
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\General.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DMA_count_Init
        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_FTM0_PWM_ChangeDuty
        EXTERN LPLD_FTM0_PWM_Init
        EXTERN LPLD_FTM0_PWM_Open
        EXTERN LPLD_FTM1_PWM_ChangeDuty
        EXTERN LPLD_FTM1_PWM_Init
        EXTERN LPLD_FTM1_PWM_Open
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Set_b
        EXTERN LPLD_PIT_Init
        EXTERN LPLD_UART_Init
        EXTERN OLED_Init
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_ui2f
        EXTERN flash_erase_sector
        EXTERN flash_init
        EXTERN flash_write
        EXTERN pd_speed
        EXTERN pit_isr0
        EXTERN wan_Speed
        EXTERN zhi_Speed

        PUBLIC All_Init
        PUBLIC CCD_Init
        PUBLIC Dif
        PUBLIC I
        PUBLIC IO_Init
        PUBLIC P
        PUBLIC Read_Flash
        PUBLIC Reset
        PUBLIC Reset_Flash
        PUBLIC SZ
        PUBLIC Write_Flash
        PUBLIC d
        PUBLIC p
        PUBLIC t
        PUBLIC v
        PUBLIC wan_speed
        PUBLIC zhi_speed

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\General.c
//    1 #include "General.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 float P=0,I=0,Dif=0,p=0,d=0,t=0,v=0;
P:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
I:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Dif:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
p:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
d:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
t:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
v:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 int zhi_speed=0,wan_speed=0,SZ=0;
zhi_speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
wan_speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
SZ:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    5 uint32 Reset[10] = {340,80,10,17,40,11000,32,220,155,150};
Reset:
        DATA
        DC32 340, 80, 10, 17, 40, 11000, 32, 220, 155, 150
//    6 
//    7 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    8 void Read_Flash()
//    9 {
Read_Flash:
        PUSH     {R7,LR}
//   10   P = (flash_read(200,0,uint32));
        MOVS     R0,#+409600
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+0]
//   11   I = (flash_read(200,4,uint32));
        LDR.W    R0,??DataTable3_1  ;; 0x64004
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   12   Dif = (flash_read(200,8,uint32));
        LDR.W    R0,??DataTable3_3  ;; 0x64008
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_4
        STR      R0,[R1, #+0]
//   13   p = flash_read(200,12,uint32);
        LDR.W    R0,??DataTable3_5  ;; 0x6400c
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_6
        STR      R0,[R1, #+0]
//   14   d = flash_read(200,16,uint32);
        LDR.W    R0,??DataTable3_7  ;; 0x64010
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//   15   t = flash_read(200,20,uint32);
        LDR.W    R0,??DataTable3_9  ;; 0x64014
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_10
        STR      R0,[R1, #+0]
//   16   v = (flash_read(200,24,uint32));
        LDR.W    R0,??DataTable3_11  ;; 0x64018
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_12
        STR      R0,[R1, #+0]
//   17   zhi_speed = flash_read(200,28,uint32);
        LDR.W    R0,??DataTable3_13  ;; 0x6401c
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_14
        STR      R0,[R1, #+0]
//   18   wan_speed = flash_read(200,32,uint32);
        LDR.W    R0,??DataTable3_15  ;; 0x64020
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_16
        STR      R0,[R1, #+0]
//   19   pd_speed = flash_read(200,36,uint32);
        LDR.W    R0,??DataTable3_17  ;; 0x64024
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_18
        STR      R0,[R1, #+0]
//   20 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void Write_Flash()
//   22 {
Write_Flash:
        PUSH     {R7,LR}
//   23   flash_erase_sector(200);
        MOVS     R0,#+200
        BL       flash_erase_sector
//   24   flash_write(200,0,(uint32)P);
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+200
        BL       flash_write
//   25   flash_write(200,4,(uint32)I);
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+200
        BL       flash_write
//   26   flash_write(200,8,(uint32)Dif);
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+8
        MOVS     R0,#+200
        BL       flash_write
//   27   flash_write(200,12,(uint32)p);
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+12
        MOVS     R0,#+200
        BL       flash_write
//   28   flash_write(200,16,(uint32)d);
        LDR.N    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+16
        MOVS     R0,#+200
        BL       flash_write
//   29   flash_write(200,20,(uint32)t);
        LDR.N    R0,??DataTable3_10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+20
        MOVS     R0,#+200
        BL       flash_write
//   30   flash_write(200,24,(uint32)v);
        LDR.N    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+24
        MOVS     R0,#+200
        BL       flash_write
//   31   flash_write(200,28,zhi_speed);
        LDR.N    R0,??DataTable3_14
        LDR      R2,[R0, #+0]
        MOVS     R1,#+28
        MOVS     R0,#+200
        BL       flash_write
//   32   flash_write(200,32,wan_speed);
        LDR.N    R0,??DataTable3_16
        LDR      R2,[R0, #+0]
        MOVS     R1,#+32
        MOVS     R0,#+200
        BL       flash_write
//   33   flash_write(200,36,pd_speed);
        LDR.N    R0,??DataTable3_18
        LDR      R2,[R0, #+0]
        MOVS     R1,#+36
        MOVS     R0,#+200
        BL       flash_write
//   34 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void Reset_Flash()
//   36 {
Reset_Flash:
        PUSH     {R7,LR}
//   37   flash_erase_sector(200);
        MOVS     R0,#+200
        BL       flash_erase_sector
//   38   flash_write(200,0,Reset[0]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+200
        BL       flash_write
//   39   flash_write(200,4,Reset[1]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+4]
        MOVS     R1,#+4
        MOVS     R0,#+200
        BL       flash_write
//   40   flash_write(200,8,Reset[2]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+8]
        MOVS     R1,#+8
        MOVS     R0,#+200
        BL       flash_write
//   41   flash_write(200,12,Reset[3]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+12]
        MOVS     R1,#+12
        MOVS     R0,#+200
        BL       flash_write
//   42   flash_write(200,16,Reset[4]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+16]
        MOVS     R1,#+16
        MOVS     R0,#+200
        BL       flash_write
//   43   flash_write(200,20,Reset[5]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+20]
        MOVS     R1,#+20
        MOVS     R0,#+200
        BL       flash_write
//   44   flash_write(200,24,Reset[6]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+24]
        MOVS     R1,#+24
        MOVS     R0,#+200
        BL       flash_write
//   45   flash_write(200,28,Reset[7]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+28]
        MOVS     R1,#+28
        MOVS     R0,#+200
        BL       flash_write
//   46   flash_write(200,32,Reset[8]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+32]
        MOVS     R1,#+32
        MOVS     R0,#+200
        BL       flash_write
//   47   flash_write(200,36,Reset[9]);
        LDR.N    R0,??DataTable3_19
        LDR      R2,[R0, #+36]
        MOVS     R1,#+36
        MOVS     R0,#+200
        BL       flash_write
//   48 }
        POP      {R0,PC}          ;; return
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void IO_Init()
//   51 {
IO_Init:
        PUSH     {R7,LR}
//   52   LPLD_GPIO_Init(PTB,1,DIR_INPUT,INPUT_PUP,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       LPLD_GPIO_Init
//   53   LPLD_GPIO_Init(PTB,2,DIR_INPUT,INPUT_PUP,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       LPLD_GPIO_Init
//   54    //LPLD_GPIO_Init(PTB,2,DIR_OUTPUT,OUTPUT_L,IRQC_DIS);
//   55 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   56 void CCD_Init()
//   57 {
CCD_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//   58   LPLD_GPIO_Init(PTE,SI,DIR_OUTPUT,OUTPUT_L,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       LPLD_GPIO_Init
//   59   LPLD_GPIO_Init(PTE,CLK,DIR_OUTPUT,OUTPUT_L,IRQC_DIS);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Init
//   60   LPLD_ADC_Chn_Enable(ADC0, AO);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_ADC_Chn_Enable
//   61   uint8 i;
//   62    //单次采集曝光处理
//   63   TSL1401_SI(1);
        MOVS     R2,#+1
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//   64   asm("nop");
        nop
//   65   TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//   66   //delay();
//   67   TSL1401_SI(0);
        MOVS     R2,#+0
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//   68   //发送第1个CLK
//   69   asm("nop");
        nop
//   70   TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//   71   
//   72   //发送第2~129个CLK
//   73   for(i=1; i<129; i++)
        MOVS     R4,#+1
        B.N      ??CCD_Init_0
//   74   {
//   75     asm("nop");
??CCD_Init_1:
        nop
//   76     TSL1401_CLK(1);
        MOVS     R2,#+1
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//   77     asm("nop"); 
        nop
//   78     TSL1401_CLK(0);
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//   79   }
        ADDS     R4,R4,#+1
??CCD_Init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+129
        BLT.N    ??CCD_Init_1
//   80 }
        POP      {R0,R1,R4,PC}    ;; return
//   81 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 void All_Init()
//   83 {
All_Init:
        PUSH     {R7,LR}
//   84    Beep_Init();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+26
        MOVS     R0,#+4
        BL       LPLD_GPIO_Init
//   85    Switch_Init();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
//   86    Button_Init();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       LPLD_GPIO_Init
//   87    Read_Flash();
        BL       Read_Flash
//   88    flash_init();
        BL       flash_init
//   89    LPLD_ADC_Init(ADC0, MODE_8, CONV_SING);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LPLD_ADC_Init
//   90    LPLD_ADC_Init(ADC1, MODE_8, CONV_SING);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       LPLD_ADC_Init
//   91    LPLD_ADC_Chn_Enable(ADC1, 4);
        MOVS     R1,#+4
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//   92    LPLD_ADC_Chn_Enable(ADC1, 5);
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//   93    LPLD_ADC_Chn_Enable(ADC1, 6);
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//   94    LPLD_ADC_Chn_Enable(ADC1, 7);
        MOVS     R1,#+7
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//   95    LPLD_ADC_Chn_Enable(ADC1, 10);
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//   96    LPLD_ADC_Chn_Enable(ADC1, 11);
        MOVS     R1,#+11
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//   97    LPLD_ADC_Chn_Enable(ADC1, 12);
        MOVS     R1,#+12
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//   98    LPLD_ADC_Chn_Enable(ADC1, 13);
        MOVS     R1,#+13
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//   99    LPLD_ADC_Chn_Enable(ADC1, 14);//陀螺仪 
        MOVS     R1,#+14
        MOVS     R0,#+1
        BL       LPLD_ADC_Chn_Enable
//  100    //LPLD_ADC_Chn_Enable(ADC1, 20);//电池电压 
//  101    LPLD_PIT_Init(PIT0,1000,pit_isr0);                         				   //初始化PIT0，定时时间为： 1000us
        LDR.N    R2,??DataTable3_20
        MOV      R1,#+1000
        MOVS     R0,#+0
        BL       LPLD_PIT_Init
//  102    CCD_Init();
        BL       CCD_Init
//  103    LPLD_UART_Init(Wireless,115200);
        MOVS     R1,#+115200
        MOVS     R0,#+5
        BL       LPLD_UART_Init
//  104    LPLD_FTM0_PWM_Init(10000);
        MOVW     R0,#+10000
        BL       LPLD_FTM0_PWM_Init
//  105    LPLD_FTM1_PWM_Init(50);
        MOVS     R0,#+50
        BL       LPLD_FTM1_PWM_Init
//  106    LPLD_FTM0_PWM_Open(4,0);
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_Open
//  107    LPLD_FTM0_PWM_ChangeDuty(4,0);
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  108    LPLD_FTM0_PWM_Open(5,0);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       LPLD_FTM0_PWM_Open
//  109    LPLD_FTM0_PWM_ChangeDuty(5,0);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       LPLD_FTM0_PWM_ChangeDuty
//  110    LPLD_FTM0_PWM_Open(6,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_Open
//  111    LPLD_FTM0_PWM_ChangeDuty(6,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  112    LPLD_FTM0_PWM_Open(7,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       LPLD_FTM0_PWM_Open
//  113    LPLD_FTM0_PWM_ChangeDuty(7,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       LPLD_FTM0_PWM_ChangeDuty
//  114    LPLD_FTM1_PWM_Open(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LPLD_FTM1_PWM_Open
//  115    LPLD_FTM1_PWM_ChangeDuty(0,Servomiddle);
        MOVW     R1,#+2618
        MOVS     R0,#+0
        BL       LPLD_FTM1_PWM_ChangeDuty
//  116    DMA_count_Init(DMA_CH0, PTC5, 3000, DMA_rising);                                //欧姆龙1  PTC5
        MOVS     R3,#+1
        MOVW     R2,#+3000
        MOVS     R1,#+69
        MOVS     R0,#+0
        BL       DMA_count_Init
//  117    DMA_count_Init(DMA_CH10, PTA27, 3000, DMA_rising);                              //欧姆龙2  PTA27 
        MOVS     R3,#+1
        MOVW     R2,#+3000
        MOVS     R1,#+27
        MOVS     R0,#+10
        BL       DMA_count_Init
//  118    OLED_Init(); 
        BL       OLED_Init
//  119    zhi_Speed = zhi_speed;
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_21
        STR      R0,[R1, #+0]
//  120    wan_Speed = wan_speed;
        LDR.N    R0,??DataTable3_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_22
        STR      R0,[R1, #+0]
//  121    IO_Init();
        BL       IO_Init
//  122 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x64004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x64008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     Dif

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x6400c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x64010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x64014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x64018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     v

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x6401c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     zhi_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x64020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     wan_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0x64024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     pd_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     Reset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     pit_isr0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     zhi_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     wan_Speed

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
//    40 bytes in section .bss
//    40 bytes in section .data
// 1 194 bytes in section .text
// 
// 1 194 bytes of CODE memory
//    80 bytes of DATA memory
//
//Errors: none
//Warnings: none
