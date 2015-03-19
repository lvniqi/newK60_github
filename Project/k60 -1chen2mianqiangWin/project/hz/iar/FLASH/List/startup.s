///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       19/Mar/2015  11:05:16
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\lib\common\startup.c
//    Command line =  
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\lib\common\startup.c" -D IAR -D LPLD_K60 -lCN
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
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\startup.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN __VECTOR_RAM
        EXTERN __VECTOR_TABLE
        EXTERN write_vtor

        PUBLIC common_startup

// G:\GitHub\newK60_github\Project\k60 -1chen2mianqiangWin\lib\common\startup.c
//    1 /*
//    2  * File:    startup.c
//    3  * Purpose: Generic Kinetis startup code
//    4  *
//    5  * Notes:
//    6  */
//    7 
//    8 #include "common.h"
//    9 
//   10 #if (defined(IAR))
//   11 	#pragma section = ".data"
//   12 	#pragma section = ".data_init"
//   13 	#pragma section = ".bss"
//   14 	#pragma section = "CodeRelocate"
//   15 	#pragma section = "CodeRelocateRam"
//   16 #endif
//   17 
//   18 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   19 void
//   20 common_startup(void)
//   21 {
common_startup:
        PUSH     {R7,LR}
//   22 
//   23 #if (defined(CW))	
//   24     extern char __START_BSS[];
//   25     extern char __END_BSS[];
//   26     extern uint32 __DATA_ROM[];
//   27     extern uint32 __DATA_RAM[];
//   28     extern char __DATA_END[];
//   29 #endif
//   30 
//   31     /* ����һ���������ڿ���ѭ����ʹ�� */
//   32     uint32 n;
//   33 
//   34     /* Ϊ��ͬ�����ݶζ���ָ�롣
//   35      * ��Щ�������������ļ��л�ȡ��ֵ��ʼ��
//   36      */
//   37     uint8 * data_ram, * data_rom, * data_rom_end;
//   38     uint8 * bss_start, * bss_end;
//   39 
//   40 
//   41     /* ���������ļ��е�VECTOR_TABLE��VECTOR_RAM�ĵ�ַ */
//   42     extern uint32 __VECTOR_TABLE[];
//   43     extern uint32 __VECTOR_RAM[];
//   44 
//   45     /* ���ж��������Ƶ�RAM�� */
//   46     if (__VECTOR_RAM != __VECTOR_TABLE)
        LDR.N    R0,??common_startup_0
        LDR.N    R1,??common_startup_0+0x4
        CMP      R0,R1
        BEQ.N    ??common_startup_1
//   47     {
//   48         for (n = 0; n < 0x410; n++)
        MOVS     R0,#+0
        B.N      ??common_startup_2
