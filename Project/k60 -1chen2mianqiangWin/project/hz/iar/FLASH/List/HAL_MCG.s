///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       19/Mar/2015  11:05:03
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\lib\LPLD\HAL_MCG.c
//    Command line =  
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\lib\LPLD\HAL_MCG.c" -D IAR -D LPLD_K60 -lCN
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
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\HAL_MCG.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC LPLD_PLL_Setup
        PUBLIC LPLD_Set_SYS_DIV

// G:\GitHub\newK60_github\Project\k60 -1chen2mianqiangWin\lib\LPLD\HAL_MCG.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_MCG.h
//   10  * ��;: MCG�ײ�ģ����غ���
//   11  * ����޸�����: 20120216
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17  *
//   18  * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ mcg.c
//   19  */
//   20 #include "common.h"
//   21 #include "HAL_MCG.h"
//   22 
//   23 /*
//   24  * LPLD_PLL_Setup
//   25  * PLL��ʼ���ں˼�����ϵͳʱ��
//   26  * 
//   27  * ����:
//   28  *    clk_option--�����ں�ʱ��Ƶ��
//   29  *      |__PLLx--�μ�HAL_MCG.h�е�PLL_option����
//   30  *
//   31  * ���:
//   32  *    �ں�Ƶ�ʣ���λMHz
//   33  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   34 unsigned char LPLD_PLL_Setup(unsigned char pll_option)
//   35 {
LPLD_PLL_Setup:
        PUSH     {R4,LR}
//   36   unsigned char pll_freq;
//   37   unsigned char prdiv;
//   38   
//   39   if(pll_option<111)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+111
        BGE.N    ??LPLD_PLL_Setup_0
//   40   {
//   41     prdiv = 24;  
        MOVS     R2,#+24
