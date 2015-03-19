///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\LPLD_Template.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\LPLD_Template.c"
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\LPLD_Template.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Abs
        EXTERN All_Init
        EXTERN BrickJudge
        EXTERN CCD_GetResults
        EXTERN CCD_flag
        EXTERN Control_Dianji
        EXTERN Control_Duoji
        EXTERN Control_Duoji_2
        EXTERN DMA_count_get
        EXTERN DMA_count_reset
        EXTERN Expected_Speed_l
        EXTERN Expected_Speed_r
        EXTERN Expected_l
        EXTERN Expected_r
        EXTERN LPLD_FTM0_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Get_b
        EXTERN LPLD_GPIO_Set_b
        EXTERN OLED_Change_Perameter
        EXTERN OLED_Disp_Paremeter
        EXTERN OLED_Fill
        EXTERN OLED_Print
        EXTERN OLED_PutPixel
        EXTERN OLED_writenum_1
        EXTERN OLED_writenum_3
        EXTERN OLED_writenum_4
        EXTERN SZ
        EXTERN SampleAD
        EXTERN ScanBrick
        EXTERN Speed_PID
        EXTERN Temp
        EXTERN Time
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN ave_error
        EXTERN brick_flag
        EXTERN dir
        EXTERN gPixel
        EXTERN gPixel_t
        EXTERN left
        EXTERN lock_pd
        EXTERN need_data0
        EXTERN need_data1
        EXTERN need_data2
        EXTERN need_data3
        EXTERN need_data4
        EXTERN need_data5
        EXTERN need_data6
        EXTERN need_data7
        EXTERN pd
        EXTERN pd_f
        EXTERN right
        EXTERN straight_speed
        EXTERN temp_pwm
        EXTERN tly_init
        EXTERN vspeed_l
        EXTERN vspeed_r
        EXTERN wan_Speed
        EXTERN zhi_Speed

        PUBLIC Beep
        PUBLIC Beep_Flag
        PUBLIC Brick
        PUBLIC Brick_Dir
        PUBLIC Brick_Flag
        PUBLIC CCD
        PUBLIC CCD_Mode
        PUBLIC LCD_Mode
        PUBLIC Straight_Brick
        PUBLIC ad_flag
        PUBLIC bs_up
        PUBLIC ccd_complete
        PUBLIC ccd_cownum
        PUBLIC ccd_flag
        PUBLIC isr_flag
        PUBLIC lcd_flag
        PUBLIC main
        PUBLIC pd_flag
        PUBLIC pipe_flag
        PUBLIC pipe_time
        PUBLIC pit_flag
        PUBLIC pit_isr0
        PUBLIC podao
        PUBLIC program
        PUBLIC spd
        PUBLIC speed_flag
        PUBLIC straight_l
        PUBLIC straight_r
        PUBLIC sz_flag
        PUBLIC tempbrick
        PUBLIC time_limit

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\app\LPLD_Template.c
//    1 /*
//    2  *程序说明：更换检测板，程序基本没问题，14.35S完成47.5M赛道
//    3  *
//    4  *引脚说明：↓
//    5  *
//    6  *8路电感：PTC8，PTC9，PTC10，PTC11，PTB4，PTB5，PTB6，PTB7
//    7  *
//    8  *电机4路PWM：PTD4，PTD5，PTD6，PTD7
//    9  *
//   10  *舵机1路PWM：PTA8
//   11  *
//   12  *欧姆龙编码器2路IO口：PTA27, PTC5
//   13  *
//   14  *蜂鸣器1路IO口：PTE26
//   15  *
//   16  *OLED4路IO口：PTB20，PTB21，PTB22，PTB23 
//   17  *
//   18  *4LED灯：PTE12，PTE11，PTE10，PTE7
//   19  *
//   20  *独立按键：PTD3，PTD2，PTD1，PTD0
//   21  *
//   22  *无线模块TXD RXD:PTE8 PTE9
//   23  *
//   24  *CCD2路IO 1路AD口：PTE24，PTE25  ADC0_DP3
//   25  *
//   26  *SD模块: PTE0, PTE1, PTE2, PTE3, PTE4, PTE5, PTE6
//   27  *
//   28  *拨码开关：PTD8，PTD9，PTD10，PTD11，PTD12，PTD13，PTD14，PTD15
//   29  *
//   30  *陀螺仪与加速度计：PTB10
//   31  */
//   32 
//   33 #include "includes.h"
//   34 /*
//   35  * 
//   36  *  变量定义
//   37  * 
//   38  *
//   39  */

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   40 uint16 pit_flag       = 0;
pit_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   41 uint16 sz_flag        = 0;//十字
sz_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   42 uint16 pd_flag        = 0;//坡道
pd_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   43 uint16 lcd_flag       = 0;
lcd_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   44 uint16 ccd_flag       = 0; 
ccd_flag:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   45 uint16 pipe_time      = 0;
pipe_time:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   46 uint8 ccd_cownum      = 0;
ccd_cownum:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   47 uint8 pipe_flag       = 0;
pipe_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   48 uint8 ad_flag         = 0;
ad_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   49 uint8 isr_flag        = 0;
isr_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   50 uint8 speed_flag      = 0;
speed_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   51 uint8 ccd_complete    = FALSE;
ccd_complete:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   52 uint8 Beep_Flag       = FALSE;
Beep_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   53 uint16 Beep           = 0;
Beep:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   54 uint16 tempbrick      = 0;
tempbrick:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   55 uint8 LCD_Mode        = 0;
LCD_Mode:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   56 uint16 time_limit     = 16000;
time_limit:
        DATA
        DC16 16000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   57 uint32 straight_l       =0;
