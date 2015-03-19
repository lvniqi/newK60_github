///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_LPTMR.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_LPTMR.c" -D IAR
//        -D LPLD_K60 -lCN
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\List\HAL_LPTMR.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN disable_irq
        EXTERN enable_irq

        PUBLIC LPLD_LPTMR_ClearIsr
        PUBLIC LPLD_LPTMR_DelayMs
        PUBLIC LPLD_LPTMR_GetPulseAcc
        PUBLIC LPLD_LPTMR_Init
        PUBLIC LPLD_LPTMR_Isr
        PUBLIC LPLD_LPTMR_Reset
        PUBLIC LPLD_LPTMR_SetIsr
        PUBLIC LPTMR_ISR

// C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_LPTMR.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_LPTMR.c
//   10  * ��;: LPTMR�ײ�ģ����غ���
//   11  * ����޸�����: 20120326
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17  */
//   18 /*
//   19  *******���õ�LPTMR�жϣ�����isr.h��ճ��һ�´���:*********
//   20 
//   21 //LPTMRģ���жϷ�����
//   22 #undef  VECTOR_101
//   23 #define VECTOR_101 LPLD_LPTMR_Isr
//   24 //���º�����LPLD_Kinetis�ײ���������޸�
//   25 extern void LPLD_LPTMR_Isr(void);
//   26 
//   27  ***********************�������*************************
//   28 */
//   29 
//   30 #include "common.h"
//   31 #include "HAL_LPTMR.h"
//   32 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 LPTMR_ISR_CALLBACK LPTMR_ISR;
LPTMR_ISR:
        DS8 4
