///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:46:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_UART.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_UART.c" -D IAR
//        -D LPLD_K60 -lCN
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\List\HAL_UART.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN core_clk_khz
        EXTERN disable_irq
        EXTERN enable_irq
        EXTERN periph_clk_khz

        PUBLIC LPLD_UART_GetChar
        PUBLIC LPLD_UART_Init
        PUBLIC LPLD_UART_Isr
        PUBLIC LPLD_UART_PutChar
        PUBLIC LPLD_UART_PutCharArr
        PUBLIC LPLD_UART_RIE_Disable
        PUBLIC LPLD_UART_RIE_Enable
        PUBLIC UART_R_ISR
        PUBLIC UART_T_ISR
        PUBLIC UARTx_Ptr

// C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_UART.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_UART.c
//   10  * ��;: UART�ײ�ģ����غ���
//   11  * ����޸�����: 20120330
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17 */
//   18 /*
//   19  *******���õ�UART�жϣ�����isr.h��ճ��һ�´���:*********
//   20 
//   21 //UARTģ���жϷ�����
//   22 #undef  VECTOR_061
//   23 #define VECTOR_061 LPLD_UART_Isr
//   24 #undef  VECTOR_063
//   25 #define VECTOR_063 LPLD_UART_Isr
//   26 #undef  VECTOR_065
//   27 #define VECTOR_065 LPLD_UART_Isr
//   28 #undef  VECTOR_067
//   29 #define VECTOR_067 LPLD_UART_Isr
//   30 #undef  VECTOR_069
//   31 #define VECTOR_069 LPLD_UART_Isr
//   32 #undef  VECTOR_071
//   33 #define VECTOR_071 LPLD_UART_Isr
//   34 //���º�����LPLD_Kinetis�ײ���������޸�
//   35 extern void LPLD_UART_Isr(void);
//   36 
//   37  ***********************�������*************************
//   38 */
//   39 
//   40 #include "common.h"
//   41 #include "HAL_UART.h"
//   42 
//   43 
//   44 extern int core_clk_khz;          //ϵͳ��Ƶʱ��Ƶ��
//   45 extern int periph_clk_khz;        //����ʱ��Ƶ��
//   46 
//   47 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 UART_ISR_CALLBACK UART_R_ISR[6];  //�û������жϺ�����ڵ�ַ����
UART_R_ISR:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 UART_ISR_CALLBACK UART_T_ISR[6];  //�û������жϺ�����ڵ�ַ����
UART_T_ISR:
        DS8 24
