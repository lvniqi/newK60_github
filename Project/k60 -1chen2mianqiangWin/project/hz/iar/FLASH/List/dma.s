///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       19/Mar/2015  11:04:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\dma.c
//    Command line =  
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\project\hz\app\dma.c" -D IAR -D LPLD_K60 -lCN
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
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\dma.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN enable_irq

        PUBLIC DMA_count_Init
        PUBLIC DMA_count_get
        PUBLIC DMA_count_reset
        PUBLIC GPIOx
        PUBLIC PORTX
        PUBLIC count_init

// G:\GitHub\newK60_github\Project\k60 -1chen2mianqiangWin\project\hz\app\dma.c
//    1 /*#include "common.h"
//    2 #include "gpio.h"
//    3 #include "PIT.h"
//    4 #include "dma.h"
//    5 */
//    6 //#include "dma.h"
//    7 //#include "common.h"
//    8 #include "head.h"
//    9 //u8 counttempaddr;
//   10 #define COUNTSADDR   0x4004000C  //(&counttempaddr)
//   11 #define COUNTDADDR   0x4004000C  //(&counttempaddr)
//   12 
//   13 
//   14 //#define u32 uint32
//   15 
//   16 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 u32 count_init[16];         //��������16��ͨ���ĳ�ʼ������ֵ
count_init:
        DS8 64
//   18 
//   19 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   20 volatile struct GPIO_MemMap *GPIOx[5] = {PTA_BASE_PTR, PTB_BASE_PTR, PTC_BASE_PTR, PTD_BASE_PTR, PTE_BASE_PTR}; //�������ָ�����鱣�� GPIOx �ĵ�ַ
GPIOx:
        DATA
        DC32 400FF000H, 400FF040H, 400FF080H, 400FF0C0H, 400FF100H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   21 volatile struct PORT_MemMap *PORTX[5] = {PORTA_BASE_PTR, PORTB_BASE_PTR, PORTC_BASE_PTR, PORTD_BASE_PTR, PORTE_BASE_PTR};
PORTX:
        DATA
        DC32 40049000H, 4004A000H, 4004B000H, 4004C000H, 4004D000H
//   22 
//   23 
//   24 
//   25 
//   26 
//   27 /*************************************************************************
//   28 *                             Ұ��Ƕ��ʽ����������
//   29 *
//   30 *  �������ƣ�DMA_count_Init
//   31 *  ����˵����DMA�ۼӼ�����ʼ��
//   32 *  ����˵����DMA_CHn              ͨ���ţ�DMA_CH0 ~ DMA_CH15��
//   33 *            PTxn                 �����˿�
//   34 *            count                �ۼӼ����ж�ֵ
//   35 *            DMA_Count_cfg        DMA��������
//   36 *  �������أ���
//   37 *  �޸�ʱ�䣺2012-1-20
//   38 *  ��    ע��
//   39 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void DMA_count_Init(DMA_CHn CHn, PTxn ptxn, u32 count, DMA_Count_cfg cfg)
//   41 {
DMA_count_Init:
        PUSH     {R3-R7,LR}
//   42     u8 byten = DMA_BYTE1;
        MOVS     R4,#+0
//   43     u8 BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 16 ) ) ); //���㴫���ֽ���
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??DMA_count_Init_0
        MOVS     R5,#+1
        B.N      ??DMA_count_Init_1
??DMA_count_Init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??DMA_count_Init_2
        MOVS     R5,#+2
        B.N      ??DMA_count_Init_3
??DMA_count_Init_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??DMA_count_Init_4
        MOVS     R5,#+4
        B.N      ??DMA_count_Init_3
??DMA_count_Init_4:
        MOVS     R5,#+16
//   44     if(count > 0x7FFF )count = 0x7FFF;
??DMA_count_Init_3:
??DMA_count_Init_1:
        CMP      R2,#+32768
        BCC.N    ??DMA_count_Init_5
        MOVW     R2,#+32767
