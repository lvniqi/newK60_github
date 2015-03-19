///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:49
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_PDB.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_PDB.c" -D IAR
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\List\HAL_PDB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN enable_irq

        PUBLIC LPLD_PDB_ADC_Trigger_Congfig
        PUBLIC LPLD_PDB_DAC_Interval_Congfig
        PUBLIC LPLD_PDB_Delay
        PUBLIC LPLD_PDB_Init
        PUBLIC LPLD_PDB_Isr
        PUBLIC LPLD_PDB_SetDelayIsr
        PUBLIC LPLD_PDB_SetUp
        PUBLIC PDB_ISR

// C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_PDB.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_PDB.c
//   10  * ��;: PDB�ײ�ģ����غ���
//   11  * ����޸�����: 20120321
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17 */
//   18 #include "HAL_PDB.h"
//   19 #include "common.h"
//   20 
//   21 /*
//   22  *******���õ�PDB�жϣ�����isr.h��ճ��һ�´���:*********
//   23 #undef  VECTOR_088
//   24 #define VECTOR_088 LPLD_PDB_Isr
//   25 //���º�����LPLD_Kinetis�ײ���������޸�
//   26 extern void LPLD_PDB_Isr(void);
//   27  ***********************�������*************************
//   28 */
//   29 
//   30 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 PDB_ISR_CALLBACK PDB_ISR[1];
PDB_ISR:
        DS8 4
//   32 
//   33 
//   34 /*
//   35  * LPLD_PDB_Init
//   36  * ���ڳ�ʼ��PDB
//   37  * ����PDB��prescaleԤ��Ƶֵ
//   38  * ����PDB��trgsel���봥��Դ
//   39  * ����PDB��ldmod����ģʽ
//   40  * ����PDB��cont��������ģʽ��one-shotģʽ
//   41  * ����PDB��dma_en
//   42  * 
//   43  * ����:
//   44  *    prescale--PDB ��Ƶϵ��
//   45  *      PDB�ļ�����Ƶ�� ���� ��������Ƶ�ʳ��� prescale��mult�ĳ˻�\ 
//   46  *      |__PDB_PRESC_1      -����prescale = MULT * 1
//   47  *      |__PDB_PRESC_2      -����prescale = MULT * 2
//   48  *      |__PDB_PRESC_4      -����prescale = MULT * 4
//   49  *      |__PDB_PRESC_8      -����prescale = MULT * 8
//   50  *      |__PDB_PRESC_16     -����prescale = MULT * 16
//   51  *      |__PDB_PRESC_32     -����prescale = MULT * 32
//   52  *      |__PDB_PRESC_64     -����prescale = MULT * 64
//   53  *      |__PDB_PRESC_128    -����prescale = MULT * 128
//   54  *
//   55  *    mult--PDB ��Ƶ����
//   56  *      PDB�ļ�����Ƶ�� ���� ��������Ƶ�ʳ��� prescale��mult�ĳ˻�
//   57  *      |__PDB_MULT_1       -����MULT = 1
//   58  *      |__PDB_MULT_10      -����MULT = 10
//   59  *      |__PDB_MULT_20      -����MULT = 20
//   60  *      |__PDB_MULT_40      -����MULT = 40
//   61  *
//   62  *    mod--PDB ģ��������
//   63  *      ��PDB����������MOD��ֵ��PDB����������
//   64  *
//   65  *    trgsel-- PDB ����Դѡ��
//   66  *      |__TRIGER_IN0        -���봥��Դ0
//   67  *      |__...                  
//   68  *      |__TRIGER_IN14       -���봥��Դ14
//   69  *      |__SOFTWARE_TRIGER   -�������
//   70  * 
//   71  *    ldmod--����PDB ADCͨ��x��Ԥ����ͨ��
//   72  *      |__LDMOD0   -��LDOK=1�� MOD, IDLY, CHnDLYm, INTx, �� POyDLY �Ĵ�����������
//   73  *      |__LDMOD1   -��LDOK=1��PDB����������MOD�� MOD, IDLY, CHnDLYm, INTx, �� POyDLY �Ĵ�����������
//   74  *      |__LDMOD2   -��LDOK=1��һ�������¼�����Ϊ1�� MOD, IDLY, CHnDLYm, INTx, �� POyDLY �Ĵ�����������
//   75  *      |__LDMOD3   -��LDOK=1���һ�������¼�����Ϊ1��PDB����������MOD�� MOD, IDLY, CHnDLYm, INTx, �� POyDLY �Ĵ�����������
//   76  *
//   77  *    cont -- ����PDB ����ģʽ
//   78  *      |__PDB_ONESHOT   -����ģʽ
//   79  *      |__PDB_CONTINUE  -����ģʽ
//   80  * 
//   81  *    dma_en -- ʹ��DMA����
//   82  *      |__PDB_DMA_OFF   -��ֹDMAģʽ
//   83  *      |__PDB_DMA_ON    -ʹ��DMAģʽ
//   84  *
//   85  *    ����ֵ:
//   86  *       0 ����
//   87  *       1 ���óɹ�
//   88  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   89 uint8 LPLD_PDB_Init(uint8 prescale,uint8 mult,uint16 mod ,uint8 trgsel,uint8 ldmod,uint8 cont,uint8 dma_en)
//   90 {
LPLD_PDB_Init:
        PUSH     {R4,R5}
