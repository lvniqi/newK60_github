///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     14/May/2014  22:54:10 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\huang\Desktop\k60\lib\common\io.c              /
//    Command line =  C:\Users\huang\Desktop\k60\lib\common\io.c -D IAR -D    /
//                    LPLD_K60 -lCN C:\Users\huang\Desktop\k60\project\k60\ia /
//                    r\RAM\List\ -lB C:\Users\huang\Desktop\k60\project\k60\ /
//                    iar\RAM\List\ -o C:\Users\huang\Desktop\k60\project\k60 /
//                    \iar\RAM\Obj\ --no_cse --no_unroll --no_inline          /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\huang\Desktop\k60\project\k60\iar\..\app\ -I   /
//                    C:\Users\huang\Desktop\k60\project\k60\iar\..\..\..\lib /
//                    \common\ -I C:\Users\huang\Desktop\k60\project\k60\iar\ /
//                    ..\..\..\lib\cpu\ -I C:\Users\huang\Desktop\k60\project /
//                    \k60\iar\..\..\..\lib\cpu\headers\ -I                   /
//                    C:\Users\huang\Desktop\k60\project\k60\iar\..\..\..\lib /
//                    \drivers\adc16\ -I C:\Users\huang\Desktop\k60\project\k /
//                    60\iar\..\..\..\lib\drivers\enet\ -I                    /
//                    C:\Users\huang\Desktop\k60\project\k60\iar\..\..\..\lib /
//                    \drivers\lptmr\ -I C:\Users\huang\Desktop\k60\project\k /
//                    60\iar\..\..\..\lib\drivers\mcg\ -I                     /
//                    C:\Users\huang\Desktop\k60\project\k60\iar\..\..\..\lib /
//                    \drivers\pmc\ -I C:\Users\huang\Desktop\k60\project\k60 /
//                    \iar\..\..\..\lib\drivers\rtc\ -I                       /
//                    C:\Users\huang\Desktop\k60\project\k60\iar\..\..\..\lib /
//                    \drivers\uart\ -I C:\Users\huang\Desktop\k60\project\k6 /
//                    0\iar\..\..\..\lib\drivers\wdog\ -I                     /
//                    C:\Users\huang\Desktop\k60\project\k60\iar\..\..\..\lib /
//                    \platforms\ -I C:\Users\huang\Desktop\k60\project\k60\i /
//                    ar\..\..\..\lib\LPLD\ -I C:\Users\huang\Desktop\k60\pro /
//                    ject\k60\iar\..\..\..\lib\iar_config_files\ -Ol         /
//    List file    =  C:\Users\huang\Desktop\k60\project\k60\iar\RAM\List\io. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN uart_getchar
        EXTERN uart_getchar_present
        EXTERN uart_putchar

        PUBLIC char_present
        PUBLIC in_char
        PUBLIC out_char

// C:\Users\huang\Desktop\k60\lib\common\io.c
//    1 /*
//    2  * File:		io.c
//    3  * Purpose:		Serial Input/Output routines
//    4  *
//    5  * Notes:       TERMINAL_PORT defined in <board>.h
//    6  */
//    7 
//    8 #include "common.h"
//    9 #include "uart.h"
//   10 
//   11 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 char
//   13 in_char (void)
//   14 {
in_char:
        PUSH     {R7,LR}
//   15 	return uart_getchar(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       uart_getchar
        POP      {R1,PC}          ;; return
//   16 }
//   17 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void
//   19 out_char (char ch)
//   20 {
out_char:
        PUSH     {R7,LR}
//   21 	uart_putchar(TERM_PORT, ch);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       uart_putchar
//   22 }
        POP      {R0,PC}          ;; return
//   23 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 int
//   25 char_present (void)
//   26 {
char_present:
        PUSH     {R7,LR}
//   27 	return uart_getchar_present(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       uart_getchar_present
        POP      {R1,PC}          ;; return
//   28 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400eb000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   29 /********************************************************************/
// 
// 38 bytes in section .text
// 
// 38 bytes of CODE memory
//
//Errors: none
//Warnings: none
