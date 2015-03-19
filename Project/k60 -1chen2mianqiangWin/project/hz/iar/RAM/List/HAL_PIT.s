///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     14/May/2014  22:54:10 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\huang\Desktop\k60\lib\LPLD\HAL_PIT.c           /
//    Command line =  C:\Users\huang\Desktop\k60\lib\LPLD\HAL_PIT.c -D IAR    /
//                    -D LPLD_K60 -lCN C:\Users\huang\Desktop\k60\project\k60 /
//                    \iar\RAM\List\ -lB C:\Users\huang\Desktop\k60\project\k /
//                    60\iar\RAM\List\ -o C:\Users\huang\Desktop\k60\project\ /
//                    k60\iar\RAM\Obj\ --no_cse --no_unroll --no_inline       /
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
//    List file    =  C:\Users\huang\Desktop\k60\project\k60\iar\RAM\List\HAL /
//                    _PIT.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed
        EXTERN disable_irq
        EXTERN enable_irq
        EXTERN periph_clk_khz

        PUBLIC LPLD_PIT_ClearIsr
        PUBLIC LPLD_PIT_Init
        PUBLIC LPLD_PIT_Isr
        PUBLIC LPLD_PIT_SetIsr
        PUBLIC PIT_ISR

// C:\Users\huang\Desktop\k60\lib\LPLD\HAL_PIT.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_PIT.c
//   10  * ��;: PIT�ײ�ģ����غ���
//   11  * ����޸�����: 20120321
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17  */
//   18 
//   19 /*
//   20  *******���õ���ʱ�жϣ�����isr.h��ճ��һ�´���:*********
//   21 
//   22 //PITģ���жϷ�����
//   23 #undef  VECTOR_084
//   24 #define VECTOR_084 LPLD_PIT_Isr
//   25 #undef  VECTOR_085
//   26 #define VECTOR_085 LPLD_PIT_Isr
//   27 #undef  VECTOR_086
//   28 #define VECTOR_086 LPLD_PIT_Isr
//   29 #undef  VECTOR_087
//   30 #define VECTOR_087 LPLD_PIT_Isr
//   31 //���º�����LPLD_Kinetis�ײ���������޸�
//   32 extern void LPLD_PIT_Isr(void);
//   33 
//   34  ***********************�������*************************
//   35 */
//   36 
//   37 #include "common.h"
//   38 #include "HAL_PIT.h"
//   39 
//   40 
//   41 //��������ʱ��Ƶ�ʣ���ֵ��sysinit.c�ļ���ȡ��
//   42 extern int periph_clk_khz;
//   43 
//   44 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 PIT_ISR_CALLBACK PIT_ISR[4];
PIT_ISR:
        DS8 16
//   46 
//   47 /*
//   48  * LPLD_PIT_Init
//   49  * PITͨ�ó�ʼ������
//   50  * 
//   51  * ����:
//   52  *    pitx--PITģ���
//   53  *      |__PIT0        --�����ж϶�ʱ��0
//   54  *      |__PIT1        --�����ж϶�ʱ��0
//   55  *      |__PIT2        --�����ж϶�ʱ��0
//   56  *      |__PIT3        --�����ж϶�ʱ��0
//   57  *    period_us--�ж�����
//   58  *      |__��λΪ΢��
//   59  *    isr_func--�û��жϳ�����ڵ�ַ
//   60  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//   61  *
//   62  * ���:
//   63  *    0--���ô���
//   64  *    1--���óɹ�
//   65  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 uint8 LPLD_PIT_Init(PITx pitx, uint32 period_us, PIT_ISR_CALLBACK isr_func)
//   67 { 
LPLD_PIT_Init:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R6,R1
        MOVS     R5,R2
//   68   uint32 ldval;
//   69   uint32 periph_clk_mhz;
//   70   
//   71   //�������
//   72   ASSERT( pitx <= PIT3);                  //�ж�ģ���
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??LPLD_PIT_Init_0
        MOVS     R1,#+72
        LDR.N    R0,??DataTable3
        BL       assert_failed
//   73   
//   74   //���㶨ʱ����ֵ
//   75   periph_clk_mhz = periph_clk_khz/1000;
??LPLD_PIT_Init_0:
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        SDIV     R0,R0,R1
//   76   ldval = period_us*periph_clk_mhz;
        MULS     R6,R0,R6
//   77   
//   78   ASSERT( ldval > 0);                    
        CMP      R6,#+0
        BNE.N    ??LPLD_PIT_Init_1
        MOVS     R1,#+78
        LDR.N    R0,??DataTable3
        BL       assert_failed
//   79   
//   80   //������ʱģ��ʱ��
//   81   SIM_SCGC6 |= SIM_SCGC6_PIT_MASK;
??LPLD_PIT_Init_1:
        LDR.N    R0,??DataTable3_2  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable3_2  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   82   
//   83   // ���� PIT
//   84   PIT_MCR = 0x00;
        LDR.N    R0,??DataTable3_3  ;; 0x40037000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   85  
//   86   if(isr_func!=NULL){
        MOVS     R0,R5
        CMP      R0,#+0
        BEQ.N    ??LPLD_PIT_Init_2