//   45     count_init[CHn] = count;
??DMA_count_Init_5:
        LDR.N    R6,??DataTable2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R2,[R6, R0, LSL #+2]
//   46 
//   47     /* ����ʱ�� */
//   48     SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //��DMAģ��ʱ��
        LDR.N    R6,??DataTable2_1  ;; 0x40048040
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x2
        LDR.N    R7,??DataTable2_1  ;; 0x40048040
        STR      R6,[R7, #+0]
//   49     SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //��DMA��·������ʱ��
        LDR.N    R6,??DataTable2_2  ;; 0x4004803c
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x2
        LDR.N    R7,??DataTable2_2  ;; 0x4004803c
        STR      R6,[R7, #+0]
//   50 
//   51     /* ���� DMA ͨ�� �� ������ƿ� TCD ( Transfer Control Descriptor ) */
//   52     DMA_SADDR(CHn) =    (u32)COUNTSADDR;                    // ����  Դ��ַ
        LDR.N    R6,??DataTable2_3  ;; 0x4004000c
        LDR.N    R7,??DataTable2_4  ;; 0x40009000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R12,R0,#+5
        STR      R6,[R12, R7]
//   53     DMA_DADDR(CHn) =    (u32)COUNTDADDR;                    // ����Ŀ�ĵ�ַ
        LDR.N    R6,??DataTable2_3  ;; 0x4004000c
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R7,R0,#+5
        ADD      R7,R7,#+1073741824
        ADDS     R7,R7,#+36864
        STR      R6,[R7, #+16]
//   54     DMA_SOFF(CHn)  =    0;                                  // ����Դ��ַ����
        MOVS     R6,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R7,R0,#+5
        ADD      R7,R7,#+1073741824
        ADDS     R7,R7,#+36864
        STRH     R6,[R7, #+4]
//   55     DMA_DOFF(CHn)  =    0;                                  // ÿ�δ����Ŀ�ĵ�ַ����
        MOVS     R6,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R7,R0,#+5
        ADD      R7,R7,#+1073741824
        ADDS     R7,R7,#+36864
        STRH     R6,[R7, #+20]
//   56 
//   57     DMA_ATTR(CHn)  =    (0
//   58                          | DMA_ATTR_SMOD(0x0)                // Դ��ַģ����ֹ  Source address modulo feature is disabled
//   59                          | DMA_ATTR_SSIZE(byten)             // Դ����λ�� ��DMA_BYTEn  ��    SSIZE = 0 -> 8-bit ��SSIZE = 1 -> 16-bit ��SSIZE = 2 -> 32-bit ��SSIZE = 4 -> 16-byte
//   60                          | DMA_ATTR_DMOD(0x0)                // Ŀ���ַģ����ֹ
//   61                          | DMA_ATTR_DSIZE(byten)             // Ŀ������λ�� ��DMA_BYTEn  ��  ���òο�  SSIZE
//   62                         );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R6,R4,#+8
        ANDS     R6,R6,#0x700
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R4,R4,#0x7
        ORRS     R4,R4,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R6,R0,#+5
        ADD      R6,R6,#+1073741824
        ADDS     R6,R6,#+36864
        STRH     R4,[R6, #+6]
//   63 
//   64     DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //��ǰ��ѭ������
        MOVS     R4,R2
        LSLS     R4,R4,#+17       ;; ZeroExtS R4,R4,#+17,#+17
        LSRS     R4,R4,#+17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R6,R0,#+5
        ADD      R6,R6,#+1073741824
        ADDS     R6,R6,#+36864
        STRH     R4,[R6, #+22]
//   65     DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//��ʼ��ѭ������
        MOVS     R4,R2
        LSLS     R4,R4,#+23       ;; ZeroExtS R4,R4,#+23,#+23
        LSRS     R4,R4,#+23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R6,R0,#+5
        ADD      R6,R6,#+1073741824
        ADDS     R6,R6,#+36864
        STRH     R4,[R6, #+30]
//   66 
//   67     DMA_CR &= ~DMA_CR_EMLM_MASK;                            // CR[EMLM] = 0
        LDR.N    R4,??DataTable2_5  ;; 0x40008000
        LDR      R4,[R4, #+0]
        BICS     R4,R4,#0x80
        LDR.N    R6,??DataTable2_5  ;; 0x40008000
        STR      R4,[R6, #+0]
//   68 
//   69     DMA_NBYTES_MLNO(CHn) =   DMA_NBYTES_MLNO_NBYTES(BYTEs); // ͨ��ÿ�δ����ֽ�������������ΪBYTEs���ֽڡ�ע��ֵΪ0��ʾ����4GB */
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STR      R5,[R4, #+8]
//   70 
//   71     /* ���� DMA ���������Ĳ��� */
//   72     DMA_SLAST(CHn)      =   -count;                              //����  Դ��ַ�ĸ���ֵ,��ѭ��������ָ�  Դ��ַ
        RSBS     R2,R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STR      R2,[R4, #+12]
//   73     DMA_DLAST_SGA(CHn)  =   0;                                  //����Ŀ�ĵ�ַ�ĸ���ֵ,��ѭ��������ָ�Ŀ�ĵ�ַ���߱��ֵ�ַ
        MOVS     R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STR      R2,[R4, #+24]
//   74     DMA_CSR(CHn)        =   (0
//   75                              | DMA_CSR_DREQ_MASK            //��ѭ��������ֹͣӲ������
//   76                              | DMA_CSR_INTMAJOR_MASK        //��ѭ������������ж�
//   77                             );
        MOVS     R2,#+10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STRH     R2,[R4, #+28]
//   78 
//   79     /* ���� DMA ����Դ */
//   80     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR, CHn) = (0
//   81             | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
//   82             | DMAMUX_CHCFG_SOURCE((ptxn >> 5) + DMA_Port_A) /* ͨ����������Դ:     */
//   83                                              );
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R2,R1,#+5
        ADDS     R2,R2,#+49
        ORRS     R2,R2,#0x80
        LDR.N    R4,??DataTable2_6  ;; 0x40021000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R2,[R0, R4]
//   84 
//   85     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << (ptxn>>5));                                                               //����PORTx�˿�
        LDR.N    R2,??DataTable2_7  ;; 0x40048038
        LDR      R2,[R2, #+0]
        MOV      R4,#+512
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R5,R1,#+5
        LSLS     R4,R4,R5
        ORRS     R2,R4,R2
        LDR.N    R4,??DataTable2_7  ;; 0x40048038
        STR      R2,[R4, #+0]
//   86     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn & 0x1f));                                                       //���ö˿ڷ���Ϊ����
        LDR.N    R2,??DataTable2_8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R4,R1,#+5
        LDR      R2,[R2, R4, LSL #+2]
        LDR.N    R4,??DataTable2_8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R5,R1,#+5
        LDR      R4,[R4, R5, LSL #+2]
        LDR      R4,[R4, #+20]
        MOVS     R5,#+1
        ANDS     R6,R1,#0x1F
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        STR      R4,[R2, #+20]
//   87     PORT_PCR_REG(PORTX[(ptxn>>5)], (ptxn & 0x1F)) = ( 0
//   88             | PORT_PCR_MUX(1)               // ����GPIO
//   89             | PORT_PCR_IRQC(cfg & 0x03 )    // ȷ������ģʽ
//   90             | ((cfg & 0xc0 ) >> 6)          // �����������������裬����û��
//   91                                                     );
        LDR.N    R2,??DataTable2_9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R4,R1,#+5
        LDR      R2,[R2, R4, LSL #+2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R4,R1,#0x1F
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R5,R3,#0x3
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R3,R3,R5, LSL #+16
        ORRS     R3,R3,#0x100
        STR      R3,[R2, R4, LSL #+2]
//   92     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn && 0x1F));                                                      //����ģʽ
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DMA_count_Init_6
        MOVS     R2,#+1
        B.N      ??DMA_count_Init_7
??DMA_count_Init_6:
        MOVS     R2,#+0
??DMA_count_Init_7:
        LDR.N    R3,??DataTable2_8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R4,R1,#+5
        LDR      R3,[R3, R4, LSL #+2]
        LDR.N    R4,??DataTable2_8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R1,R1,#+5
        LDR      R1,[R4, R1, LSL #+2]
        LDR      R1,[R1, #+20]
        MOVS     R4,#+1
        LSLS     R2,R4,R2
        BICS     R1,R1,R2
        STR      R1,[R3, #+20]
//   93 
//   94     /* �����ж� */
//   95     DMA_EN(CHn);                                    //ʹ��ͨ��CHn Ӳ������
        LDR.N    R1,??DataTable2_10  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LSLS     R2,R2,R0
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable2_10  ;; 0x4000800c
        STR      R1,[R2, #+0]
//   96     DMA_IRQ_EN(CHn);                                //����DMAͨ������
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       enable_irq
//   97 }
        POP      {R0,R4-R7,PC}    ;; return
//   98 
//   99 /*************************************************************************
//  100 *                             Ұ��Ƕ��ʽ����������
//  101 *
//  102 *  �������ƣ�DMA_count_get
//  103 *  ����˵���������ۼӼ���ֵ
//  104 *  ����˵����DMA_CHn              ͨ���ţ�DMA_CH0 ~ DMA_CH15��
//  105 *  �������أ��ۼӼ���ֵ
//  106 *  �޸�ʱ�䣺2012-3-320
//  107 *  ��    ע��
//  108 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  109 u32 DMA_count_get(DMA_CHn CHn)
//  110 {
//  111     u32 temp =  count_init[CHn] - DMA_CITER_ELINKNO(CHn)  ;
DMA_count_get:
        LDR.N    R1,??DataTable2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        LDRH     R0,[R0, #+22]
        SUBS     R0,R1,R0
//  112     return temp;
        BX       LR               ;; return
//  113 }
//  114 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void DMA_count_reset(DMA_CHn CHn)
//  116 {
//  117     DMA_CITER_ELINKNO(CHn) = count_init[CHn] ;
DMA_count_reset:
        LDR.N    R1,??DataTable2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        STRH     R1,[R0, #+22]
//  118 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     count_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x4004000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x4000800c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  119 
//  120 
// 
//  64 bytes in section .bss
//  40 bytes in section .data
// 556 bytes in section .text
// 
// 556 bytes of CODE memory
// 104 bytes of DATA memory
//
//Errors: none
//Warnings: none
