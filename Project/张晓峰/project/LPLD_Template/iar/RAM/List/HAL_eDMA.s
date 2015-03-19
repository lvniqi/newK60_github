///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:47
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_eDMA.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_eDMA.c" -D IAR
//        -D LPLD_K60 -lCN
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\HAL_eDMA.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN enable_irq

        PUBLIC DMA_CH0_Handler
        PUBLIC DMA_CH10_Handler
        PUBLIC DMA_count_Init
        PUBLIC DMA_count_get
        PUBLIC DMA_count_reset
        PUBLIC GPIOx
        PUBLIC PORTX
        PUBLIC count_init

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_eDMA.c
//    1 /******************** (C) COPYRIGHT 2012-2013 岱默科技 DEMOK********************
//    2  * 文件名         ： dma.c
//    3  * 描述           ： dma驱动函数
//    4  *
//    5  * 实验平台       ： 岱默科技DEMOK Kinetis开发板
//    6  * 作者           ： 岱默科技DEMOK Kinetis开发小组
//    7 
//    8  * 淘宝店铺       ： http://shop60443799.taobao.com/
//    9  * 技术交流邮箱   ： 1030923155@qq.com 
//   10  * 技术交流QQ群   ： 103360642
//   11 
//   12  * 最后修订时间    ：2012-10-23
//   13  * 修订内容        ：无
//   14 **********************************************************************************/
//   15 
//   16 #include "common.h"
//   17 #include "HAL_GPIO.h"
//   18 #include "HAL_PIT.h"
//   19 #include "HAL_eDMA.h"
//   20 
//   21 //u8 counttempaddr;
//   22 #define COUNTSADDR   0x4004000C  //(&counttempaddr)
//   23 #define COUNTDADDR   0x4004000C  //(&counttempaddr)
//   24 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   25 volatile struct GPIO_MemMap *GPIOx[5] = {PTA_BASE_PTR, PTB_BASE_PTR, PTC_BASE_PTR, PTD_BASE_PTR, PTE_BASE_PTR}; //定义五个指针数组保存 GPIOx 的地址
GPIOx:
        DATA
        DC32 400FF000H, 400FF040H, 400FF080H, 400FF0C0H, 400FF100H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 volatile struct PORT_MemMap *PORTX[5] = {PORTA_BASE_PTR, PORTB_BASE_PTR, PORTC_BASE_PTR, PORTD_BASE_PTR, PORTE_BASE_PTR};
PORTX:
        DATA
        DC32 40049000H, 4004A000H, 4004B000H, 4004C000H, 4004D000H
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 uint32 count_init[16];         //用来保存16个通道的初始化计数值
count_init:
        DS8 64
//   29 
//   30 /*************************************************************************
//   31 *                             岱默科技DEMOK Kinetis开发小组
//   32 *
//   33 *
//   34 *  函数名称：DMA_count_Init
//   35 *  功能说明：DMA累加计数初始化
//   36 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
//   37 *            PTxn                 触发端口
//   38 *            count                累加计数中断值
//   39 *            DMA_Count_cfg        DMA传输配置
//   40 *  函数返回：无
//   41 *
//   42 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void DMA_count_Init(DMA_CHn CHn, PTxn ptxn, uint32 count, DMA_Count_cfg cfg)
//   44 {
DMA_count_Init:
        PUSH     {R3-R7,LR}
//   45     uint8 byten = DMA_BYTE1;
        MOVS     R4,#+0
//   46     uint8 BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 16 ) ) ); //计算传输字节数
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
        B.N      ??DMA_count_Init_5
??DMA_count_Init_4:
        MOVS     R5,#+16
//   47     if(count > 0x7FFF )count = 0x7FFF;
??DMA_count_Init_5:
??DMA_count_Init_3:
??DMA_count_Init_1:
        CMP      R2,#+32768
        BCC.N    ??DMA_count_Init_6
        MOVW     R2,#+32767