straight_l:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 uint32 straight_r       =0;
straight_r:
        DS8 4
//   59 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 uint32 bs_up            =0;
bs_up:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   61 uint8 CCD =0;
CCD:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   62 uint8 CCD_Mode          =1;
CCD_Mode:
        DATA
        DC8 1
//   63 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   64 uint8 program =1;
program:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   65 uint8 spd =0;
spd:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   66 uint8 podao=0;
podao:
        DS8 1
//   67    

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   68 uint8 Brick_Flag      = 0;
Brick_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   69 uint8 Brick_Dir       = Straight;
Brick_Dir:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   70 uint16 Brick          = 0;
Brick:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   71 uint16 Straight_Brick = 0;
Straight_Brick:
        DS8 2
//   72 /*
//   73  * 
//   74  *  主函数
//   75  * 
//   76  *
//   77  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void main (void)
//   79 {
main:
        PUSH     {R7,LR}
//   80   All_Init();
        BL       All_Init
        B.N      ??main_0
//   81   while(1)
//   82   {
//   83 /*
//   84     OutData[0] = Expected_l;
//   85     OutData[1] = Expected_r;
//   86     
//   87     OutData[2] = Abs(temp_pwm-Servomiddle);
//   88     OutData[3] = Abs(Temp-Servomiddle);
//   89     OutPut_Data();
//   90  */  
//   91    
//   92     if(lcd_flag >= 150)
//   93     {
//   94       lcd_flag = 0;
//   95       if(Get_Switch(2)==0)
//   96       {
//   97          if(LCD_Mode != LCD_Mode3) OLED_Fill(0x00);
//   98          LCD_Mode = LCD_Mode3;
//   99          //OLED_CLS();
//  100          OLED_Fill(0x00);
//  101          for(ccd_cownum=10; ccd_cownum<123; ccd_cownum++)
//  102          {
//  103            OLED_writenum_1(0,0,CCD_flag);
//  104            if(CCD_Mode == 0) OLED_PutPixel(ccd_cownum,64-(gPixel[ccd_cownum]-64)/6);
//  105            if(CCD_Mode == 1)
//  106            {
//  107             OLED_PutPixel(ccd_cownum,25-gPixel_t[ccd_cownum]/10);
//  108             OLED_PutPixel(ccd_cownum,63-gPixel[ccd_cownum]/10);
//  109            }
//  110          }
//  111       } 
//  112       else if(Get_Switch(8)==0)
//  113       {
//  114          if(LCD_Mode != LCD_Mode2) OLED_Fill(0x00);
//  115          LCD_Mode = LCD_Mode2;
//  116          OLED_Disp_Paremeter();
//  117       }
//  118       else                  //采集数据显示（用时：3.4ms）
//  119       {
//  120          if(LCD_Mode != LCD_Mode1) OLED_Fill(0x00);//拨码开关转换清屏
??main_1:
        LDR.W    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??main_2
        MOVS     R0,#+0
        BL       OLED_Fill
