///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\VisualScope.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\VisualScope.c" -D
//        IAR -D LPLD_K60 -lCN
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\VisualScope.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_PutChar
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_memclr4

        PUBLIC CRC_CHECK
        PUBLIC OutData
        PUBLIC OutPut_Data
        PUBLIC OutPut_Sonic
        PUBLIC Send_Data
        PUBLIC alf

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\VisualScope.c
//    1 #include  "VisualScope.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    2 float OutData[4] = { 0 };
OutData:
        DS8 16

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//    3 const char alf[10] = "0123456789";
alf:
        DATA
        DC8 30H, 31H, 32H, 33H, 34H, 35H, 36H, 37H
        DC8 38H, 39H
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
//    5 {
CRC_CHECK:
        PUSH     {R4,R5}
//    6     unsigned short CRC_Temp;
//    7     unsigned char i,j;
//    8     CRC_Temp = 0xffff;
        MOVW     R2,#+65535
//    9 
//   10     for (i=0;i<CRC_CNT; i++){      
        MOVS     R3,#+0
        B.N      ??CRC_CHECK_0
??CRC_CHECK_1:
        ADDS     R3,R3,#+1
??CRC_CHECK_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCS.N    ??CRC_CHECK_2
//   11         CRC_Temp ^= Buf[i];
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R4,[R3, R0]
        EORS     R2,R4,R2
//   12         for (j=0;j<8;j++) {
        MOVS     R4,#+0
        B.N      ??CRC_CHECK_3
//   13             if (CRC_Temp & 0x01)
//   14                 CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
//   15             else
//   16                 CRC_Temp = CRC_Temp >> 1;
??CRC_CHECK_4:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R2,R2,#+1
??CRC_CHECK_5:
        ADDS     R4,R4,#+1
??CRC_CHECK_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??CRC_CHECK_1
        LSLS     R5,R2,#+31
        BPL.N    ??CRC_CHECK_4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R2,R2,#+1
        EOR      R2,R2,#0xA000
        EORS     R2,R2,#0x1
        B.N      ??CRC_CHECK_5
//   17         }
//   18     }
//   19     return(CRC_Temp);
??CRC_CHECK_2:
        MOVS     R0,R2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,R5}
        BX       LR               ;; return
//   20 }
//   21 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void OutPut_Data(void)
//   23 {
OutPut_Data:
        PUSH     {R4,LR}
        SUB      SP,SP,#+48
//   24   int temp[4] = {0};
        ADD      R0,SP,#+28
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   25   unsigned int temp1[4] = {0};
        ADD      R0,SP,#+12
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   26   unsigned char databuf[10] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//   27   unsigned char i;
//   28   unsigned short CRC16 = 0;
        MOVS     R0,#+0
