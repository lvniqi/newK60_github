///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:54
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\cpu\sysinit.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\cpu\sysinit.c" -D IAR -D
//        LPLD_K60 -lCN
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\List\"
//        -lB
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\List\"
//        -o
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files\IAR
//        Systems\Embedded Workbench 7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\app\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\cpu\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\cpu\headers\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\adc16\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\enet\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\lptmr\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\mcg\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\pmc\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\rtc\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\uart\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\wdog\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\platforms\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\LPLD\FatFs\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\LPLD\USB\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\iar_config_files\"
//        -Ol
//    List file    =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\List\sysinit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_PLL_Setup
        EXTERN printf
        EXTERN uart_init

        PUBLIC core_clk_khz
        PUBLIC core_clk_mhz
        PUBLIC fb_clk_init
        PUBLIC periph_clk_khz
        PUBLIC sysinit
        PUBLIC trace_clk_init

// C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\cpu\sysinit.c
//    1 /*
//    2  * File:        sysinit.c
//    3  * Purpose:     Kinetis Configuration
//    4  *              Initializes processor to a default state
//    5  *
//    6  * Notes:
//    7  *
//    8  */
//    9 
//   10 #include "common.h"
//   11 #include "sysinit.h"
//   12 #include "uart.h"
//   13 
//   14 /********************************************************************/
//   15 
//   16 /* ʵ��ϵͳʱ��Ƶ�� */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int core_clk_khz;
core_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int core_clk_mhz;
core_clk_mhz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int periph_clk_khz;
periph_clk_khz:
        DS8 4
//   20 
//   21 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void sysinit (void)
//   23 {
sysinit:
        PUSH     {R7,LR}
//   24         /*
//   25          * ʹ�����ж˿ڵ�ʱ��. Ϊ���������Ÿ��������ʹ������, ���Դ����������Ҫ������Щ.
//   26          */
//   27         SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   28                       | SIM_SCGC5_PORTB_MASK
//   29                       | SIM_SCGC5_PORTC_MASK
//   30                       | SIM_SCGC5_PORTD_MASK
//   31                       | SIM_SCGC5_PORTE_MASK );
        LDR.N    R0,??DataTable2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable2  ;; 0x40048038
        STR      R0,[R1, #+0]
//   32 
//   33  	/* ����ϵͳʱ�� */
//   34 	core_clk_mhz = LPLD_PLL_Setup(CORE_CLK_MHZ);
        MOVS     R0,#+100
        BL       LPLD_PLL_Setup
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   35 
//   36 	/*
//   37          * ��pll_init�����ķ���ֵ���������:core_clk_khz��periph_clk_khz(��kHzΪ��λ)
//   38 	 * ��Щ������������������
//   39 	 */
//   40 	core_clk_khz = core_clk_mhz * 1000;
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   41   	periph_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24)+ 1);
        LDR.N    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_3  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   42 
//   43   	/* 
//   44          *���ڷ����Ŀ��, ʹ��׷��ʱ�Ӻ�FlexBusʱ����
//   45   	 */
//   46 	trace_clk_init();
        BL       trace_clk_init
//   47   	fb_clk_init();
        BL       fb_clk_init