//   49             __VECTOR_RAM[n] = __VECTOR_TABLE[n];
??common_startup_3:
        LDR.N    R1,??common_startup_0+0x4
        LDR      R1,[R1, R0, LSL #+2]
        LDR.N    R2,??common_startup_0
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
??common_startup_2:
        CMP      R0,#+1040
        BCC.N    ??common_startup_3
//   50     }
//   51     /* ���µ��ж�������ָ�븳��VTOR�Ĵ��� */
//   52     write_vtor((uint32)__VECTOR_RAM);
??common_startup_1:
        LDR.N    R0,??common_startup_0
        BL       write_vtor
//   53 
//   54     /* ���.data�εĵ�ַ(�ѳ�ʼ�������ݶ�) */
//   55 	#if (defined(CW))
//   56         data_ram = (uint8 *)__DATA_RAM;
//   57 	    data_rom = (uint8 *)__DATA_ROM;
//   58 	    data_rom_end  = (uint8 *)__DATA_END; /* �ö���CodeWarrior��������ΪRAM��ַ */
//   59 	    n = data_rom_end - data_ram;
//   60     #elif (defined(IAR))
//   61 		data_ram = __section_begin(".data");
        LDR.N    R1,??common_startup_0+0x8
//   62 		data_rom = __section_begin(".data_init");
        LDR.N    R2,??common_startup_0+0xC
//   63 		data_rom_end = __section_end(".data_init");
        LDR.N    R0,??common_startup_0+0x10
//   64 		n = data_rom_end - data_rom;
        SUBS     R0,R0,R2
        B.N      ??common_startup_4
//   65 	#endif		
//   66 		
//   67 	/* ��ROM�����ѳ�ʼ�������ݵ�RAM */
//   68 	while (n--)
//   69 		*data_ram++ = *data_rom++;
??common_startup_5:
        LDRB     R3,[R2, #+0]
        STRB     R3,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??common_startup_4:
        MOVS     R3,R0
        SUBS     R0,R3,#+1
        CMP      R3,#+0
        BNE.N    ??common_startup_5
//   70 	
//   71 	
//   72     /* ���.bss�εĵ�ַ (��ʼ��Ϊ0������) */
//   73 	#if (defined(CW))
//   74 		bss_start = (uint8 *)__START_BSS;
//   75 		bss_end = (uint8 *)__END_BSS;
//   76 	#elif (defined(IAR))
//   77 		bss_start = __section_begin(".bss");
        LDR.N    R1,??common_startup_0+0x14
//   78 		bss_end = __section_end(".bss");
        LDR.N    R0,??common_startup_0+0x18
//   79 	#endif
//   80 		
//   81 		
//   82 	
//   83 
//   84     /* �����ʼ��Ϊ0�����ݶ� */
//   85     n = bss_end - bss_start;
        SUBS     R0,R0,R1
        B.N      ??common_startup_6
//   86     while(n--)
//   87       *bss_start++ = 0;
??common_startup_7:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        ADDS     R1,R1,#+1
??common_startup_6:
        MOVS     R2,R0
        SUBS     R0,R2,#+1
        CMP      R2,#+0
        BNE.N    ??common_startup_7
//   88 
//   89 	/* ȡ������Ӧ�ô�ROM���Ƶ�RAM�Ĵ���εĵ�ַ��
//   90          * IAR��һ��Ԥ����Ĺؼ��ֿ��Ա�Ƕ����ĺ���Ϊ��RAMִ�С�
//   91          * �ں����ķ�������ǰ���"__ramfunc"�ؼ��ֿ��Խ��������Ϊ��RAM��ִ�С�
//   92          * ����:__ramfunc void foo(void);
//   93 	 */
//   94 	#if (defined(IAR))
//   95 		uint8* code_relocate_ram = __section_begin("CodeRelocateRam");
        LDR.N    R1,??common_startup_0+0x1C
//   96 		uint8* code_relocate = __section_begin("CodeRelocate");
        LDR.N    R2,??common_startup_0+0x20
//   97 		uint8* code_relocate_end = __section_end("CodeRelocate");
        LDR.N    R0,??common_startup_0+0x24
//   98 
//   99 		/* ��������ROM���Ƶ�RAM */
//  100 		n = code_relocate_end - code_relocate;
        SUBS     R0,R0,R2
        B.N      ??common_startup_8
//  101 		while (n--)
//  102 			*code_relocate_ram++ = *code_relocate++;
??common_startup_9:
        LDRB     R3,[R2, #+0]
        STRB     R3,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??common_startup_8:
        MOVS     R3,R0
        SUBS     R0,R3,#+1
        CMP      R3,#+0
        BNE.N    ??common_startup_9
//  103 	#endif
//  104 }
        POP      {R0,PC}          ;; return
        DATA
??common_startup_0:
        DC32     __VECTOR_RAM
        DC32     __VECTOR_TABLE
        DC32     SFB(`.data`)
        DC32     SFB(`.data_init`)
        DC32     SFE(`.data_init`)
        DC32     SFB(`.bss`)
        DC32     SFE(`.bss`)
        DC32     SFB(CodeRelocateRam)
        DC32     SFB(CodeRelocate)
        DC32     SFE(CodeRelocate)

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  105 /********************************************************************/
// 
// 156 bytes in section .text
// 
// 156 bytes of CODE memory
//
//Errors: none
//Warnings: none
