///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     14/May/2014  22:54:09 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\huang\Desktop\k60\lib\LPLD\HAL_FTM.c           /
//    Command line =  C:\Users\huang\Desktop\k60\lib\LPLD\HAL_FTM.c -D IAR    /
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
//                    _FTM.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN enable_irq
        EXTERN periph_clk_khz

        PUBLIC FTM_ISR
        PUBLIC LPLD_FTM0_Divider
        PUBLIC LPLD_FTM0_InputCapture_Init
        PUBLIC LPLD_FTM0_MOD
        PUBLIC LPLD_FTM0_PWM_ChangeDuty
        PUBLIC LPLD_FTM0_PWM_Init
        PUBLIC LPLD_FTM0_PWM_Open
        PUBLIC LPLD_FTM1_Divider
        PUBLIC LPLD_FTM1_InputCapture_Init
        PUBLIC LPLD_FTM1_MOD
        PUBLIC LPLD_FTM1_PWM_ChangeDuty
        PUBLIC LPLD_FTM1_PWM_Init
        PUBLIC LPLD_FTM1_PWM_Open
        PUBLIC LPLD_FTM2_Divider
        PUBLIC LPLD_FTM2_InputCapture_Init
        PUBLIC LPLD_FTM2_MOD
        PUBLIC LPLD_FTM2_PWM_ChangeDuty
        PUBLIC LPLD_FTM2_PWM_Init
        PUBLIC LPLD_FTM2_PWM_Open
        PUBLIC LPLD_FTM_Isr

// C:\Users\huang\Desktop\k60\lib\LPLD\HAL_FTM.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_FTM.h
//   10  * ��;: FlexTimer�ײ�ģ����غ���
//   11  * ����޸�����: 20120329
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17  */
//   18 /*
//   19  *******���õ�FTM�жϣ�����isr.h��ճ��һ�´���:*********
//   20 
//   21 //FTMģ���жϷ�����
//   22 #undef  VECTOR_078
//   23 #define VECTOR_078 LPLD_FTM_Isr
//   24 #undef  VECTOR_079
//   25 #define VECTOR_079 LPLD_FTM_Isr
//   26 #undef  VECTOR_080
//   27 #define VECTOR_080 LPLD_FTM_Isr
//   28 //���º�����LPLD_Kinetis�ײ���������޸�
//   29 extern void LPLD_FTM_Isr(void);
//   30 
//   31  ***********************�������*************************
//   32 */
//   33 
//   34 #include "common.h"
//   35 #include "HAL_FTM.h"
//   36 
//   37 //��������ʱ��Ƶ�ʣ���ֵ��sysinit.c�ļ���ȡ��
//   38 extern int periph_clk_khz;
//   39 
//   40 //ȫ�ֱ�������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   41 uint32 LPLD_FTM0_MOD;
LPLD_FTM0_MOD:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   42 uint32 LPLD_FTM1_MOD;
LPLD_FTM1_MOD:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 uint32 LPLD_FTM2_MOD;
LPLD_FTM2_MOD:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   44 uint8 LPLD_FTM0_Divider;
LPLD_FTM0_Divider:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   45 uint8 LPLD_FTM1_Divider;
LPLD_FTM1_Divider:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   46 uint8 LPLD_FTM2_Divider;
LPLD_FTM2_Divider:
        DS8 1
//   47 
//   48 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 FTM_ISR_CALLBACK FTM_ISR[3];
FTM_ISR:
        DS8 12
//   50 
//   51 /*
//   52  * LPLD_FTM0_PWM_Init
//   53  * FTM0ģ��PWM���ܳ�ʼ������
//   54  * 
//   55  * ����:
//   56  *    freq--����Ƶ�ʣ���λHz
//   57  *
//   58  * ���:
//   59  *    0--���ô���
//   60  *    1--���óɹ�
//   61  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 uint8 LPLD_FTM0_PWM_Init(uint32 freq)
//   63 {
LPLD_FTM0_PWM_Init:
        PUSH     {R4}
