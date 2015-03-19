///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       19/Mar/2015  11:05:00
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\lib\LPLD\HAL_eDMA.c
//    Command line =  
//        "G:\GitHub\newK60_github\Project\k60
//        -1chen2mianqiangWin\lib\LPLD\HAL_eDMA.c" -D IAR -D LPLD_K60 -lCN
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
//        -1chen2mianqiangWin\project\hz\iar\FLASH\List\HAL_eDMA.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN enable_irq

        PUBLIC DMA_ISR
        PUBLIC LPLD_DMA_EnableReq
        PUBLIC LPLD_DMA_Init
        PUBLIC LPLD_DMA_Isr
        PUBLIC LPLD_DMA_Reload

// G:\GitHub\newK60_github\Project\k60 -1chen2mianqiangWin\lib\LPLD\HAL_eDMA.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_eDAM.c
//   10  * ��;: eDMA�ײ�ģ����غ���
//   11  * ����޸�����: 20120321
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17 */
//   18 /*
//   19  *******���õ�DMA�жϣ�����isr.h��ճ��һ�´���:*********
//   20 
//   21 //DMAģ���жϷ�����
//   22 #undef  VECTOR_016
//   23 #define VECTOR_016 LPLD_DMA_Isr
//   24 #undef  VECTOR_017
//   25 #define VECTOR_017 LPLD_DMA_Isr
//   26 #undef  VECTOR_018
//   27 #define VECTOR_018 LPLD_DMA_Isr
//   28 #undef  VECTOR_019
//   29 #define VECTOR_019 LPLD_DMA_Isr
//   30 #undef  VECTOR_020
//   31 #define VECTOR_020 LPLD_DMA_Isr
//   32 #undef  VECTOR_021
//   33 #define VECTOR_021 LPLD_DMA_Isr
//   34 #undef  VECTOR_022
//   35 #define VECTOR_022 LPLD_DMA_Isr
//   36 #undef  VECTOR_023
//   37 #define VECTOR_023 LPLD_DMA_Isr
//   38 #undef  VECTOR_024
//   39 #define VECTOR_024 LPLD_DMA_Isr
//   40 #undef  VECTOR_025
//   41 #define VECTOR_025 LPLD_DMA_Isr
//   42 #undef  VECTOR_026
//   43 #define VECTOR_026 LPLD_DMA_Isr
//   44 #undef  VECTOR_027
//   45 #define VECTOR_027 LPLD_DMA_Isr
//   46 #undef  VECTOR_028
//   47 #define VECTOR_028 LPLD_DMA_Isr
//   48 #undef  VECTOR_029
//   49 #define VECTOR_029 LPLD_DMA_Isr
//   50 #undef  VECTOR_030
//   51 #define VECTOR_030 LPLD_DMA_Isr
//   52 #undef  VECTOR_031
//   53 #define VECTOR_031 LPLD_DMA_Isr
//   54 #undef  VECTOR_032
//   55 #define VECTOR_032 LPLD_DMA_Isr
//   56 //���º�����LPLD_Kinetis�ײ���������޸�
//   57 extern void LPLD_DMA_Isr(void);
//   58 
//   59  ***********************�������*************************
//   60 */
//   61 
//   62 #include "common.h"
//   63 #include "HAL_eDMA.h"
//   64 
//   65 //�ڲ�����
//   66 static uint8 LPLD_eDMA_Config(LPLD_eDMA_Cfg_t*);
//   67 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   68 DMA_ISR_CALLBACK DMA_ISR[16];
DMA_ISR:
        DS8 64