//  121          LCD_Mode = LCD_Mode1;
??main_2:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1
        STRB     R0,[R1, #+0]
//  122          OLED_writenum_4(0,0,need_data0);   //汉字字符串显示E0
        LDR.W    R0,??DataTable1_1
        LDRH     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_writenum_4
//  123          OLED_writenum_4(30,0,need_data1);   //汉字字符串显示E1
        LDR.W    R0,??DataTable1_2
        LDRH     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+30
        BL       OLED_writenum_4
//  124          OLED_writenum_4(60,0,need_data2);   //汉字字符串显示E2
        LDR.W    R0,??DataTable1_3
        LDRH     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       OLED_writenum_4
//  125          OLED_writenum_4(90,0,need_data3);   //汉字字符串显示
        LDR.W    R0,??DataTable1_4
        LDRH     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+90
        BL       OLED_writenum_4
//  126          OLED_writenum_4(0,1,need_data4);//E25
        LDR.W    R0,??DataTable1_5
        LDRH     R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       OLED_writenum_4
//  127          OLED_writenum_4(30,1,need_data5);//B6
        LDR.W    R0,??DataTable1_6
        LDRH     R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+30
        BL       OLED_writenum_4
//  128          OLED_writenum_4(60,1,need_data6);//B7
        LDR.W    R0,??DataTable1_7
        LDRH     R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       OLED_writenum_4
//  129          OLED_writenum_4(90,1,need_data7);//B11
        LDR.W    R0,??DataTable1_8
        LDRH     R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+90
        BL       OLED_writenum_4
//  130          OLED_writenum_4(0,2,vspeed_l);//B7
        LDR.W    R0,??DataTable1_9
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_writenum_4
//  131          OLED_writenum_4(30,2,vspeed_r);
        LDR.W    R0,??DataTable1_10
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+30
        BL       OLED_writenum_4
//  132          OLED_writenum_4(60,2,left);
        LDR.W    R0,??DataTable1_11
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       OLED_writenum_4
//  133          OLED_writenum_4(90,2,right);//B7
        LDR.W    R0,??DataTable1_12
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+90
        BL       OLED_writenum_4
//  134          OLED_writenum_4(0,3,Expected_Speed_l);
        LDR.W    R0,??DataTable1_13
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       OLED_writenum_4
//  135          OLED_writenum_4(30,3,Expected_Speed_r);//B7
        LDR.W    R0,??DataTable1_14
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+30
        BL       OLED_writenum_4
//  136          OLED_writenum_4(60,3,tly_init);//B7
        LDR.W    R0,??DataTable1_15
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       OLED_writenum_4
//  137          OLED_writenum_4(90,3,brick_flag);
        LDR.W    R0,??DataTable1_16
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+90
        BL       OLED_writenum_4
//  138          OLED_writenum_4(0,4,Expected_l);
        LDR.W    R0,??DataTable1_17
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_writenum_4
//  139          OLED_writenum_4(30,4,Expected_r);
        LDR.W    R0,??DataTable1_18
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+30
        BL       OLED_writenum_4
//  140          OLED_writenum_4(60,4,straight_speed);
        LDR.W    R0,??DataTable1_19
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       OLED_writenum_4
//  141          
//  142          //OLED_writenum_1(96,4,LPLD_GPIO_Get_b(PTB, 1));
//  143          //OLED_writenum_1(102,4,LPLD_GPIO_Get_b(PTB, 2));
//  144          OLED_writenum_4(96,4,Abs(Temp-Servomiddle));
        LDR.W    R0,??DataTable1_20
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_21  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+96
        BL       OLED_writenum_4
//  145 
//  146          OLED_Print(0,5,"CCD: ");
        LDR.W    R2,??DataTable1_22
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       OLED_Print
//  147          OLED_writenum_1(50,5,CCD);
        LDR.W    R0,??DataTable1_23
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+50
        BL       OLED_writenum_1
//  148          
//  149          OLED_Print(80,5,"SZ: ");
        LDR.W    R2,??DataTable1_24
        MOVS     R1,#+5
        MOVS     R0,#+80
        BL       OLED_Print
//  150          OLED_writenum_1(102,5,SZ);
        LDR.W    R0,??DataTable1_25
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+102
        BL       OLED_writenum_1
//  151          
//  152          OLED_writenum_3(80,6,zhi_Speed);
        LDR.W    R0,??DataTable1_26
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+80
        BL       OLED_writenum_3
//  153          OLED_writenum_3(102,6,wan_Speed);
        LDR.W    R0,??DataTable1_27
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+102
        BL       OLED_writenum_3
//  154          
//  155          OLED_Print(0,6,"Podao: ");
        LDR.W    R2,??DataTable1_28
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_Print
//  156          OLED_writenum_1(50,6,podao);
        LDR.W    R0,??DataTable1_29
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+50
        BL       OLED_writenum_1
//  157          
//  158          OLED_Print(0,7,"Program: ");
        LDR.W    R2,??DataTable1_30
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       OLED_Print
//  159          OLED_writenum_1(50,7,program);
        LDR.W    R0,??DataTable1_31
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       OLED_writenum_1
//  160          //OLED_writenum_1(60,4,SZ);
//  161          //OLED_writenum_4(0,5,Time/10);
//  162          OLED_writenum_1(80,7,LPLD_GPIO_Get_b(PTD, 15));
        MOVS     R1,#+15
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+80
        BL       OLED_writenum_1
//  163          OLED_writenum_1(86,7,LPLD_GPIO_Get_b(PTD, 14));
        MOVS     R1,#+14
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+86
        BL       OLED_writenum_1
//  164          OLED_writenum_1(92,7,LPLD_GPIO_Get_b(PTD, 13));
        MOVS     R1,#+13
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+92
        BL       OLED_writenum_1
//  165          OLED_writenum_1(98,7,LPLD_GPIO_Get_b(PTD, 12));
        MOVS     R1,#+12
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+98
        BL       OLED_writenum_1
//  166          OLED_writenum_1(104,7,LPLD_GPIO_Get_b(PTD, 11));
        MOVS     R1,#+11
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+104
        BL       OLED_writenum_1
//  167          OLED_writenum_1(110,7,LPLD_GPIO_Get_b(PTD, 10));
        MOVS     R1,#+10
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+110
        BL       OLED_writenum_1
//  168          OLED_writenum_1(116,7,LPLD_GPIO_Get_b(PTD, 9));
        MOVS     R1,#+9
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+116
        BL       OLED_writenum_1
//  169          OLED_writenum_1(122,7,LPLD_GPIO_Get_b(PTD, 8));
        MOVS     R1,#+8
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+122
        BL       OLED_writenum_1
//  170       }
//  171     }
//  172     if(CCD)
??main_3:
        LDR.W    R0,??DataTable1_23
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_0
//  173     {
//  174       if(ccd_complete == TRUE) //CCD采集及处理（用时：1.4ms）
        LDR.W    R0,??DataTable1_32
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_0
//  175       {
//  176          ccd_complete = FALSE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_32
        STRB     R0,[R1, #+0]
//  177          CCD_GetResults(gPixel);
        LDR.W    R0,??DataTable1_33
        BL       CCD_GetResults
//  178          if(CCD_Mode == 1) ScanBrick(gPixel_t);
        LDR.W    R0,??DataTable1_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_4
        LDR.W    R0,??DataTable1_35
        BL       ScanBrick
//  179          if(CCD_Mode == 0) BrickJudge();
??main_4:
        LDR.W    R0,??DataTable1_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_0
        BL       BrickJudge
//  180       }
//  181     }
??main_0:
        LDR.W    R0,??DataTable1_36
        LDRH     R0,[R0, #+0]
        CMP      R0,#+150
        BLT.N    ??main_3
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_36
        STRH     R0,[R1, #+0]
        MOVS     R1,#+14
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+0
        BNE.N    ??main_5
        LDR.W    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??main_6
        MOVS     R0,#+0
        BL       OLED_Fill
??main_6:
        MOVS     R0,#+3
        LDR.W    R1,??DataTable1
        STRB     R0,[R1, #+0]
        MOVS     R0,#+0
        BL       OLED_Fill
        MOVS     R0,#+10
        LDR.W    R1,??DataTable1_37
        STRB     R0,[R1, #+0]
??main_7:
        LDR.W    R0,??DataTable1_37
        LDRB     R0,[R0, #+0]
        CMP      R0,#+123
        BGE.N    ??main_3
        LDR.W    R0,??DataTable1_38
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_writenum_1
        LDR.W    R0,??DataTable1_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_8
        LDR.W    R0,??DataTable1_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_33
        LDRB     R0,[R0, R1]
        SUBS     R0,R0,#+64
        MOVS     R1,#+6
        SDIV     R0,R0,R1
        RSBS     R1,R0,#+64
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable1_37
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPixel
??main_8:
        LDR.W    R0,??DataTable1_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_9
        LDR.W    R0,??DataTable1_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_35
        LDRB     R0,[R0, R1]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        RSBS     R1,R0,#+25
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable1_37
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPixel
        LDR.W    R0,??DataTable1_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable1_33
        LDRB     R0,[R0, R1]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        RSBS     R1,R0,#+63
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable1_37
        LDRB     R0,[R0, #+0]
        BL       OLED_PutPixel
??main_9:
        LDR.W    R0,??DataTable1_37
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_37
        STRB     R0,[R1, #+0]
        B.N      ??main_7
??main_5:
        MOVS     R1,#+8
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+0
        BNE.W    ??main_1
        LDR.W    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??main_10
        MOVS     R0,#+0
        BL       OLED_Fill
??main_10:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable1
        STRB     R0,[R1, #+0]
        BL       OLED_Disp_Paremeter
        B.N      ??main_3
//  182   }
//  183 }
//  184 /*
//  185  * PIT0中断服务子程序
//  186  *
//  187  * 中断最大用时：500us
//  188  *
//  189  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  190 void pit_isr0()
//  191 {
pit_isr0:
        PUSH     {R7,LR}
//  192   
//  193   
//  194   lcd_flag++;
        LDR.W    R0,??DataTable1_36
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_36
        STRH     R0,[R1, #+0]
//  195   if(Get_Switch(8)==1)
        MOVS     R1,#+8
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+1
        BNE.W    ??pit_isr0_0
//  196   {
//  197     Time++;
        LDR.W    R0,??DataTable1_39
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_39
        STRH     R0,[R1, #+0]
//  198     isr_flag++;
        LDR.W    R0,??DataTable1_40
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_40
        STRB     R0,[R1, #+0]
//  199     ad_flag++;
        LDR.W    R0,??DataTable1_41
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_41
        STRB     R0,[R1, #+0]
//  200     
//  201     SampleAD(); //1ms电感采集 5ms均值滤波（用时：68us）
        BL       SampleAD
//  202     
//  203     if(Get_Switch(1)==0) CCD=1;
        MOVS     R1,#+15
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+0
        BNE.N    ??pit_isr0_1
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_23
        STRB     R0,[R1, #+0]
        B.N      ??pit_isr0_2
//  204     else CCD=0;
??pit_isr0_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_23
        STRB     R0,[R1, #+0]
//  205     if((LPLD_GPIO_Get_b(PTB, 1)==0||LPLD_GPIO_Get_b(PTB, 2)==0)&&Time>5000) pipe_flag = 1;
??pit_isr0_2:
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+0
        BEQ.N    ??pit_isr0_3
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+0
        BNE.N    ??pit_isr0_4
??pit_isr0_3:
        LDR.W    R0,??DataTable1_39
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+5001
        CMP      R0,R1
        BLT.N    ??pit_isr0_4
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_42
        STRB     R0,[R1, #+0]
//  206     //////////十字延时//////////
//  207     if(dir==1) sz_flag++;
??pit_isr0_4:
        LDR.W    R0,??DataTable1_43
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit_isr0_5
        LDR.W    R0,??DataTable1_44
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_44
        STRH     R0,[R1, #+0]
//  208     if(sz_flag>=100)
??pit_isr0_5:
        LDR.W    R0,??DataTable1_44
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BLT.N    ??pit_isr0_6
//  209     {
//  210       sz_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_44
        STRH     R0,[R1, #+0]
//  211       dir=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_43
        STR      R0,[R1, #+0]
//  212     }
//  213     //////////坡道延时//////////
//  214     if(pd==1) pd_flag++; 
??pit_isr0_6:
        LDR.W    R0,??DataTable1_45
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit_isr0_7
        LDR.W    R0,??DataTable1_46
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_46
        STRH     R0,[R1, #+0]
//  215     if(pd_flag>350) lock_pd=0;
??pit_isr0_7:
        LDR.W    R0,??DataTable1_46
        LDRH     R0,[R0, #+0]
        CMP      R0,#+350
        BLE.N    ??pit_isr0_8
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_47
        STR      R0,[R1, #+0]
//  216     if(pd_flag>500) {pd_f=0;}
??pit_isr0_8:
        LDR.W    R0,??DataTable1_46
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BLE.N    ??pit_isr0_9
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_48
        STR      R0,[R1, #+0]
//  217     if(pd_flag>2000)
??pit_isr0_9:
        LDR.W    R0,??DataTable1_46
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2000
        BLE.N    ??pit_isr0_10
//  218     { 
//  219       pd=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_45
        STR      R0,[R1, #+0]
//  220       pd_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_46
        STRH     R0,[R1, #+0]
//  221     }
//  222     //////////CCD曝光延时//////////
//  223     if(CCD)
??pit_isr0_10:
        LDR.N    R0,??DataTable1_23
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??pit_isr0_11
//  224     {
//  225       ccd_flag++;
        LDR.W    R0,??DataTable1_49
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_49
        STRH     R0,[R1, #+0]
//  226       if(ccd_flag>=Integration)
        LDR.W    R0,??DataTable1_49
        LDRH     R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??pit_isr0_11
//  227       {
//  228         ccd_flag = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_49
        STRH     R0,[R1, #+0]
//  229         ccd_complete = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_32
        STRB     R0,[R1, #+0]
//  230       }
//  231     }
//  232    //////////砖头检测//////////
//  233 if(CCD_Mode == 0)
??pit_isr0_11:
        LDR.N    R0,??DataTable1_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit_isr0_12
//  234 {
//  235    if(brick_flag == 1)
        LDR.N    R0,??DataTable1_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit_isr0_12
//  236    {
//  237       tempbrick++;
        LDR.N    R0,??DataTable1_50
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_50
        STRH     R0,[R1, #+0]
//  238       if(tempbrick>500)
        LDR.N    R0,??DataTable1_50
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BLE.N    ??pit_isr0_12
//  239       {
//  240         tempbrick = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_50
        STRH     R0,[R1, #+0]
//  241         brick_flag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_16
        STRB     R0,[R1, #+0]
//  242       }
//  243    }
//  244 }
//  245    if(isr_flag >= 5)
??pit_isr0_12:
        LDR.N    R0,??DataTable1_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.W    ??pit_isr0_13
//  246    {  
//  247      isr_flag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_40
        STRB     R0,[R1, #+0]
//  248      speed_flag++;
        LDR.N    R0,??DataTable1_51
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_51
        STRB     R0,[R1, #+0]
//  249      if(Get_Switch(7)==1)
        MOVS     R1,#+9
        MOVS     R0,#+3
        BL       LPLD_GPIO_Get_b
        CMP      R0,#+1
        BNE.N    ??pit_isr0_14
//  250      {
//  251       program=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_31
        STRB     R0,[R1, #+0]
//  252       Control_Duoji();    //5ms舵机控制 （用时：180us）
        BL       Control_Duoji
        B.N      ??pit_isr0_15
//  253      }
//  254      else
//  255      {
//  256       program=2;
??pit_isr0_14:
        MOVS     R0,#+2
        LDR.N    R1,??DataTable1_31
        STRB     R0,[R1, #+0]
//  257       Control_Duoji_2();   //启动二号程序
        BL       Control_Duoji_2
//  258      }
//  259      
//  260      if(speed_flag>=2)
??pit_isr0_15:
        LDR.N    R0,??DataTable1_51
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BLT.W    ??pit_isr0_13
//  261      {
//  262         speed_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_51
        STRB     R0,[R1, #+0]
//  263         //////////编码器脉冲计数////////// （用时：10us）
//  264         if(DMA_count_get(DMA_CH0)<550)
        MOVS     R0,#+0
        BL       DMA_count_get
        MOVW     R1,#+550
        CMP      R0,R1
        BCS.N    ??pit_isr0_16
//  265            vspeed_l = DMA_count_get(DMA_CH0);
        MOVS     R0,#+0
        BL       DMA_count_get
        LDR.N    R1,??DataTable1_9
        STR      R0,[R1, #+0]
//  266             
//  267         if(Abs(temp_pwm-Servomiddle)<80)
??pit_isr0_16:
        LDR.N    R0,??DataTable1_52
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_21  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.N    R1,??DataTable1_53  ;; 0x42a00000
        BL       __aeabi_cfcmple
        BCS.N    ??pit_isr0_17
//  268            straight_l+=vspeed_l;
        LDR.N    R0,??DataTable1_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_9
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_54
        STR      R0,[R1, #+0]
        B.N      ??pit_isr0_18
//  269         else
//  270            straight_l=0;
??pit_isr0_17:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_54
        STR      R0,[R1, #+0]
//  271         DMA_count_reset(DMA_CH0);
??pit_isr0_18:
        MOVS     R0,#+0
        BL       DMA_count_reset
//  272         DMA_count_reset(DMA_CH0);
        MOVS     R0,#+0
        BL       DMA_count_reset
//  273             
//  274         if(DMA_count_get(DMA_CH10)<550)
        MOVS     R0,#+10
        BL       DMA_count_get
        MOVW     R1,#+550
        CMP      R0,R1
        BCS.N    ??pit_isr0_19
//  275            vspeed_r = DMA_count_get(DMA_CH10);
        MOVS     R0,#+10
        BL       DMA_count_get
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+0]
//  276             
//  277         if(Abs(temp_pwm-Servomiddle)<80)
??pit_isr0_19:
        LDR.N    R0,??DataTable1_52
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_21  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.N    R1,??DataTable1_53  ;; 0x42a00000
        BL       __aeabi_cfcmple
        BCS.N    ??pit_isr0_20
//  278            straight_r+=vspeed_r;
        LDR.N    R0,??DataTable1_55
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_10
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_55
        STR      R0,[R1, #+0]
        B.N      ??pit_isr0_21
//  279         else
//  280            straight_l=0;
??pit_isr0_20:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_54
        STR      R0,[R1, #+0]
//  281         DMA_count_reset(DMA_CH10);
??pit_isr0_21:
        MOVS     R0,#+10
        BL       DMA_count_reset
//  282         DMA_count_reset(DMA_CH10);
        MOVS     R0,#+10
        BL       DMA_count_reset
//  283 
//  284         //////////直道和大S/////////////    
//  285         if(Abs(ave_error)<30&&need_data2>100&&(need_data0>100||need_data1>100)&&Abs(temp_pwm-Servomiddle)<160)
        LDR.N    R0,??DataTable1_56
        LDR      R0,[R0, #+0]
        BL       Abs
        LDR.N    R1,??DataTable1_57  ;; 0x41f00000
        BL       __aeabi_cfcmple
        BCS.N    ??pit_isr0_22
        LDR.N    R0,??DataTable1_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BLT.N    ??pit_isr0_22
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??pit_isr0_23
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BLT.N    ??pit_isr0_22
??pit_isr0_23:
        LDR.N    R0,??DataTable1_52
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_21  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.N    R1,??DataTable1_58  ;; 0x43200000
        BL       __aeabi_cfcmple
        BCS.N    ??pit_isr0_22
//  286         {
//  287            bs_up+=(vspeed_l+vspeed_r)/2;  
        LDR.N    R0,??DataTable1_59
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_9
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable1_10
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_59
        STR      R0,[R1, #+0]
        B.N      ??pit_isr0_24
//  288         }
//  289         else
//  290            bs_up=0; 
??pit_isr0_22:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_59
        STR      R0,[R1, #+0]
//  291             
//  292         //////////干簧管停车//////////
//  293         if(pipe_flag == 0)
??pit_isr0_24:
        LDR.N    R0,??DataTable1_42
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit_isr0_25
//  294         {   
//  295            Control_Dianji();   //10ms速度给定（用时：84us）         
        BL       Control_Dianji
//  296            Speed_PID();        //10ms电机控制（用时：100us）
        BL       Speed_PID
        B.N      ??pit_isr0_26
//  297         }
//  298         else if(pipe_flag == 1&&pipe_time<50)
??pit_isr0_25:
        LDR.N    R0,??DataTable1_42
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit_isr0_27
        LDR.N    R0,??DataTable1_60
        LDRH     R0,[R0, #+0]
        CMP      R0,#+50
        BGE.N    ??pit_isr0_27
//  299         {
//  300            pipe_time++;
        LDR.N    R0,??DataTable1_60
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_60
        STRH     R0,[R1, #+0]
//  301            LPLD_FTM0_PWM_ChangeDuty(4, 0);
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  302            LPLD_FTM0_PWM_ChangeDuty(5, 100);
        MOVS     R1,#+100
        MOVS     R0,#+5
        BL       LPLD_FTM0_PWM_ChangeDuty
//  303            LPLD_FTM0_PWM_ChangeDuty(6, 100);
        MOVS     R1,#+100
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  304            LPLD_FTM0_PWM_ChangeDuty(7, 0);
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       LPLD_FTM0_PWM_ChangeDuty
        B.N      ??pit_isr0_26
//  305         }
//  306         else
//  307         {
//  308            LPLD_FTM0_PWM_ChangeDuty(4, 0);
??pit_isr0_27:
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       LPLD_FTM0_PWM_ChangeDuty
//  309            LPLD_FTM0_PWM_ChangeDuty(5, 0);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       LPLD_FTM0_PWM_ChangeDuty
//  310            LPLD_FTM0_PWM_ChangeDuty(6, 0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LPLD_FTM0_PWM_ChangeDuty
//  311            LPLD_FTM0_PWM_ChangeDuty(7, 0);
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       LPLD_FTM0_PWM_ChangeDuty
//  312         }
//  313         
//  314         if(Abs(temp_pwm-Servomiddle)>=50)
??pit_isr0_26:
        LDR.N    R0,??DataTable1_52
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_21  ;; 0xc0a47400
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        BL       Abs
        LDR.N    R1,??DataTable1_61  ;; 0x42480000
        BL       __aeabi_cfrcmple
        BHI.N    ??pit_isr0_28
//  315         {
//  316            straight_l=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_54
        STR      R0,[R1, #+0]
//  317            straight_r=0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_55
        STR      R0,[R1, #+0]
//  318         }
//  319         /* if((straight_l+straight_r)/2>5000)
//  320            {
//  321               Beep_Flag = TRUE;
//  322            } */
//  323             
//  324         //////////蜂鸣器//////////
//  325         if(Beep_Flag == TRUE)
??pit_isr0_28:
        LDR.N    R0,??DataTable1_62
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??pit_isr0_13
//  326         {
//  327            Beep_On();
        MOVS     R2,#+1
        MOVS     R1,#+26
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  328            Beep++;
        LDR.N    R0,??DataTable1_63
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_63
        STRH     R0,[R1, #+0]
//  329            if(Beep>=40)
        LDR.N    R0,??DataTable1_63
        LDRH     R0,[R0, #+0]
        CMP      R0,#+40
        BLT.N    ??pit_isr0_13
//  330            {
//  331               Beep_Off();            
        MOVS     R2,#+0
        MOVS     R1,#+26
        MOVS     R0,#+4
        BL       LPLD_GPIO_Set_b
//  332               Beep = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_63
        STRH     R0,[R1, #+0]
//  333               Beep_Flag = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_62
        STRB     R0,[R1, #+0]
        B.N      ??pit_isr0_13
//  334            }
//  335         }       
//  336      }
//  337    }
//  338   }
//  339   else
//  340   {
//  341     OLED_Change_Perameter();
??pit_isr0_0:
        BL       OLED_Change_Perameter
//  342   }
//  343 }
??pit_isr0_13:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     LCD_Mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     need_data0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     need_data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     need_data2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     need_data3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     need_data4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     need_data5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     need_data6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     need_data7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     vspeed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     vspeed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     Expected_Speed_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     Expected_Speed_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     tly_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     brick_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     Expected_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     Expected_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     straight_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     Temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     0xc0a47400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_22:
        DC32     `?<Constant "CCD: ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_23:
        DC32     CCD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_24:
        DC32     `?<Constant "SZ: ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_25:
        DC32     SZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_26:
        DC32     zhi_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_27:
        DC32     wan_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_28:
        DC32     `?<Constant "Podao: ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_29:
        DC32     podao

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_30:
        DC32     `?<Constant "Program: ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_31:
        DC32     program

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_32:
        DC32     ccd_complete

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_33:
        DC32     gPixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_34:
        DC32     CCD_Mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_35:
        DC32     gPixel_t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_36:
        DC32     lcd_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_37:
        DC32     ccd_cownum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_38:
        DC32     CCD_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_39:
        DC32     Time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_40:
        DC32     isr_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_41:
        DC32     ad_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_42:
        DC32     pipe_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_43:
        DC32     dir

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_44:
        DC32     sz_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_45:
        DC32     pd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_46:
        DC32     pd_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_47:
        DC32     lock_pd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_48:
        DC32     pd_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_49:
        DC32     ccd_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_50:
        DC32     tempbrick

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_51:
        DC32     speed_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_52:
        DC32     temp_pwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_53:
        DC32     0x42a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_54:
        DC32     straight_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_55:
        DC32     straight_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_56:
        DC32     ave_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_57:
        DC32     0x41f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_58:
        DC32     0x43200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_59:
        DC32     bs_up

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_60:
        DC32     pipe_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_61:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_62:
        DC32     Beep_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_63:
        DC32     Beep

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "CCD: ">`:
        DATA
        DC8 "CCD: "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SZ: ">`:
        DATA
        DC8 "SZ: "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Podao: ">`:
        DATA
        DC8 "Podao: "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Program: ">`:
        DATA
        DC8 "Program: "
        DC8 0, 0

        END
//  344 
// 
//    45 bytes in section .bss
//     4 bytes in section .data
//    36 bytes in section .rodata
// 2 208 bytes in section .text
// 
// 2 208 bytes of CODE  memory
//    36 bytes of CONST memory
//    49 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