//   29   for(i=0;i<4;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_0
//   30    {
//   31     
//   32     temp[i]  = (int)OutData[i];
??OutPut_Data_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_f2iz
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+28
        STR      R0,[R1, R4, LSL #+2]
//   33     temp1[i] = (unsigned int)temp[i];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+28
        LDR      R0,[R0, R4, LSL #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+12
        STR      R0,[R1, R4, LSL #+2]
//   34     
//   35    }
        ADDS     R4,R4,#+1
??OutPut_Data_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??OutPut_Data_1
//   36    
//   37   for(i=0;i<4;i++) 
        MOVS     R4,#+0
        B.N      ??OutPut_Data_2
//   38   {
//   39     databuf[i*2]   = (unsigned char)(temp1[i]%256);
??OutPut_Data_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        LDR      R0,[R0, R4, LSL #+2]
        MOV      R1,#+256
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        STRB     R2,[R0, R4, LSL #+1]
//   40     databuf[i*2+1] = (unsigned char)(temp1[i]/256);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        LDR      R0,[R0, R4, LSL #+2]
        LSRS     R0,R0,#+8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+0
        ADDS     R1,R1,R4, LSL #+1
        STRB     R0,[R1, #+1]
//   41   }
        ADDS     R4,R4,#+1
??OutPut_Data_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??OutPut_Data_3
//   42   
//   43   CRC16 = CRC_CHECK(databuf,8);
        MOVS     R1,#+8
        ADD      R0,SP,#+0
        BL       CRC_CHECK
//   44   databuf[8] = CRC16%256;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R1,#+256
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        STRB     R2,[SP, #+8]
//   45   databuf[9] = CRC16/256;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R1,#+256
        SDIV     R0,R0,R1
        STRB     R0,[SP, #+9]
//   46   
//   47   for(i=0;i<10;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_4
//   48     LPLD_UART_PutChar(UART5,databuf[i]);
??OutPut_Data_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R1,[R4, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
        ADDS     R4,R4,#+1
??OutPut_Data_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BLT.N    ??OutPut_Data_5
//   49 }
        ADD      SP,SP,#+48
        POP      {R4,PC}          ;; return
//   50 
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void Send_Data(uint8 number)
//   53 {
Send_Data:
        PUSH     {R3-R9,LR}
        MOVS     R6,R0
//   54   int wan,qian,bai,shi,ge=0;
        MOVS     R4,#+0
//   55   wan = (int)(OutData[number])%100000/10000;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_1  ;; 0x186a0
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOVW     R1,#+10000
        SDIV     R5,R0,R1
//   56   qian = (int)(OutData[number])%10000/1000;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_f2iz
        MOVW     R1,#+10000
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOV      R1,#+1000
        SDIV     R7,R0,R1
//   57   bai = (int)(OutData[number])%1000/100;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_f2iz
        MOV      R1,#+1000
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOVS     R1,#+100
        SDIV     R8,R0,R1
//   58   shi = (int)(OutData[number])%100/10;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_f2iz
        MOVS     R1,#+100
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOVS     R1,#+10
        SDIV     R9,R0,R1
//   59   ge = (int)(OutData[number])%10;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_f2iz
        MOVS     R1,#+10
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOVS     R4,R0
//   60   
//   61   if(wan!=0)
        CMP      R5,#+0
        BEQ.N    ??Send_Data_0
//   62   {
//   63     LPLD_UART_PutChar(Wireless,alf[wan]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R5, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   64     LPLD_UART_PutChar(Wireless,alf[qian]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R7, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   65     LPLD_UART_PutChar(Wireless,alf[bai]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R8, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   66     LPLD_UART_PutChar(Wireless,alf[shi]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R9, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   67     LPLD_UART_PutChar(Wireless,alf[ge]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R4, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
        B.N      ??Send_Data_1
//   68   }
//   69   else if(qian!=0)
??Send_Data_0:
        CMP      R7,#+0
        BEQ.N    ??Send_Data_2
//   70   {
//   71     LPLD_UART_PutChar(Wireless,alf[qian]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R7, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   72     LPLD_UART_PutChar(Wireless,alf[bai]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R8, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   73     LPLD_UART_PutChar(Wireless,alf[shi]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R9, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   74     LPLD_UART_PutChar(Wireless,alf[ge]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R4, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
        B.N      ??Send_Data_1
//   75   }
//   76     else if(bai!=0)
??Send_Data_2:
        CMP      R8,#+0
        BEQ.N    ??Send_Data_3
//   77     {
//   78     LPLD_UART_PutChar(Wireless,alf[bai]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R8, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   79     LPLD_UART_PutChar(Wireless,alf[shi]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R9, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   80     LPLD_UART_PutChar(Wireless,alf[ge]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R4, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
        B.N      ??Send_Data_1
//   81     }
//   82     else if(shi!=0)
??Send_Data_3:
        CMP      R9,#+0
        BEQ.N    ??Send_Data_4
//   83     {
//   84     LPLD_UART_PutChar(Wireless,alf[shi]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R9, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   85     LPLD_UART_PutChar(Wireless,alf[ge]);
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R4, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
        B.N      ??Send_Data_1
//   86     }
//   87     else
//   88     {
//   89     LPLD_UART_PutChar(Wireless,alf[ge]);
??Send_Data_4:
        LDR.N    R0,??DataTable1_2
        LDRB     R1,[R4, R0]
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   90     }
//   91 }
??Send_Data_1:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     OutData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     alf
//   92 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void OutPut_Sonic(void)
//   94 {
OutPut_Sonic:
        PUSH     {R7,LR}
//   95   LPLD_UART_PutChar(Wireless,'#');
        MOVS     R1,#+35
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   96   Send_Data(0);
        MOVS     R0,#+0
        BL       Send_Data
//   97   LPLD_UART_PutChar(Wireless,'@');
        MOVS     R1,#+64
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//   98   Send_Data(1);
        MOVS     R0,#+1
        BL       Send_Data
//   99   LPLD_UART_PutChar(Wireless,'@');
        MOVS     R1,#+64
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//  100   Send_Data(2);
        MOVS     R0,#+2
        BL       Send_Data
//  101   LPLD_UART_PutChar(Wireless,'@');
        MOVS     R1,#+64
        MOVS     R0,#+5
        BL       LPLD_UART_PutChar
//  102   Send_Data(3);
        MOVS     R0,#+3
        BL       Send_Data
//  103 }
        POP      {R0,PC}          ;; return

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
//  16 bytes in section .bss
//  56 bytes in section .rodata
// 698 bytes in section .text
// 
// 698 bytes of CODE  memory
//  56 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: none