//   48     count_init[CHn] = count;
??DMA_count_Init_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable4
        STR      R2,[R6, R0, LSL #+2]
//   49 
//   50     /* 开启时钟 */
//   51     SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //打开DMA模块时钟
        LDR.N    R6,??DataTable4_1  ;; 0x40048040
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x2
        LDR.N    R7,??DataTable4_1  ;; 0x40048040
        STR      R6,[R7, #+0]
//   52     SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //打开DMA多路复用器时钟
        LDR.N    R6,??DataTable4_2  ;; 0x4004803c
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x2
        LDR.N    R7,??DataTable4_2  ;; 0x4004803c
        STR      R6,[R7, #+0]
//   53 
//   54     /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
//   55     DMA_SADDR(CHn) =    (uint32)COUNTSADDR;                    // 设置  源地址
        LDR.N    R6,??DataTable4_3  ;; 0x4004000c
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R7,R0,#+5
        LDR.W    R12,??DataTable4_4  ;; 0x40009000
        STR      R6,[R7, R12]
//   56     DMA_DADDR(CHn) =    (uint32)COUNTDADDR;                    // 设置目的地址
        LDR.N    R6,??DataTable4_3  ;; 0x4004000c
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R7,R0,#+5
        ADD      R7,R7,#+1073741824
        ADDS     R7,R7,#+36864
        STR      R6,[R7, #+16]
//   57     DMA_SOFF(CHn)  =    0;                                  // 设置源地址不变
        MOVS     R6,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R7,R0,#+5
        ADD      R7,R7,#+1073741824
        ADDS     R7,R7,#+36864
        STRH     R6,[R7, #+4]
//   58     DMA_DOFF(CHn)  =    0;                                  // 每次传输后，目的地址不变
        MOVS     R6,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R7,R0,#+5
        ADD      R7,R7,#+1073741824
        ADDS     R7,R7,#+36864
        STRH     R6,[R7, #+20]
//   59 
//   60     DMA_ATTR(CHn)  =    (0
//   61                          | DMA_ATTR_SMOD(0x0)                // 源地址模数禁止  Source address modulo feature is disabled
//   62                          | DMA_ATTR_SSIZE(byten)             // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
//   63                          | DMA_ATTR_DMOD(0x0)                // 目标地址模数禁止
//   64                          | DMA_ATTR_DSIZE(byten)             // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
//   65                         );
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
//   66 
//   67     DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //当前主循环次数
        MOVS     R4,R2
        LSLS     R4,R4,#+17       ;; ZeroExtS R4,R4,#+17,#+17
        LSRS     R4,R4,#+17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R6,R0,#+5
        ADD      R6,R6,#+1073741824
        ADDS     R6,R6,#+36864
        STRH     R4,[R6, #+22]
//   68     DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//起始主循环次数
        MOVS     R4,R2
        LSLS     R4,R4,#+23       ;; ZeroExtS R4,R4,#+23,#+23
        LSRS     R4,R4,#+23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R6,R0,#+5
        ADD      R6,R6,#+1073741824
        ADDS     R6,R6,#+36864
        STRH     R4,[R6, #+30]
//   69 
//   70     DMA_CR &= ~DMA_CR_EMLM_MASK;                            // CR[EMLM] = 0
        LDR.N    R4,??DataTable4_5  ;; 0x40008000
        LDR      R4,[R4, #+0]
        BICS     R4,R4,#0x80
        LDR.N    R6,??DataTable4_5  ;; 0x40008000
        STR      R4,[R6, #+0]
//   71 
//   72     DMA_NBYTES_MLNO(CHn) =   DMA_NBYTES_MLNO_NBYTES(BYTEs); // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STR      R5,[R4, #+8]
//   73 
//   74     /* 配置 DMA 传输结束后的操作 */
//   75     DMA_SLAST(CHn)      =   -count;                              //调整  源地址的附加值,主循环结束后恢复  源地址
        RSBS     R2,R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STR      R2,[R4, #+12]
//   76     DMA_DLAST_SGA(CHn)  =   0;                                  //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
        MOVS     R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STR      R2,[R4, #+24]
//   77     DMA_CSR(CHn)        =   (0
//   78                              | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
//   79                              | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
//   80                             );
        MOVS     R2,#+10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R4,R0,#+5
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+36864
        STRH     R2,[R4, #+28]
//   81 
//   82     /* 配置 DMA 触发源 */
//   83     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR, CHn) = (0
//   84             | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
//   85             | DMAMUX_CHCFG_SOURCE((ptxn >> 5) + DMA_Port_A) /* 通道触发传输源:     */
//   86                                              );
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R2,R1,#+5
        ADDS     R2,R2,#+49
        ORRS     R2,R2,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable4_6  ;; 0x40021000
        STRB     R2,[R0, R4]
//   87 
//   88     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << (ptxn>>5));                                                               //开启PORTx端口
        LDR.N    R2,??DataTable4_7  ;; 0x40048038
        LDR      R2,[R2, #+0]
        MOV      R4,#+512
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R5,R1,#+5
        LSLS     R4,R4,R5
        ORRS     R2,R4,R2
        LDR.N    R4,??DataTable4_7  ;; 0x40048038
        STR      R2,[R4, #+0]
//   89     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn & 0x1f));                                                       //设置端口方向为输入
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R2,R1,#+5
        LDR.N    R4,??DataTable4_8
        LDR      R2,[R4, R2, LSL #+2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R4,R1,#+5
        LDR.N    R5,??DataTable4_8
        LDR      R4,[R5, R4, LSL #+2]
        LDR      R4,[R4, #+20]
        MOVS     R5,#+1
        ANDS     R6,R1,#0x1F
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        STR      R4,[R2, #+20]
//   90     PORT_PCR_REG(PORTX[(ptxn>>5)], (ptxn & 0x1F)) = ( 0
//   91             | PORT_PCR_MUX(1)               // 复用GPIO
//   92             | PORT_PCR_IRQC(cfg & 0x03 )    // 确定触发模式
//   93             | ((cfg & 0xc0 ) >> 6)          // 开启上拉或下拉电阻，或者没有
//   94                                                     );
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R2,R1,#0x1F
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R4,R1,#+5
        LDR.N    R5,??DataTable4_9
        LDR      R4,[R5, R4, LSL #+2]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R5,R3,#0x3
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R3,R3,R5, LSL #+16
        ORRS     R3,R3,#0x100
        STR      R3,[R4, R2, LSL #+2]
//   95     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn && 0x1F));                                                      //输入模式
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DMA_count_Init_7
        MOVS     R2,#+1
        B.N      ??DMA_count_Init_8
??DMA_count_Init_7:
        MOVS     R2,#+0
??DMA_count_Init_8:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R3,R1,#+5
        LDR.N    R4,??DataTable4_8
        LDR      R3,[R4, R3, LSL #+2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R1,R1,#+5
        LDR.N    R4,??DataTable4_8
        LDR      R1,[R4, R1, LSL #+2]
        LDR      R1,[R1, #+20]
        MOVS     R4,#+1
        LSLS     R2,R4,R2
        BICS     R1,R1,R2
        STR      R1,[R3, #+20]
//   96 
//   97     /* 开启中断 */
//   98     DMA_EN(CHn);                                    //使能通道CHn 硬件请求
        LDR.N    R1,??DataTable4_10  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LSLS     R2,R2,R0
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable4_10  ;; 0x4000800c
        STR      R1,[R2, #+0]
//   99     DMA_IRQ_EN(CHn);                                //允许DMA通道传输
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       enable_irq
//  100 }
        POP      {R0,R4-R7,PC}    ;; return
//  101 
//  102 
//  103 /*************************************************************************
//  104 *                             岱默科技DEMOK Kinetis开发小组
//  105 *
//  106 *
//  107 *  函数名称：DMA_count_get
//  108 *  功能说明：返回累加计数值
//  109 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
//  110 *  函数返回：累加计数值
//  111 *
//  112 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 uint32 DMA_count_get(DMA_CHn CHn)
//  114 {
//  115     uint32 temp =  count_init[CHn] - DMA_CITER_ELINKNO(CHn)  ;
DMA_count_get:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, R0, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        LDRH     R0,[R0, #+22]
        SUBS     R0,R1,R0
//  116     return temp;
        BX       LR               ;; return
//  117 }
//  118 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 void DMA_count_reset(DMA_CHn CHn)
//  120 {
//  121     DMA_CITER_ELINKNO(CHn) = count_init[CHn] ;
DMA_count_reset:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, R0, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        STRH     R1,[R0, #+22]
//  122 }
        BX       LR               ;; return
//  123 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  124 void DMA_CH0_Handler(void)
//  125 {
//  126     //DMA通道0
//  127     DMA_IRQ_CLEAN(DMA_CH0);                             //清除通道传输中断标志位    (这样才能再次进入中断)
DMA_CH0_Handler:
        LDR.N    R0,??DataTable4_11  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_11  ;; 0x40008024
        STR      R0,[R1, #+0]
//  128     DMA_EN(DMA_CH0);                                    //使能通道CHn 硬件请求      (这样才能继续触发DMA传输)
        LDR.N    R0,??DataTable4_10  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_10  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  129 }
        BX       LR               ;; return
//  130 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void DMA_CH10_Handler(void)
//  132 {
//  133 
//  134     //DMA通道10
//  135     DMA_IRQ_CLEAN(DMA_CH10);                             //清除通道传输中断标志位    (这样才能再次进入中断)
DMA_CH10_Handler:
        LDR.N    R0,??DataTable4_11  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable4_11  ;; 0x40008024
        STR      R0,[R1, #+0]
//  136     DMA_EN(DMA_CH10);                                    //使能通道CHn 硬件请求      (这样才能继续触发DMA传输)
        LDR.N    R0,??DataTable4_10  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable4_10  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  137 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     count_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x4004000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x40008024

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
//  40 bytes in section .data
// 612 bytes in section .text
// 
// 612 bytes of CODE memory
// 104 bytes of DATA memory
//
//Errors: none
//Warnings: none