//   50 
//   51 //UARTӳ���ַ����

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   52 volatile UART_MemMapPtr UARTx_Ptr[6] = {UART0_BASE_PTR, 
UARTx_Ptr:
        DATA
        DC32 4006A000H, 4006B000H, 4006C000H, 4006D000H, 400EA000H, 400EB000H
//   53                                         UART1_BASE_PTR, 
//   54                                         UART2_BASE_PTR, 
//   55                                         UART3_BASE_PTR, 
//   56                                         UART4_BASE_PTR, 
//   57                                         UART5_BASE_PTR};
//   58 
//   59 /*
//   60  * LPLD_UART_Init
//   61  * ��ʼ��UARTͨ�����䲨����
//   62  * 
//   63  * ����:
//   64  *    uartx--UARTģ���
//   65  *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
//   66  *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
//   67  *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
//   68  *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
//   69  *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
//   70  *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
//   71  *    baud--�����ʣ��Ƽ��������³��ò�����
//   72  *      |__4800
//   73  *      |__9600
//   74  *      |__19200
//   75  *      |__38400
//   76  *      |__57600
//   77  *      |__115200
//   78  *
//   79  * ���:
//   80  *    ��
//   81  *
//   82  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void LPLD_UART_Init(UARTx uartx, int baud)
//   84 {
LPLD_UART_Init:
        PUSH     {R4,R5}
//   85   UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5
        LDR      R0,[R2, R0, LSL #+2]
//   86   register uint16 sbr, brfa;
//   87   int sysclk;
//   88   uint8 temp;
//   89   
//   90   if ((uartptr == UART0_BASE_PTR) | (uartptr == UART1_BASE_PTR))
        LDR.N    R2,??DataTable5_1  ;; 0x4006a000
        CMP      R0,R2
        BNE.N    ??LPLD_UART_Init_0
        MOVS     R2,#+1
        B.N      ??LPLD_UART_Init_1
??LPLD_UART_Init_0:
        MOVS     R2,#+0
??LPLD_UART_Init_1:
        LDR.N    R3,??DataTable5_2  ;; 0x4006b000
        CMP      R0,R3
        BNE.N    ??LPLD_UART_Init_2
        MOVS     R3,#+1
        B.N      ??LPLD_UART_Init_3
??LPLD_UART_Init_2:
        MOVS     R3,#+0
??LPLD_UART_Init_3:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R2,R3,R2
        CMP      R2,#+0
        BEQ.N    ??LPLD_UART_Init_4
//   91     sysclk = core_clk_khz;
        LDR.N    R2,??DataTable5_3
        LDR      R2,[R2, #+0]
        B.N      ??LPLD_UART_Init_5
//   92   else
//   93     sysclk = periph_clk_khz;
??LPLD_UART_Init_4:
        LDR.N    R2,??DataTable5_4
        LDR      R2,[R2, #+0]
//   94   
//   95   //ʹ��ѡ�е�UART����ͨ��ʱ��   
//   96   if(uartptr == UART0_BASE_PTR)
??LPLD_UART_Init_5:
        LDR.N    R3,??DataTable5_1  ;; 0x4006a000
        CMP      R0,R3
        BNE.N    ??LPLD_UART_Init_6
//   97   {
//   98     SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;
        LDR.N    R3,??DataTable5_5  ;; 0x40048034
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x400
        LDR.N    R4,??DataTable5_5  ;; 0x40048034
        STR      R3,[R4, #+0]
//   99     //ʹ�� PTB17 ���ŵ� UART0_TXD ���� 
//  100     PORTA_PCR2 = PORT_PCR_MUX(0x2); 
        MOV      R3,#+512
        LDR.N    R4,??DataTable5_6  ;; 0x40049008
        STR      R3,[R4, #+0]
//  101     //ʹ�� PTB16 ���ŵ� UART0_RXD ���� 
//  102     PORTA_PCR1 = PORT_PCR_MUX(0x2);
        MOV      R3,#+512
        LDR.N    R4,??DataTable5_7  ;; 0x40049004
        STR      R3,[R4, #+0]
        B.N      ??LPLD_UART_Init_7
//  103   }
//  104   else
//  105   {
//  106     if (uartptr == UART1_BASE_PTR)
??LPLD_UART_Init_6:
        LDR.N    R3,??DataTable5_2  ;; 0x4006b000
        CMP      R0,R3
        BNE.N    ??LPLD_UART_Init_8
//  107     {
//  108       SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
        LDR.N    R3,??DataTable5_5  ;; 0x40048034
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800
        LDR.N    R4,??DataTable5_5  ;; 0x40048034
        STR      R3,[R4, #+0]
//  109       SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
        LDR.N    R3,??DataTable5_5  ;; 0x40048034
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.N    R4,??DataTable5_5  ;; 0x40048034
        STR      R3,[R4, #+0]
//  110       //ʹ�� PTC4 ���ŵ� UART1_TXD ���� 
//  111       PORTC_PCR4 = PORT_PCR_MUX(0x3); 
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_8  ;; 0x4004b010
        STR      R3,[R4, #+0]
//  112       //ʹ�� PTC3 ���ŵ� UART1_RXD ���� 
//  113       PORTC_PCR3 = PORT_PCR_MUX(0x3);
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_9  ;; 0x4004b00c
        STR      R3,[R4, #+0]
        B.N      ??LPLD_UART_Init_7
//  114     }
//  115     else
//  116     {
//  117       if (uartptr == UART2_BASE_PTR)
??LPLD_UART_Init_8:
        LDR.N    R3,??DataTable5_10  ;; 0x4006c000
        CMP      R0,R3
        BNE.N    ??LPLD_UART_Init_9
//  118       {
//  119         SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
        LDR.N    R3,??DataTable5_5  ;; 0x40048034
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.N    R4,??DataTable5_5  ;; 0x40048034
        STR      R3,[R4, #+0]
//  120         //ʹ�� PTD3 ���ŵ� UART2_TXD ���� 
//  121         PORTD_PCR3 = PORT_PCR_MUX(0x3); 
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_11  ;; 0x4004c00c
        STR      R3,[R4, #+0]
//  122         //ʹ�� PTD2 ���ŵ� UART2_RXD ���� 
//  123         PORTD_PCR2 = PORT_PCR_MUX(0x3);
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_12  ;; 0x4004c008
        STR      R3,[R4, #+0]
        B.N      ??LPLD_UART_Init_7
//  124       }
//  125       else
//  126       {
//  127         if(uartptr == UART3_BASE_PTR)
??LPLD_UART_Init_9:
        LDR.N    R3,??DataTable5_13  ;; 0x4006d000
        CMP      R0,R3
        BNE.N    ??LPLD_UART_Init_10
//  128         {
//  129           SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.N    R3,??DataTable5_5  ;; 0x40048034
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x2000
        LDR.N    R4,??DataTable5_5  ;; 0x40048034
        STR      R3,[R4, #+0]
//  130           //ʹ�� PTC17 ���ŵ� UART3_TXD ���� 
//  131           PORTE_PCR4 = PORT_PCR_MUX(0x3); 
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_14  ;; 0x4004d010
        STR      R3,[R4, #+0]
//  132           //ʹ�� PTC16 ���ŵ� UART3_RXD ���� 
//  133           PORTE_PCR5 = PORT_PCR_MUX(0x3);
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_15  ;; 0x4004d014
        STR      R3,[R4, #+0]
        B.N      ??LPLD_UART_Init_7
//  134         }
//  135         else
//  136         {
//  137           if(uartptr == UART4_BASE_PTR)
??LPLD_UART_Init_10:
        LDR.N    R3,??DataTable5_16  ;; 0x400ea000
        CMP      R0,R3
        BNE.N    ??LPLD_UART_Init_11
//  138           {
//  139             SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
        LDR.N    R3,??DataTable5_17  ;; 0x40048028
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x400
        LDR.N    R4,??DataTable5_17  ;; 0x40048028
        STR      R3,[R4, #+0]
//  140             //ʹ�� PTC15 ���ŵ� UART4_TXD ���� 
//  141             PORTC_PCR15 = PORT_PCR_MUX(0x3); 
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_18  ;; 0x4004b03c
        STR      R3,[R4, #+0]
//  142             //ʹ�� PTC14 ���ŵ� UART4_RXD ���� 
//  143             PORTC_PCR14 = PORT_PCR_MUX(0x3);
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_19  ;; 0x4004b038
        STR      R3,[R4, #+0]
        B.N      ??LPLD_UART_Init_7
//  144           }
//  145           else
//  146           {
//  147             SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
??LPLD_UART_Init_11:
        LDR.N    R3,??DataTable5_17  ;; 0x40048028
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800
        LDR.N    R4,??DataTable5_17  ;; 0x40048028
        STR      R3,[R4, #+0]
//  148             //ʹ�� PTE8 ���ŵ� UART3_TXD ���� 
//  149             PORTE_PCR8 = PORT_PCR_MUX(0x3); 
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_20  ;; 0x4004d020
        STR      R3,[R4, #+0]
//  150             //ʹ�� PTE9 ���ŵ� UART3_RXD ���� 
//  151             PORTE_PCR9 = PORT_PCR_MUX(0x3); 
        MOV      R3,#+768
        LDR.N    R4,??DataTable5_21  ;; 0x4004d024
        STR      R3,[R4, #+0]
//  152           }
//  153         }
//  154       }
//  155     }
//  156   }
//  157   
//  158   //�����ú������Ĵ���ǰ���ȹرշ������ͽ�����
//  159   UART_C2_REG(uartptr) &= ~(UART_C2_TE_MASK | UART_C2_RE_MASK );
??LPLD_UART_Init_7:
        LDRB     R3,[R0, #+3]
        ANDS     R3,R3,#0xF3
        STRB     R3,[R0, #+3]
//  160   
//  161   //����UARTΪ 8λ, ����żУ�� */
//  162   UART_C1_REG(uartptr) = 0;	
        MOVS     R3,#+0
        STRB     R3,[R0, #+2]
//  163   
//  164   //���㲨����
//  165   sbr = (uint16)((sysclk*1000)/(baud * 16));
        MOV      R3,#+1000
        MUL      R3,R3,R2
        LSLS     R4,R1,#+4
        SDIV     R3,R3,R4
//  166   
//  167   //����UARTx_BDH�Ĵ����г���SBR��ֵ
//  168   temp = UART_BDH_REG(uartptr) & ~(UART_BDH_SBR(0x1F));
        LDRB     R4,[R0, #+0]
        ANDS     R4,R4,#0xE0
//  169   
//  170   UART_BDH_REG(uartptr) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LSRS     R5,R3,#+8
        ANDS     R5,R5,#0x1F
        ORRS     R4,R5,R4
        STRB     R4,[R0, #+0]
//  171   UART_BDL_REG(uartptr) = (uint8)(sbr & UART_BDL_SBR_MASK);
        STRB     R3,[R0, #+1]
//  172   
//  173   //���ò����ʵ�΢������
//  174   brfa = (((sysclk*32000)/(baud * 16)) - (sbr * 32));
        MOV      R4,#+32000
        MULS     R2,R4,R2
        LSLS     R1,R1,#+4
        SDIV     R1,R2,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        SUBS     R1,R1,R3, LSL #+5
//  175   
//  176   //����UARTx_C4�Ĵ����г���BRFA��ֵ
//  177   temp = UART_C4_REG(uartptr) & ~(UART_C4_BRFA(0x1F));
        LDRB     R2,[R0, #+10]
        ANDS     R4,R2,#0xE0
//  178   
//  179   UART_C4_REG(uartptr) = temp |  UART_C4_BRFA(brfa);    
        ANDS     R1,R1,#0x1F
        ORRS     R1,R1,R4
        STRB     R1,[R0, #+10]
//  180   
//  181   //ʹ�ܷ������ͽ�����
//  182   UART_C2_REG(uartptr) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDRB     R1,[R0, #+3]
        ORRS     R1,R1,#0xC
        STRB     R1,[R0, #+3]
//  183 }
        POP      {R4,R5}
        BX       LR               ;; return
//  184 
//  185 /*
//  186  * LPLD_UART_GetChar
//  187  * ���ڲ�ѯ��ʽ��ȡһ���ֽ�
//  188  * 
//  189  * ����:
//  190  *    uartx--UARTģ���
//  191  *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
//  192  *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
//  193  *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
//  194  *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
//  195  *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
//  196  *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
//  197  *
//  198  * ���:
//  199  *    ���ڽ��յ�1���ֽ�
//  200  *
//  201  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 char LPLD_UART_GetChar(UARTx uartx)
//  203 {
//  204   UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
LPLD_UART_GetChar:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5
        LDR      R0,[R1, R0, LSL #+2]
//  205   
//  206   //�ȴ����ݽ���
//  207   while (!(UART_S1_REG(uartptr) & UART_S1_RDRF_MASK));
??LPLD_UART_GetChar_0:
        LDRB     R1,[R0, #+4]
        LSLS     R1,R1,#+26
        BPL.N    ??LPLD_UART_GetChar_0
//  208   
//  209   //���ؽ��յ�1���ֽ�����
//  210   return UART_D_REG(uartptr);
        LDRB     R0,[R0, #+7]
        BX       LR               ;; return
//  211 }
//  212 
//  213 /*
//  214  * LPLD_UART_PutChar
//  215  * ���ڲ�ѯ��ʽ����һ���ֽ�
//  216  * 
//  217  * ����:
//  218  *    uartx--UARTģ���
//  219  *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
//  220  *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
//  221  *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
//  222  *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
//  223  *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
//  224  *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
//  225  *    ch--�����͵�1���ֽ�
//  226  *
//  227  * ���:
//  228  *    ��
//  229  *
//  230  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  231 void LPLD_UART_PutChar(UARTx uartx, char ch)
//  232 {
//  233   UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
LPLD_UART_PutChar:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5
        LDR      R0,[R2, R0, LSL #+2]
//  234   
//  235   //�ȴ�FIFO׼������
//  236   while(!(UART_S1_REG(uartptr) & UART_S1_TDRE_MASK));
??LPLD_UART_PutChar_0:
        LDRB     R2,[R0, #+4]
        LSLS     R2,R2,#+24
        BPL.N    ??LPLD_UART_PutChar_0
//  237   
//  238   //��Ҫ���͵�1���ֽڷ���UART���ݼĴ���
//  239   UART_D_REG(uartptr) = (uint8)ch;
        STRB     R1,[R0, #+7]
//  240 }
        BX       LR               ;; return
//  241 
//  242 
//  243 /*
//  244  * LPLD_UART_PutCharArr
//  245  * ���ڲ�ѯ��ʽ�����ֽ�������
//  246  * 
//  247  * ����:
//  248  *    uartx--UARTģ���
//  249  *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
//  250  *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
//  251  *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
//  252  *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
//  253  *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
//  254  *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
//  255  *    *ch--�����͵��ֽ�����ͷ��ַ
//  256  *    len--�ֽ����鳤��
//  257  *
//  258  * ���:
//  259  *    ��
//  260  *
//  261  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  262 void LPLD_UART_PutCharArr(UARTx uartx, char *ch, int len)
//  263 {
LPLD_UART_PutCharArr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        B.N      ??LPLD_UART_PutCharArr_0
//  264   while(len--)
//  265   {
//  266     LPLD_UART_PutChar(uartx, *(ch++));
??LPLD_UART_PutCharArr_1:
        LDRB     R1,[R5, #+0]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_UART_PutChar
        ADDS     R5,R5,#+1
//  267   }
??LPLD_UART_PutCharArr_0:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        CMP      R0,#+0
        BNE.N    ??LPLD_UART_PutCharArr_1
//  268 }
        POP      {R4-R6,PC}       ;; return
//  269 
//  270 /*
//  271  * LPLD_UART_RIE_Enable
//  272  * ʹ�ܴ������ݽ����жϣ������жϺ������
//  273  * 
//  274  * ����:
//  275  *    uartx--UARTģ���
//  276  *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
//  277  *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
//  278  *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
//  279  *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
//  280  *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
//  281  *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
//  282  *    isr_func--���ݽ����жϳ�����ڵ�ַ
//  283  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  284  *
//  285  * ���:
//  286  *    ��
//  287  *
//  288  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  289 void LPLD_UART_RIE_Enable(UARTx uartx, UART_ISR_CALLBACK isr_func)
//  290 {
LPLD_UART_RIE_Enable:
        PUSH     {R7,LR}
//  291   UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5
        LDR      R2,[R2, R0, LSL #+2]
//  292   
//  293   UART_R_ISR[uartx] = isr_func;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable5_22
        STR      R1,[R3, R0, LSL #+2]
//  294  
//  295   //ʹ��UART�����ж�
//  296   UART_C2_REG(uartptr) |= UART_C2_RIE_MASK; 
        LDRB     R1,[R2, #+3]
        ORRS     R1,R1,#0x20
        STRB     R1,[R2, #+3]
//  297   
//  298   //�����ж������ʹ����Ӧ�ж�
//  299   enable_irq( 45 + uartx*2);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+1
        ADDS     R0,R0,#+45
        BL       enable_irq
//  300 }
        POP      {R0,PC}          ;; return
//  301 
//  302 /*
//  303  * LPLD_UART_RIE_Disable
//  304  * ���ô������ݽ����ж�
//  305  * 
//  306  * ����:
//  307  *    uartx--UARTģ���
//  308  *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
//  309  *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
//  310  *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
//  311  *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
//  312  *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
//  313  *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
//  314  *
//  315  * ���:
//  316  *    ��
//  317  *
//  318  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  319 void LPLD_UART_RIE_Disable(UARTx uartx)
//  320 {
LPLD_UART_RIE_Disable:
        PUSH     {R7,LR}
//  321   UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5
        LDR      R1,[R1, R0, LSL #+2]
//  322  
//  323   //����UART�����ж�
//  324   UART_C2_REG(uartptr) &= ~UART_C2_RIE_MASK;  
        LDRB     R2,[R1, #+3]
        ANDS     R2,R2,#0xDF
        STRB     R2,[R1, #+3]
//  325   
//  326   disable_irq( 45 + uartx*2);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+1
        ADDS     R0,R0,#+45
        BL       disable_irq
//  327 }
        POP      {R0,PC}          ;; return
//  328 
//  329 /*
//  330  * LPLD_UART_Isr
//  331  * UARTͨ���жϵײ���ں���
//  332  * 
//  333  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  334  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  335 void LPLD_UART_Isr(void)
//  336 {
LPLD_UART_Isr:
        PUSH     {R7,LR}
//  337   #define UART_VECTORNUM   (*(volatile uint8_t*)(0xE000ED04))
//  338   uint8_t uart_ch = (UART_VECTORNUM - 61)/2;
        LDR.N    R0,??DataTable5_23  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R0,R0,#+61
        MOVS     R1,#+2
        SDIV     R0,R0,R1
//  339   UART_MemMapPtr uartch = (UART_MemMapPtr)((0x4006A+uart_ch)<<12);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,R0,#+262144
        ADDS     R1,R1,#+106
        LSLS     R1,R1,#+12
//  340   if(uart_ch>3){
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??LPLD_UART_Isr_0
//  341     uartch = (UART_MemMapPtr)((0x400E6+uart_ch)<<12);  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,R0,#+262144
        ADDS     R1,R1,#+230
        LSLS     R1,R1,#+12
//  342   }
//  343   
//  344   //��������жϺ���
//  345   if(UART_S1_REG(uartch) & UART_S1_RDRF_MASK)
??LPLD_UART_Isr_0:
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+26
        BPL.N    ??LPLD_UART_Isr_1
//  346   {
//  347     UART_R_ISR[uart_ch]();
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_22
        LDR      R0,[R1, R0, LSL #+2]
        BLX      R0
//  348   }
//  349 }
??LPLD_UART_Isr_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     UARTx_Ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x4006b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x40049008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x40049004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     0x40048028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     0x4004b03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DC32     0x4004b038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_20:
        DC32     0x4004d020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_21:
        DC32     0x4004d024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_22:
        DC32     UART_R_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_23:
        DC32     0xe000ed04

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
//  48 bytes in section .bss
//  24 bytes in section .data
// 656 bytes in section .text
// 
// 656 bytes of CODE memory
//  72 bytes of DATA memory
//
//Errors: none
//Warnings: none
