///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     14/May/2014  22:54:09 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\huang\Desktop\k60\lib\LPLD\HAL_GPIO.c          /
//    Command line =  C:\Users\huang\Desktop\k60\lib\LPLD\HAL_GPIO.c -D IAR   /
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
//                    _GPIO.s                                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed
        EXTERN disable_irq
        EXTERN enable_irq

        PUBLIC GPIO_ISR
        PUBLIC GPIOx_Ptr
        PUBLIC LPLD_GPIO_ClearIsr
        PUBLIC LPLD_GPIO_Get
        PUBLIC LPLD_GPIO_Get_b
        PUBLIC LPLD_GPIO_Init
        PUBLIC LPLD_GPIO_Isr
        PUBLIC LPLD_GPIO_Set
        PUBLIC LPLD_GPIO_SetIsr
        PUBLIC LPLD_GPIO_Set_b
        PUBLIC LPLD_GPIO_Toggle
        PUBLIC LPLD_GPIO_Toggle_b
        PUBLIC PORTx_Ptr

// C:\Users\huang\Desktop\k60\lib\LPLD\HAL_GPIO.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_GPIO.c
//   10  * ��;: GPIO�ײ�ģ����غ���
//   11  * ����޸�����: 20120321
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17  */
//   18 /*
//   19  *******���õ�GPIO�жϣ�����isr.h��ճ��һ�´���:*********
//   20 
//   21 //GPIOģ���жϷ�����
//   22 #undef  VECTOR_103
//   23 #define VECTOR_103 LPLD_GPIO_Isr
//   24 #undef  VECTOR_104
//   25 #define VECTOR_104 LPLD_GPIO_Isr
//   26 #undef  VECTOR_105
//   27 #define VECTOR_105 LPLD_GPIO_Isr
//   28 #undef  VECTOR_106
//   29 #define VECTOR_106 LPLD_GPIO_Isr
//   30 #undef  VECTOR_107
//   31 #define VECTOR_107 LPLD_GPIO_Isr
//   32 //���º�����LPLD_Kinetis�ײ���������޸�
//   33 extern void LPLD_GPIO_Isr(void);
//   34 
//   35  ***********************�������*************************
//   36 */
//   37 
//   38 #include "common.h"
//   39 #include "HAL_GPIO.h"
//   40 
//   41 
//   42 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 GPIO_ISR_CALLBACK GPIO_ISR[5];
GPIO_ISR:
        DS8 20
