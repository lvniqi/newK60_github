///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:46:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_ADC.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_ADC.c" -D IAR
//        -D LPLD_K60 -lCN
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\List\"
//        -lB
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\List\"
//        -o
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\Obj\"
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\List\HAL_ADC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ADC_Cal
        EXTERN ADC_Config_Alt
        EXTERN enable_irq

        PUBLIC ADC_ISR
        PUBLIC ADCx_Ptr
        PUBLIC Adc0_Config
        PUBLIC Adc1_Config
        PUBLIC LPLD_ADC_Channel_Init
        PUBLIC LPLD_ADC_Chn_Enable
        PUBLIC LPLD_ADC_Init
        PUBLIC LPLD_ADC_Isr
        PUBLIC LPLD_ADC_SE_Get
        PUBLIC LPLD_ADC_SetHWTrg

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_ADC.c
//    1 /*
//    2  * --------------"拉普兰德K60底层库"-----------------
//    3  *
//    4  * 测试硬件平台:LPLD_K60 Card
//    5  * 版权所有:北京拉普兰德电子技术有限公司
//    6  * 网络销售:http://laplenden.taobao.com
//    7  * 公司门户:http://www.lpld.cn
//    8  *
//    9  * 文件名: HAL_ADC.c
//   10  * 用途: ADC底层模块相关函数
//   11  * 最后修改日期: 20120323
//   12  *
//   13  * 开发者使用协议:
//   14  *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
//   15  *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
//   16  *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   17  */
//   18 #include "common.h"
//   19 #include "HAL_ADC.h"
//   20 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 ADC_ISR_CALLBACK ADC_ISR[2];
ADC_ISR:
        DS8 8
//   22 //全局变量定义

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 tADC_Config Adc0_Config;  // ADC0 寄存器结构体
Adc0_Config:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 tADC_Config Adc1_Config;  // ADC0 寄存器结构体
Adc1_Config:
        DS8 16