//   91   //ʹ��PDBʱ��
//   92   SIM_SCGC6 |= SIM_SCGC6_PDB_MASK ;
        LDR.N    R4,??DataTable6  ;; 0x4004803c
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x400000
        LDR.N    R5,??DataTable6  ;; 0x4004803c
        STR      R4,[R5, #+0]
//   93   
//   94   PDB0_SC = 0x00;
        MOVS     R4,#+0
        LDR.N    R5,??DataTable6_1  ;; 0x40036000
        STR      R4,[R5, #+0]
//   95   //���÷�Ƶ����
//   96   //f_PDB = f_perpherial_bus / (mult * prescale)
//   97   //����f_perpherial_bus��PLL���໷������
//   98   if( mult > 3)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+4
        BLT.N    ??LPLD_PDB_Init_0
//   99     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_Init_1
//  100   else
//  101     PDB0_SC |=PDB_SC_MULT(mult);
??LPLD_PDB_Init_0:
        LDR.N    R4,??DataTable6_1  ;; 0x40036000
        LDR      R4,[R4, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ANDS     R1,R1,#0xC
        ORRS     R1,R1,R4
        LDR.N    R4,??DataTable6_1  ;; 0x40036000
        STR      R1,[R4, #+0]
//  102   
//  103   if(prescale >7)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BLT.N    ??LPLD_PDB_Init_2
//  104     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_Init_1
//  105   else
//  106     PDB0_SC |=PDB_SC_PRESCALER(prescale);
??LPLD_PDB_Init_2:
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+12
        ANDS     R0,R0,#0x7000
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
        LDR      R0,[SP, #+8]
//  107   
//  108   if(ldmod > 3)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??LPLD_PDB_Init_3
//  109     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_Init_1
//  110   else
//  111     //���ü���ģʽ
//  112     PDB0_SC |= PDB_SC_LDMOD(ldmod); 
??LPLD_PDB_Init_3:
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+18
        ANDS     R0,R0,#0xC0000
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  113   
//  114   if(trgsel >15)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+16
        BLT.N    ??LPLD_PDB_Init_4
//  115     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_Init_1
//  116   else
//  117     //���ô���ģʽ
//  118     PDB0_SC |= PDB_SC_TRGSEL(trgsel);
??LPLD_PDB_Init_4:
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R1,R3,#+8
        ANDS     R1,R1,#0xF00
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  119   
//  120   //����PDB����ģʽ
//  121   if(cont)
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??LPLD_PDB_Init_5
//  122   {
//  123     //PDB ����������ģʽ
//  124     PDB0_SC |= PDB_SC_CONT_MASK ;
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_PDB_Init_6
//  125   }
//  126   else
//  127   {
//  128     //PDB ����������ģʽ
//  129     PDB0_SC &=(~PDB_SC_CONT_MASK);
??LPLD_PDB_Init_5:
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  130   }
//  131   //����DMAģʽ
//  132   if(dma_en)
??LPLD_PDB_Init_6:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BEQ.N    ??LPLD_PDB_Init_7
//  133   {
//  134     //PDB ����������ģʽ
//  135     PDB0_SC |= PDB_SC_DMAEN_MASK ;
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_PDB_Init_8
//  136   }
//  137   else
//  138   {
//  139     //PDB ����������ģʽ
//  140     PDB0_SC &=(~PDB_SC_DMAEN_MASK);
??LPLD_PDB_Init_7:
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  141   }
//  142   
//  143   PDB0_MOD = mod;
??LPLD_PDB_Init_8:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDR.N    R0,??DataTable6_2  ;; 0x40036004
        STR      R2,[R0, #+0]
//  144   
//  145   return 1;
        MOVS     R0,#+1
??LPLD_PDB_Init_1:
        POP      {R4,R5}
        BX       LR               ;; return
//  146 }
//  147 
//  148 /*
//  149  * LPLD_PDB_SetUp
//  150  * ���ڿ����ر�PDB������
//  151  * ������ͬʱ����LMOD�����ü���MOD, IDLY, CHnDLYm, DACINTx, and POyDLY
//  152  * �������Ϊ�����������ʱ���������
//  153  *
//  154  * ����:
//  155  *   is_operate -- �����Ƿ���PDB
//  156  *     |__PDB_STOP        -�ر�PDB
//  157  *     |__PDB_OPERATION   -����PDB
//  158  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 void LPLD_PDB_SetUp(uint8 is_operate)
//  160 {
//  161   if(is_operate==PDB_OPERATION)
LPLD_PDB_SetUp:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_SetUp_0
//  162   {
//  163     //����PDB0
//  164     PDB0_SC |= PDB_SC_PDBEN_MASK ; 
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  165     //LDOK ֻ����PDBEN = 1����²����ã�
//  166     //��ϸMOD, IDLY, CHnDLYm, DACINTx, and POyDLY�е�ֵ
//  167     //���������õ�ʱ��ֵ���ص����Ӧ�Ļ������С�
//  168     PDB0_SC |= PDB_SC_LDOK_MASK ;
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  169     
//  170     //PDBʹ�ܺ����������ģʽ��
//  171     //��ʱ�����������㣬��λ������
//  172     PDB0_SC |= PDB_SC_SWTRIG_MASK ;
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_PDB_SetUp_1
//  173   }
//  174   else
//  175   {
//  176     //�ر�PDB
//  177     PDB0_SC &= (~PDB_SC_PDBEN_MASK); 
??LPLD_PDB_SetUp_0:
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  178   }
//  179 }
??LPLD_PDB_SetUp_1:
        BX       LR               ;; return
//  180 
//  181 /*
//  182  * LPLD_PDB_ADC_Trigger_Congfig
//  183  * ��������ͨ��PDB����ADC�Ĵ����źţ��ڸú�����
//  184  * ����PDB��adcxͨ��
//  185  * ����PDB��adcxԤ������ʱ��������ֵ
//  186  * ����PDB��adcxԤ����ͨ��
//  187  * ����PDB��adcxԤ����ͨ��bbģʽ
//  188  * 
//  189  * ����:
//  190  *    adcx--ѡ��PDB ADC��ͨ��
//  191  *      |__ADC0       -ѡ��PDB ADCͨ��0
//  192  *      |__ADC1       -ѡ��PDB ADCͨ��1
//  193  * 
//  194  *    *pre_dalay--PDB ADC��Ԥ������ʱ���ļ���ֵ���ò������Ϊ65536
//  195  *        PDB ADC����ʱƵ�� ���� PDB��������Ƶ�� ���� pre_dalay 
//  196  *        ��Ϊÿ��ͨ��������Ԥ������ʱ������Ҫ������ʱֵ�����Զ���Ϊ*pre_dalay
//  197  * 
//  198  *    pre_ch--����PDB ADCͨ��x��Ԥ����ͨ��
//  199  *      |__PDB_PRECH_DIS  -��ѡ��Ԥ����λ
//  200  *      |__PDB_PRECH_EN0  -ѡ��Ԥ����0  
//  201  *      |__PDB_PRECH_EN1  -ѡ��Ԥ����1  
//  202  *
//  203  *    pre_bb_mode--����PDB ADCͨ��x��Ԥ������back to backģʽ
//  204  *      |__PDB_PREBB_DIS  -��ֹPDB ADCͨ��x��Ԥ������b to bģʽ
//  205  *      |__PDB_PREBB_EN0  -ѡ��PDB ADCͨ��x��Ԥ����0�ĵ�b to bģʽ
//  206  *      |__PDB_PREBB_EN1  -ѡ��PDB ADCͨ��x��Ԥ����1�ĵ�b to bģʽ
//  207  */
//  208 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  209 void LPLD_PDB_ADC_Trigger_Congfig(ADCx adcx, uint16 *pre_dalay, uint8 pre_ch, uint8 pre_bb_mode)
//  210 {
LPLD_PDB_ADC_Trigger_Congfig:
        PUSH     {R4,R5}
//  211   PDB_C1_REG(PDB0_BASE_PTR,adcx) = (0 
//  212                                     | PDB_C1_BB(pre_bb_mode)
//  213                                     | PDB_C1_TOS(pre_ch)
//  214                                     | PDB_C1_EN(pre_ch)
//  215                                     );
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+8
        ORRS     R3,R4,R3, LSL #+16
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R3,R2,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,#+40
        LDR.N    R5,??DataTable6_3  ;; 0x40036010
        MLA      R4,R4,R0,R5
        STR      R3,[R4, #+0]
//  216   
//  217   if(pre_ch) 
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LPLD_PDB_ADC_Trigger_Congfig_0
//  218   {
//  219     PDB_DLY_REG(PDB0_BASE_PTR,adcx,pre_ch-1) = *pre_dalay;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+40
        LDR.N    R4,??DataTable6_3  ;; 0x40036010
        MLA      R0,R3,R0,R4
        ADDS     R0,R0,R2, LSL #+2
        LDRH     R1,[R1, #+0]
        STR      R1,[R0, #+4]
//  220   }
//  221 }
??LPLD_PDB_ADC_Trigger_Congfig_0:
        POP      {R4,R5}
        BX       LR               ;; return
//  222 
//  223 /*
//  224  * LPLD_PDB_DAC_Interval_Congfig
//  225  * �ú�����������DAC��PDB�������ڣ��ڸú�����
//  226  * ����PDB��dacxͨ��
//  227  * ����PDB��dacx��PDB0_DACINTx�ļ���ֵ��
//  228  * ����PDB��dacx�ⲿ���Ŵ���ģʽ
//  229  * 
//  230  * ����:
//  231  *    dacx--ѡ��PDB DAC��ͨ��
//  232  *      |__DAC0       -ѡ��PDB DACͨ��0
//  233  *      |__DAC1       -ѡ��PDB DACͨ��1
//  234  * 
//  235  *    interval -- DAC�Ĵ���������ò������Ϊ65536
//  236  *        DAC�Ĵ���Ƶ�� ���� PDB��������Ƶ�� ���� interval 
//  237  * 
//  238  *    extrigger -- DAC�ⲿ��������ʹ�ܣ�������ô�λPDB0_DACINTx�ᱻ����
//  239  *      |__PDB_EXTRG_DIS  -�����ⲿ��������
//  240  *      |__PDB_EXTRG_EN   -ʹ���ⲿ��������   
//  241  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  242 void LPLD_PDB_DAC_Interval_Congfig(DACx dacx,uint16 interval,uint8 extrigger)
//  243 {
//  244 
//  245   if(extrigger == PDB_EXTRG_EN)
LPLD_PDB_DAC_Interval_Congfig:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_PDB_DAC_Interval_Congfig_0
//  246   {
//  247     //�ⲿ����ģʽ�£�PDB0_DACINT0����
//  248     //DAC output delay from PDB Software trigger
//  249     PDB_INTC_REG(PDB0_BASE_PTR,dacx) |= PDB_INTC_EXT_MASK ;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_4  ;; 0x40036150
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_4  ;; 0x40036150
        STR      R1,[R2, R0, LSL #+3]
        B.N      ??LPLD_PDB_DAC_Interval_Congfig_1
//  250   }
//  251   else
//  252   {
//  253     //����PDB0_DACINT0ʱ�����뱣֤PDSC_DACTOE = 1,��˼�ǿ���PDB�ڲ�DAC������
//  254     //DAC output changes are base on the interval defined by this value
//  255     PDB_INT_REG(PDB0_BASE_PTR,dacx) = interval;
??LPLD_PDB_DAC_Interval_Congfig_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_4  ;; 0x40036150
        ADDS     R2,R2,R0, LSL #+3
        STR      R1,[R2, #+4]
//  256     PDB_INTC_REG(PDB0_BASE_PTR,dacx) &= ~PDB_INTC_EXT_MASK ;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_4  ;; 0x40036150
        LDR      R1,[R1, R0, LSL #+3]
        BICS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_4  ;; 0x40036150
        STR      R1,[R2, R0, LSL #+3]
//  257   }
//  258   //ʹ��DAC���������
//  259   PDB_INTC_REG(PDB0_BASE_PTR,dacx) |= PDB_INTC_TOE_MASK ;
??LPLD_PDB_DAC_Interval_Congfig_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_4  ;; 0x40036150
        LDR      R1,[R1, R0, LSL #+3]
        ORRS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_4  ;; 0x40036150
        STR      R1,[R2, R0, LSL #+3]
//  260   
//  261 }
        BX       LR               ;; return
//  262 
//  263 /*
//  264  * LPLD_PDB_Delay_SetIsr
//  265  * �ú��������趨PDB��ʱ�ж�
//  266  * 
//  267  * ����:
//  268  * 
//  269  *    delay -- PDB����ʱֵ���ò������Ϊ65536
//  270  *        PDB����ʱֵƵ�� ���� PDB��������Ƶ�� ���� delay 
//  271  * 
//  272  *    isr_func -- PDB��ʱ�жϷ�����
//  273  */
//  274 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 void LPLD_PDB_SetDelayIsr(uint16 delay,PDB_ISR_CALLBACK isr_func)
//  276 {
LPLD_PDB_SetDelayIsr:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  277   //�趨��ʱ��ֵ
//  278   PDB0_IDLY = delay;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable6_5  ;; 0x4003600c
        STR      R0,[R1, #+0]
//  279   
//  280   enable_irq(72);
        MOVS     R0,#+72
        BL       enable_irq
//  281   //ʹ�ܶ�ʱ�ж�
//  282   PDB0_SC |= PDB_SC_PDBIE_MASK;
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  283   //����жϺ���  
//  284   PDB_ISR[0] = isr_func;
        LDR.N    R0,??DataTable6_6
        STR      R4,[R0, #+0]
//  285 
//  286 }
        POP      {R4,PC}          ;; return
//  287 
//  288 /*
//  289  * LPLD_PDB_Delay
//  290  * �ú����ò�ѯ��־λ�ķ�ʽ�ȴ���ʱ���
//  291  * 
//  292  * ����:
//  293  * 
//  294  *    delay -- PDB����ʱֵ���ò������Ϊ65536
//  295  *        PDB����ʱֵƵ�� ���� PDB��������λ��Ƶ�� ���� delay 
//  296  * 
//  297  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  298 void LPLD_PDB_Delay(uint16 delay)
//  299 {
//  300   //�趨��ʱ��ֵ
//  301   PDB0_IDLY = delay;
LPLD_PDB_Delay:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable6_5  ;; 0x4003600c
        STR      R0,[R1, #+0]
//  302   //��ֹ��ʱ���ж�
//  303   PDB0_SC &= (~PDB_SC_PDBIE_MASK);
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_PDB_Delay_0
//  304   //��ʱ�ȴ�ֱ����־λ��1
//  305   while(PDB0_SC & PDB_SC_PDBIF_MASK)
//  306   {
//  307     //�����־λ  
//  308     PDB0_SC |= PDB_SC_PDBIF_MASK;
??LPLD_PDB_Delay_1:
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  309   }
??LPLD_PDB_Delay_0:
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BMI.N    ??LPLD_PDB_Delay_1
//  310 }
        BX       LR               ;; return
//  311 
//  312 
//  313 /*
//  314  * LPLD_PDB_Isr
//  315  * PDBͨ���жϵײ���ں���
//  316  * PDBһ���������жϣ���һΪ��ʱ�жϣ����Ϊ�����ж�
//  317  * ��������ö�ʱ�жϴ�����
//  318  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  319  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  320 void LPLD_PDB_Isr(void)
//  321 {
LPLD_PDB_Isr:
        PUSH     {R7,LR}
//  322   #define PDB_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
//  323   uint8 pdb_ch = PDB_VECTORNUM - 88;
        LDR.N    R0,??DataTable6_7  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+88
//  324     
//  325   //�����û��Զ����жϷ���
//  326   PDB_ISR[pdb_ch]();  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_6
        LDR      R0,[R1, R0, LSL #+2]
        BLX      R0
//  327   
//  328   //�����ʱ�жϱ�־λ  
//  329   PDB0_SC &= ~PDB_SC_PDBIF_MASK;
        LDR.N    R0,??DataTable6_1  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable6_1  ;; 0x40036000
        STR      R0,[R1, #+0]
//  330 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40036000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40036004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x40036010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x40036150

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x4003600c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     PDB_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
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
//   4 bytes in section .bss
// 548 bytes in section .text
// 
// 548 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none