//   44 //GPIOӳ���ַ����

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   45 volatile GPIO_MemMapPtr GPIOx_Ptr[5] = {PTA_BASE_PTR, 
GPIOx_Ptr:
        DATA
        DC32 400FF000H, 400FF040H, 400FF080H, 400FF0C0H, 400FF100H
//   46                                         PTB_BASE_PTR, 
//   47                                         PTC_BASE_PTR, 
//   48                                         PTD_BASE_PTR, 
//   49                                         PTE_BASE_PTR};
//   50 //PORTӳ���ַ����

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   51 volatile PORT_MemMapPtr PORTx_Ptr[5] = {PORTA_BASE_PTR, 
PORTx_Ptr:
        DATA
        DC32 40049000H, 4004A000H, 4004B000H, 4004C000H, 4004D000H
//   52                                         PORTB_BASE_PTR, 
//   53                                         PORTC_BASE_PTR, 
//   54                                         PORTD_BASE_PTR, 
//   55                                         PORTE_BASE_PTR};
//   56 
//   57 /*
//   58  * LPLD_GPIO_Init
//   59  * GPIOͨ�ó�ʼ������
//   60  * 
//   61  * ����:
//   62  *    ptx--�˿ں�
//   63  *      |__PTA        --Port A
//   64  *      |__PTB        --Port B
//   65  *      |__PTC        --Port C
//   66  *      |__PTD        --Port D
//   67  *      |__PTE        --Port E
//   68  *    port_bit--�˿�λ��
//   69  *      |__0~31
//   70  *    dir--�˿����ݷ���
//   71  *      |__DIR_INPUT  --����
//   72  *      |__DIR_OUTPUT --���
//   73  *    data1--�����ʼ��ƽ/��������������
//   74  *      |__INPUT_PDOWN--���dir=DIR_INPUT,�����ڲ�����
//   75  *      |__INPUT_PUP  --���dir=DIR_INPUT,�����ڲ�����
//   76  *      |__OUTPUT_L   --���dir=DIR_OUTPUT,����͵�ƽ
//   77  *      |__OUTPUT_H   --���dir=DIR_OUTPUT,����ߵ�ƽ
//   78  *    irqc--�����ж�
//   79  *      |__IRQC_DIS   --��ʹ���ж�
//   80  *      |__IRQC_DMARI --�����ش���DMA
//   81  *      |__IRQC_DMAFA --�½��ش���DMA
//   82  *      |__IRQC_DMAET --����/�½��ش���DMA
//   83  *      |__IRQC_L     --�߼��ʹ����ж�
//   84  *      |__IRQC_RI    --�����ش����ж�
//   85  *      |__IRQC_FA    --�½��ش����ж�
//   86  *      |__IRQC_ET    --����/�½��ش����ж�
//   87  *      |__IRQC_H     --�߼��ߴ����ж�
//   88  *
//   89  * ���:
//   90  *    0--���ô���
//   91  *    1--���óɹ�
//   92  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 uint8 LPLD_GPIO_Init(PTx ptx, uint8 port_bit, uint8 dir, uint8 data1, uint8 irqc)
//   94 {
LPLD_GPIO_Init:
        PUSH     {R3-R9,LR}
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   95   GPIO_MemMapPtr gpio_ptr = GPIOx_Ptr[ptx];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable9
        LDR      R8,[R1, R0, LSL #+2]
//   96   PORT_MemMapPtr port_ptr = PORTx_Ptr[ptx];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable9_1
        LDR      R9,[R1, R0, LSL #+2]
//   97   
//   98   //�������
//   99   ASSERT( ptx <= PTE);                  //�ж϶˿�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BLT.N    ??LPLD_GPIO_Init_0
        MOVS     R1,#+99
        LDR.N    R0,??DataTable9_2
        BL       assert_failed
//  100   ASSERT( port_bit <= 31 );             //�ж϶˿�λ��
??LPLD_GPIO_Init_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BLT.N    ??LPLD_GPIO_Init_1
        MOVS     R1,#+100
        LDR.N    R0,??DataTable9_2
        BL       assert_failed
//  101   ASSERT( dir <= 1 );                   //�жϷ���
??LPLD_GPIO_Init_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BLT.N    ??LPLD_GPIO_Init_2
        MOVS     R1,#+101
        LDR.N    R0,??DataTable9_2
        BL       assert_failed
//  102   ASSERT( data1 <= 1 );                 //�ж������ʼ��ƽ/��������������
??LPLD_GPIO_Init_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BLT.N    ??LPLD_GPIO_Init_3
        MOVS     R1,#+102
        LDR.N    R0,??DataTable9_2
        BL       assert_failed
??LPLD_GPIO_Init_3:
        LDR      R4,[SP, #+32]
//  103   ASSERT( irqc <= IRQC_H);              //�ж϶��ж�����
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+13
        BLT.N    ??LPLD_GPIO_Init_4
        MOVS     R1,#+103
        LDR.N    R0,??DataTable9_2
        BL       assert_failed
//  104 
//  105   //����ΪGPIO����
//  106   PORT_PCR_REG(port_ptr, port_bit) = PORT_PCR_MUX(1);
??LPLD_GPIO_Init_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOV      R0,#+256
        STR      R0,[R9, R5, LSL #+2]
//  107   
//  108   //������������
//  109   if(dir==DIR_OUTPUT)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_GPIO_Init_5
//  110   {
//  111     GPIO_PDDR_REG(gpio_ptr) |= 0x1u<<port_bit;
        LDR      R0,[R8, #+20]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        ORRS     R0,R1,R0
        STR      R0,[R8, #+20]
//  112     //���ó�ʼ���
//  113     if(data1==OUTPUT_H)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_GPIO_Init_6
//  114     {
//  115       GPIO_PSOR_REG(gpio_ptr) = 0x1u<<port_bit; 
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        STR      R0,[R8, #+4]
        B.N      ??LPLD_GPIO_Init_7
//  116     }
//  117     else
//  118     {
//  119       GPIO_PCOR_REG(gpio_ptr) = 0x1u<<port_bit;  
??LPLD_GPIO_Init_6:
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        STR      R0,[R8, #+8]
        B.N      ??LPLD_GPIO_Init_7
//  120     }
//  121   }
//  122   else
//  123   { 
//  124     GPIO_PDDR_REG(gpio_ptr) &= ~(0x1u<<port_bit);
??LPLD_GPIO_Init_5:
        LDR      R0,[R8, #+20]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        BICS     R0,R0,R1
        STR      R0,[R8, #+20]
//  125     PORT_PCR_REG(port_ptr, port_bit) |= PORT_PCR_IRQC(irqc); 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R9, R5, LSL #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R9, R5, LSL #+2]
//  126     //�����ڲ�������������ʹ��
//  127     if(data1==INPUT_PUP)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_GPIO_Init_8
//  128     {
//  129       //����
//  130       PORT_PCR_REG(port_ptr, port_bit) |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK ; 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R9, R5, LSL #+2]
        ORRS     R0,R0,#0x3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R9, R5, LSL #+2]
        B.N      ??LPLD_GPIO_Init_7
//  131     }
//  132     else if(data1==INPUT_PDOWN)
??LPLD_GPIO_Init_8:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??LPLD_GPIO_Init_9
//  133     {
//  134       //����
//  135       PORT_PCR_REG(port_ptr, port_bit) |= PORT_PCR_PE_MASK ; 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R9, R5, LSL #+2]
        ORRS     R0,R0,#0x2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R9, R5, LSL #+2]
        B.N      ??LPLD_GPIO_Init_7
//  136     }
//  137     else
//  138     {
//  139       //��ʹ��������
//  140       PORT_PCR_REG(port_ptr, port_bit) &= ~PORT_PCR_PE_MASK ; 
??LPLD_GPIO_Init_9:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R9, R5, LSL #+2]
        BICS     R0,R0,#0x2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R9, R5, LSL #+2]
//  141     }
//  142  
//  143   }
//  144   
//  145   return 1;
??LPLD_GPIO_Init_7:
        MOVS     R0,#+1
        POP      {R1,R4-R9,PC}    ;; return
//  146 }
//  147 
//  148 /*
//  149  * LPLD_GPIO_SetIsr
//  150  * ����GPIOͨ���û�������жϷ���������ʹ���ж�
//  151  * 
//  152  * ����:
//  153  *    ptx--�˿ں�
//  154  *      |__PTA        --Port A
//  155  *      |__PTB        --Port B
//  156  *      |__PTC        --Port C
//  157  *      |__PTD        --Port D
//  158  *      |__PTE        --Port E
//  159  *    isr_func--�û��жϳ�����ڵ�ַ
//  160  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  161  *
//  162  * ���:
//  163  *    0--���ô���
//  164  *    1--���óɹ�
//  165  *
//  166  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 uint8 LPLD_GPIO_SetIsr(PTx ptx, GPIO_ISR_CALLBACK isr_func)
//  168 {
LPLD_GPIO_SetIsr:
        PUSH     {R7,LR}
//  169   GPIO_ISR[ptx] = isr_func;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable9_3
        STR      R1,[R2, R0, LSL #+2]
//  170   enable_irq(ptx + 87);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+87
        BL       enable_irq
//  171   
//  172   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  173 }
//  174 
//  175 /*
//  176  * LPLD_GPIO_ClearIsr
//  177  * ���GPIOͨ���û�������жϷ��������������ж�
//  178  * 
//  179  * ����:
//  180  *    ptx--�˿ں�
//  181  *      |__PTA        --Port A
//  182  *      |__PTB        --Port B
//  183  *      |__PTC        --Port C
//  184  *      |__PTD        --Port D
//  185  *      |__PTE        --Port E
//  186  *
//  187  * ���:
//  188  *    0--���ô���
//  189  *    1--���óɹ�
//  190  *
//  191  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  192 uint8 LPLD_GPIO_ClearIsr(PTx ptx)
//  193 {
LPLD_GPIO_ClearIsr:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  194   disable_irq(ptx + 87);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R4,#+87
        BL       disable_irq
//  195   GPIO_ISR[ptx] = NULL;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable9_3
        MOVS     R1,#+0
        STR      R1,[R0, R4, LSL #+2]
//  196   
//  197   return 1;
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
//  198 }
//  199 
//  200 /*
//  201  * LPLD_GPIO_Set
//  202  * ����GPIO�˿�0~31λ���
//  203  * 
//  204  * ����:
//  205  *    ptx--�˿ں�
//  206  *      |__PTA        --Port A
//  207  *      |__PTB        --Port B
//  208  *      |__PTC        --Port C
//  209  *      |__PTD        --Port D
//  210  *      |__PTE        --Port E
//  211  *    data32--�������
//  212  *      |__0x00000000~0xFFFFFFFF--�͵��ߴ���GPIO�ڵĵ�0~31λ����
//  213  *
//  214  * ���:
//  215  *
//  216  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 void LPLD_GPIO_Set(PTx ptx, uint32 data32)
//  218 { 
//  219   GPIO_PDOR_REG(GPIOx_Ptr[ptx]) = data32;
LPLD_GPIO_Set:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable9
        LDR      R0,[R2, R0, LSL #+2]
        STR      R1,[R0, #+0]
//  220 }
        BX       LR               ;; return
//  221 
//  222 /*
//  223  * LPLD_GPIO_Set_b
//  224  * ����GPIO�˿�һλ�����
//  225  * 
//  226  * ����:
//  227  *    ptx--�˿ں�
//  228  *      |__PTA        --Port A
//  229  *      |__PTB        --Port B
//  230  *      |__PTC        --Port C
//  231  *      |__PTD        --Port D
//  232  *      |__PTE        --Port E
//  233  *    port_bit--λ��
//  234  *      |__0~31       --GPIO�ڵĵ�0~31λ
//  235  *    data1--�������
//  236  *      |__OUTPUT_L   --����͵�ƽ
//  237  *      |__OUTPUT_H   --����ߵ�ƽ
//  238  *
//  239  * ���:
//  240  *
//  241  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  242 void LPLD_GPIO_Set_b(PTx ptx, uint8 port_bit, uint8 data1)
//  243 {
//  244   if(data1==OUTPUT_L)
LPLD_GPIO_Set_b:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_GPIO_Set_b_0
//  245     GPIO_PCOR_REG(GPIOx_Ptr[ptx]) = 0x1u<<port_bit;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable9
        LDR      R0,[R2, R0, LSL #+2]
        MOVS     R2,#+1
        LSLS     R1,R2,R1
        STR      R1,[R0, #+8]
        B.N      ??LPLD_GPIO_Set_b_1
//  246   else
//  247     GPIO_PSOR_REG(GPIOx_Ptr[ptx]) = 0x1u<<port_bit;
??LPLD_GPIO_Set_b_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable9
        LDR      R0,[R2, R0, LSL #+2]
        MOVS     R2,#+1
        LSLS     R1,R2,R1
        STR      R1,[R0, #+4]
//  248 }
??LPLD_GPIO_Set_b_1:
        BX       LR               ;; return
//  249 
//  250 /*
//  251  * LPLD_GPIO_Toggle
//  252  * ����GPIO�˿�0~31�ĵ�ƽ��ת
//  253  * 
//  254  * ����:
//  255  *    ptx--�˿ں�
//  256  *      |__PTA        --Port A
//  257  *      |__PTB        --Port B
//  258  *      |__PTC        --Port C
//  259  *      |__PTD        --Port D
//  260  *      |__PTE        --Port E
//  261  *    data32--��ת����
//  262  *      |__0x00000000~0xFFFFFFFF--�͵��ߴ���GPIO�ڵĵ�0~31λ�ķ�ת��1Ϊ��ת��0Ϊ���ֲ��䡣
//  263  *
//  264  * ���:
//  265  *
//  266  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  267 void LPLD_GPIO_Toggle(PTx ptx, uint32 data32)
//  268 {
//  269   GPIO_PTOR_REG(GPIOx_Ptr[ptx]) = data32;
LPLD_GPIO_Toggle:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable9
        LDR      R0,[R2, R0, LSL #+2]
        STR      R1,[R0, #+12]
//  270 }
        BX       LR               ;; return
//  271 
//  272 /*
//  273  * LPLD_GPIO_Toggle_b
//  274  * ����GPIO�˿�һλ�ķ�ת
//  275  * 
//  276  * ����:
//  277  *    ptx--�˿ں�
//  278  *      |__PTA        --Port A
//  279  *      |__PTB        --Port B
//  280  *      |__PTC        --Port C
//  281  *      |__PTD        --Port D
//  282  *      |__PTE        --Port E
//  283  *    port_bit--λ��
//  284  *      |__0~31       --����GPIO�ڵ�һλ��ת
//  285  *
//  286  * ���:
//  287  *
//  288  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  289 void LPLD_GPIO_Toggle_b(PTx ptx, uint8 port_bit)
//  290 {
//  291   GPIO_PTOR_REG(GPIOx_Ptr[ptx]) = 0x1u<<port_bit;
LPLD_GPIO_Toggle_b:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable9
        LDR      R0,[R2, R0, LSL #+2]
        MOVS     R2,#+1
        LSLS     R1,R2,R1
        STR      R1,[R0, #+12]
//  292 }
        BX       LR               ;; return
//  293 
//  294 /*
//  295  * LPLD_GPIO_Get
//  296  * ȡ��GPIO�ڵ�����
//  297  * 
//  298  * ����:
//  299  *    ptx--�˿ں�
//  300  *      |__PTA        --Port A
//  301  *      |__PTB        --Port B
//  302  *      |__PTC        --Port C
//  303  *      |__PTD        --Port D
//  304  *      |__PTE        --Port E
//  305  *
//  306  * ���:
//  307  *    ָ��GPIO�ڵ�32λ����
//  308  *
//  309  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  310 uint32 LPLD_GPIO_Get(PTx ptx)
//  311 {
//  312   return GPIO_PDIR_REG(GPIOx_Ptr[ptx]);
LPLD_GPIO_Get:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable9
        LDR      R0,[R1, R0, LSL #+2]
        LDR      R0,[R0, #+16]
        BX       LR               ;; return
//  313 }
//  314 
//  315 /*
//  316  * LPLD_GPIO_Get_b
//  317  * ȡ��GPIO��ĳһλ������
//  318  * 
//  319  * ����:
//  320  *    ptx--�˿ں�
//  321  *      |__PTA        --Port A
//  322  *      |__PTB        --Port B
//  323  *      |__PTC        --Port C
//  324  *      |__PTD        --Port D
//  325  *      |__PTE        --Port E
//  326  *    port_bit--λ��
//  327  *      |__0~31--GPIO�ڵĵ�0~31λ
//  328  *
//  329  * ���:
//  330  *    ָ��GPIO�ڵ�ָ��λ���ĵ�ƽ
//  331  *
//  332  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 uint8 LPLD_GPIO_Get_b(PTx ptx, uint8 port_bit)
//  334 {
//  335   return (GPIO_PDIR_REG(GPIOx_Ptr[ptx])>>port_bit)&0x1u;
LPLD_GPIO_Get_b:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable9
        LDR      R0,[R2, R0, LSL #+2]
        LDR      R0,[R0, #+16]
        LSRS     R0,R0,R1
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
//  336 }
//  337 
//  338 /*
//  339  * LPLD_GPIO_Isr
//  340  * GPIOͨ���жϵײ���ں���
//  341  * 
//  342  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  343  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  344 void LPLD_GPIO_Isr(void)
//  345 {
LPLD_GPIO_Isr:
        PUSH     {R4,LR}
//  346   #define GPIO_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
//  347   uint8 gpio_port = GPIO_VECTORNUM - 103;
        LDR.N    R0,??DataTable9_4  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        SUBS     R4,R0,#+103
//  348     
//  349   //�����û��Զ����жϷ���
//  350   GPIO_ISR[gpio_port]();  
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable9_3
        LDR      R0,[R0, R4, LSL #+2]
        BLX      R0
//  351   
//  352   //����жϱ�־λ
//  353   PORT_ISFR_REG((PORT_MemMapPtr)((0x40049+gpio_port)<<12))=0xFFFFFFFF;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R4,#+262144
        ADDS     R0,R0,#+73
        LSLS     R0,R0,#+12
        MOVS     R1,#-1
        STR      R1,[R0, #+160]
//  354 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     GPIOx_Ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     PORTx_Ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     `?<Constant "C:\\\\Users\\\\huang\\\\Deskto...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     GPIO_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
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
        DC8 "C:\\Users\\huang\\Desktop\\k60\\lib\\LPLD\\HAL_GPIO.c"
        DC8 0

        END
// 
//  20 bytes in section .bss
//  40 bytes in section .data
//  48 bytes in section .rodata
// 484 bytes in section .text
// 
// 484 bytes of CODE  memory
//  48 bytes of CONST memory
//  60 bytes of DATA  memory
//
//Errors: none
//Warnings: none