//   48 
//   49   	/* ʹ��ѡ�е� UART */
//   50 
//   51   	if (TERM_PORT == UART3_BASE_PTR)
//   52   	{
//   53                  /* ʹ�� PTC17 ���ŵ� UART3_TXD ����  */
//   54   		PORTC_PCR17 = PORT_PCR_MUX(0x3); // �����ŵ� ����3 �� UART
//   55 
//   56   		/* ʹ�� PTC16 ���ŵ� UART3_RXD ���� */
//   57   		PORTC_PCR16 = PORT_PCR_MUX(0x3); // �����ŵ� ����3 �� UART
//   58   	}
//   59 
//   60   	if (TERM_PORT == UART5_BASE_PTR)
//   61   	{
//   62                  /* ʹ�� PTE8 ���ŵ� UART5_TXD ����  */
//   63   		PORTE_PCR8 = PORT_PCR_MUX(0x3); // �����ŵ� ����3 �� UART
        MOV      R0,#+768
        LDR.N    R1,??DataTable2_5  ;; 0x4004d020
        STR      R0,[R1, #+0]
//   64 
//   65   		/* ʹ�� PTE9 ���ŵ� UART5_RXD ����  */
//   66   		PORTE_PCR9 = PORT_PCR_MUX(0x3); // �����ŵ� ����3 �� UART
        MOV      R0,#+768
        LDR.N    R1,??DataTable2_6  ;; 0x4004d024
        STR      R0,[R1, #+0]
//   67   	}
//   68   	/* UART0 and UART1 �� core clock �ṩʱ��Դ, ������������ UARTs ��
//   69          * peripheral clock �ṩʱ��Դ. ����Ҫ������������ĸ�ʱ����Ϊ uart_init �Ĳ���.
//   70          */
//   71         if ((TERM_PORT == UART0_BASE_PTR) | (TERM_PORT == UART1_BASE_PTR))
//   72            uart_init (TERM_PORT, core_clk_khz, TERMINAL_BAUD);
//   73         else
//   74   	   uart_init (TERM_PORT, periph_clk_khz, TERMINAL_BAUD);
        MOV      R2,#+9600
        LDR.N    R0,??DataTable2_4
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_7  ;; 0x400eb000
        BL       uart_init
//   75         
//   76 #if(defined(DEBUG_PRINT))  
//   77         // ��ӡϵͳƵ��
//   78         printf("Core Clock:%dMHz!\r\n", core_clk_mhz);
        LDR.N    R0,??DataTable2_1
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_8
        BL       printf
//   79         printf("Bus Clock:%dkHz!\r\n", periph_clk_khz);
        LDR.N    R0,??DataTable2_4
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_9
        BL       printf
//   80 #endif
//   81 }
        POP      {R0,PC}          ;; return
//   82 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void trace_clk_init(void)
//   84 {
//   85 	/* Set the trace clock to the core clock frequency */
//   86 	SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;
trace_clk_init:
        LDR.N    R0,??DataTable2_10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable2_10  ;; 0x40048004
        STR      R0,[R1, #+0]
//   87 
//   88 	/* Enable the TRACE_CLKOUT pin function on PTA6 (alt7 function) */
//   89 	PORTA_PCR6 = ( PORT_PCR_MUX(0x7));
        MOV      R0,#+1792
        LDR.N    R1,??DataTable2_11  ;; 0x40049018
        STR      R0,[R1, #+0]
//   90 }
        BX       LR               ;; return
//   91 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void fb_clk_init(void)
//   93 {
//   94 	/* Enable the clock to the FlexBus module */
//   95         SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
fb_clk_init:
        LDR.N    R0,??DataTable2_12  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_12  ;; 0x40048040
        STR      R0,[R1, #+0]
//   96 
//   97  	/* Enable the FB_CLKOUT function on PTC3 (alt5 function) */
//   98 	PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        MOV      R0,#+1280
        LDR.N    R1,??DataTable2_13  ;; 0x4004b00c
        STR      R0,[R1, #+0]
//   99 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x4004d020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x4004d024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     `?<Constant "Core Clock:%dMHz!\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     `?<Constant "Bus Clock:%dkHz!\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x4004b00c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Core Clock:%dMHz!\\r\\n">`:
        DATA
        DC8 "Core Clock:%dMHz!\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Bus Clock:%dkHz!\\r\\n">`:
        DATA
        DC8 "Bus Clock:%dkHz!\015\012"
        DC8 0

        END
//  100 /********************************************************************/
// 
//  12 bytes in section .bss
//  40 bytes in section .rodata
// 220 bytes in section .text
// 
// 220 bytes of CODE  memory
//  40 bytes of CONST memory
//  12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
