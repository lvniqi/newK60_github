///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:46:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\drivers\wdog\wdog.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\drivers\wdog\wdog.c" -D
//        IAR -D LPLD_K60 -lCN
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\List\"
//        -lB
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\List\"
//        -o
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\Obj\"
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\List\wdog.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC wdog_disable
        PUBLIC wdog_unlock

// C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\drivers\wdog\wdog.c
//    1 /*
//    2  * File:        wdog.c
//    3  * Purpose:     Provide common watchdog module routines
//    4  *
//    5  * Notes:		Need to add more functionality. Right now it
//    6  * 				is just a disable routine since we know almost
//    7  * 				all projects will need that.       
//    8  *              
//    9  */
//   10 
//   11 #include "common.h"
//   12 #include "wdog.h"
//   13        
//   14 /********************************************************************/
//   15 /*
//   16  * Watchdog timer disable routine
//   17  *
//   18  * Parameters:
//   19  * none
//   20  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void wdog_disable(void)
//   22 {
wdog_disable:
        PUSH     {R7,LR}
//   23 	/* First unlock the watchdog so that we can write to registers */
//   24 	wdog_unlock();
        BL       wdog_unlock
//   25 	
//   26 	/* Clear the WDOGEN bit to disable the watchdog */
//   27 	WDOG_STCTRLH &= ~WDOG_STCTRLH_WDOGEN_MASK;
        LDR.N    R0,??DataTable1  ;; 0x40052000
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1  ;; 0x40052000
        STRH     R0,[R1, #+0]
//   28 }
        POP      {R0,PC}          ;; return
//   29 /********************************************************************/
//   30 /*
//   31  * Watchdog timer unlock routine. Writing 0xC520 followed by 0xD928
//   32  * will unlock the write once registers in the WDOG so they are writable
//   33  * within the WCT period.
//   34  *
//   35  * Parameters:
//   36  * none
//   37  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   38 void wdog_unlock(void)
//   39 {
//   40   /* NOTE: DO NOT SINGLE STEP THROUGH THIS FUNCTION!!! */
//   41   /* There are timing requirements for the execution of the unlock. If
//   42    * you single step through the code you will cause the CPU to reset.
//   43    */
//   44 
//   45 	/* This sequence must execute within 20 clock cycles, so disable
//   46          * interrupts will keep the code atomic and ensure the timing.
//   47          */
//   48         DisableInterrupts;
wdog_unlock:
        CPSID i
//   49 	
//   50 	/* Write 0xC520 to the unlock register */
//   51 	WDOG_UNLOCK = 0xC520;
        MOVW     R0,#+50464
        LDR.N    R1,??DataTable1_1  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   52 	
//   53 	/* Followed by 0xD928 to complete the unlock */
//   54 	WDOG_UNLOCK = 0xD928;
        MOVW     R0,#+55592
        LDR.N    R1,??DataTable1_1  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   55 	
//   56 	/* Re-enable interrupts now that we are done */	
//   57        	EnableInterrupts;
        CPSIE i
//   58 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40052000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x4005200e

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   59 /********************************************************************/
// 
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
//
//Errors: none
//Warnings: none