//   69 
//   70 /*
//   71  * LPLD_DMA_Init
//   72  * DMAģ��ͨ�ó�ʼ������--����Դ��ַ��Ŀ�ĵ�ַ֮�������ֱ�Ӵ��䣨����ͨ��CPU��
//   73  * ��ϸ������LPLD_eDMA_Cfg_t �ṹ���ж��壨��HAL_eDMA.h��ͷ�ļ��ж���
//   74  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 uint8 LPLD_DMA_Init(LPLD_eDMA_Cfg_t *DMA_Config)
//   76 { 
LPLD_DMA_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   77     //����û�û������ ÿһ�δ����ֽڵĸ��� Ĭ��Ϊÿ�δ���һ���ֽ�
//   78     if(DMA_Config->Trans_bytesNum  == NULL)
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_0
//   79     {
//   80        DMA_Config->Trans_bytesNum =1;
        MOVS     R0,#+1
        STR      R0,[R4, #+4]
//   81     }
//   82     
//   83     //����û�û������ Դ��ַ���� Ĭ��Ϊִ��һ��DMA�����Դ��ַ������
//   84     if(DMA_Config->Source_Addr_inc == NULL)
??LPLD_DMA_Init_0:
        LDRB     R0,[R4, #+13]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_1
//   85     {
//   86        DMA_Config->Source_Addr_inc  =ADDR_HOLD;       //Դ��ַ������
        MOVS     R0,#+0
        STRB     R0,[R4, #+13]
//   87     }
//   88     //����û�û������ Դ���ݳ��� Ĭ��Ϊ8λ���ݳ���
//   89     if(DMA_Config->Source_Size ==NULL)
??LPLD_DMA_Init_1:
        LDRB     R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_2
//   90     {
//   91        DMA_Config->Source_Size       =DMA_SRC_8BIT;    //Դ���ݿ��8bit һ���ֽ�
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//   92     } 
//   93     //����û�û������ ��ѭ������������Ժ� Դ��ַ�Ƿ���� Ĭ��Ϊ����ΪԴ��ַ������
//   94     if(DMA_Config->Source_Adj_Addr ==NULL)
??LPLD_DMA_Init_2:
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_3
//   95     {
//   96         DMA_Config->Source_Adj_Addr  =0;    
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
//   97     }
//   98     
//   99     //����û�û������ Ŀ�ĵ�ַ���� Ĭ��Ϊִ��һ��DMA�����Ŀ�ĵ�ַ��һ
//  100     if(DMA_Config->Dest_Addr_inc ==NULL)
??LPLD_DMA_Init_3:
        LDRB     R0,[R4, #+25]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_4
//  101     {
//  102         DMA_Config->Dest_Addr_inc     =ADDR_INCREASE;    //���Ŀ�ĵ�ַ�Ĳ���ִ����Ϻ��1
        MOVS     R0,#+1
        STRB     R0,[R4, #+25]
//  103     } 
//  104     //����û�û������ Դ���ݳ��� Ĭ��Ϊ8λ���ݳ���
//  105     if(DMA_Config->Dest_Size ==NULL)
??LPLD_DMA_Init_4:
        LDRB     R0,[R4, #+24]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_5
//  106     {
//  107         DMA_Config->Dest_Size         =DMA_DST_8BIT;     //Ŀ�����ݿ��8bit һ���ֽ�
        MOVS     R0,#+0
        STRB     R0,[R4, #+24]
//  108     } 
//  109     //����û�û������ ��ѭ������������Ժ� Ŀ�ĵ�ַ�Ƿ���� Ĭ��Ϊ����ΪĿ�ĵ�ַ������
//  110     if(DMA_Config->Dest_Adj_Addr ==NULL)
??LPLD_DMA_Init_5:
        LDR      R0,[R4, #+28]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_6
//  111     {
//  112         DMA_Config->Dest_Adj_Addr     =0;    
        MOVS     R0,#+0
        STR      R0,[R4, #+28]
//  113     }
//  114     //����û�û������ �ж�ģʽ Ĭ�Ϲر��ж�
//  115     if(DMA_Config->Dma_irqc ==NULL)
??LPLD_DMA_Init_6:
        LDRB     R0,[R4, #+32]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_7
//  116     {
//  117        DMA_Config->Dma_irqc          =0;                //�ر��ж�
        MOVS     R0,#+0
        STRB     R0,[R4, #+32]
//  118     }
//  119     //����û�û������ DMA�Զ��رշ�ʽ Ĭ�Ͽ�����ѭ����������Ϊ0�Զ��ر�DMA����
//  120     if(DMA_Config->Dma_AutoClose ==NULL)
??LPLD_DMA_Init_7:
        LDRB     R0,[R4, #+33]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_8
//  121     {
//  122        DMA_Config->Dma_AutoClose     =0;                //������ѭ����������Ϊ0�Զ��ر�DMA����
        MOVS     R0,#+0
        STRB     R0,[R4, #+33]
//  123     } 
//  124     
//  125     if(DMA_Config->isr_func!=NULL)
??LPLD_DMA_Init_8:
        LDR      R0,[R4, #+36]
        CMP      R0,#+0
        BEQ.N    ??LPLD_DMA_Init_9
//  126     {
//  127         DMA_ISR[DMA_Config->Channelx] = DMA_Config->isr_func;
        LDR      R0,[R4, #+36]
        LDR.N    R1,??DataTable3
        LDRB     R2,[R4, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  128         //��NVIC��ʹ��DMA�ж�
//  129         enable_irq(DMA_Config->Channelx); 
        LDRB     R0,[R4, #+0]
        BL       enable_irq
//  130     }
//  131     //����DMA�Ĵ���
//  132     return LPLD_eDMA_Config(DMA_Config);
??LPLD_DMA_Init_9:
        MOVS     R0,R4
        BL       LPLD_eDMA_Config
        POP      {R4,PC}          ;; return
//  133 }
//  134 
//  135 
//  136 /*
//  137  * �ڲ��������û��������
//  138  * LPLD_eDMA_Config
//  139  * ����eDMA�Ĵ�������
//  140  *
//  141  * ���� LPLD_eDMA_Cfg_t *eDMA_Config
//  142  * ��ϸ������LPLD_eDMA_Cfg �ṹ���ж���
//  143  * LPLD_eDMA_Cfg_t �ṹ���ڣ���HAL_eDMA.h��ͷ�ļ��ж���
//  144  *
//  145  * �����
//  146  *   0 ����ʧ��
//  147  *   1 ���óɹ�
//  148 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 static uint8 LPLD_eDMA_Config(LPLD_eDMA_Cfg_t *DMA_Config)
//  150 {
//  151     //=====����eDMAģ��ʱ��===========
//  152     SIM_SCGC6|=SIM_SCGC6_DMAMUX_MASK; //��DMAͨ����·������ʱ��
LPLD_eDMA_Config:
        LDR.N    R1,??DataTable3_1  ;; 0x4004803c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2
        LDR.N    R2,??DataTable3_1  ;; 0x4004803c
        STR      R1,[R2, #+0]
//  153         
//  154     SIM_SCGC7|=SIM_SCGC7_DMA_MASK;    //��DMAģ��ʱ��
        LDR.N    R1,??DataTable3_2  ;; 0x40048040
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2
        LDR.N    R2,??DataTable3_2  ;; 0x40048040
        STR      R1,[R2, #+0]
//  155     //================================
//  156     if(DMA_Config->Channelx>15) 
        LDRB     R1,[R0, #+0]
        CMP      R1,#+16
        BLT.N    ??LPLD_eDMA_Config_0
//  157     {
//  158         return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_eDMA_Config_1
//  159     }
//  160     else
//  161     {
//  162         //ѡ�� ͨ��x ���������DMA source requestNumber
//  163         DMAMUX_BASE_PTR->CHCFG[DMA_Config->Channelx]=DMAMUX_CHCFG_SOURCE(DMA_Config->Peri_DmaReq);
??LPLD_eDMA_Config_0:
        LDRB     R1,[R0, #+1]
        ANDS     R1,R1,#0x3F
        LDR.N    R2,??DataTable3_3  ;; 0x40021000
        LDRB     R3,[R0, #+0]
        STRB     R1,[R3, R2]
//  164     }
//  165     /*����Դ��ַ��Ϣ*/
//  166     //����Դ��ַ   
//  167     DMA_BASE_PTR->TCD[DMA_Config->Channelx].SADDR=DMA_Config->Source_Addr;
        LDR      R1,[R0, #+8]
        LDR.N    R2,??DataTable3_4  ;; 0x40009000
        LDRB     R3,[R0, #+0]
        LSLS     R3,R3,#+5
        STR      R1,[R3, R2]
//  168     //��ִ�������Դ��ַ�Ĳ���֮���Ƿ���ԭ��ַ�Ļ������ۼ�
//  169     DMA_BASE_PTR->TCD[DMA_Config->Channelx].SOFF =DMA_Config->Source_Addr_inc;
        LDRB     R1,[R0, #+13]
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+4]
//  170     //���������ݳ��ȼĴ���
//  171     DMA_BASE_PTR->TCD[DMA_Config->Channelx].ATTR=0;
        MOVS     R1,#+0
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+6]
//  172     //����Դ��ַ�Ĵ�����
//  173     DMA_BASE_PTR->TCD[DMA_Config->Channelx].ATTR |=DMA_Config->Source_Size;
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+6]
        LDRB     R2,[R0, #+12]
        ORRS     R1,R2,R1
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+6]
//  174     //���ļ���������major iteration count���ﵽ���Ƿ����¸���Դ��ַ
//  175     DMA_BASE_PTR->TCD[DMA_Config->Channelx].SLAST =DMA_Config->Source_Adj_Addr;
        LDR      R1,[R0, #+16]
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STR      R1,[R2, #+12]
//  176     
//  177     /*����Ŀ�ĵ�ַ��Ϣ*/ 
//  178     //����Ŀ�ĵ�ַ 
//  179     DMA_BASE_PTR->TCD[DMA_Config->Channelx].DADDR=DMA_Config->Dest_Addr;
        LDR      R1,[R0, #+20]
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STR      R1,[R2, #+16]
//  180     //��ִ�������Ŀ�ĵ�ַ�Ĳ���֮���Ƿ���ԭ��ַ�Ļ������ۼ�
//  181     DMA_BASE_PTR->TCD[DMA_Config->Channelx].DOFF =DMA_Config->Dest_Addr_inc;
        LDRB     R1,[R0, #+25]
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+20]
//  182     //����Դ��ַ�Ĵ�����
//  183     DMA_BASE_PTR->TCD[DMA_Config->Channelx].ATTR |=DMA_Config->Dest_Size;
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+6]
        LDRB     R2,[R0, #+24]
        ORRS     R1,R2,R1
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+6]
//  184     //���ļ���������major iteration count���ﵽ���Ƿ����¸���Ŀ�ĵ�ַ
//  185     DMA_BASE_PTR->TCD[DMA_Config->Channelx].DLAST_SGA =DMA_Config->Dest_Adj_Addr;
        LDR      R1,[R0, #+28]
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STR      R1,[R2, #+24]
//  186     
//  187     if(DMA_Config->Minor_loop_Length>32767) //��ѭ���������Ĵ�����0---32767֮��
        LDRH     R1,[R0, #+2]
        CMP      R1,#+32768
        BLT.N    ??LPLD_eDMA_Config_2
//  188     {
//  189         return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_eDMA_Config_1
//  190     }
//  191     else
//  192     {
//  193         //===============���������������ȣ�ѭ������====================================
//  194         //�������ݳ��ȣ�����ÿ�εݼ���Ҳ���Գ�Ϊ ��ǰ��ѭ�������� current major loop count
//  195         DMA_BASE_PTR->TCD[DMA_Config->Channelx].CITER_ELINKNO=DMA_CITER_ELINKNO_CITER(DMA_Config->Minor_loop_Length);
??LPLD_eDMA_Config_2:
        LDRH     R1,[R0, #+2]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+22]
//  196         //��ʼѭ��������������ѭ��������Ϊ���ʱ�򣬽�װ����ʼѭ����������ֵ
//  197         DMA_BASE_PTR->TCD[DMA_Config->Channelx].BITER_ELINKNO=DMA_CITER_ELINKNO_CITER(DMA_Config->Minor_loop_Length);
        LDRH     R1,[R0, #+2]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+30]
//  198         //����ÿһ�δ����ֽڵĸ����������ﵽ����ʱ��DMA�㽫���ݴ���memory
//  199         DMA_BASE_PTR->TCD[DMA_Config->Channelx].NBYTES_MLNO=DMA_NBYTES_MLNO_NBYTES(DMA_Config->Trans_bytesNum);
        LDR      R1,[R0, #+4]
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STR      R1,[R2, #+8]
//  200     }
//  201     
//  202     //============����DMA TCD���ƼĴ���==========================//  
//  203     DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR =0;     //���CSR������                   
        MOVS     R1,#+0
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  204     //===========����DMA�ж�===================================//
//  205     if(!DMA_Config->Dma_irqc)
        LDRB     R1,[R0, #+32]
        CMP      R1,#+0
        BNE.N    ??LPLD_eDMA_Config_3
//  206     {
//  207        DMA_INT &=~(1<<DMA_Config->Channelx); //�ر���Ӧͨ�����ж�����  
        LDR.N    R1,??DataTable3_5  ;; 0x40008024
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDRSB    R3,[R0, #+0]
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        LDR.N    R2,??DataTable3_5  ;; 0x40008024
        STR      R1,[R2, #+0]
        B.N      ??LPLD_eDMA_Config_4
//  208     }
//  209     else if(DMA_Config->Dma_irqc==1)
??LPLD_eDMA_Config_3:
        LDRB     R1,[R0, #+32]
        CMP      R1,#+1
        BNE.N    ??LPLD_eDMA_Config_5
//  210     {
//  211        DMA_INT |=(1<<DMA_Config->Channelx); //������Ӧͨ�����ж�����
        LDR.N    R1,??DataTable3_5  ;; 0x40008024
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDRSB    R3,[R0, #+0]
        LSLS     R2,R2,R3
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable3_5  ;; 0x40008024
        STR      R1,[R2, #+0]
//  212        DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR  |=DMA_CSR_INTHALF_MASK;//ʹ��DMA ��ѭ������������һ�� �ж�
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x4
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
        B.N      ??LPLD_eDMA_Config_4
//  213     }
//  214     else if(DMA_Config->Dma_irqc==2)
??LPLD_eDMA_Config_5:
        LDRB     R1,[R0, #+32]
        CMP      R1,#+2
        BNE.N    ??LPLD_eDMA_Config_4
//  215     {
//  216        DMA_INT |=(1<<DMA_Config->Channelx); //������Ӧͨ�����ж�����
        LDR.N    R1,??DataTable3_5  ;; 0x40008024
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDRSB    R3,[R0, #+0]
        LSLS     R2,R2,R3
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable3_5  ;; 0x40008024
        STR      R1,[R2, #+0]
//  217        DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR  |=DMA_CSR_INTMAJOR_MASK;//ʹ��DMA ��ѭ�������������� �ж�
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x2
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  218     }
//  219     
//  220     if(!DMA_Config->Dma_AutoClose)
??LPLD_eDMA_Config_4:
        LDRB     R1,[R0, #+33]
        CMP      R1,#+0
        BNE.N    ??LPLD_eDMA_Config_6
//  221     {
//  222        DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR  |=DMA_CSR_DREQ_MASK; //��ѭ����������������Զ��ر�DMA 
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x8
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
        B.N      ??LPLD_eDMA_Config_7
//  223     }
//  224     else
//  225     {
//  226        DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR  &=(~DMA_CSR_DREQ_MASK); //��ѭ��������������󣬲��ر�DMA
??LPLD_eDMA_Config_6:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        LDRH     R1,[R1, #+28]
        MOVW     R2,#+65527
        ANDS     R1,R2,R1
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+28]
//  227     }
//  228     //ע��ʹ�ܴ˼Ĵ���DMA��ʼ����
//  229     //�ر�ͨ��xӲ��DMA���� 
//  230     DMA_ERQ&=~(1<<DMA_Config->Channelx);
??LPLD_eDMA_Config_7:
        LDR.N    R1,??DataTable3_6  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LDRSB    R3,[R0, #+0]
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        LDR.N    R2,??DataTable3_6  ;; 0x4000800c
        STR      R1,[R2, #+0]
//  231     //DMAͨ��ʹ��
//  232     DMAMUX_BASE_PTR->CHCFG[DMA_Config->Channelx]|=DMAMUX_CHCFG_ENBL_MASK;
        LDR.N    R1,??DataTable3_3  ;; 0x40021000
        LDRB     R2,[R0, #+0]
        LDRB     R1,[R2, R1]
        ORRS     R1,R1,#0x80
        LDR.N    R2,??DataTable3_3  ;; 0x40021000
        LDRB     R0,[R0, #+0]
        STRB     R1,[R0, R2]
//  233     
//  234     return 1;
        MOVS     R0,#+1
??LPLD_eDMA_Config_1:
        BX       LR               ;; return
//  235 }
//  236 
//  237 
//  238 /*
//  239  * LPLD_DMA_EnableReq
//  240  * �˺�������enable��ֵ��������ر�ͨ��x��DMA����
//  241  * һ������ͨ��x��DMA����DMAģ��Ϳ�ʼ����
//  242  * 
//  243  * ����:
//  244  *    chx--DMAͨ��ֵ  һ��16��DMAͨ��
//  245  *      |__0  DMA_Channel_0
//  246  *      |__1  DMA_Channel_1
//  247  *      .....
//  248  *      |__15 DMA_Channel_15
//  249  *
//  250  *    enable--������ر�DMA����
//  251  *      |__0  �ر�ͨ��x������DMA����
//  252  *      |__1  ����ͨ��x������DMA����     
//  253  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 void LPLD_DMA_EnableReq(uint8 chx,uint8 enable)
//  255 {
//  256     if(enable)
LPLD_DMA_EnableReq:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_DMA_EnableReq_0
//  257     {
//  258         //����ͨ��x������DMA���� 
//  259         DMA_ERQ|=(1<<chx);
        LDR.N    R1,??DataTable3_6  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LSLS     R0,R2,R0
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable3_6  ;; 0x4000800c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_DMA_EnableReq_1
//  260     }
//  261     else
//  262     {
//  263         //�ر�ͨ��x������DMA���� 
//  264         DMA_ERQ&=~(1<<chx);
??LPLD_DMA_EnableReq_0:
        LDR.N    R1,??DataTable3_6  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LSLS     R0,R2,R0
        BICS     R0,R1,R0
        LDR.N    R1,??DataTable3_6  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  265     }
//  266 }
??LPLD_DMA_EnableReq_1:
        BX       LR               ;; return
//  267 
//  268 /*
//  269  * LPLD_DMA_Reload
//  270  * �����һ��DMA��ѭ��֮�󣬵��ô˺������Ե���Ŀ�ĵ�ַ��������������ѭ���������Ĵ���
//  271  * ����֮�� �µ�Ŀ�ĵ�ַ=ԭ��Ŀ�ĵ�ַ+��һ����ѭ���Ĵ���
//  272  * 
//  273  * ����:
//  274  *    chx--DMAͨ��ֵ  һ��16��DMAͨ�� 
//  275  *      |__0  DMA_Channel_0
//  276  *      |__1  DMA_Channel_1
//  277  *      .....
//  278  *      |__15 DMA_Channel_15
//  279  *
//  280  *    dest_base_addr--  Ŀ�Ĵ洢�����׵�ַ��������������׵�ַ��Ҳ���������ݼĴ����ĵ�ַ
//  281  *      
//  282  *    dest_offset_addr--Ŀ�ĵ�ַ��ƫ������һ�������Ŀ�ĵ�ַ��ƫ����������ѭ���������Ĵ���
//  283  *    
//  284  *    loop_length--��ѭ���������Ĵ���
//  285  *     
//  286  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  287 void LPLD_DMA_Reload(uint8 chx, uint32 dest_base_addr, uint32 dest_offset_addr, uint16 loop_length)
//  288 {
//  289     //��������Ŀ�ĵ�ַ
//  290     DMA_BASE_PTR->TCD[chx].DADDR =(uint32)(dest_base_addr+dest_offset_addr);
LPLD_DMA_Reload:
        ADDS     R1,R2,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STR      R1,[R2, #+16]
//  291     //�������ݳ��ȣ�����ÿ�εݼ���Ҳ���Գ�Ϊ ��ǰ��ѭ�������� current major loop count
//  292     DMA_BASE_PTR->TCD[chx].CITER_ELINKNO=DMA_CITER_ELINKNO_CITER(loop_length);
        LSLS     R1,R3,#+17       ;; ZeroExtS R1,R3,#+17,#+17
        LSRS     R1,R1,#+17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+22]
//  293     //��ʼѭ��������������ѭ��������Ϊ���ʱ�򣬽�װ����ʼѭ����������ֵ
//  294     DMA_BASE_PTR->TCD[chx].BITER_ELINKNO=DMA_CITER_ELINKNO_CITER(loop_length);
        LSLS     R1,R3,#+17       ;; ZeroExtS R1,R3,#+17,#+17
        LSRS     R1,R1,#+17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        STRH     R1,[R0, #+30]
//  295 }
        BX       LR               ;; return
//  296 
//  297 
//  298 /*
//  299  * LPLD_DMA_Isr
//  300  * DMA�жϵײ���ں���
//  301  * 
//  302  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  303  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  304 void LPLD_DMA_Isr(void)
//  305 {
LPLD_DMA_Isr:
        PUSH     {R4,LR}
//  306   #define DMA_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
//  307   uint8 dma_ch = DMA_VECTORNUM - 16;
        LDR.N    R0,??DataTable3_7  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        SUBS     R4,R0,#+16
//  308   
//  309   //�����û��Զ����жϷ���
//  310   DMA_ISR[dma_ch]();
        LDR.N    R0,??DataTable3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        BLX      R0
//  311   //����жϱ�־λ
//  312   DMA_INT |= 0x1u<<dma_ch; 
        LDR.N    R0,??DataTable3_5  ;; 0x40008024
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R4
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable3_5  ;; 0x40008024
        STR      R0,[R1, #+0]
//  313 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     DMA_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x40008024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
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
//  64 bytes in section .bss
// 858 bytes in section .text
// 
// 858 bytes of CODE memory
//  64 bytes of DATA memory
//
//Errors: none
//Warnings: none