//   25 
//   26 //ADC映射地址数组

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   27 volatile ADC_MemMapPtr ADCx_Ptr[2] = {ADC0_BASE_PTR, 
ADCx_Ptr:
        DATA
        DC32 4003B000H, 400BB000H
//   28                                       ADC1_BASE_PTR};
//   29 
//   30 
//   31 /*
//   32  * LPLD_ADC_Init
//   33  * ADC模块通用初始化函数--用于非中断模式、单次转换、软件触发
//   34  * 
//   35  * 参数:
//   36  *    adcx--ADC模块号
//   37  *      |__ADC0         -ADC0模块
//   38  *      |__ADC1         -ADC1模块
//   39  *    mode--AD转换精度
//   40  *      |__MODE_8       --单端8位，差分9位
//   41  *      |__MODE_12      --单端12位，差分13位
//   42  *      |__MODE_10      --单端10位，差分11位
//   43  *      |__MODE_16      --单端16位，差分16位
//   44  *    diff--单端输入或差分输入
//   45  *      |__CONV_SING    --单端
//   46  *      |__CONV_DIFF    --差分
//   47  *
//   48  * 输出:
//   49  *    0--配置错误
//   50  *    1--配置成功
//   51  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 uint8 LPLD_ADC_Init(ADCx adcx, uint8 mode, uint8 diff)
//   53 {
LPLD_ADC_Init:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   54   tADC_ConfigPtr ADC_CfgPtr;
//   55   
//   56   if(adcx == ADC0)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LPLD_ADC_Init_0
//   57   {
//   58     SIM_SCGC6 |= (SIM_SCGC6_ADC0_MASK);   // 开启ADC0时钟
        LDR.W    R0,??DataTable5  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable5  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   59     ADC_CfgPtr = &Adc0_Config;
        LDR.W    R7,??DataTable5_1
//   60   }
//   61   else if(adcx == ADC1)
//   62   {
//   63     SIM_SCGC3 |= (SIM_SCGC3_ADC1_MASK);   // 开启ADC1时钟
//   64     ADC_CfgPtr = &Adc1_Config;
//   65   }
//   66   else
//   67   {
//   68     return 0;
//   69   }
//   70   
//   71   // 初始化ADC
//   72   // 首先进行32次的硬件平均校准
//   73   ADC_CfgPtr->CONFIG1  = ADLPC_NORMAL | ADC_CFG1_ADIV(ADIV_8) | ADLSMP_LONG | ADC_CFG1_MODE(MODE_16)
//   74                               | ADC_CFG1_ADICLK(ADICLK_BUS_2);  
??LPLD_ADC_Init_1:
        MOVS     R0,#+125
        STRB     R0,[R7, #+0]
//   75   ADC_CfgPtr->CONFIG2  = MUXSEL_ADCB | ADACKEN_DISABLED | ADHSC_HISPEED | ADC_CFG2_ADLSTS(ADLSTS_20) ;
        MOVS     R0,#+20
        STRB     R0,[R7, #+1]
//   76   ADC_CfgPtr->COMPARE1 = 0x1234u ; 
        MOVW     R0,#+4660
        STRH     R0,[R7, #+2]
//   77   ADC_CfgPtr->COMPARE2 = 0x5678u ;
        MOVW     R0,#+22136
        STRH     R0,[R7, #+4]
//   78   ADC_CfgPtr->STATUS2  = ADTRG_SW | ACFE_DISABLED | ACFGT_GREATER | ACREN_ENABLED | DMAEN_DISABLED | ADC_SC2_REFSEL(REFSEL_EXT);
        MOVS     R0,#+24
        STRB     R0,[R7, #+6]
//   79   ADC_CfgPtr->STATUS3  = CAL_OFF | ADCO_SINGLE | AVGE_ENABLED | ADC_SC3_AVGS(AVGS_32);
        MOVS     R0,#+7
        STRB     R0,[R7, #+7]
//   80   ADC_CfgPtr->PGA      = PGAEN_DISABLED | PGACHP_NOCHOP | PGALP_NORMAL | ADC_PGA_PGAG(PGAG_64);
        MOVS     R0,#+393216
        STR      R0,[R7, #+12]
//   81   ADC_CfgPtr->STATUS1A = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(31);       
        MOVS     R0,#+31
        STRB     R0,[R7, #+8]
//   82   ADC_CfgPtr->STATUS1B = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(31);  
        MOVS     R0,#+31
        STRB     R0,[R7, #+9]
//   83   
//   84   ADC_Config_Alt(ADCx_Ptr[adcx], ADC_CfgPtr);    // 配置 ADC寄存器
        MOVS     R1,R7
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        BL       ADC_Config_Alt
//   85   ADC_Cal(ADCx_Ptr[adcx]);                       // 进行校准
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        BL       ADC_Cal
//   86   
//   87   // 重新为正常使用进行配置，4次硬件平均
//   88   // ADC输入时钟源为 BusClk/2
//   89   // ADC输入时钟分频为 1
//   90   // 长采样时间设置
//   91   ADC_CfgPtr->CONFIG1  = ADLPC_NORMAL | ADC_CFG1_ADIV(ADIV_1) | ADLSMP_LONG
//   92                               | ADC_CFG1_ADICLK(ADICLK_BUS_2);  
        MOVS     R0,#+17
        STRB     R0,[R7, #+0]
//   93   
//   94   // 选择转换精度
//   95   switch(mode)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??LPLD_ADC_Init_2
        CMP      R5,#+2
        BEQ.N    ??LPLD_ADC_Init_3
        BCC.N    ??LPLD_ADC_Init_4
        CMP      R5,#+3
        BEQ.N    ??LPLD_ADC_Init_5
        B.N      ??LPLD_ADC_Init_6
//   96   {
//   97     case MODE_8:
//   98        ADC_CfgPtr->CONFIG1 |= ADC_CFG1_MODE(MODE_8);
??LPLD_ADC_Init_2:
        LDRB     R0,[R7, #+0]
        STRB     R0,[R7, #+0]
//   99        break;
//  100     case MODE_12:
//  101        ADC_CfgPtr->CONFIG1 |= ADC_CFG1_MODE(MODE_12);
//  102        break;
//  103     case MODE_10:
//  104        ADC_CfgPtr->CONFIG1 |= ADC_CFG1_MODE(MODE_10);
//  105        break;
//  106     case MODE_16:
//  107        ADC_CfgPtr->CONFIG1 |= ADC_CFG1_MODE(MODE_16);
//  108        break;
//  109     default:
//  110       return 0;
//  111   }
//  112   
//  113   // 选择ADxxa为输入通道
//  114   // 异步时钟输出使能
//  115   // 高速转换
//  116   // 长采样时间时钟周期选择 额外20个时钟周期，共24个ADCK周期
//  117   // 总采样周期见K60技术文档 page:840
//  118   ADC_CfgPtr->CONFIG2  = MUXSEL_ADCB | ADACKEN_ENABLED | ADHSC_HISPEED | ADC_CFG2_ADLSTS(ADLSTS_20) ;
??LPLD_ADC_Init_7:
        MOVS     R0,#+28
        STRB     R0,[R7, #+1]
//  119   ADC_CfgPtr->COMPARE1 = 0x1234u ; 
        MOVW     R0,#+4660
        STRH     R0,[R7, #+2]
//  120   ADC_CfgPtr->COMPARE2 = 0x5678u ;
        MOVW     R0,#+22136
        STRH     R0,[R7, #+4]
//  121   ADC_CfgPtr->STATUS2  = ADTRG_SW | ACFE_DISABLED | ACFGT_GREATER | ACREN_DISABLED | DMAEN_DISABLED | ADC_SC2_REFSEL(REFSEL_EXT);
        MOVS     R0,#+16
        STRB     R0,[R7, #+6]
//  122   ADC_CfgPtr->STATUS3  = CAL_OFF | ADCO_SINGLE | AVGE_ENABLED | ADC_SC3_AVGS(AVGS_4);
        MOVS     R0,#+4
        STRB     R0,[R7, #+7]
//  123   ADC_CfgPtr->PGA      = PGAEN_DISABLED | PGACHP_NOCHOP | PGALP_NORMAL | ADC_PGA_PGAG(PGAG_64);
        MOVS     R0,#+393216
        STR      R0,[R7, #+12]
//  124   
//  125   //选择单端或差分模式
//  126   if(diff == CONV_SING)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??LPLD_ADC_Init_8
//  127   {
//  128     ADC_CfgPtr->STATUS1A = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(31);
        MOVS     R0,#+31
        STRB     R0,[R7, #+8]
//  129   }  
//  130   else if(diff == CONV_DIFF)
//  131   {
//  132     ADC_CfgPtr->STATUS1A = AIEN_OFF | DIFF_DIFFERENTIAL | ADC_SC1_ADCH(31);
//  133   } 
//  134   else
//  135   {
//  136     return 0;
//  137   }
//  138   
//  139   ADC_Config_Alt(ADCx_Ptr[adcx], ADC_CfgPtr);  // 配置ADC0
??LPLD_ADC_Init_9:
        MOVS     R1,R7
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, R4, LSL #+2]
        BL       ADC_Config_Alt
//  140   
//  141   return 1;
        MOVS     R0,#+1
??LPLD_ADC_Init_10:
        POP      {R1,R4-R7,PC}    ;; return
??LPLD_ADC_Init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_ADC_Init_11
        LDR.W    R0,??DataTable5_3  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable5_3  ;; 0x40048030
        STR      R0,[R1, #+0]
        LDR.W    R7,??DataTable5_4
        B.N      ??LPLD_ADC_Init_1
??LPLD_ADC_Init_11:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Init_10
??LPLD_ADC_Init_4:
        LDRB     R0,[R7, #+0]
        ORRS     R0,R0,#0x4
        STRB     R0,[R7, #+0]
        B.N      ??LPLD_ADC_Init_7
??LPLD_ADC_Init_3:
        LDRB     R0,[R7, #+0]
        ORRS     R0,R0,#0x8
        STRB     R0,[R7, #+0]
        B.N      ??LPLD_ADC_Init_7
??LPLD_ADC_Init_5:
        LDRB     R0,[R7, #+0]
        ORRS     R0,R0,#0xC
        STRB     R0,[R7, #+0]
        B.N      ??LPLD_ADC_Init_7
??LPLD_ADC_Init_6:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Init_10
??LPLD_ADC_Init_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_ADC_Init_12
        MOVS     R0,#+63
        STRB     R0,[R7, #+8]
        B.N      ??LPLD_ADC_Init_9
??LPLD_ADC_Init_12:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Init_10
//  142 }
//  143 
//  144 
//  145 /*
//  146  * LPLD_ADC_SE_Get
//  147  * 取得ADC模块单端输入转换值--软件触发
//  148  * 
//  149  * 参数:
//  150  *    adcx--ADC模块号
//  151  *      |__ADC0         -ADC0模块
//  152  *      |__ADC1         -ADC0模块
//  153  *    channel--ADC通道号，不同的通道号对应不同的引脚，注意有些通道并非都有ADC0或ADC1
//  154  *      |__0            --ADC0:PGA0_DP;  ADC1:PGA1_DP
//  155  *      |__1            --ADC0:PGA2_DP;  ADC1:PGA3_DP
//  156  *      |__2            --ADC0:PGA0_DP;  ADC1:PGA1_DP
//  157  *      |__3            --ADC0:ADC0_DP3; ADC1:PGA0_DP
//  158  *      |__4            --ADC0:NC;       ADC1:PTE0
//  159  *      |__5            --ADC0:NC;       ADC1:PTE1
//  160  *      |__6            --ADC0:NC;       ADC1:PTE2
//  161  *      |__7            --ADC0:NC;       ADC1:PTE3
//  162  *      |__8            --ADC0:PTB0;     ADC1:PTB0
//  163  *      |__9            --ADC0:PTB1;     ADC1:PTB1
//  164  *      |__10           --ADC0:PTA7;    ADC1:PTB4
//  165  *      |__11           --ADC0:PTA8;    ADC1:PTB5
//  166  *      |__12           --ADC0:PTB2;    ADC1:PTB6
//  167  *      |__13           --ADC0:PTB3;    ADC1:PTB7
//  168  *      |__14           --ADC0:PTC0;    ADC1:PTB10
//  169  *      |__15           --ADC0:PTC1;    ADC1:PTB11
//  170  *      |__16           --ADC0:ADC0_SE16;ADC1:ADC1_SE16
//  171  *      |__17           --ADC0:PTE24;   ADC1:PTA17
//  172  *      |__18           --ADC0:PTE25;   ADC1:VREF Output
//  173  *      |__19           --ADC0:PGA0_DM; ADC1:PGA1_DM
//  174  *      |__20           --ADC0:PGA2_DM; ADC1:PGA3_DM
//  175  *      |__23           --ADC0:DAC0_OUT;ADC1:DAC1_OUT
//  176  *      |__26           --ADC0:Temperature Sensor;  ADC1:Temperature Sensor
//  177  *      |__27           --ADC0:Bandgap; ADC1:Bandgap
//  178  *      |__29           --ADC0:VREFH;   ADC1:VREFH
//  179  *      |__30           --ADC0:VREFL;   ADC1:VREFL
//  180  *
//  181  * 输出:
//  182  *    0--配置错误，或电压值为0
//  183  *    其他--AD通道转换值，右对齐
//  184  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 uint16 LPLD_ADC_SE_Get(ADCx adcx, uint8 channel)
//  186 {
//  187   ADC_MemMapPtr adcptr = ADCx_Ptr[adcx];
LPLD_ADC_SE_Get:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable5_2
        LDR      R0,[R2, R0, LSL #+2]
//  188   
//  189   ADC_SC1_REG(adcptr,0) &= ~(ADC_SC1_ADCH_MASK);
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+5
        LSLS     R2,R2,#+5
        STR      R2,[R0, #+0]
//  190   ADC_SC1_REG(adcptr,0) |= ADC_SC1_ADCH(channel);
        LDR      R2,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1F
        ORRS     R1,R1,R2
        STR      R1,[R0, #+0]
//  191   
//  192   while((ADC_SC1_REG(adcptr,0)&ADC_SC1_COCO_MASK) == 0);  //等待转换完成
??LPLD_ADC_SE_Get_0:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??LPLD_ADC_SE_Get_0
//  193   return ADC_R_REG(adcptr, 0);
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  194 }
//  195 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  196 uint8 LPLD_ADC_Chn_Enable(ADCx adcx, uint8 channel)
//  197 {
//  198   ADC_MemMapPtr adcptr = ADCx_Ptr[adcx];
LPLD_ADC_Chn_Enable:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable5_2
        LDR      R2,[R2, R0, LSL #+2]
//  199   if(channel>30)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+31
        BLT.N    ??LPLD_ADC_Chn_Enable_0
//  200     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
//  201   
//  202   //不同的通道对应不同的引脚，因此需要判断并配置
//  203   if(adcx == ADC0)
??LPLD_ADC_Chn_Enable_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??LPLD_ADC_Chn_Enable_2
//  204   {
//  205     switch(channel)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_3
        SUBS     R0,R0,#+8
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_4
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_5
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_6
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_7
        SUBS     R0,R0,#+2
        BEQ.N    ??LPLD_ADC_Chn_Enable_8
        SUBS     R0,R0,#+1
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_9
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_10
        SUBS     R0,R0,#+4
        BEQ.N    ??LPLD_ADC_Chn_Enable_10
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_10
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_10
        B.N      ??LPLD_ADC_Chn_Enable_11
//  206     {
//  207       case 0:   //ADC0_DP0 -- PGA0_DP
//  208       case 1:   //ADC0_DP1 -- PGA2_DP
//  209       case 2:   //PGA0_DP
//  210       case 3:   //ADC0_DP3 -- PGA1_DP
//  211         break;
//  212       case 8:  //ADC0_SE8 -- PTB0
//  213       case 9:  //ADC0_SE9 -- PTB1
//  214         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  215         PORT_PCR_REG(PORTB_BASE_PTR, channel-8) =  PORT_PCR_MUX(0);
//  216         break;
//  217       case 10:  //ADC0_SE10 -- PTA7
//  218       case 11:  //ADC0_SE11 -- PTA8
//  219         SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
//  220         PORT_PCR_REG(PORTA_BASE_PTR, channel-3) =  PORT_PCR_MUX(0);
//  221         break;
//  222       case 12:  //ADC0_SE12 -- PTB2
//  223       case 13:  //ADC0_SE13 -- PTB3
//  224         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  225         PORT_PCR_REG(PORTB_BASE_PTR, channel-10) =  PORT_PCR_MUX(0);
//  226         break;
//  227       case 14:  //ADC0_SE14 -- PTC0
//  228       case 15:  //ADC0_SE15 -- PTC1
//  229         SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; 
//  230         PORT_PCR_REG(PORTC_BASE_PTR, channel-14) =  PORT_PCR_MUX(0);
//  231         break;
//  232       case 16:   //ADC0_SE16
//  233         break;
//  234       case 17:   //ADC0_SE17 -- PTE24
//  235       case 18:   //ADC0_SE17 -- PTE25
//  236         SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK; 
//  237         PORT_PCR_REG(PORTE_BASE_PTR, channel+7) =  PORT_PCR_MUX(0);
//  238         break;
//  239       case 19:   //ADC0_DM0 -- PGA0_DM
//  240       case 20:   //ADC0_DM1 -- PGA2_DM
//  241       case 23:   //ADC0_SE23 -- DAC0_OUT
//  242       case 26:   //Temperature Sensor (S.E)
//  243       case 27:   //Bandgap (S.E)
//  244       case 29:   //VREFH (S.E)
//  245       case 30:   //VREFL
//  246         break;
//  247       default:
//  248         return 0;  
//  249     }
//  250   }
//  251   else if(adcx == ADC1)
//  252   {
//  253     switch(channel)
//  254     {
//  255       case 0:   //ADC1_DP0 -- PGA1_DP
//  256       case 1:   //ADC1_DP1 -- PGA3_DP
//  257       case 2:   //PGA1_DP 
//  258       case 3:   //ADC1_DP3 -- PGA0_DP
//  259         break;
//  260       case 4:   //ADC1_SE4a -- PTC8
//  261       case 5:   //ADC1_SE5a -- PTC9
//  262       case 6:   //ADC1_SE6a -- PTC10
//  263       case 7:   //ADC1_SE7a -- PTC11
//  264         SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; 
//  265         PORT_PCR_REG(PORTC_BASE_PTR, channel+4) =  PORT_PCR_MUX(0);
//  266         break;
//  267       case 8:  //ADC1_SE8 -- PTB0
//  268       case 9:  //ADC1_SE9 -- PTB1
//  269         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  270         PORT_PCR_REG(PORTB_BASE_PTR, channel-8) =  PORT_PCR_MUX(0);
//  271         break;
//  272       case 10:  //ADC1_SE10 -- PTB4
//  273       case 11:  //ADC1_SE11 -- PTB5
//  274       case 12:  //ADC1_SE12 -- PTB6
//  275       case 13:  //ADC1_SE13 -- PTB7
//  276         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  277         PORT_PCR_REG(PORTB_BASE_PTR, channel-6) =  PORT_PCR_MUX(0);
//  278         break;
//  279       case 14:  //ADC1_SE14 -- PTB10
//  280       case 15:  //ADC1_SE15 -- PTB11
//  281         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  282         PORT_PCR_REG(PORTB_BASE_PTR, channel-4) =  PORT_PCR_MUX(0);
//  283         break;
//  284       case 16:   //ADC1_SE16
//  285         break;
//  286       case 17:  //ADC1_SE17 -- PTA17
//  287         SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
//  288         PORT_PCR_REG(PORTA_BASE_PTR, channel) =  PORT_PCR_MUX(0);
//  289         break;
//  290       case 18:   //VREF Output
//  291       case 19:   //ADC1_DM0 -- PGA1_DM
//  292       case 20:   //ADC1_DM1 -- PGA3_DM
//  293       case 23:   //DAC1_OUT 
//  294       case 26:   //Temperature Sensor (S.E)
//  295       case 27:   //Bandgap (S.E)
//  296       case 29:   //VREFH (S.E)
//  297       case 30:   //VREFL
//  298         break;
//  299       default:
//  300         return 0;  
//  301     }
//  302   }
//  303   else
//  304   {
//  305     return 0;
//  306   }
//  307   return 1;
??LPLD_ADC_Chn_Enable_3:
??LPLD_ADC_Chn_Enable_12:
        MOVS     R0,#+1
??LPLD_ADC_Chn_Enable_1:
        BX       LR               ;; return
??LPLD_ADC_Chn_Enable_4:
        LDR.W    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-32]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_5:
        LDR.W    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.W    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+299008
        STR      R0,[R1, #-12]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_6:
        LDR.W    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-40]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_7:
        LDR.W    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+307200
        STR      R0,[R1, #-56]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_8:
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_9:
        LDR.W    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+315392
        STR      R0,[R1, #+28]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_10:
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_11:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
??LPLD_ADC_Chn_Enable_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_ADC_Chn_Enable_13
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_14
        SUBS     R0,R0,#+4
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_15
        SUBS     R0,R0,#+4
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_16
        SUBS     R0,R0,#+2
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_17
        SUBS     R0,R0,#+4
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_18
        SUBS     R0,R0,#+2
        BEQ.N    ??LPLD_ADC_Chn_Enable_19
        SUBS     R0,R0,#+1
        BEQ.N    ??LPLD_ADC_Chn_Enable_20
        SUBS     R0,R0,#+1
        CMP      R0,#+2
        BLS.N    ??LPLD_ADC_Chn_Enable_21
        SUBS     R0,R0,#+5
        BEQ.N    ??LPLD_ADC_Chn_Enable_21
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_21
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_21
        B.N      ??LPLD_ADC_Chn_Enable_22
??LPLD_ADC_Chn_Enable_14:
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_15:
        LDR.W    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+307200
        STR      R0,[R1, #+16]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_16:
        LDR.W    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-32]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_17:
        LDR.W    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-24]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_18:
        LDR.N    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+303104
        STR      R0,[R1, #-16]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_19:
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_20:
        LDR.N    R0,??DataTable5_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R0,[R2, #+0]
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable5_6  ;; 0x40049000
        STR      R0,[R2, R1, LSL #+2]
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_21:
        B.N      ??LPLD_ADC_Chn_Enable_12
??LPLD_ADC_Chn_Enable_22:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
??LPLD_ADC_Chn_Enable_13:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
//  308 }
//  309 
//  310 /*
//  311  * LPLD_ADC_Channel_Init
//  312  * ADC通道初始化,在该函数中配置ADC的输入通道，配置ADC中断、DMA请求，和相应的中断服务函数
//  313  * 
//  314  * 参数:
//  315  *    adcx--ADC模块号
//  316  *      |__ADC0         -ADC0模块
//  317  *      |__ADC1         -ADC0模块
//  318  *    channel--ADC通道号，不同的通道号对应不同的引脚，注意有些通道并非都有ADC0或ADC1
//  319  *      |__0            --ADC0:PGA0_DP;  ADC1:PGA1_DP
//  320  *      |__1            --ADC0:PGA2_DP;  ADC1:PGA3_DP
//  321  *      |__2            --ADC0:PGA0_DP;  ADC1:PGA1_DP
//  322  *      |__3            --ADC0:ADC0_DP3; ADC1:PGA0_DP
//  323  *      |__4            --ADC0:NC;       ADC1:PTE0
//  324  *      |__5            --ADC0:NC;       ADC1:PTE1
//  325  *      |__6            --ADC0:NC;       ADC1:PTE2
//  326  *      |__7            --ADC0:NC;       ADC1:PTE3
//  327  *      |__8            --ADC0:PTB0;     ADC1:PTB0
//  328  *      |__9            --ADC0:PTB1;     ADC1:PTB1
//  329  *      |__10           --ADC0:PTA7;    ADC1:PTB4
//  330  *      |__11           --ADC0:PTA8;    ADC1:PTB5
//  331  *      |__12           --ADC0:PTB2;    ADC1:PTB6
//  332  *      |__13           --ADC0:PTB3;    ADC1:PTB7
//  333  *      |__14           --ADC0:PTC0;    ADC1:PTB10
//  334  *      |__15           --ADC0:PTC1;    ADC1:PTB11
//  335  *      |__16           --ADC0:ADC0_SE16;ADC1:ADC1_SE16
//  336  *      |__17           --ADC0:PTE24;   ADC1:PTA17
//  337  *      |__18           --ADC0:PTE25;   ADC1:VREF Output
//  338  *      |__19           --ADC0:PGA0_DM; ADC1:PGA1_DM
//  339  *      |__20           --ADC0:PGA2_DM; ADC1:PGA3_DM
//  340  *      |__23           --ADC0:DAC0_OUT;ADC1:DAC1_OUT
//  341  *      |__26           --ADC0:Temperature Sensor;  ADC1:Temperature Sensor
//  342  *      |__27           --ADC0:Bandgap; ADC1:Bandgap
//  343  *      |__29           --ADC0:VREFH;   ADC1:VREFH
//  344  *      |__30           --ADC0:VREFL;   ADC1:VREFL
//  345  *  ad_event--ADC事件，包括ADC中断禁止、使能，DMA请求禁止、使能。
//  346  *      |__ADC_INT_DISABLE    --中断禁止
//  347  *      |__ADC_INT_ENABLE     --中断使能
//  348  *      |__ADC_DMA_DISABLE    --DMA请求禁止
//  349  *      |__ADC_DMA_ENABLE     --DMA请求使能
//  350  *
//  351  *  ADC_ISR_CALLBACK
//  352  *      |__isr                --如果使能中断，设置中断服务函数的路径，
//  353  *                              如果没有设置中断，将其设置成为NULL
//  354  * 输出:
//  355  *    0--配置错误，或电压值为0
//  356  *    其他--AD通道转换值，右对齐
//  357  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  358 uint8_t LPLD_ADC_Channel_Init(ADCx adcx, uint8_t channel ,uint8_t ad_event,ADC_ISR_CALLBACK isr)
//  359 {
LPLD_ADC_Channel_Init:
        PUSH     {R3-R7,LR}
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R7,R3
//  360   ADC_MemMapPtr adcptr = ADCx_Ptr[adcx];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_2
        LDR      R6,[R1, R0, LSL #+2]
//  361   
//  362   if(channel>30)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+31
        BLT.N    ??LPLD_ADC_Channel_Init_0
//  363     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Channel_Init_1
//  364   
//  365   //不同的通道对应不同的引脚，因此需要判断并配置
//  366   if(adcx == ADC0)
??LPLD_ADC_Channel_Init_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_ADC_Channel_Init_2
//  367   {
//  368     switch(channel)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        CMP      R1,#+0
        CMP      R1,#+3
        BLS.N    ??LPLD_ADC_Channel_Init_3
        SUBS     R1,R1,#+8
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_4
        SUBS     R1,R1,#+2
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_5
        SUBS     R1,R1,#+2
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_6
        SUBS     R1,R1,#+2
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_7
        SUBS     R1,R1,#+2
        BEQ.N    ??LPLD_ADC_Channel_Init_8
        SUBS     R1,R1,#+1
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_9
        SUBS     R1,R1,#+2
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_10
        SUBS     R1,R1,#+4
        BEQ.N    ??LPLD_ADC_Channel_Init_10
        SUBS     R1,R1,#+3
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_10
        SUBS     R1,R1,#+3
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_10
        B.N      ??LPLD_ADC_Channel_Init_11
//  369     {
//  370       case 0:   //ADC0_DP0 -- PGA0_DP
//  371       case 1:   //ADC0_DP1 -- PGA2_DP
//  372       case 2:   //PGA0_DP
//  373       case 3:   //ADC0_DP3 -- PGA1_DP
//  374         break;
//  375       case 8:  //ADC0_SE8 -- PTB0
//  376       case 9:  //ADC0_SE9 -- PTB1
//  377         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  378         PORT_PCR_REG(PORTB_BASE_PTR, channel-8) =  PORT_PCR_MUX(0);
//  379         break;
//  380       case 10:  //ADC0_SE10 -- PTA7
//  381       case 11:  //ADC0_SE11 -- PTA8
//  382         SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
//  383         PORT_PCR_REG(PORTA_BASE_PTR, channel-3) =  PORT_PCR_MUX(0);
//  384         break;
//  385       case 12:  //ADC0_SE12 -- PTB2
//  386       case 13:  //ADC0_SE13 -- PTB3
//  387         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  388         PORT_PCR_REG(PORTB_BASE_PTR, channel-10) =  PORT_PCR_MUX(0);
//  389         break;
//  390       case 14:  //ADC0_SE14 -- PTC0
//  391       case 15:  //ADC0_SE15 -- PTC1
//  392         SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; 
//  393         PORT_PCR_REG(PORTC_BASE_PTR, channel-14) =  PORT_PCR_MUX(0);
//  394         break;
//  395       case 16:   //ADC0_SE16
//  396         break;
//  397       case 17:   //ADC0_SE17 -- PTE24
//  398       case 18:   //ADC0_SE17 -- PTE25
//  399         SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK; 
//  400         PORT_PCR_REG(PORTE_BASE_PTR, channel+7) =  PORT_PCR_MUX(0);
//  401         break;
//  402       case 19:   //ADC0_DM0 -- PGA0_DM
//  403       case 20:   //ADC0_DM1 -- PGA2_DM
//  404       case 23:   //ADC0_SE23 -- DAC0_OUT
//  405       case 26:   //Temperature Sensor (S.E)
//  406       case 27:   //Bandgap (S.E)
//  407       case 29:   //VREFH (S.E)
//  408       case 30:   //VREFL
//  409         break;
//  410       default:
//  411         return 0;  
//  412     }
//  413   }
//  414   else if(adcx == ADC1)
//  415   {
//  416     switch(channel)
//  417     {
//  418       case 0:   //ADC1_DP0 -- PGA1_DP
//  419       case 1:   //ADC1_DP1 -- PGA3_DP
//  420       case 2:   //PGA1_DP 
//  421       case 3:   //ADC1_DP3 -- PGA0_DP
//  422         break;
//  423       case 4:   //ADC1_SE4a -- PTE0
//  424       case 5:   //ADC1_SE5a -- PTE1
//  425       case 6:   //ADC1_SE6a -- PTE2
//  426       case 7:   //ADC1_SE7a -- PTE3
//  427         SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK; 
//  428         PORT_PCR_REG(PORTE_BASE_PTR, channel-4) =  PORT_PCR_MUX(0);
//  429         break;
//  430       case 8:  //ADC1_SE8 -- PTB0
//  431       case 9:  //ADC1_SE9 -- PTB1
//  432         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  433         PORT_PCR_REG(PORTB_BASE_PTR, channel-8) =  PORT_PCR_MUX(0);
//  434         break;
//  435       case 10:  //ADC1_SE10 -- PTB4
//  436       case 11:  //ADC1_SE11 -- PTB5
//  437       case 12:  //ADC1_SE12 -- PTB6
//  438       case 13:  //ADC1_SE13 -- PTB7
//  439         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  440         PORT_PCR_REG(PORTB_BASE_PTR, channel-6) =  PORT_PCR_MUX(0);
//  441         break;
//  442       case 14:  //ADC1_SE14 -- PTB10
//  443       case 15:  //ADC1_SE15 -- PTB11
//  444         SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
//  445         PORT_PCR_REG(PORTB_BASE_PTR, channel-4) =  PORT_PCR_MUX(0);
//  446         break;
//  447       case 16:   //ADC1_SE16
//  448         break;
//  449       case 17:  //ADC1_SE17 -- PTA17
//  450         SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
//  451         PORT_PCR_REG(PORTA_BASE_PTR, channel) =  PORT_PCR_MUX(0);
//  452         break;
//  453       case 18:   //VREF Output
//  454       case 19:   //ADC1_DM0 -- PGA1_DM
//  455       case 20:   //ADC1_DM1 -- PGA3_DM
//  456       case 23:   //DAC1_OUT 
//  457       case 26:   //Temperature Sensor (S.E)
//  458       case 27:   //Bandgap (S.E)
//  459       case 29:   //VREFH (S.E)
//  460       case 30:   //VREFL
//  461         break;
//  462       default:
//  463         return 0;  
//  464     }
//  465   }
//  466   else
//  467   {
//  468     return 0;
//  469   }
//  470   
//  471   if(ad_event & ADC_INT_DISABLE)
??LPLD_ADC_Channel_Init_3:
??LPLD_ADC_Channel_Init_12:
        LSLS     R1,R5,#+31
        BPL.W    ??LPLD_ADC_Channel_Init_13
//  472   {
//  473     ADC_SC1_REG(adcptr,0) &= ~(ADC_SC1_AIEN_MASK); //禁止中断
        LDR      R0,[R6, #+0]
        BICS     R0,R0,#0x40
        STR      R0,[R6, #+0]
        B.N      ??LPLD_ADC_Channel_Init_14
//  474   }
??LPLD_ADC_Channel_Init_4:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        STR      R1,[R2, #-32]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_5:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+299008
        STR      R1,[R2, #-12]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_6:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        STR      R1,[R2, #-40]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_7:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x800
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+307200
        STR      R1,[R2, #-56]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_8:
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_9:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2000
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+315392
        STR      R1,[R2, #+28]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_10:
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_11:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Channel_Init_1
??LPLD_ADC_Channel_Init_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_ADC_Channel_Init_15
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        CMP      R1,#+0
        CMP      R1,#+3
        BLS.N    ??LPLD_ADC_Channel_Init_16
        SUBS     R1,R1,#+4
        CMP      R1,#+3
        BLS.N    ??LPLD_ADC_Channel_Init_17
        SUBS     R1,R1,#+4
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_18
        SUBS     R1,R1,#+2
        CMP      R1,#+3
        BLS.N    ??LPLD_ADC_Channel_Init_19
        SUBS     R1,R1,#+4
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_20
        SUBS     R1,R1,#+2
        BEQ.N    ??LPLD_ADC_Channel_Init_21
        SUBS     R1,R1,#+1
        BEQ.N    ??LPLD_ADC_Channel_Init_22
        SUBS     R1,R1,#+1
        CMP      R1,#+2
        BLS.N    ??LPLD_ADC_Channel_Init_23
        SUBS     R1,R1,#+5
        BEQ.N    ??LPLD_ADC_Channel_Init_23
        SUBS     R1,R1,#+3
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_23
        SUBS     R1,R1,#+3
        CMP      R1,#+1
        BLS.N    ??LPLD_ADC_Channel_Init_23
        B.N      ??LPLD_ADC_Channel_Init_24
??LPLD_ADC_Channel_Init_16:
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_17:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2000
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+315392
        STR      R1,[R2, #-16]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_18:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        STR      R1,[R2, #-32]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_19:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        STR      R1,[R2, #-24]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_20:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        STR      R1,[R2, #-16]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_21:
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_22:
        LDR.N    R1,??DataTable5_5  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable5_5  ;; 0x40048038
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R2,??DataTable5_6  ;; 0x40049000
        STR      R1,[R2, R4, LSL #+2]
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_23:
        B.N      ??LPLD_ADC_Channel_Init_12
??LPLD_ADC_Channel_Init_24:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Channel_Init_1
??LPLD_ADC_Channel_Init_15:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Channel_Init_1
//  475   else if(ad_event & ADC_INT_ENABLE)
??LPLD_ADC_Channel_Init_13:
        LSLS     R1,R5,#+30
        BPL.N    ??LPLD_ADC_Channel_Init_14
//  476   {
//  477     ADC_SC1_REG(adcptr,0) |= ADC_SC1_AIEN_MASK;   //使能中断
        LDR      R1,[R6, #+0]
        ORRS     R1,R1,#0x40
        STR      R1,[R6, #+0]
//  478     if(adcx == ADC0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_ADC_Channel_Init_25
//  479     {
//  480       enable_irq(57);      //使能ADC0 NVIC中断
        MOVS     R0,#+57
        BL       enable_irq
//  481       ADC_ISR[ADC0] = isr; //添加中断路径 
        LDR.N    R0,??DataTable5_7
        STR      R7,[R0, #+0]
        B.N      ??LPLD_ADC_Channel_Init_14
//  482     }
//  483     else
//  484     {
//  485       enable_irq(58);      //使能ADC1 NVIC中断
??LPLD_ADC_Channel_Init_25:
        MOVS     R0,#+58
        BL       enable_irq
//  486       ADC_ISR[ADC1] = isr; //添加中断路径 
        LDR.N    R0,??DataTable5_7
        STR      R7,[R0, #+4]
//  487     }
//  488   }
//  489   if(ad_event & ADC_DMA_DISABLE)
??LPLD_ADC_Channel_Init_14:
        LSLS     R0,R5,#+29
        BPL.N    ??LPLD_ADC_Channel_Init_26
//  490   {
//  491     ADC_SC2_REG(adcptr)  &= ~( ADC_SC2_DMAEN_MASK ); //禁止DMA
        LDR      R0,[R6, #+32]
        BICS     R0,R0,#0x4
        STR      R0,[R6, #+32]
        B.N      ??LPLD_ADC_Channel_Init_27
//  492   }
//  493   else if(ad_event & ADC_DMA_ENABLE)
??LPLD_ADC_Channel_Init_26:
        LSLS     R0,R5,#+28
        BPL.N    ??LPLD_ADC_Channel_Init_27
//  494   {
//  495     ADC_SC2_REG(adcptr)  |= ADC_SC2_DMAEN_MASK;     //使能DMA
        LDR      R0,[R6, #+32]
        ORRS     R0,R0,#0x4
        STR      R0,[R6, #+32]
//  496   }
//  497   ADC_SC1_REG(adcptr,0) &= ~(ADC_SC1_ADCH_MASK);   
??LPLD_ADC_Channel_Init_27:
        LDR      R0,[R6, #+0]
        LSRS     R0,R0,#+5
        LSLS     R0,R0,#+5
        STR      R0,[R6, #+0]
//  498   ADC_SC1_REG(adcptr,0) |= ADC_SC1_ADCH(channel);   //设置通道
        LDR      R0,[R6, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R1,R4,#0x1F
        ORRS     R0,R1,R0
        STR      R0,[R6, #+0]
//  499   
//  500   return 1;
        MOVS     R0,#+1
??LPLD_ADC_Channel_Init_1:
        POP      {R1,R4-R7,PC}    ;; return
//  501 }
//  502 /*
//  503  * LPLD_ADC_SetHWTrg
//  504  * 设置ADC为硬件触发方式
//  505  * 
//  506  * 参数:
//  507  *    adcx--ADC模块号
//  508  *      |__ADC0         -ADC0模块
//  509  *      |__ADC1         -ADC0模块
//  510  *
//  511  * 输出:
//  512  *    无
//  513  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  514 void LPLD_ADC_SetHWTrg(ADCx adcx)
//  515 {
//  516   ADC_MemMapPtr adcptr = ADCx_Ptr[adcx];
LPLD_ADC_SetHWTrg:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_2
        LDR      R0,[R1, R0, LSL #+2]
//  517   //选择ADC为硬件触发方式
//  518   ADC_SC2_REG(adcptr)  |= ADC_SC2_ADTRG_MASK;
        LDR      R1,[R0, #+32]
        ORRS     R1,R1,#0x40
        STR      R1,[R0, #+32]
//  519 }
        BX       LR               ;; return
//  520 
//  521 /*
//  522  * LPLD_ADC_Isr
//  523  * ADC中断服务函数
//  524  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  525 void LPLD_ADC_Isr(void)
//  526 {
LPLD_ADC_Isr:
        PUSH     {R4,LR}
//  527   #define ADC_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
//  528   uint8 adc_ch = ADC_VECTORNUM - 73;
        LDR.N    R0,??DataTable5_8  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        SUBS     R4,R0,#+73
//  529     
//  530   //调用用户自定义中断服务
//  531   if(ADC_ISR[adc_ch] != (ADC_ISR_CALLBACK)0)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_ADC_Isr_0
//  532     ADC_ISR[adc_ch](); 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, R4, LSL #+2]
        BLX      R0
//  533   if(!adc_ch)
??LPLD_ADC_Isr_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LPLD_ADC_Isr_1
//  534     ADC_SC1_REG(ADC0_BASE_PTR,0) |= ADC_SC1_COCO_MASK;
        LDR.N    R0,??DataTable5_9  ;; 0x4003b000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable5_9  ;; 0x4003b000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_ADC_Isr_2
//  535   else
//  536     ADC_SC1_REG(ADC1_BASE_PTR,0) |= ADC_SC1_COCO_MASK;
??LPLD_ADC_Isr_1:
        LDR.N    R0,??DataTable5_10  ;; 0x400bb000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable5_10  ;; 0x400bb000
        STR      R0,[R1, #+0]
//  537 }
??LPLD_ADC_Isr_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     Adc0_Config

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     ADCx_Ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     Adc1_Config

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     ADC_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x400bb000

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
//    40 bytes in section .bss
//     8 bytes in section .data
// 1 588 bytes in section .text
// 
// 1 588 bytes of CODE memory
//    48 bytes of DATA memory
//
//Errors: none
//Warnings: none