//   34 
//   35 /*
//   36  * LPLD_LPTMR_Init
//   37  * LPTMR��ʼ������
//   38  * 
//   39  * ����:
//   40  *    mode--ѡ��LPTMRģʽ
//   41  *      |__MODE_LPTMR           --�͹��Ķ�ʱ��ģʽ
//   42  *      |__MODE_PLACC           --�����ۼ�ģʽ
//   43  *    period_ms--�趨��ʱ���Ķ�ʱֵ ��λms
//   44  *      |__0                    --���������ۼ�ģʽʱѡ��Ϊ0
//   45  *      |__1~65535              --1ms<= ��ʱ����  <=65535ms 
//   46  *    channel--ѡ���ۼ�����ͨ��
//   47  *      |__0                    --����Ϊ��ʱ��ʱѡ��Ϊ0
//   48  *      |__LPTMR_ALT1           --����LPTMR_ALT1, PTA19Ϊ�����ۼ�����
//   49  *      |__LPTMR_ALT2           --����LPTMR_ALT2, PTC5 Ϊ�����ۼ�����
//   50  *    irq_en--�����ж�
//   51  *      |__IRQ_DISABLE          --��ʹ���ж�
//   52  *      |__IRQ_ENABLE           --ʹ���ж�
//   53  *    isr_func
//   54  *      |__�͹��Ķ�ʱ���жϻص�����
//   55  *  
//   56  * ���:
//   57  *    0--���ô���
//   58  *    1--���óɹ�
//   59  */
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 uint8 LPLD_LPTMR_Init(uint8 mode, uint16 period_ms, uint8 channel, uint8 irq_en, LPTMR_ISR_CALLBACK isr_func)
//   62 {
LPLD_LPTMR_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R3
//   63   SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK;//��ʼ��LPTMRʱ��
        LDR.N    R3,??DataTable6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1
        LDR.N    R5,??DataTable6  ;; 0x40048038
        STR      R3,[R5, #+0]
//   64    
//   65   LPTMR0_CSR=0x00;  //��ռĴ���
        MOVS     R3,#+0
        LDR.N    R5,??DataTable6_1  ;; 0x40040000
        STR      R3,[R5, #+0]
//   66   LPTMR0_PSR=0x00;
        MOVS     R3,#+0
        LDR.N    R5,??DataTable6_2  ;; 0x40040004
        STR      R3,[R5, #+0]
//   67   LPTMR0_CMR=0x00;
        MOVS     R3,#+0
        LDR.N    R5,??DataTable6_3  ;; 0x40040008
        STR      R3,[R5, #+0]
//   68    
//   69   if(mode==MODE_LPTMR)// ���óɵ͹��Ķ�ʱ������
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_LPTMR_Init_0
//   70   {
//   71       
//   72     /* ����LPTMR */
//   73     // LPO 1Khz
//   74     //���ñȽϵ�ֵ
//   75     //ʹ���ڲ�ʱ�� ��Ƶϵ��PrescaleΪ 2^(X+1)
//   76     //��ʱ����һ����������=ʱ��Դ(Clk_Src)/ Ԥ��Ƶֵ(Prescale)
//   77     //��ʱ���Ķ�ʱֵ=���õıȽ�ֵ(compare_value)/��ʱ����һ����������
//   78     LPTMR0_CMR=LPTMR_CMR_COMPARE(period_ms);                 //���ñȽ�ֵ
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable6_3  ;; 0x40040008
        STR      R1,[R0, #+0]
//   79     LPTMR0_PSR=LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK;  //����LPOʱ����·ʹ��
        MOVS     R0,#+5
        LDR.N    R1,??DataTable6_2  ;; 0x40040004
        STR      R0,[R1, #+0]
??LPLD_LPTMR_Init_1:
        LDR      R0,[SP, #+16]
//   80         
//   81   }
//   82   else if(mode==MODE_PLACC)               //���ó����岶��ģʽ
//   83   {
//   84     if(channel==LPTMR_ALT1)               //LPTMR_ALT1
//   85     {
//   86       SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
//   87       PORTA_PCR19=PORT_PCR_MUX(0x6);      //����PTA19Ϊ�����ۼ�
//   88     }
//   89     else if(channel==LPTMR_ALT2)          //LPTMR_ALT2
//   90     {
//   91       SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;  //����PTC5Ϊ�����ۼ�
//   92       PORTC_PCR5=PORT_PCR_MUX(0x4);      
//   93     }
//   94     else
//   95     {
//   96       return 0;
//   97     }
//   98     
//   99     //�����õ��ڲ�ʱ���޹�
//  100     //�ⲿ������ź���Ϊ����ʱ��
//  101     LPTMR0_PSR =LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK; 
//  102     LPTMR0_CSR =LPTMR_CSR_TPS(channel);
//  103     LPTMR0_CSR|=LPTMR_CSR_TMS_MASK; //����ģʽ
//  104     LPTMR0_CSR|=LPTMR_CSR_TFC_MASK; //���ɼ���ģʽ
//  105   }
//  106   else
//  107   {
//  108     return 0;
//  109   }
//  110   
//  111   if(isr_func!=NULL)
        MOVS     R1,R0
        CMP      R1,#+0
        BEQ.N    ??LPLD_LPTMR_Init_2
//  112   {
//  113     LPTMR_ISR=isr_func;
        LDR.N    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  114     enable_irq(85);
        MOVS     R0,#+85
        BL       enable_irq
//  115   }
//  116   
//  117   if(irq_en==1)
??LPLD_LPTMR_Init_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_LPTMR_Init_3
//  118   {
//  119     LPTMR0_CSR|=LPTMR_CSR_TIE_MASK;
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//  120   }
//  121   else if(irq_en==0)
//  122   {
//  123     LPTMR0_CSR&=~LPTMR_CSR_TIE_MASK;
//  124   }
//  125   else
//  126   {
//  127     return 0;
//  128   }
//  129   
//  130   LPTMR0_CSR|=LPTMR_CSR_TEN_MASK; //����LPTMR
??LPLD_LPTMR_Init_4:
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//  131   return 1;
        MOVS     R0,#+1
??LPLD_LPTMR_Init_5:
        POP      {R1,R4,R5,PC}    ;; return
??LPLD_LPTMR_Init_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_LPTMR_Init_6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_LPTMR_Init_7
        LDR.N    R0,??DataTable6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable6  ;; 0x40048038
        STR      R0,[R1, #+0]
        MOV      R0,#+1536
        LDR.N    R1,??DataTable6_5  ;; 0x4004904c
        STR      R0,[R1, #+0]
??LPLD_LPTMR_Init_8:
        MOVS     R0,#+5
        LDR.N    R1,??DataTable6_2  ;; 0x40040004
        STR      R0,[R1, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R0,R2,#+4
        ANDS     R0,R0,#0x30
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_LPTMR_Init_1
??LPLD_LPTMR_Init_7:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??LPLD_LPTMR_Init_9
        LDR.N    R0,??DataTable6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable6  ;; 0x40048038
        STR      R0,[R1, #+0]
        MOV      R0,#+1024
        LDR.N    R1,??DataTable6_6  ;; 0x4004b014
        STR      R0,[R1, #+0]
        B.N      ??LPLD_LPTMR_Init_8
??LPLD_LPTMR_Init_9:
        MOVS     R0,#+0
        B.N      ??LPLD_LPTMR_Init_5
??LPLD_LPTMR_Init_6:
        MOVS     R0,#+0
        B.N      ??LPLD_LPTMR_Init_5
??LPLD_LPTMR_Init_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LPLD_LPTMR_Init_10
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_LPTMR_Init_4
??LPLD_LPTMR_Init_10:
        MOVS     R0,#+0
        B.N      ??LPLD_LPTMR_Init_5
//  132 }
//  133 
//  134 
//  135 /*
//  136  * LPLD_LPTMR_SetIsr
//  137  * ����LPTMRͨ���û�������жϷ���������ʹ���ж�
//  138  * 
//  139  * ����:
//  140  *    isr_func--�û��жϳ�����ڵ�ַ
//  141  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  142  *
//  143  * ���:
//  144  *    0--���ô���
//  145  *    1--���óɹ�
//  146  *
//  147  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  148 uint8 LPLD_LPTMR_SetIsr(LPTMR_ISR_CALLBACK isr_func)
//  149 {
LPLD_LPTMR_SetIsr:
        PUSH     {R7,LR}
//  150   LPTMR_ISR=isr_func;
        LDR.N    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  151   LPTMR0_CSR|=LPTMR_CSR_TIE_MASK;
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//  152   enable_irq(85);
        MOVS     R0,#+85
        BL       enable_irq
//  153   
//  154   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  155 }
//  156 
//  157 /*
//  158  * LPLD_LPTMR_ClearIsr
//  159  * ���LPTMRͨ���û�������жϷ��������������ж�
//  160  * 
//  161  * ����:
//  162  *    isr_func--�û��жϳ�����ڵ�ַ
//  163  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  164  *
//  165  * ���:
//  166  *    0--���ô���
//  167  *    1--���óɹ�
//  168  *
//  169  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 uint8 LPLD_LPTMR_ClearIsr(void)
//  171 {
LPLD_LPTMR_ClearIsr:
        PUSH     {R7,LR}
//  172   LPTMR0_CSR&=~LPTMR_CSR_TIE_MASK;
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//  173   disable_irq(85);
        MOVS     R0,#+85
        BL       disable_irq
//  174   LPTMR_ISR=NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  175   
//  176   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  177 }
//  178 
//  179 /*
//  180  *  LPLD_LPTMR_Reset
//  181  *  �͹��Ķ�ʱ����λ����λ�Ժ���յ͹��Ķ�ʱ��Counter
//  182  * 
//  183  *  ����:
//  184  *      ��
//  185  *  ����ֵ:
//  186  *      ��
//  187  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  188 void LPLD_LPTMR_Reset(void)
//  189 {
//  190   LPTMR0_CSR&=(~LPTMR_CSR_TEN_MASK);       //Reset LPTMR0 
LPLD_LPTMR_Reset:
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//  191 }
        BX       LR               ;; return
//  192 
//  193 
//  194 /*
//  195  *  LPLD_LPTMR_GetPulseAcc
//  196  *  �õ������ۼӵ�ֵ
//  197  * 
//  198  *  ����:
//  199  *      ��
//  200  *  ����ֵ:
//  201  *      �����ۼ�ֵ
//  202  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  203 uint16 LPLD_LPTMR_GetPulseAcc(void)
//  204 {
//  205    return (uint16)LPTMR0_CNR;
LPLD_LPTMR_GetPulseAcc:
        LDR.N    R0,??DataTable6_7  ;; 0x4004000c
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  206 }
//  207 
//  208 /*
//  209  *  LPLD_LPTMR_DelayMs
//  210  *  �͹��Ķ�ʱ����ʱn��ms
//  211  * 
//  212  * ����:
//  213  *    period_ms--�趨��ʱ���Ķ�ʱֵ ��λms
//  214  *    ���65535ms
//  215  *
//  216  *  ����ֵ:
//  217  *      ��
//  218  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  219 void LPLD_LPTMR_DelayMs(uint16 period_ms)
//  220 {
//  221   if(!period_ms)
LPLD_LPTMR_DelayMs:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??LPLD_LPTMR_DelayMs_0
//  222     return;
//  223   
//  224   /* ����LPTMRʱ�� */
//  225   SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK; 
??LPLD_LPTMR_DelayMs_1:
        LDR.N    R1,??DataTable6  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable6  ;; 0x40048038
        STR      R1,[R2, #+0]
//  226   
//  227   /* ���ú�����ʱ���� */
//  228   LPTMR0_CMR = period_ms; 
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable6_3  ;; 0x40040008
        STR      R0,[R1, #+0]
//  229   
//  230   /* ����LPTMR����Ƶ����1kHz LPOΪʱ��Դ */
//  231   LPTMR0_PSR = LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK; 
        MOVS     R0,#+5
        LDR.N    R1,??DataTable6_2  ;; 0x40040004
        STR      R0,[R1, #+0]
//  232   
//  233   /* ������ʱ�� */
//  234   LPTMR0_CSR |= LPTMR_CSR_TEN_MASK; 
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//  235 
//  236   /* �ȴ������ﵽ�趨ֵ */
//  237   while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK));
??LPLD_LPTMR_DelayMs_2:
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_LPTMR_DelayMs_2
//  238   
//  239   /*�����ֵ�Ƚϱ�־ */
//  240   LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//  241   
//  242   return;
??LPLD_LPTMR_DelayMs_0:
        BX       LR               ;; return
//  243 }
//  244 
//  245 
//  246 /*
//  247  *  LPLD_LPTMR_Isr
//  248  *  �͹��Ķ�ʱ���жϷ����ӳ���
//  249  * 
//  250  *  ����:
//  251  *      ��
//  252  *
//  253  *  ����ֵ:
//  254  *      ��
//  255  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 void LPLD_LPTMR_Isr(void)
//  257 {
LPLD_LPTMR_Isr:
        PUSH     {R7,LR}
//  258   LPTMR0_CSR|=LPTMR_CSR_TCF_MASK;  //���LPT�Ƚϱ�־
        LDR.N    R0,??DataTable6_1  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable6_1  ;; 0x40040000
        STR      R0,[R1, #+0]
//  259   LPTMR_ISR();
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        BLX      R0
//  260 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     LPTMR_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x4004904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x4004000c

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
//   4 bytes in section .bss
// 438 bytes in section .text
// 
// 438 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none