//   64   uint32 bus_clk_hz;
//   65   uint32 mod;
//   66   uint8 ps;
//   67 
//   68   bus_clk_hz = periph_clk_khz*1000;
        LDR.W    R1,??DataTable10
        LDR      R1,[R1, #+0]
        MOV      R2,#+1000
        MULS     R1,R2,R1
//   69   
//   70   if(freq>bus_clk_hz) return 0;
        CMP      R1,R0
        BCS.N    ??LPLD_FTM0_PWM_Init_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM0_PWM_Init_1
//   71   
//   72   if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
??LPLD_FTM0_PWM_Init_0:
        MOVS     R2,#+128
        MUL      R2,R2,R0
        UDIV     R3,R1,R2
        MOVW     R2,#+65535
        CMP      R3,R2
        BCS.N    ??LPLD_FTM0_PWM_Init_2
//   73   {
//   74     ps = 7;
        MOVS     R2,#+7
//   75     LPLD_FTM0_MOD = mod;
        LDR.W    R4,??DataTable12
        STR      R3,[R4, #+0]
//   76     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
        MOVS     R3,#+64
        MUL      R3,R3,R0
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM0_PWM_Init_3
//   77     {
//   78       ps = 6;   
        MOVS     R2,#+6
//   79       LPLD_FTM0_MOD = mod;  
        LDR.W    R4,??DataTable12
        STR      R3,[R4, #+0]
//   80       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
        LSLS     R3,R0,#+5
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM0_PWM_Init_3
//   81       {
//   82         ps = 5; 
        MOVS     R2,#+5
//   83         LPLD_FTM0_MOD = mod;  
        LDR.W    R4,??DataTable12
        STR      R3,[R4, #+0]
//   84         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        LSLS     R3,R0,#+4
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM0_PWM_Init_3
//   85         {
//   86           ps = 4;  
        MOVS     R2,#+4
//   87           LPLD_FTM0_MOD = mod;    
        LDR.W    R4,??DataTable12
        STR      R3,[R4, #+0]
//   88           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
        LSLS     R3,R0,#+3
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM0_PWM_Init_3
//   89           {
//   90             ps = 3;
        MOVS     R2,#+3
//   91             LPLD_FTM0_MOD = mod;
        LDR.W    R4,??DataTable12
        STR      R3,[R4, #+0]
//   92             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
        LSLS     R3,R0,#+2
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM0_PWM_Init_3
//   93             {
//   94               ps = 2;
        MOVS     R2,#+2
//   95               LPLD_FTM0_MOD = mod;
        LDR.W    R4,??DataTable12
        STR      R3,[R4, #+0]
//   96               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
        LSLS     R3,R0,#+1
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM0_PWM_Init_3
//   97               {
//   98                 ps = 1;
        MOVS     R2,#+1
//   99                 LPLD_FTM0_MOD = mod;
        LDR.W    R4,??DataTable12
        STR      R3,[R4, #+0]
//  100                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
        UDIV     R3,R1,R0
        MOVW     R0,#+65535
        CMP      R3,R0
        BCS.N    ??LPLD_FTM0_PWM_Init_3
//  101                 {
//  102                   ps = 0;
        MOVS     R2,#+0
//  103                   LPLD_FTM0_MOD = mod;
        LDR.W    R0,??DataTable12
        STR      R3,[R0, #+0]
//  104                 }
//  105               }
//  106             }
//  107           }
//  108         }  
//  109       }
//  110     }
//  111   }
//  112   else
//  113   {
//  114     return 0;
//  115   }
//  116   
//  117   // ʹ��FTMʱ��ģ��
//  118   SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;
??LPLD_FTM0_PWM_Init_3:
        LDR.W    R0,??DataTable11  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable11  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  119   
//  120   // ����FTM���ƼĴ���
//  121   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
//  122   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  123   FTM0_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R0,R2,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable12_1  ;; 0x40038000
        STR      R0,[R1, #+0]
//  124   
//  125   // ����PWM���ڼ�ռ�ձ�
//  126   //    PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
//  127   // ����FTM������ʼֵ
//  128   FTM0_CNT = 0;
        LDR.W    R0,??DataTable12_2  ;; 0x40038004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  129   FTM0_CNTIN = 0;
        LDR.W    R0,??DataTable12_3  ;; 0x4003804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  130   // ����FTM����MODֵ
//  131   FTM0_MOD = LPLD_FTM0_MOD;
        LDR.W    R0,??DataTable12_4  ;; 0x40038008
        LDR.W    R1,??DataTable12
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  132   
//  133   return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_FTM0_PWM_Init_1
??LPLD_FTM0_PWM_Init_2:
        MOVS     R0,#+0
??LPLD_FTM0_PWM_Init_1:
        POP      {R4}
        BX       LR               ;; return
//  134 }
//  135 
//  136 /*
//  137  * LPLD_FTM0_PWM_Open
//  138  * FTM0ģ��PWM���ͨ����ռ�ձ�����
//  139  * 
//  140  * ˵��: ����GPIOҲ������ΪFTM0���,������ֻ����PTC��PTD,����ı��������޸� 
//  141  * 
//  142  * ����:
//  143  *    channel - PWM���ͨ��
//  144  *      |__0--PTC1
//  145  *      |__1--PTC2
//  146  *      |__2--PTC3
//  147  *      |__3--PTC4
//  148  *      |__4--PTD4
//  149  *      |__5--PTD5
//  150  *      |__6--PTD6
//  151  *      |__7--PTD7
//  152  *    duty - PWM���ռ�ձ�
//  153  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  154  *
//  155  * ���:
//  156  *    0--���ô���
//  157  *    1--���óɹ�
//  158  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 uint8 LPLD_FTM0_PWM_Open(uint8 channel, uint32 duty)
//  160 {
LPLD_FTM0_PWM_Open:
        SUB      SP,SP,#+4
//  161   uint32 cv;
//  162   volatile uint32 mod;
//  163   
//  164   if(duty>10000) return 0;
        MOVW     R2,#+10001
        CMP      R1,R2
        BCC.N    ??LPLD_FTM0_PWM_Open_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM0_PWM_Open_1
//  165   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  166   mod = LPLD_FTM0_MOD;
??LPLD_FTM0_PWM_Open_0:
        LDR.W    R2,??DataTable12
        LDR      R2,[R2, #+0]
        STR      R2,[SP, #+0]
//  167   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+1
        MULS     R1,R2,R1
        MOVW     R2,#+10000
        UDIV     R1,R1,R2
//  168   
//  169   //ѡ�񲢿���ͨ��
//  170   switch(channel)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        CMP      R2,#+0
        CMP      R2,#+3
        BLS.N    ??LPLD_FTM0_PWM_Open_2
        SUBS     R2,R2,#+4
        CMP      R2,#+3
        BLS.N    ??LPLD_FTM0_PWM_Open_3
        B.N      ??LPLD_FTM0_PWM_Open_4
//  171   {
//  172     case 0:
//  173     case 1:
//  174     case 2:
//  175     case 3:
//  176       SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
??LPLD_FTM0_PWM_Open_2:
        LDR.W    R2,??DataTable12_5  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800
        LDR.W    R3,??DataTable12_5  ;; 0x40048038
        STR      R2,[R3, #+0]
//  177       PORT_PCR_REG(PORTC_BASE_PTR, channel+1) = PORT_PCR_MUX(4);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+307200
        MOV      R3,#+1024
        STR      R3,[R2, #+4]
//  178       break;
//  179     case 4:
//  180     case 5:
//  181     case 6:
//  182     case 7:
//  183       SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  184       PORT_PCR_REG(PORTD_BASE_PTR, channel) = PORT_PCR_MUX(4);
//  185       break;
//  186     default:
//  187        return 0;
//  188   }  
//  189   
//  190   // ����FTMͨ�����ƼĴ��� 
//  191   // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
//  192   FTM_CnSC_REG(FTM0_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
??LPLD_FTM0_PWM_Open_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        MOVS     R3,#+40
        STR      R3,[R2, R0, LSL #+3]
//  193   // ����FTMͨ��ֵ
//  194   FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        ADDS     R0,R2,R0, LSL #+3
        STR      R1,[R0, #+4]
//  195   
//  196   return 1;
        MOVS     R0,#+1
??LPLD_FTM0_PWM_Open_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return
??LPLD_FTM0_PWM_Open_3:
        LDR.W    R2,??DataTable12_5  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1000
        LDR.W    R3,??DataTable12_5  ;; 0x40048038
        STR      R2,[R3, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_7  ;; 0x4004c000
        MOV      R3,#+1024
        STR      R3,[R2, R0, LSL #+2]
        B.N      ??LPLD_FTM0_PWM_Open_5
??LPLD_FTM0_PWM_Open_4:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM0_PWM_Open_1
//  197 }
//  198 
//  199 /*
//  200  * LPLD_FTM0_PWM_ChangeDuty
//  201  * �ı�FTM0ģ��PWM���ͨ��ռ�ձ�
//  202  *
//  203  * ����:
//  204  *    channel - PWM���ͨ��
//  205  *      |__0--PTC1
//  206  *      |__1--PTC2
//  207  *      |__2--PTC3
//  208  *      |__3--PTC4
//  209  *      |__4--PTD4
//  210  *      |__5--PTD5
//  211  *      |__6--PTD6
//  212  *      |__7--PTD7
//  213  *    duty - PWM���ռ�ձ�
//  214  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  215  *
//  216  * ���:
//  217  *    0--���ô���
//  218  *    1--���óɹ�
//  219  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  220 uint8 LPLD_FTM0_PWM_ChangeDuty(uint8 channel, uint32 duty)
//  221 {
LPLD_FTM0_PWM_ChangeDuty:
        SUB      SP,SP,#+4
//  222   uint32 cv;
//  223   volatile uint32 mod;
//  224   
//  225   if(duty>10000) return 0;
        MOVW     R2,#+10001
        CMP      R1,R2
        BCC.N    ??LPLD_FTM0_PWM_ChangeDuty_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM0_PWM_ChangeDuty_1
//  226   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  227   mod = LPLD_FTM0_MOD;
??LPLD_FTM0_PWM_ChangeDuty_0:
        LDR.W    R2,??DataTable12
        LDR      R2,[R2, #+0]
        STR      R2,[SP, #+0]
//  228   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+1
        MULS     R1,R2,R1
        MOVW     R2,#+10000
        UDIV     R1,R1,R2
//  229  
//  230   // ����FTMͨ��ֵ
//  231   FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        ADDS     R0,R2,R0, LSL #+3
        STR      R1,[R0, #+4]
//  232   
//  233   return 1;
        MOVS     R0,#+1
??LPLD_FTM0_PWM_ChangeDuty_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  234 }
//  235 
//  236 /*
//  237  * LPLD_FTM1_PWM_Init
//  238  * FTM1ģ��PWM���ܳ�ʼ������
//  239  * 
//  240  * ����:
//  241  *    freq--����Ƶ�ʣ���λHz
//  242  *
//  243  * ���:
//  244  *    0--���ô���
//  245  *    1--���óɹ�
//  246  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 uint8 LPLD_FTM1_PWM_Init(uint32 freq)
//  248 {
LPLD_FTM1_PWM_Init:
        PUSH     {R4}
//  249   uint32 bus_clk_hz;
//  250   uint32 mod;
//  251   uint8 ps;
//  252 
//  253   bus_clk_hz = periph_clk_khz*1000;
        LDR.W    R1,??DataTable10
        LDR      R1,[R1, #+0]
        MOV      R2,#+1000
        MULS     R1,R2,R1
//  254   
//  255   if(freq>bus_clk_hz) return 0;
        CMP      R1,R0
        BCS.N    ??LPLD_FTM1_PWM_Init_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM1_PWM_Init_1
//  256   
//  257   if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
??LPLD_FTM1_PWM_Init_0:
        MOVS     R2,#+128
        MUL      R2,R2,R0
        UDIV     R3,R1,R2
        MOVW     R2,#+65535
        CMP      R3,R2
        BCS.N    ??LPLD_FTM1_PWM_Init_2
//  258   {
//  259     ps = 7;
        MOVS     R2,#+7
//  260     LPLD_FTM1_MOD = mod;
        LDR.W    R4,??DataTable12_8
        STR      R3,[R4, #+0]
//  261     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
        MOVS     R3,#+64
        MUL      R3,R3,R0
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM1_PWM_Init_3
//  262     {
//  263       ps = 6;   
        MOVS     R2,#+6
//  264       LPLD_FTM1_MOD = mod;  
        LDR.W    R4,??DataTable12_8
        STR      R3,[R4, #+0]
//  265       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
        LSLS     R3,R0,#+5
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM1_PWM_Init_3
//  266       {
//  267         ps = 5; 
        MOVS     R2,#+5
//  268         LPLD_FTM1_MOD = mod;  
        LDR.W    R4,??DataTable12_8
        STR      R3,[R4, #+0]
//  269         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        LSLS     R3,R0,#+4
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM1_PWM_Init_3
//  270         {
//  271           ps = 4;  
        MOVS     R2,#+4
//  272           LPLD_FTM1_MOD = mod;    
        LDR.W    R4,??DataTable12_8
        STR      R3,[R4, #+0]
//  273           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
        LSLS     R3,R0,#+3
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM1_PWM_Init_3
//  274           {
//  275             ps = 3;
        MOVS     R2,#+3
//  276             LPLD_FTM1_MOD = mod;
        LDR.W    R4,??DataTable12_8
        STR      R3,[R4, #+0]
//  277             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
        LSLS     R3,R0,#+2
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM1_PWM_Init_3
//  278             {
//  279               ps = 2;
        MOVS     R2,#+2
//  280               LPLD_FTM1_MOD = mod;
        LDR.W    R4,??DataTable12_8
        STR      R3,[R4, #+0]
//  281               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
        LSLS     R3,R0,#+1
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM1_PWM_Init_3
//  282               {
//  283                 ps = 1;
        MOVS     R2,#+1
//  284                 LPLD_FTM1_MOD = mod;
        LDR.W    R4,??DataTable12_8
        STR      R3,[R4, #+0]
//  285                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
        UDIV     R3,R1,R0
        MOVW     R0,#+65535
        CMP      R3,R0
        BCS.N    ??LPLD_FTM1_PWM_Init_3
//  286                 {
//  287                   ps = 0;
        MOVS     R2,#+0
//  288                   LPLD_FTM1_MOD = mod;
        LDR.W    R0,??DataTable12_8
        STR      R3,[R0, #+0]
//  289                 }
//  290               }
//  291             }
//  292           }
//  293         }  
//  294       }
//  295     }
//  296   }
//  297   else
//  298   {
//  299     return 0;
//  300   }
//  301   
//  302   // ʹ��FTMʱ��ģ��
//  303   SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
??LPLD_FTM1_PWM_Init_3:
        LDR.W    R0,??DataTable11  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable11  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  304   
//  305   // ����FTM���ƼĴ���
//  306   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
//  307   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  308   FTM1_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R0,R2,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable12_9  ;; 0x40039000
        STR      R0,[R1, #+0]
//  309   
//  310   // ����PWM���ڼ�ռ�ձ�
//  311   //    PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
//  312   // ����FTM������ʼֵ
//  313   FTM1_CNT = 0;
        LDR.W    R0,??DataTable12_10  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  314   FTM1_CNTIN = 0;
        LDR.W    R0,??DataTable12_11  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  315   // ����FTM����MODֵ
//  316   FTM1_MOD = LPLD_FTM1_MOD;
        LDR.W    R0,??DataTable12_12  ;; 0x40039008
        LDR.W    R1,??DataTable12_8
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  317   
//  318   return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_FTM1_PWM_Init_1
??LPLD_FTM1_PWM_Init_2:
        MOVS     R0,#+0
??LPLD_FTM1_PWM_Init_1:
        POP      {R4}
        BX       LR               ;; return
//  319 }
//  320 
//  321 /*
//  322  * LPLD_FTM1_PWM_Open
//  323  * FTM1ģ��PWM���ͨ����ռ�ձ�����
//  324  *  
//  325  * ˵��: ����GPIOҲ������ΪFTM1���,������ֻ����PTA,����ı��������޸� 
//  326  * 
//  327  * ����:
//  328  *    channel - PWM���ͨ��
//  329  *      |__0--PTA8
//  330  *      |__1--PTA9
//  331  *    duty - PWM���ռ�ձ�
//  332  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  333  *
//  334  * ���:
//  335  *    0--���ô���
//  336  *    1--���óɹ�
//  337  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  338 uint8 LPLD_FTM1_PWM_Open(uint8 channel, uint32 duty)
//  339 {
LPLD_FTM1_PWM_Open:
        SUB      SP,SP,#+4
//  340   uint32 cv;
//  341   volatile uint32 mod;
//  342   
//  343   if(duty>10000) return 0;
        MOVW     R2,#+10001
        CMP      R1,R2
        BCC.N    ??LPLD_FTM1_PWM_Open_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM1_PWM_Open_1
//  344   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  345   mod = LPLD_FTM1_MOD;
??LPLD_FTM1_PWM_Open_0:
        LDR.W    R2,??DataTable12_8
        LDR      R2,[R2, #+0]
        STR      R2,[SP, #+0]
//  346   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+1
        MULS     R1,R2,R1
        MOVW     R2,#+10000
        UDIV     R1,R1,R2
//  347   
//  348   //ѡ�񲢿���ͨ��
//  349   switch(channel)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        CMP      R2,#+0
        CMP      R2,#+1
        BHI.N    ??LPLD_FTM1_PWM_Open_2
//  350   {
//  351     case 0:
//  352     case 1:
//  353       SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??LPLD_FTM1_PWM_Open_3:
        LDR.W    R2,??DataTable12_5  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x200
        LDR.W    R3,??DataTable12_5  ;; 0x40048038
        STR      R2,[R3, #+0]
//  354       PORT_PCR_REG(PORTA_BASE_PTR, channel+8) = PORT_PCR_MUX(3);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+299008
        MOV      R3,#+768
        STR      R3,[R2, #+32]
//  355       break;
//  356     default:
//  357        return 0;
//  358   }  
//  359   
//  360   // ����FTMͨ�����ƼĴ��� 
//  361   // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
//  362   FTM_CnSC_REG(FTM1_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        MOVS     R3,#+40
        STR      R3,[R2, R0, LSL #+3]
//  363   // ����FTMͨ��ֵ
//  364   FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        ADDS     R0,R2,R0, LSL #+3
        STR      R1,[R0, #+4]
//  365   
//  366   return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_FTM1_PWM_Open_1
??LPLD_FTM1_PWM_Open_2:
        MOVS     R0,#+0
??LPLD_FTM1_PWM_Open_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  367 }
//  368 
//  369 /*
//  370  * LPLD_FTM1_PWM_ChangeDuty
//  371  * �ı�FTM1ģ��PWM���ͨ��ռ�ձ�
//  372  *
//  373  * ����:
//  374  *    channel - PWM���ͨ��
//  375  *      |__0--PTA8
//  376  *      |__1--PTA9
//  377  *    duty - PWM���ռ�ձ�
//  378  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  379  *
//  380  * ���:
//  381  *    0--���ô���
//  382  *    1--���óɹ�
//  383  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  384 uint8 LPLD_FTM1_PWM_ChangeDuty(uint8 channel, uint32 duty)
//  385 {
LPLD_FTM1_PWM_ChangeDuty:
        SUB      SP,SP,#+4
//  386   uint32 cv;
//  387   volatile uint32 mod;
//  388   
//  389   if(duty>10000) return 0;
        MOVW     R2,#+10001
        CMP      R1,R2
        BCC.N    ??LPLD_FTM1_PWM_ChangeDuty_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM1_PWM_ChangeDuty_1
//  390   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  391   mod = LPLD_FTM1_MOD;
??LPLD_FTM1_PWM_ChangeDuty_0:
        LDR.W    R2,??DataTable12_8
        LDR      R2,[R2, #+0]
        STR      R2,[SP, #+0]
//  392   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+1
        MULS     R1,R2,R1
        MOVW     R2,#+10000
        UDIV     R1,R1,R2
//  393  
//  394   // ����FTMͨ��ֵ
//  395   FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        ADDS     R0,R2,R0, LSL #+3
        STR      R1,[R0, #+4]
//  396   
//  397   return 1;
        MOVS     R0,#+1
??LPLD_FTM1_PWM_ChangeDuty_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  398 }
//  399 
//  400 
//  401 /*
//  402  * LPLD_FTM2_PWM_Init
//  403  * FTM2ģ��PWM���ܳ�ʼ������
//  404  * 
//  405  * ����:
//  406  *    freq--����Ƶ�ʣ���λHz
//  407  *
//  408  * ���:
//  409  *    0--���ô���
//  410  *    1--���óɹ�
//  411  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  412 uint8 LPLD_FTM2_PWM_Init(uint32 freq)
//  413 {
LPLD_FTM2_PWM_Init:
        PUSH     {R4}
//  414   uint32 bus_clk_hz;
//  415   uint32 mod;
//  416   uint8 ps;
//  417 
//  418   bus_clk_hz = periph_clk_khz*1000;
        LDR.W    R1,??DataTable10
        LDR      R1,[R1, #+0]
        MOV      R2,#+1000
        MULS     R1,R2,R1
//  419   
//  420   if(freq>bus_clk_hz) return 0;
        CMP      R1,R0
        BCS.N    ??LPLD_FTM2_PWM_Init_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM2_PWM_Init_1
//  421   
//  422   if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
??LPLD_FTM2_PWM_Init_0:
        MOVS     R2,#+128
        MUL      R2,R2,R0
        UDIV     R3,R1,R2
        MOVW     R2,#+65535
        CMP      R3,R2
        BCS.N    ??LPLD_FTM2_PWM_Init_2
//  423   {
//  424     ps = 7;
        MOVS     R2,#+7
//  425     LPLD_FTM2_MOD = mod;
        LDR.W    R4,??DataTable12_14
        STR      R3,[R4, #+0]
//  426     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
        MOVS     R3,#+64
        MUL      R3,R3,R0
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM2_PWM_Init_3
//  427     {
//  428       ps = 6;   
        MOVS     R2,#+6
//  429       LPLD_FTM2_MOD = mod;  
        LDR.W    R4,??DataTable12_14
        STR      R3,[R4, #+0]
//  430       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
        LSLS     R3,R0,#+5
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM2_PWM_Init_3
//  431       {
//  432         ps = 5; 
        MOVS     R2,#+5
//  433         LPLD_FTM2_MOD = mod;  
        LDR.W    R4,??DataTable12_14
        STR      R3,[R4, #+0]
//  434         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        LSLS     R3,R0,#+4
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM2_PWM_Init_3
//  435         {
//  436           ps = 4;  
        MOVS     R2,#+4
//  437           LPLD_FTM2_MOD = mod;    
        LDR.W    R4,??DataTable12_14
        STR      R3,[R4, #+0]
//  438           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
        LSLS     R3,R0,#+3
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM2_PWM_Init_3
//  439           {
//  440             ps = 3;
        MOVS     R2,#+3
//  441             LPLD_FTM2_MOD = mod;
        LDR.W    R4,??DataTable12_14
        STR      R3,[R4, #+0]
//  442             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
        LSLS     R3,R0,#+2
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM2_PWM_Init_3
//  443             {
//  444               ps = 2;
        MOVS     R2,#+2
//  445               LPLD_FTM2_MOD = mod;
        LDR.W    R4,??DataTable12_14
        STR      R3,[R4, #+0]
//  446               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
        LSLS     R3,R0,#+1
        UDIV     R3,R1,R3
        MOVW     R4,#+65535
        CMP      R3,R4
        BCS.N    ??LPLD_FTM2_PWM_Init_3
//  447               {
//  448                 ps = 1;
        MOVS     R2,#+1
//  449                 LPLD_FTM2_MOD = mod;
        LDR.W    R4,??DataTable12_14
        STR      R3,[R4, #+0]
//  450                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
        UDIV     R3,R1,R0
        MOVW     R0,#+65535
        CMP      R3,R0
        BCS.N    ??LPLD_FTM2_PWM_Init_3
//  451                 {
//  452                   ps = 0;
        MOVS     R2,#+0
//  453                   LPLD_FTM2_MOD = mod;
        LDR.W    R0,??DataTable12_14
        STR      R3,[R0, #+0]
//  454                 }
//  455               }
//  456             }
//  457           }
//  458         }  
//  459       }
//  460     }
//  461   }
//  462   else
//  463   {
//  464     return 0;
//  465   }
//  466   
//  467   // ʹ��FTMʱ��ģ��
//  468   SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;
??LPLD_FTM2_PWM_Init_3:
        LDR.W    R0,??DataTable12_15  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable12_15  ;; 0x40048030
        STR      R0,[R1, #+0]
//  469   
//  470   // ����FTM���ƼĴ���
//  471   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
//  472   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  473   FTM2_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R0,R2,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable12_16  ;; 0x400b8000
        STR      R0,[R1, #+0]
//  474   
//  475   // ����PWM���ڼ�ռ�ձ�
//  476   //    PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
//  477   // ����FTM������ʼֵ
//  478   FTM2_CNT = 0;
        LDR.W    R0,??DataTable12_17  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  479   FTM2_CNTIN = 0;
        LDR.W    R0,??DataTable12_18  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  480   // ����FTM����MODֵ
//  481   FTM2_MOD = LPLD_FTM2_MOD;
        LDR.W    R0,??DataTable12_19  ;; 0x400b8008
        LDR.W    R1,??DataTable12_14
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  482   
//  483   return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_FTM2_PWM_Init_1
??LPLD_FTM2_PWM_Init_2:
        MOVS     R0,#+0
??LPLD_FTM2_PWM_Init_1:
        POP      {R4}
        BX       LR               ;; return
//  484 }
//  485 
//  486 /*
//  487  * LPLD_FTM2_PWM_Open
//  488  * FTM2ģ��PWM���ͨ����ռ�ձ�����
//  489  *  
//  490  * ˵��: ����GPIOҲ������ΪFTM2���,������ֻ����PTA,����ı��������޸� 
//  491  * 
//  492  * ����:
//  493  *    channel - PWM���ͨ��
//  494  *      |__0--PTA10
//  495  *      |__1--PTA11
//  496  *    duty - PWM���ռ�ձ�
//  497  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  498  *
//  499  * ���:
//  500  *    0--���ô���
//  501  *    1--���óɹ�
//  502  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  503 uint8 LPLD_FTM2_PWM_Open(uint8 channel, uint32 duty)
//  504 {
LPLD_FTM2_PWM_Open:
        SUB      SP,SP,#+4
//  505   uint32 cv;
//  506   volatile uint32 mod;
//  507   
//  508   if(duty>10000) return 0;
        MOVW     R2,#+10001
        CMP      R1,R2
        BCC.N    ??LPLD_FTM2_PWM_Open_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM2_PWM_Open_1
//  509   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  510   mod = LPLD_FTM2_MOD;
??LPLD_FTM2_PWM_Open_0:
        LDR.W    R2,??DataTable12_14
        LDR      R2,[R2, #+0]
        STR      R2,[SP, #+0]
//  511   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+1
        MULS     R1,R2,R1
        MOVW     R2,#+10000
        UDIV     R1,R1,R2
//  512   
//  513   //ѡ�񲢿���ͨ��
//  514   switch(channel)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        CMP      R2,#+0
        CMP      R2,#+1
        BHI.N    ??LPLD_FTM2_PWM_Open_2
//  515   {
//  516     case 0:
//  517     case 1:
//  518       SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??LPLD_FTM2_PWM_Open_3:
        LDR.W    R2,??DataTable12_5  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x200
        LDR.W    R3,??DataTable12_5  ;; 0x40048038
        STR      R2,[R3, #+0]
//  519       PORT_PCR_REG(PORTA_BASE_PTR, channel+10) = PORT_PCR_MUX(3);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+299008
        MOV      R3,#+768
        STR      R3,[R2, #+40]
//  520       break;
//  521     default:
//  522        return 0;
//  523   }  
//  524   
//  525   // ����FTMͨ�����ƼĴ��� 
//  526   // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
//  527   FTM_CnSC_REG(FTM2_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_20  ;; 0x400b800c
        MOVS     R3,#+40
        STR      R3,[R2, R0, LSL #+3]
//  528   // ����FTMͨ��ֵ
//  529   FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_20  ;; 0x400b800c
        ADDS     R0,R2,R0, LSL #+3
        STR      R1,[R0, #+4]
//  530   
//  531   return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_FTM2_PWM_Open_1
??LPLD_FTM2_PWM_Open_2:
        MOVS     R0,#+0
??LPLD_FTM2_PWM_Open_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  532 }
//  533 
//  534 /*
//  535  * LPLD_FTM2_PWM_ChangeDuty
//  536  * �ı�FTM2ģ��PWM���ͨ��ռ�ձ�
//  537  *
//  538  * ����:
//  539  *    channel - PWM���ͨ��
//  540  *      |__0--PTA8
//  541  *      |__1--PTA9
//  542  *    duty - PWM���ռ�ձ�
//  543  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  544  *
//  545  * ���:
//  546  *    0--���ô���
//  547  *    1--���óɹ�
//  548  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  549 uint8 LPLD_FTM2_PWM_ChangeDuty(uint8 channel, uint32 duty)
//  550 {
LPLD_FTM2_PWM_ChangeDuty:
        SUB      SP,SP,#+4
//  551   uint32 cv;
//  552   volatile uint32 mod;
//  553   
//  554   if(duty>10000) return 0;
        MOVW     R2,#+10001
        CMP      R1,R2
        BCC.N    ??LPLD_FTM2_PWM_ChangeDuty_0
        MOVS     R0,#+0
        B.N      ??LPLD_FTM2_PWM_ChangeDuty_1
//  555   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  556   mod = LPLD_FTM2_MOD;
??LPLD_FTM2_PWM_ChangeDuty_0:
        LDR.W    R2,??DataTable12_14
        LDR      R2,[R2, #+0]
        STR      R2,[SP, #+0]
//  557   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+1
        MULS     R1,R2,R1
        MOVW     R2,#+10000
        UDIV     R1,R1,R2
//  558  
//  559   // ����FTMͨ��ֵ
//  560   FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_20  ;; 0x400b800c
        ADDS     R0,R2,R0, LSL #+3
        STR      R1,[R0, #+4]
//  561   
//  562   return 1;
        MOVS     R0,#+1
??LPLD_FTM2_PWM_ChangeDuty_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  563 }
//  564 
//  565 
//  566 /*
//  567  * LPLD_FTM0_InputCapture_Init
//  568  * FTM0ģ�����벶���ܳ�ʼ��
//  569  *
//  570  * ����:
//  571  *    channel - ���벶��ͨ��
//  572  *      |__0--PTC1
//  573  *      |__1--PTC2
//  574  *      |__2--PTC3
//  575  *      |__3--PTC4
//  576  *      |__4--PTD4
//  577  *      |__5--PTD5
//  578  *      |__6--PTD6
//  579  *      |__7--PTD7
//  580  *    edge - ��Եѡ��
//  581  *      |__1--������
//  582  *      |__2--�½���
//  583  *      |__3--�������½���
//  584  *    ps - ������ʱ�ӷ�Ƶ��ֵԽС��������ʱ��Ƶ��Խ��
//  585  *      |__0--1��Ƶ
//  586  *      |__1--2��Ƶ
//  587  *      |__2--4��Ƶ
//  588  *      |__3--8��Ƶ
//  589  *      |__4--16��Ƶ
//  590  *      |__5--32��Ƶ
//  591  *      |__6--64��Ƶ
//  592  *      |__7--128��Ƶ
//  593  *    isr_func--�û��жϳ�����ڵ�ַ�������жϻ����������ж�
//  594  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  595  *
//  596  * ���:
//  597  *    0--���ô���
//  598  *    1--���óɹ�
//  599  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  600 uint8 LPLD_FTM0_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func)
//  601 {
LPLD_FTM0_InputCapture_Init:
        PUSH     {R3-R5,LR}
//  602  
//  603   // ʹ��FTMʱ��ģ��
//  604   SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;
        LDR.W    R4,??DataTable11  ;; 0x4004803c
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x1000000
        LDR.W    R5,??DataTable11  ;; 0x4004803c
        STR      R4,[R5, #+0]
//  605   
//  606   FTM0_CONF=FTM_CONF_BDMMODE(0x3);
        LDR.W    R4,??DataTable12_21  ;; 0x40038084
        MOVS     R5,#+192
        STR      R5,[R4, #+0]
//  607 
//  608   if(ps==7)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BNE.W    ??LPLD_FTM0_InputCapture_Init_0
//  609   {
//  610     LPLD_FTM0_Divider = 128;
        LDR.W    R4,??DataTable12_22
        MOVS     R5,#+128
        STRB     R5,[R4, #+0]
//  611   }
//  612   else if(ps==6)
//  613   {
//  614     LPLD_FTM0_Divider = 64;
//  615   }
//  616   else if(ps==5)
//  617   {
//  618     LPLD_FTM0_Divider = 32;
//  619   }
//  620   else if(ps==4)
//  621   {
//  622     LPLD_FTM0_Divider = 16;
//  623   }
//  624   else if(ps==3)
//  625   {
//  626     LPLD_FTM0_Divider = 8;
//  627   }
//  628   else if(ps==2)
//  629   {
//  630     LPLD_FTM0_Divider = 4;
//  631   }
//  632   else if(ps==1)
//  633   {
//  634     LPLD_FTM0_Divider = 2;
//  635   }
//  636   else if(ps==0)
//  637   {
//  638     LPLD_FTM0_Divider = 1;
//  639   }
//  640   else
//  641   {
//  642     return 0;
//  643   }
//  644   
//  645   //ѡ�񲢿���ͨ��
//  646   switch(channel)
??LPLD_FTM0_InputCapture_Init_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,R0
        CMP      R4,#+0
        CMP      R4,#+3
        BLS.N    ??LPLD_FTM0_InputCapture_Init_2
        SUBS     R4,R4,#+4
        CMP      R4,#+3
        BLS.W    ??LPLD_FTM0_InputCapture_Init_3
        B.N      ??LPLD_FTM0_InputCapture_Init_4
//  647   {
//  648     case 0:
//  649     case 1:
//  650     case 2:
//  651     case 3:
//  652       PORT_PCR_REG(PORTC_BASE_PTR, channel+1) = PORT_PCR_MUX(4);
??LPLD_FTM0_InputCapture_Init_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+307200
        MOV      R5,#+1024
        STR      R5,[R4, #+4]
//  653       break;
//  654     case 4:
//  655     case 5:
//  656     case 6:
//  657     case 7:
//  658       PORT_PCR_REG(PORTD_BASE_PTR, channel) = PORT_PCR_MUX(4);
//  659       break;
//  660     default:
//  661        return 0;
//  662   }   
//  663 
//  664   FTM0_MODE &=(~FTM_MODE_FTMEN_MASK);       //ʹ��FTMȫ����
??LPLD_FTM0_InputCapture_Init_5:
        LDR.W    R4,??DataTable12_23  ;; 0x40038054
        LDR      R4,[R4, #+0]
        LSRS     R4,R4,#+1
        LSLS     R4,R4,#+1
        LDR.W    R5,??DataTable12_23  ;; 0x40038054
        STR      R4,[R5, #+0]
//  665   
//  666   // ����FTM���ƼĴ���
//  667   // ��FTM Counter���ó�Free Counter
//  668   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:PS
//  669   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  670   FTM0_SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        LDR.W    R4,??DataTable12_1  ;; 0x40038000
        LDR      R4,[R4, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R2,R2,#0x7
        ORRS     R2,R2,#0x8
        ORRS     R2,R2,R4
        LDR.W    R4,??DataTable12_1  ;; 0x40038000
        STR      R2,[R4, #+0]
//  671   FTM0_SC |= FTM_SC_TOIE_MASK;             //ʹ�ܼ�������ж�
        LDR.W    R2,??DataTable12_1  ;; 0x40038000
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.W    R4,??DataTable12_1  ;; 0x40038000
        STR      R2,[R4, #+0]
//  672   FTM0_SC &= (~FTM_SC_CPWMS_MASK);         //FTM�Ӽ���
        LDR.W    R2,??DataTable12_1  ;; 0x40038000
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x20
        LDR.W    R4,??DataTable12_1  ;; 0x40038000
        STR      R2,[R4, #+0]
//  673   
//  674   FTM0_CNT = 0;
        LDR.W    R2,??DataTable12_2  ;; 0x40038004
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  675   FTM0_CNTIN = 0;
        LDR.W    R2,??DataTable12_3  ;; 0x4003804c
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  676   FTM0_MOD = 0;                           
        LDR.W    R2,??DataTable12_4  ;; 0x40038008
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  677   FTM0_QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //�ر���������
        LDR.W    R2,??DataTable12_24  ;; 0x40038080
        MVNS     R4,#+1
        STR      R4,[R2, #+0]
//  678   FTM0_FILTER = 0x00;                      //�ع�����
        LDR.W    R2,??DataTable12_25  ;; 0x40038078
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  679  
//  680   FTM_CnSC_REG(FTM0_BASE_PTR, channel) = 0x00;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        MOVS     R4,#+0
        STR      R4,[R2, R0, LSL #+3]
//  681   FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_CHF_MASK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_6  ;; 0x4003800c
        STR      R2,[R4, R0, LSL #+3]
//  682   FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_CHIE_MASK;         //ʹ��ͨ�����������ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        LDR      R2,[R2, R0, LSL #+3]
        ORRS     R2,R2,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_6  ;; 0x4003800c
        STR      R2,[R4, R0, LSL #+3]
//  683   FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_MSB_MASK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_6  ;; 0x4003800c
        STR      R2,[R4, R0, LSL #+3]
//  684   FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_MSA_MASK);       //���ó�Input captureģʽ
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_6  ;; 0x4003800c
        STR      R2,[R4, R0, LSL #+3]
//  685   if(edge==1)       //�����ز���
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_FTM0_InputCapture_Init_6
//  686   {
//  687     FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_ELSB_MASK);  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_6  ;; 0x4003800c
        LDR      R1,[R1, R0, LSL #+3]
        BICS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        STR      R1,[R2, R0, LSL #+3]
//  688     FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_6  ;; 0x4003800c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        STR      R1,[R2, R0, LSL #+3]
//  689   }
//  690   else if(edge==2)  //�½��ز���
//  691   {
//  692     FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;  
//  693     FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_ELSA_MASK);         
//  694   }
//  695   else if(edge==3)  //�������½��ز���
//  696   {
//  697     FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;
//  698     FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
//  699   }
//  700   else
//  701   {
//  702     return 0;
//  703   }
//  704   FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_DMA_MASK);       //�ر�DMA
??LPLD_FTM0_InputCapture_Init_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_6  ;; 0x4003800c
        LDR      R1,[R1, R0, LSL #+3]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        STR      R1,[R2, R0, LSL #+3]
//  705   
//  706   //�����жϺ�����ڵ�ַ�������ж�
//  707   if(isr_func!=NULL)
        MOVS     R0,R3
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM0_InputCapture_Init_8
//  708   {
//  709     FTM_ISR[0] = isr_func;
        LDR.W    R0,??DataTable12_26
        STR      R3,[R0, #+0]
//  710     enable_irq(62);
        MOVS     R0,#+62
        BL       enable_irq
//  711   }
//  712 
//  713   return 1;
??LPLD_FTM0_InputCapture_Init_8:
        MOVS     R0,#+1
??LPLD_FTM0_InputCapture_Init_9:
        POP      {R1,R4,R5,PC}    ;; return
??LPLD_FTM0_InputCapture_Init_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+6
        BNE.N    ??LPLD_FTM0_InputCapture_Init_10
        LDR.W    R4,??DataTable12_22
        MOVS     R5,#+64
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM0_InputCapture_Init_1
??LPLD_FTM0_InputCapture_Init_10:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+5
        BNE.N    ??LPLD_FTM0_InputCapture_Init_11
        LDR.W    R4,??DataTable12_22
        MOVS     R5,#+32
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM0_InputCapture_Init_1
??LPLD_FTM0_InputCapture_Init_11:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BNE.N    ??LPLD_FTM0_InputCapture_Init_12
        LDR.W    R4,??DataTable12_22
        MOVS     R5,#+16
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM0_InputCapture_Init_1
??LPLD_FTM0_InputCapture_Init_12:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BNE.N    ??LPLD_FTM0_InputCapture_Init_13
        LDR.W    R4,??DataTable12_22
        MOVS     R5,#+8
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM0_InputCapture_Init_1
??LPLD_FTM0_InputCapture_Init_13:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??LPLD_FTM0_InputCapture_Init_14
        LDR.W    R4,??DataTable12_22
        MOVS     R5,#+4
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM0_InputCapture_Init_1
??LPLD_FTM0_InputCapture_Init_14:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_FTM0_InputCapture_Init_15
        LDR.W    R4,??DataTable12_22
        MOVS     R5,#+2
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM0_InputCapture_Init_1
??LPLD_FTM0_InputCapture_Init_15:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_FTM0_InputCapture_Init_16
        LDR.W    R4,??DataTable12_22
        MOVS     R5,#+1
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM0_InputCapture_Init_1
??LPLD_FTM0_InputCapture_Init_16:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM0_InputCapture_Init_9
??LPLD_FTM0_InputCapture_Init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_7  ;; 0x4004c000
        MOV      R5,#+1024
        STR      R5,[R4, R0, LSL #+2]
        B.N      ??LPLD_FTM0_InputCapture_Init_5
??LPLD_FTM0_InputCapture_Init_4:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM0_InputCapture_Init_9
??LPLD_FTM0_InputCapture_Init_6:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??LPLD_FTM0_InputCapture_Init_17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_6  ;; 0x4003800c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        STR      R1,[R2, R0, LSL #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_6  ;; 0x4003800c
        LDR      R1,[R1, R0, LSL #+3]
        BICS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        STR      R1,[R2, R0, LSL #+3]
        B.N      ??LPLD_FTM0_InputCapture_Init_7
??LPLD_FTM0_InputCapture_Init_17:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+3
        BNE.N    ??LPLD_FTM0_InputCapture_Init_18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_6  ;; 0x4003800c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        STR      R1,[R2, R0, LSL #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_6  ;; 0x4003800c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_6  ;; 0x4003800c
        STR      R1,[R2, R0, LSL #+3]
        B.N      ??LPLD_FTM0_InputCapture_Init_7
??LPLD_FTM0_InputCapture_Init_18:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM0_InputCapture_Init_9
//  714 }
//  715 
//  716 
//  717 /*
//  718  * LPLD_FTM1_InputCapture_Init
//  719  * FTM1ģ�����벶���ܳ�ʼ��
//  720  *
//  721  * ����:
//  722  *    channel - ���벶��ͨ��
//  723  *      |__0--PTA8
//  724  *      |__1--PTA9
//  725  *    edge - ��Եѡ��
//  726  *      |__1--������
//  727  *      |__2--�½���
//  728  *      |__3--�������½���
//  729  *    ps - ������ʱ�ӷ�Ƶ��ֵԽС��������ʱ��Ƶ��Խ��
//  730  *      |__0--1��Ƶ
//  731  *      |__1--2��Ƶ
//  732  *      |__2--4��Ƶ
//  733  *      |__3--8��Ƶ
//  734  *      |__4--16��Ƶ
//  735  *      |__5--32��Ƶ
//  736  *      |__6--64��Ƶ
//  737  *      |__7--128��Ƶ
//  738  *    isr_func--�û��жϳ�����ڵ�ַ�������жϻ����������ж�
//  739  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  740  *
//  741  * ���:
//  742  *    0--���ô���
//  743  *    1--���óɹ�
//  744  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  745 uint8 LPLD_FTM1_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func)
//  746 {
LPLD_FTM1_InputCapture_Init:
        PUSH     {R3-R5,LR}
//  747  
//  748   // ʹ��FTMʱ��ģ��
//  749   SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
        LDR.W    R4,??DataTable11  ;; 0x4004803c
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x2000000
        LDR.W    R5,??DataTable11  ;; 0x4004803c
        STR      R4,[R5, #+0]
//  750   
//  751   FTM1_CONF=FTM_CONF_BDMMODE(0x3);
        LDR.W    R4,??DataTable12_27  ;; 0x40039084
        MOVS     R5,#+192
        STR      R5,[R4, #+0]
//  752 
//  753   if(ps==7)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BNE.W    ??LPLD_FTM1_InputCapture_Init_0
//  754   {
//  755     LPLD_FTM1_Divider = 128;
        LDR.W    R4,??DataTable12_28
        MOVS     R5,#+128
        STRB     R5,[R4, #+0]
//  756   }
//  757   else if(ps==6)
//  758   {
//  759     LPLD_FTM1_Divider = 64;
//  760   }
//  761   else if(ps==5)
//  762   {
//  763     LPLD_FTM1_Divider = 32;
//  764   }
//  765   else if(ps==4)
//  766   {
//  767     LPLD_FTM1_Divider = 16;
//  768   }
//  769   else if(ps==3)
//  770   {
//  771     LPLD_FTM1_Divider = 8;
//  772   }
//  773   else if(ps==2)
//  774   {
//  775     LPLD_FTM1_Divider = 4;
//  776   }
//  777   else if(ps==1)
//  778   {
//  779     LPLD_FTM1_Divider = 2;
//  780   }
//  781   else if(ps==0)
//  782   {
//  783     LPLD_FTM1_Divider = 1;
//  784   }
//  785   else
//  786   {
//  787     return 0;
//  788   }
//  789   
//  790   //ѡ�񲢿���ͨ��
//  791   switch(channel)
??LPLD_FTM1_InputCapture_Init_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,R0
        CMP      R4,#+0
        CMP      R4,#+1
        BHI.W    ??LPLD_FTM1_InputCapture_Init_2
//  792   {
//  793     case 0:
//  794     case 1:
//  795       PORT_PCR_REG(PORTA_BASE_PTR, channel+8) = PORT_PCR_MUX(3);
??LPLD_FTM1_InputCapture_Init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+299008
        MOV      R5,#+768
        STR      R5,[R4, #+32]
//  796       break;
//  797     default:
//  798        return 0;
//  799   }  
//  800 
//  801   FTM1_MODE &=(~FTM_MODE_FTMEN_MASK);       //ʹ��FTMȫ����
        LDR.W    R4,??DataTable12_29  ;; 0x40039054
        LDR      R4,[R4, #+0]
        LSRS     R4,R4,#+1
        LSLS     R4,R4,#+1
        LDR.W    R5,??DataTable12_29  ;; 0x40039054
        STR      R4,[R5, #+0]
//  802   
//  803   // ����FTM���ƼĴ���
//  804   // ��FTM Counter���ó�Free Counter
//  805   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:PS
//  806   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  807   FTM1_SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        LDR.W    R4,??DataTable12_9  ;; 0x40039000
        LDR      R4,[R4, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R2,R2,#0x7
        ORRS     R2,R2,#0x8
        ORRS     R2,R2,R4
        LDR.W    R4,??DataTable12_9  ;; 0x40039000
        STR      R2,[R4, #+0]
//  808   FTM1_SC |= FTM_SC_TOIE_MASK;             //ʹ�ܼ�������ж�
        LDR.W    R2,??DataTable12_9  ;; 0x40039000
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.W    R4,??DataTable12_9  ;; 0x40039000
        STR      R2,[R4, #+0]
//  809   FTM1_SC &= (~FTM_SC_CPWMS_MASK);         //FTM�Ӽ���
        LDR.W    R2,??DataTable12_9  ;; 0x40039000
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x20
        LDR.W    R4,??DataTable12_9  ;; 0x40039000
        STR      R2,[R4, #+0]
//  810   
//  811   FTM1_CNT = 0;
        LDR.W    R2,??DataTable12_10  ;; 0x40039004
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  812   FTM1_CNTIN = 0;
        LDR.W    R2,??DataTable12_11  ;; 0x4003904c
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  813   FTM1_MOD = 0;                           
        LDR.W    R2,??DataTable12_12  ;; 0x40039008
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  814   FTM1_QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //�ر���������
        LDR.W    R2,??DataTable12_30  ;; 0x40039080
        MVNS     R4,#+1
        STR      R4,[R2, #+0]
//  815   FTM1_FILTER = 0x00;                      //�ع�����
        LDR.W    R2,??DataTable12_31  ;; 0x40039078
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  816  
//  817   FTM_CnSC_REG(FTM1_BASE_PTR, channel) = 0x00;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        MOVS     R4,#+0
        STR      R4,[R2, R0, LSL #+3]
//  818   FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_CHF_MASK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_13  ;; 0x4003900c
        STR      R2,[R4, R0, LSL #+3]
//  819   FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_CHIE_MASK;         //ʹ��ͨ�����������ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        LDR      R2,[R2, R0, LSL #+3]
        ORRS     R2,R2,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_13  ;; 0x4003900c
        STR      R2,[R4, R0, LSL #+3]
//  820   FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_MSB_MASK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_13  ;; 0x4003900c
        STR      R2,[R4, R0, LSL #+3]
//  821   FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_MSA_MASK);       //���ó�Input captureģʽ
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable12_13  ;; 0x4003900c
        STR      R2,[R4, R0, LSL #+3]
//  822   if(edge==1)       //�����ز���
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_FTM1_InputCapture_Init_4
//  823   {
//  824     FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_ELSB_MASK);  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_13  ;; 0x4003900c
        LDR      R1,[R1, R0, LSL #+3]
        BICS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        STR      R1,[R2, R0, LSL #+3]
//  825     FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_13  ;; 0x4003900c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        STR      R1,[R2, R0, LSL #+3]
//  826   }
//  827   else if(edge==2)  //�½��ز���
//  828   {
//  829     FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;  
//  830     FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_ELSA_MASK);         
//  831   }
//  832   else if(edge==3)  //�������½��ز���
//  833   {
//  834     FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;
//  835     FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
//  836   }
//  837   else
//  838   {
//  839     return 0;
//  840   }
//  841   FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_DMA_MASK);       //�ر�DMA
??LPLD_FTM1_InputCapture_Init_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12_13  ;; 0x4003900c
        LDR      R1,[R1, R0, LSL #+3]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_13  ;; 0x4003900c
        STR      R1,[R2, R0, LSL #+3]
//  842   
//  843   //�����жϺ�����ڵ�ַ�������ж�
//  844   if(isr_func!=NULL)
        MOVS     R0,R3
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM1_InputCapture_Init_6
//  845   {
//  846     FTM_ISR[1] = isr_func;
        LDR.W    R0,??DataTable12_26
        STR      R3,[R0, #+4]
//  847     enable_irq(63);
        MOVS     R0,#+63
        BL       enable_irq
//  848   }
//  849 
//  850   return 1;
??LPLD_FTM1_InputCapture_Init_6:
        MOVS     R0,#+1
??LPLD_FTM1_InputCapture_Init_7:
        POP      {R1,R4,R5,PC}    ;; return
??LPLD_FTM1_InputCapture_Init_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+6
        BNE.N    ??LPLD_FTM1_InputCapture_Init_8
        LDR.W    R4,??DataTable12_28
        MOVS     R5,#+64
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM1_InputCapture_Init_1
??LPLD_FTM1_InputCapture_Init_8:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+5
        BNE.N    ??LPLD_FTM1_InputCapture_Init_9
        LDR.W    R4,??DataTable12_28
        MOVS     R5,#+32
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM1_InputCapture_Init_1
??LPLD_FTM1_InputCapture_Init_9:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BNE.N    ??LPLD_FTM1_InputCapture_Init_10
        LDR.W    R4,??DataTable12_28
        MOVS     R5,#+16
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM1_InputCapture_Init_1
??LPLD_FTM1_InputCapture_Init_10:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BNE.N    ??LPLD_FTM1_InputCapture_Init_11
        LDR.W    R4,??DataTable12_28
        MOVS     R5,#+8
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM1_InputCapture_Init_1
??LPLD_FTM1_InputCapture_Init_11:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??LPLD_FTM1_InputCapture_Init_12
        LDR.W    R4,??DataTable12_28
        MOVS     R5,#+4
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM1_InputCapture_Init_1
??LPLD_FTM1_InputCapture_Init_12:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_FTM1_InputCapture_Init_13
        LDR.N    R4,??DataTable12_28
        MOVS     R5,#+2
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM1_InputCapture_Init_1
??LPLD_FTM1_InputCapture_Init_13:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_FTM1_InputCapture_Init_14
        LDR.N    R4,??DataTable12_28
        MOVS     R5,#+1
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM1_InputCapture_Init_1
??LPLD_FTM1_InputCapture_Init_14:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM1_InputCapture_Init_7
??LPLD_FTM1_InputCapture_Init_2:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM1_InputCapture_Init_7
??LPLD_FTM1_InputCapture_Init_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??LPLD_FTM1_InputCapture_Init_15
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_13  ;; 0x4003900c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_13  ;; 0x4003900c
        STR      R1,[R2, R0, LSL #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_13  ;; 0x4003900c
        LDR      R1,[R1, R0, LSL #+3]
        BICS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_13  ;; 0x4003900c
        STR      R1,[R2, R0, LSL #+3]
        B.N      ??LPLD_FTM1_InputCapture_Init_5
??LPLD_FTM1_InputCapture_Init_15:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+3
        BNE.N    ??LPLD_FTM1_InputCapture_Init_16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_13  ;; 0x4003900c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_13  ;; 0x4003900c
        STR      R1,[R2, R0, LSL #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_13  ;; 0x4003900c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_13  ;; 0x4003900c
        STR      R1,[R2, R0, LSL #+3]
        B.N      ??LPLD_FTM1_InputCapture_Init_5
??LPLD_FTM1_InputCapture_Init_16:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM1_InputCapture_Init_7
//  851 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     periph_clk_khz
//  852 
//  853 
//  854 
//  855 /*
//  856  * LPLD_FTM2_InputCapture_Init
//  857  * FTM1ģ�����벶���ܳ�ʼ��
//  858  *
//  859  * ����:
//  860  *    channel - ���벶��ͨ��
//  861  *      |__0--PTA10
//  862  *      |__1--PTA11
//  863  *    edge - ��Եѡ��
//  864  *      |__1--������
//  865  *      |__2--�½���
//  866  *      |__3--�������½���
//  867  *    ps - ������ʱ�ӷ�Ƶ��ֵԽС��������ʱ��Ƶ��Խ��
//  868  *      |__0--1��Ƶ
//  869  *      |__1--2��Ƶ
//  870  *      |__2--4��Ƶ
//  871  *      |__3--8��Ƶ
//  872  *      |__4--16��Ƶ
//  873  *      |__5--32��Ƶ
//  874  *      |__6--64��Ƶ
//  875  *      |__7--128��Ƶ
//  876  *    isr_func--�û��жϳ�����ڵ�ַ�������жϻ����������ж�
//  877  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  878  *
//  879  * ���:
//  880  *    0--���ô���
//  881  *    1--���óɹ�
//  882  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  883 uint8 LPLD_FTM2_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func)
//  884 {
LPLD_FTM2_InputCapture_Init:
        PUSH     {R3-R5,LR}
//  885  
//  886   // ʹ��FTMʱ��ģ��
//  887   SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;
        LDR.N    R4,??DataTable12_15  ;; 0x40048030
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x1000000
        LDR.N    R5,??DataTable12_15  ;; 0x40048030
        STR      R4,[R5, #+0]
//  888   
//  889   FTM2_CONF=FTM_CONF_BDMMODE(0x3);
        LDR.N    R4,??DataTable12_32  ;; 0x400b8084
        MOVS     R5,#+192
        STR      R5,[R4, #+0]
//  890 
//  891   if(ps==7)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BNE.W    ??LPLD_FTM2_InputCapture_Init_0
//  892   {
//  893     LPLD_FTM2_Divider = 128;
        LDR.N    R4,??DataTable12_33
        MOVS     R5,#+128
        STRB     R5,[R4, #+0]
//  894   }
//  895   else if(ps==6)
//  896   {
//  897     LPLD_FTM2_Divider = 64;
//  898   }
//  899   else if(ps==5)
//  900   {
//  901     LPLD_FTM2_Divider = 32;
//  902   }
//  903   else if(ps==4)
//  904   {
//  905     LPLD_FTM2_Divider = 16;
//  906   }
//  907   else if(ps==3)
//  908   {
//  909     LPLD_FTM2_Divider = 8;
//  910   }
//  911   else if(ps==2)
//  912   {
//  913     LPLD_FTM2_Divider = 4;
//  914   }
//  915   else if(ps==1)
//  916   {
//  917     LPLD_FTM2_Divider = 2;
//  918   }
//  919   else if(ps==0)
//  920   {
//  921     LPLD_FTM2_Divider = 1;
//  922   }
//  923   else
//  924   {
//  925     return 0;
//  926   }
//  927   
//  928   //ѡ�񲢿���ͨ��
//  929   switch(channel)
??LPLD_FTM2_InputCapture_Init_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,R0
        CMP      R4,#+0
        CMP      R4,#+1
        BHI.W    ??LPLD_FTM2_InputCapture_Init_2
//  930   {
//  931     case 0:
//  932     case 1:
//  933       PORT_PCR_REG(PORTA_BASE_PTR, channel+10) = PORT_PCR_MUX(3);
??LPLD_FTM2_InputCapture_Init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+299008
        MOV      R5,#+768
        STR      R5,[R4, #+40]
//  934       break;
//  935     default:
//  936        return 0;
//  937   }  
//  938 
//  939   FTM2_MODE &=(~FTM_MODE_FTMEN_MASK);       //ʹ��FTMȫ����
        LDR.N    R4,??DataTable12_34  ;; 0x400b8054
        LDR      R4,[R4, #+0]
        LSRS     R4,R4,#+1
        LSLS     R4,R4,#+1
        LDR.N    R5,??DataTable12_34  ;; 0x400b8054
        STR      R4,[R5, #+0]
//  940   
//  941   // ����FTM���ƼĴ���
//  942   // ��FTM Counter���ó�Free Counter
//  943   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:PS
//  944   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  945   FTM2_SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        LDR.N    R4,??DataTable12_16  ;; 0x400b8000
        LDR      R4,[R4, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R2,R2,#0x7
        ORRS     R2,R2,#0x8
        ORRS     R2,R2,R4
        LDR.N    R4,??DataTable12_16  ;; 0x400b8000
        STR      R2,[R4, #+0]
//  946   FTM2_SC |= FTM_SC_TOIE_MASK;             //ʹ�ܼ�������ж�
        LDR.N    R2,??DataTable12_16  ;; 0x400b8000
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.N    R4,??DataTable12_16  ;; 0x400b8000
        STR      R2,[R4, #+0]
//  947   FTM2_SC &= (~FTM_SC_CPWMS_MASK);         //FTM�Ӽ���
        LDR.N    R2,??DataTable12_16  ;; 0x400b8000
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x20
        LDR.N    R4,??DataTable12_16  ;; 0x400b8000
        STR      R2,[R4, #+0]
//  948   
//  949   FTM2_CNT = 0;
        LDR.N    R2,??DataTable12_17  ;; 0x400b8004
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  950   FTM2_CNTIN = 0;
        LDR.N    R2,??DataTable12_18  ;; 0x400b804c
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  951   FTM2_MOD = 0;                           
        LDR.N    R2,??DataTable12_19  ;; 0x400b8008
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  952   FTM2_QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //�ر���������
        LDR.N    R2,??DataTable12_35  ;; 0x400b8080
        MVNS     R4,#+1
        STR      R4,[R2, #+0]
//  953   FTM2_FILTER = 0x00;                      //�ع�����
        LDR.N    R2,??DataTable12_36  ;; 0x400b8078
        MOVS     R4,#+0
        STR      R4,[R2, #+0]
//  954  
//  955   FTM_CnSC_REG(FTM2_BASE_PTR, channel) = 0x00;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        MOVS     R4,#+0
        STR      R4,[R2, R0, LSL #+3]
//  956   FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_CHF_MASK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable12_20  ;; 0x400b800c
        STR      R2,[R4, R0, LSL #+3]
//  957   FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_CHIE_MASK;         //ʹ��ͨ�����������ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        LDR      R2,[R2, R0, LSL #+3]
        ORRS     R2,R2,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable12_20  ;; 0x400b800c
        STR      R2,[R4, R0, LSL #+3]
//  958   FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_MSB_MASK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable12_20  ;; 0x400b800c
        STR      R2,[R4, R0, LSL #+3]
//  959   FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_MSA_MASK);       //���ó�Input captureģʽ
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        LDR      R2,[R2, R0, LSL #+3]
        BICS     R2,R2,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable12_20  ;; 0x400b800c
        STR      R2,[R4, R0, LSL #+3]
//  960   if(edge==1)       //�����ز���
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_FTM2_InputCapture_Init_4
//  961   {
//  962     FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_ELSB_MASK);  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_20  ;; 0x400b800c
        LDR      R1,[R1, R0, LSL #+3]
        BICS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        STR      R1,[R2, R0, LSL #+3]
//  963     FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_20  ;; 0x400b800c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        STR      R1,[R2, R0, LSL #+3]
//  964   }
//  965   else if(edge==2)  //�½��ز���
//  966   {
//  967     FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;  
//  968     FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_ELSA_MASK);         
//  969   }
//  970   else if(edge==3)  //�������½��ز���
//  971   {
//  972     FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;
//  973     FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
//  974   }
//  975   else
//  976   {
//  977     return 0;
//  978   }
//  979   FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_DMA_MASK);       //�ر�DMA
??LPLD_FTM2_InputCapture_Init_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_20  ;; 0x400b800c
        LDR      R1,[R1, R0, LSL #+3]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        STR      R1,[R2, R0, LSL #+3]
//  980   
//  981   //�����жϺ�����ڵ�ַ�������ж�
//  982   if(isr_func!=NULL)
        MOVS     R0,R3
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM2_InputCapture_Init_6
//  983   {
//  984     FTM_ISR[2] = isr_func;
        LDR.N    R0,??DataTable12_26
        STR      R3,[R0, #+8]
//  985     enable_irq(64);
        MOVS     R0,#+64
        BL       enable_irq
//  986   }
//  987 
//  988   return 1;
??LPLD_FTM2_InputCapture_Init_6:
        MOVS     R0,#+1
??LPLD_FTM2_InputCapture_Init_7:
        POP      {R1,R4,R5,PC}    ;; return
??LPLD_FTM2_InputCapture_Init_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+6
        BNE.N    ??LPLD_FTM2_InputCapture_Init_8
        LDR.N    R4,??DataTable12_33
        MOVS     R5,#+64
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM2_InputCapture_Init_1
??LPLD_FTM2_InputCapture_Init_8:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+5
        BNE.N    ??LPLD_FTM2_InputCapture_Init_9
        LDR.N    R4,??DataTable12_33
        MOVS     R5,#+32
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM2_InputCapture_Init_1
??LPLD_FTM2_InputCapture_Init_9:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BNE.N    ??LPLD_FTM2_InputCapture_Init_10
        LDR.N    R4,??DataTable12_33
        MOVS     R5,#+16
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM2_InputCapture_Init_1
??LPLD_FTM2_InputCapture_Init_10:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BNE.N    ??LPLD_FTM2_InputCapture_Init_11
        LDR.N    R4,??DataTable12_33
        MOVS     R5,#+8
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM2_InputCapture_Init_1
??LPLD_FTM2_InputCapture_Init_11:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??LPLD_FTM2_InputCapture_Init_12
        LDR.N    R4,??DataTable12_33
        MOVS     R5,#+4
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM2_InputCapture_Init_1
??LPLD_FTM2_InputCapture_Init_12:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_FTM2_InputCapture_Init_13
        LDR.N    R4,??DataTable12_33
        MOVS     R5,#+2
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM2_InputCapture_Init_1
??LPLD_FTM2_InputCapture_Init_13:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_FTM2_InputCapture_Init_14
        LDR.N    R4,??DataTable12_33
        MOVS     R5,#+1
        STRB     R5,[R4, #+0]
        B.N      ??LPLD_FTM2_InputCapture_Init_1
??LPLD_FTM2_InputCapture_Init_14:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM2_InputCapture_Init_7
??LPLD_FTM2_InputCapture_Init_2:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM2_InputCapture_Init_7
??LPLD_FTM2_InputCapture_Init_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??LPLD_FTM2_InputCapture_Init_15
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_20  ;; 0x400b800c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        STR      R1,[R2, R0, LSL #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_20  ;; 0x400b800c
        LDR      R1,[R1, R0, LSL #+3]
        BICS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        STR      R1,[R2, R0, LSL #+3]
        B.N      ??LPLD_FTM2_InputCapture_Init_5
??LPLD_FTM2_InputCapture_Init_15:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+3
        BNE.N    ??LPLD_FTM2_InputCapture_Init_16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_20  ;; 0x400b800c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        STR      R1,[R2, R0, LSL #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_20  ;; 0x400b800c
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable12_20  ;; 0x400b800c
        STR      R1,[R2, R0, LSL #+3]
        B.N      ??LPLD_FTM2_InputCapture_Init_5
??LPLD_FTM2_InputCapture_Init_16:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM2_InputCapture_Init_7
//  989 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x4004803c
//  990 
//  991 
//  992 /*
//  993  * LPLD_FTM_Isr
//  994  * FTMͨ���жϵײ���ں���
//  995  * 
//  996  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  997  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  998 void LPLD_FTM_Isr(void)
//  999 {
LPLD_FTM_Isr:
        PUSH     {R7,LR}
// 1000   #define FTM_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
// 1001   uint8 ftm_ch = FTM_VECTORNUM - 78;
        LDR.N    R0,??DataTable12_37  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+78
// 1002     
// 1003   //�����û��Զ����жϷ���
// 1004   FTM_ISR[ftm_ch]();  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12_26
        LDR      R0,[R1, R0, LSL #+2]
        BLX      R0
// 1005 
// 1006 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     LPLD_FTM0_MOD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x4003804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x4003800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     LPLD_FTM1_MOD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     0x4003904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     0x4003900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     LPLD_FTM2_MOD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     0x400b804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DC32     0x400b8008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_20:
        DC32     0x400b800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_21:
        DC32     0x40038084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_22:
        DC32     LPLD_FTM0_Divider

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_23:
        DC32     0x40038054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_24:
        DC32     0x40038080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_25:
        DC32     0x40038078

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_26:
        DC32     FTM_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_27:
        DC32     0x40039084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_28:
        DC32     LPLD_FTM1_Divider

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_29:
        DC32     0x40039054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_30:
        DC32     0x40039080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_31:
        DC32     0x40039078

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_32:
        DC32     0x400b8084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_33:
        DC32     LPLD_FTM2_Divider

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_34:
        DC32     0x400b8054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_35:
        DC32     0x400b8080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_36:
        DC32     0x400b8078

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_37:
        DC32     0xe000ed04

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//    27 bytes in section .bss
// 3 344 bytes in section .text
// 
// 3 344 bytes of CODE memory
//    27 bytes of DATA memory
//
//Errors: none
//Warnings: none