//   87     PIT_ISR[pitx] = isr_func;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_4
        STR      R5,[R0, R4, LSL #+2]
//   88     //��NVIC��ʹ��PIT�ж�
//   89     enable_irq(68+pitx); 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R4,#+68
        BL       enable_irq
//   90   }
//   91   
//   92   //period = (period_ns/bus_period_ns)-1
//   93   PIT_LDVAL_REG(PIT_BASE_PTR,pitx) = ldval-1;
??LPLD_PIT_Init_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+4
        LDR.N    R1,??DataTable3_5  ;; 0x40037100
        SUBS     R2,R6,#+1
        STR      R2,[R0, R1]
//   94   
//   95   //ʹ���ж�
//   96   PIT_TCTRL_REG(PIT_BASE_PTR,pitx) = PIT_TCTRL_TIE_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_5  ;; 0x40037100
        ADDS     R0,R0,R4, LSL #+4
        MOVS     R1,#+2
        STR      R1,[R0, #+8]
//   97   //��ʼ��ʱ
//   98   PIT_TCTRL_REG(PIT_BASE_PTR,pitx) |= PIT_TCTRL_TEN_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_5  ;; 0x40037100
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_5  ;; 0x40037100
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+8]
//   99   
//  100   return 1;
        MOVS     R0,#+1
        POP      {R4-R6,PC}       ;; return
//  101 }
//  102 
//  103 /*
//  104  * LPLD_PIT_SetIsr
//  105  * ����PITͨ���û�������жϷ���������ʹ���ж�
//  106  * 
//  107  * ����:
//  108  *    pitx--PITģ���
//  109  *      |__PIT0        --�����ж϶�ʱ��0
//  110  *      |__PIT1        --�����ж϶�ʱ��0
//  111  *      |__PIT2        --�����ж϶�ʱ��0
//  112  *      |__PIT3        --�����ж϶�ʱ��0
//  113  *    isr_func--�û��жϳ�����ڵ�ַ
//  114  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  115  *
//  116  * ���:
//  117  *    0--���ô���
//  118  *    1--���óɹ�
//  119  *
//  120  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 uint8 LPLD_PIT_SetIsr(PITx pitx, PIT_ISR_CALLBACK isr_func)
//  122 {
LPLD_PIT_SetIsr:
        PUSH     {R7,LR}
//  123   PIT_ISR[pitx] = isr_func;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable3_4
        STR      R1,[R2, R0, LSL #+2]
//  124   enable_irq(68+pitx); 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+68
        BL       enable_irq
//  125   
//  126   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  127 }
//  128 
//  129 /*
//  130  * LPLD_PIT_ClearIsr
//  131  * ���PITͨ���û�������жϷ��������������ж�
//  132  * 
//  133  * ����:
//  134  *    pitx--PITģ���
//  135  *      |__PIT0        --�����ж϶�ʱ��0
//  136  *      |__PIT1        --�����ж϶�ʱ��0
//  137  *      |__PIT2        --�����ж϶�ʱ��0
//  138  *      |__PIT3        --�����ж϶�ʱ��0
//  139  *
//  140  * ���:
//  141  *    0--���ô���
//  142  *    1--���óɹ�
//  143  *
//  144  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  145 uint8 LPLD_PIT_ClearIsr(PITx pitx)
//  146 {
LPLD_PIT_ClearIsr:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  147   disable_irq(68+pitx); 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R4,#+68
        BL       disable_irq
//  148   PIT_ISR[pitx] = NULL;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_4
        MOVS     R1,#+0
        STR      R1,[R0, R4, LSL #+2]
//  149   
//  150   return 1;
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
//  151 }
//  152 
//  153 
//  154 /*
//  155  * LPLD_PIT_Isr
//  156  * PITͨ���жϵײ���ں���
//  157  * 
//  158  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  159  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 void LPLD_PIT_Isr(void)
//  161 {
LPLD_PIT_Isr:
        PUSH     {R4,LR}
//  162   #define PIT_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
//  163   uint8 pit_ch = PIT_VECTORNUM - 84;
        LDR.N    R0,??DataTable3_6  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        SUBS     R4,R0,#+84
//  164     
//  165   //�����û��Զ����жϷ���
//  166   PIT_ISR[pit_ch]();  
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, R4, LSL #+2]
        BLX      R0
//  167   //����жϱ�־λ
//  168   PIT_TFLG_REG(PIT_BASE_PTR,pit_ch) |= PIT_TFLG_TIF_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_5  ;; 0x40037100
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_5  ;; 0x40037100
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+12]
//  169 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     `?<Constant "C:\\\\Users\\\\huang\\\\Deskto...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     PIT_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x40037100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0xe000ed04

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\huang\\\\Deskto...">`:
        DATA
        DC8 "C:\\Users\\huang\\Desktop\\k60\\lib\\LPLD\\HAL_PIT.c"
        DC8 0, 0

        END
// 
//  16 bytes in section .bss
//  48 bytes in section .rodata
// 264 bytes in section .text
// 
// 264 bytes of CODE  memory
//  48 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: none