//   42   }
//   43   else if(pll_option<201)
//   44   {
//   45     prdiv = 12; 
//   46   }
//   47   else if(pll_option<221)
//   48   {
//   49     prdiv = 11; 
//   50   }
//   51   else
//   52   {
//   53     return 0;
//   54   }
//   55   
//   56   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//   57   
//   58   // �����ƶ��� FBE ģʽ
//   59   MCG_C2 = 0;
??LPLD_PLL_Setup_1:
        MOVS     R3,#+0
        LDR.N    R4,??LPLD_PLL_Setup_2  ;; 0x40064001
        STRB     R3,[R4, #+0]
//   60   
//   61   // ������ʼ����ɺ�,�ͷ�����״̬�µ� oscillator �� GPIO 
//   62   SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R3,??LPLD_PLL_Setup_2+0x4  ;; 0x40048034
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x10000000
        LDR.N    R4,??LPLD_PLL_Setup_2+0x4  ;; 0x40048034
        STR      R3,[R4, #+0]
//   63   LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R3,??LPLD_PLL_Setup_2+0x8  ;; 0x4007c008
        LDRB     R3,[R3, #+0]
        ORRS     R3,R3,#0x80
        LDR.N    R4,??LPLD_PLL_Setup_2+0x8  ;; 0x4007c008
        STRB     R3,[R4, #+0]
//   64   
//   65   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//   66   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//   67   MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
        MOVS     R3,#+152
        LDR.N    R4,??LPLD_PLL_Setup_2+0xC  ;; 0x40064000
        STRB     R3,[R4, #+0]
//   68   
//   69   //while (!(MCG_S & MCG_S_OSCINIT_MASK)){};  // �ȴ� oscillator ��ʼ��
//   70   
//   71   while (MCG_S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
??LPLD_PLL_Setup_3:
        LDR.N    R3,??LPLD_PLL_Setup_2+0x10  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+27
        BMI.N    ??LPLD_PLL_Setup_3
//   72   
//   73   while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
??LPLD_PLL_Setup_4:
        LDR.N    R3,??LPLD_PLL_Setup_2+0x10  ;; 0x40064006
        LDRB     R3,[R3, #+0]
        UBFX     R3,R3,#+2,#+2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+2
        BNE.N    ??LPLD_PLL_Setup_4
//   74   
//   75   // ����FBEģʽ
//   76   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//   77   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//   78   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//   79   MCG_C5 = MCG_C5_PRDIV(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
        ANDS     R2,R2,#0x1F
        LDR.N    R3,??LPLD_PLL_Setup_2+0x14  ;; 0x40064004
        STRB     R2,[R3, #+0]
//   80   
//   81   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//   82   MCG_C6 = 0x0;
        MOVS     R2,#+0
        LDR.N    R3,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R2,[R3, #+0]
//   83   // ѡ��PLL VCO��Ƶ��,ϵͳʱ�ӷ�Ƶ��ȡ����ʱ��ѡ��
//   84   
//   85   switch (pll_option) {
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+60
        BEQ.N    ??LPLD_PLL_Setup_5
        CMP      R0,#+70
        BEQ.N    ??LPLD_PLL_Setup_6
        CMP      R0,#+80
        BEQ.N    ??LPLD_PLL_Setup_7
        CMP      R0,#+90
        BEQ.N    ??LPLD_PLL_Setup_8
        CMP      R0,#+96
        BEQ.N    ??LPLD_PLL_Setup_9
        CMP      R0,#+100
        BEQ.N    ??LPLD_PLL_Setup_10
        CMP      R0,#+110
        BEQ.N    ??LPLD_PLL_Setup_11
        CMP      R0,#+120
        BEQ.N    ??LPLD_PLL_Setup_12
        CMP      R0,#+130
        BEQ.N    ??LPLD_PLL_Setup_13
        CMP      R0,#+150
        BEQ.N    ??LPLD_PLL_Setup_14
        CMP      R0,#+170
        BEQ.W    ??LPLD_PLL_Setup_15
        CMP      R0,#+180
        BEQ.W    ??LPLD_PLL_Setup_16
        CMP      R0,#+200
        BEQ.W    ??LPLD_PLL_Setup_17
        CMP      R0,#+209
        BEQ.W    ??LPLD_PLL_Setup_18
        B.N      ??LPLD_PLL_Setup_19
//   86     case 60:
//   87       // ����ϵͳѡ���Ƶ
//   88       // MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/3
//   89       LPLD_Set_SYS_DIV(0,1,1,2);  //core=60M, bus=30M, FlexBus=30M, Flash Clk=20M
??LPLD_PLL_Setup_5:
        MOVS     R3,#+2
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//   90       // ���� VCO ��Ƶ��ʹ�� 50MHz PLL, LOLIE=0, PLLS=1, CME=0, VDIV=1
//   91       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(6); //VDIV = 6 (2x30) 60MHz
        MOVS     R0,#+70
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//   92       pll_freq = 60;
        MOVS     R1,#+60
//   93       break;
        B.N      ??LPLD_PLL_Setup_19
??LPLD_PLL_Setup_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+201
        BGE.N    ??LPLD_PLL_Setup_20
        MOVS     R2,#+12
        B.N      ??LPLD_PLL_Setup_1
??LPLD_PLL_Setup_20:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+221
        BGE.N    ??LPLD_PLL_Setup_21
        MOVS     R2,#+11
        B.N      ??LPLD_PLL_Setup_1
??LPLD_PLL_Setup_21:
        MOVS     R0,#+0
        B.N      ??LPLD_PLL_Setup_22
//   94     case 70:
//   95       LPLD_Set_SYS_DIV(0,1,1,2);  //core=70M, bus=35M, FlexBus=35M, Flash Clk=23.3M
??LPLD_PLL_Setup_6:
        MOVS     R3,#+2
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//   96       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(11); //VDIV = 11 (2x35) 70MHz
        MOVS     R0,#+75
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//   97       pll_freq = 70;
        MOVS     R1,#+70
//   98       break;
        B.N      ??LPLD_PLL_Setup_19
//   99     case 80:
//  100       LPLD_Set_SYS_DIV(0,1,1,3);  //core=80M, bus=40M, FlexBus=40M, Flash Clk=20M
??LPLD_PLL_Setup_7:
        MOVS     R3,#+3
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  101       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(16); //VDIV = 16 (2x40) 80MHz
        MOVS     R0,#+80
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  102       pll_freq = 80;
        MOVS     R1,#+80
//  103       break;
        B.N      ??LPLD_PLL_Setup_19
//  104     case 90:
//  105       LPLD_Set_SYS_DIV(0,1,1,3);  //core=90M, bus=45M, FlexBus=45M, Flash Clk=22.5M
??LPLD_PLL_Setup_8:
        MOVS     R3,#+3
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  106       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(21); //VDIV = 21 (2x45) 90MHz
        MOVS     R0,#+85
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  107       pll_freq = 90;
        MOVS     R1,#+90
//  108       break;
        B.N      ??LPLD_PLL_Setup_19
//  109     case 96:
//  110       LPLD_Set_SYS_DIV(0,1,1,3);  //core=96M, bus=48M, FlexBus=48M, Flash Clk=22.5M
??LPLD_PLL_Setup_9:
        MOVS     R3,#+3
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  111       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(24); //VDIV = 24 (2x48) 96MHz
        MOVS     R0,#+88
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  112       pll_freq = 96;
        MOVS     R1,#+96
//  113       break;
        B.N      ??LPLD_PLL_Setup_19
//  114     case 100:
//  115       LPLD_Set_SYS_DIV(0,1,1,3);  //core=100M, bus=50M, FlexBus=50M, Flash Clk=25M
??LPLD_PLL_Setup_10:
        MOVS     R3,#+3
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  116       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(26); //VDIV = 26 (2x50) 100MHz
        MOVS     R0,#+90
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  117       pll_freq = 100;
        MOVS     R1,#+100
//  118       break;
        B.N      ??LPLD_PLL_Setup_19
//  119     case 110:
//  120       LPLD_Set_SYS_DIV(0,2,2,4);  //core=110M, bus=36.7M, FlexBus=36.7M, Flash Clk=22M
??LPLD_PLL_Setup_11:
        MOVS     R3,#+4
        MOVS     R2,#+2
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  121       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(31); //VDIV = 31 (2x55) 110MHz
        MOVS     R0,#+95
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  122       pll_freq = 110;
        MOVS     R1,#+110
//  123       break;
        B.N      ??LPLD_PLL_Setup_19
//  124     case 120:
//  125       LPLD_Set_SYS_DIV(0,2,2,4);  //core=120M, bus=40M, FlexBus=40M, Flash Clk=24M
??LPLD_PLL_Setup_12:
        MOVS     R3,#+4
        MOVS     R2,#+2
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  126       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(7); //VDIV = 7 (3.846x31) 119.2MHz
        MOVS     R0,#+71
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  127       pll_freq = 120;
        MOVS     R1,#+120
//  128       break;
        B.N      ??LPLD_PLL_Setup_19
//  129     case 130:
//  130       LPLD_Set_SYS_DIV(0,2,2,5);  //core=130M, bus=43M, FlexBus=43M, Flash Clk=21.6M
??LPLD_PLL_Setup_13:
        MOVS     R3,#+5
        MOVS     R2,#+2
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  131       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(10); //VDIV = 10 (3.846x34) 130.8MHz
        MOVS     R0,#+74
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  132       pll_freq = 130;
        MOVS     R1,#+130
//  133       break;
        B.N      ??LPLD_PLL_Setup_19
//  134     case 150:
//  135       LPLD_Set_SYS_DIV(0,2,2,5);  //core=150M, bus=50M, FlexBus=50M, Flash Clk=25M
??LPLD_PLL_Setup_14:
        MOVS     R3,#+5
        MOVS     R2,#+2
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  136       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(15); //VDIV = 15 (3.846x39) 150MHz
        MOVS     R0,#+79
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  137       pll_freq = 150;
        MOVS     R1,#+150
//  138       break;
        B.N      ??LPLD_PLL_Setup_19
//  139     case 170:
//  140       LPLD_Set_SYS_DIV(0,3,3,6);  //core=170M, bus=42.5M, FlexBus=42.5M, Flash Clk=24.3M
??LPLD_PLL_Setup_15:
        MOVS     R3,#+6
        MOVS     R2,#+3
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  141       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(20); //VDIV = 20 (3.846x44) 169.2MHz
        MOVS     R0,#+84
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  142       pll_freq = 170;
        MOVS     R1,#+170
//  143       break;
        B.N      ??LPLD_PLL_Setup_19
//  144     case 180:
//  145       LPLD_Set_SYS_DIV(0,3,3,7);  //core=180M, bus=45M, FlexBus=45M, Flash Clk=22.5M
??LPLD_PLL_Setup_16:
        MOVS     R3,#+7
        MOVS     R2,#+3
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  146       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(23); //VDIV = 23 (3.846x47) 180.8MHz
        MOVS     R0,#+87
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  147       pll_freq = 180;
        MOVS     R1,#+180
//  148       break;
        B.N      ??LPLD_PLL_Setup_19
//  149     case 200:
//  150       LPLD_Set_SYS_DIV(0,3,3,7);  //core=200M, bus=50M, FlexBus=50M, Flash Clk=25M
??LPLD_PLL_Setup_17:
        MOVS     R3,#+7
        MOVS     R2,#+3
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  151       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(28); //VDIV = 28 (3.846x52) 200MHz
        MOVS     R0,#+92
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  152       pll_freq = 200;
        MOVS     R1,#+200
//  153       break;
        B.N      ??LPLD_PLL_Setup_19
//  154     case 209:
//  155       LPLD_Set_SYS_DIV(0,4,4,8);  //core=209M, bus=42M, FlexBus=42M, Flash Clk=23.2M
??LPLD_PLL_Setup_18:
        MOVS     R3,#+8
        MOVS     R2,#+4
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LPLD_Set_SYS_DIV
//  156       MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(26); //VDIV = 26 (4.17x50) 208.5MHz
        MOVS     R0,#+90
        LDR.N    R1,??LPLD_PLL_Setup_2+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  157       pll_freq = 209;
        MOVS     R1,#+209
//  158     break;
//  159   }
//  160   
//  161   while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??LPLD_PLL_Setup_19:
        LDR.N    R0,??LPLD_PLL_Setup_2+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_PLL_Setup_19
//  162   
//  163   while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
??LPLD_PLL_Setup_23:
        LDR.N    R0,??LPLD_PLL_Setup_2+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_PLL_Setup_23
//  164   
//  165   // �Ѿ�����PBEģʽ
//  166   
//  167   // Transition into PEE by setting CLKS to 0
//  168   // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  169   MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_2+0xC  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R2,??LPLD_PLL_Setup_2+0xC  ;; 0x40064000
        STRB     R0,[R2, #+0]
//  170   
//  171   // Wait for clock status bits to update
//  172   while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??LPLD_PLL_Setup_24:
        LDR.N    R0,??LPLD_PLL_Setup_2+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??LPLD_PLL_Setup_24
//  173   
//  174   // �Ѿ�����PEEģʽ
//  175   
//  176   return pll_freq;
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_PLL_Setup_22:
        POP      {R4,PC}          ;; return
        DATA
??LPLD_PLL_Setup_2:
        DC32     0x40064001
        DC32     0x40048034
        DC32     0x4007c008
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064004
        DC32     0x40064005
//  177 } 
//  178 
//  179 
//  180 /*
//  181  * LPLD_Set_SYS_DIV
//  182  * ����ϵͳʼ�շ�Ƶ(FSCL�ٷ�����)
//  183  *
//  184  * ˵��:
//  185  * ��δ�����������RAM��. It is a workaround for errata e2448.
//  186  * ��Flashʱ�ӷ�Ƶ�ı��ʱ��FlashԤ��ȡ�������.
//  187  * �����ڴ�Flashִ�е�ʱ�����ﲻ��ִ��.
//  188  * ��Ԥ��ȡ������ʹ��֮ǰ������ʱ�ӷ�Ƶ�ı����һ��С����ʱ.
//  189  *
//  190  * ����:
//  191  *    outdiv1~outdiv4--�ֱ�Ϊcore, bus, FlexBus, Flashʱ�ӷ�Ƶϵ��
//  192  */
//  193 #if (defined(IAR))

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  194 	__ramfunc void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  195 #elif (defined(CW))
//  196 __relocate_code__ 
//  197 void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  198 #endif
//  199 {
LPLD_Set_SYS_DIV:
        PUSH     {R4-R6}
//  200   uint32 temp_reg;
//  201   uint8 i;
//  202   
//  203   temp_reg = FMC_PFAPR; // ���� FMC_PFAPR �Ĵ���
        LDR.N    R4,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R4,[R4, #+0]
//  204   
//  205   // ���� M0PFD �� M7PFD Ϊ 1 ����Ԥ�ȶ�ȡ
//  206   FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  207              | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  208              | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R5,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0xFF0000
        LDR.N    R6,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        STR      R5,[R6, #+0]
//  209   
//  210   // ����ʱ�ӷ�ƵΪ����ֵ  
//  211   SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2) 
//  212               | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R1,R1,#+24
        ANDS     R1,R1,#0xF000000
        ORRS     R0,R1,R0, LSL #+28
        LSLS     R1,R2,#+20
        ANDS     R1,R1,#0xF00000
        ORRS     R0,R1,R0
        LSLS     R1,R3,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        LDR.N    R1,??LPLD_Set_SYS_DIV_0+0x4  ;; 0x40048044
        STR      R0,[R1, #+0]
//  213 
//  214   // ��ʱһС��ʱ��ȴ��ı�
//  215   for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R0,#+0
        B.N      ??LPLD_Set_SYS_DIV_1
??LPLD_Set_SYS_DIV_2:
        ADDS     R0,R0,#+1
??LPLD_Set_SYS_DIV_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R3
        BCC.N    ??LPLD_Set_SYS_DIV_2
//  216   {}
//  217   
//  218   FMC_PFAPR = temp_reg; // �ظ�ԭ�ȵ� FMC_PFAPR �Ĵ���ֵ
        LDR.N    R0,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        STR      R4,[R0, #+0]
//  219   
//  220   return;
        POP      {R4-R6}
        BX       LR               ;; return
        DATA
??LPLD_Set_SYS_DIV_0:
        DC32     0x4001f000
        DC32     0x40048044
//  221 } // set_sys_dividers

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
// 556 bytes in section .text
//  76 bytes in section .textrw
// 
// 632 bytes of CODE memory
//
//Errors: none
//Warnings: none
