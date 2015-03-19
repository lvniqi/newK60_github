///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:49
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_SDHC.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_SDHC.c" -D IAR
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\HAL_SDHC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN core_clk_khz
        EXTERN periph_clk_khz

        PUBLIC DELAY_MS
        PUBLIC ESDHC_COMMAND_XFERTYP
        PUBLIC K60_SDHC0_init
        PUBLIC SDHC_Card
        PUBLIC SDHC_Device
        PUBLIC SDHC_Info
        PUBLIC SDHC_Init
        PUBLIC SDHC_init
        PUBLIC SDHC_ioctl
        PUBLIC SDHC_is_running
        PUBLIC SDHC_send_command
        PUBLIC SDHC_set_baudrate
        PUBLIC SDHC_status_wait

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_SDHC.c
//    1 /*
//    2  * --------------"拉普兰德K60底层库"-----------------
//    3  *
//    4  * 测试硬件平台:LPLD_K60 Card
//    5  * 版权所有:北京拉普兰德电子技术有限公司
//    6  * 网络销售:http://laplenden.taobao.com
//    7  * 公司门户:http://www.lpld.cn
//    8  *
//    9  * 文件名: HAL_SDHC.c
//   10  * 用途: SDHC底层模块相关函数
//   11  * 最后修改日期: 20130214
//   12  *
//   13  * 开发者使用协议:
//   14  *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
//   15  *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
//   16  *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   17  *
//   18  * 版权说明:
//   19  *  SDHC模块驱动程序摘取自飞思卡尔MQX底层驱动，部分功能由拉普兰德修改。
//   20  *  HAL_SDHC.h及HAL_SDHC.c内的代码版权归飞思卡尔公司享有。
//   21  */
//   22 
//   23 #include "common.h"
//   24 #include "HAL_SDHC.h"
//   25 
//   26 extern int core_clk_khz;
//   27 extern int periph_clk_khz;
//   28 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 SDCARD_STRUCT 		SDHC_Card;
SDHC_Card:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   30 SDCARD_INIT_STRUCT  SDHC_Init;
SDHC_Init:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 ESDHC_INFO_STRUCT	SDHC_Info;
SDHC_Info:
        DS8 516

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   32 ESDHC_DEVICE_STRUCT SDHC_Device;
SDHC_Device:
        DS8 8
//   33 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   34 const ESDHC_INIT_STRUCT K60_SDHC0_init =
K60_SDHC0_init:
        DATA
        DC32 0, 25000000
//   35 {
//   36     0,                          /* ESDHC device number */
//   37     25000000,                   /* ESDHC baudrate      */
//   38     //200000000            /* ESDHC clock source  */
//   39 };
//   40 
//   41 
//   42 //SD卡命令实际使用到的命令有 32条，其中基本命令 25条，用户应用命令 7条

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   43 const unsigned long ESDHC_COMMAND_XFERTYP[] =
ESDHC_COMMAND_XFERTYP:
        DATA
        DC32 0, 16777216, 34144256, 52035584, 67108864, 84017152, 102367232
        DC32 119209984, 135921664, 151584768, 168361984, 186253312, 215678976
        DC32 219807744, 0, 251658240, 270139392, 286916608, 303693824, 0
        DC32 337248256, 0, 370802688, 387579904, 404357120, 421134336
        DC32 437911552, 454688768, 471531520, 488308736, 505020416, 0
        DC32 538574848, 555352064, 572129280, 588906496, 605683712, 622460928
        DC32 639303680, 654442496, 672792576, 687996928, 706412544, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 857341952, 874119168, 890896384, 0, 924450816
        DC32 941293568, 0, 0, 0, 1008402432, 1025179648, 0, 0
//   44 {
//   45     /* CMD0 */
//   46     SDHC_XFERTYP_CMDINX(ESDHC_CMD0) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
//   47     SDHC_XFERTYP_CMDINX(ESDHC_CMD1) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
//   48     SDHC_XFERTYP_CMDINX(ESDHC_CMD2) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
//   49     SDHC_XFERTYP_CMDINX(ESDHC_CMD3) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   50     SDHC_XFERTYP_CMDINX(ESDHC_CMD4) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
//   51     /* CMD5 */
//   52     SDHC_XFERTYP_CMDINX(ESDHC_CMD5) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   53     SDHC_XFERTYP_CMDINX(ESDHC_CMD6) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   54     SDHC_XFERTYP_CMDINX(ESDHC_CMD7) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   55     SDHC_XFERTYP_CMDINX(ESDHC_CMD8) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   56     SDHC_XFERTYP_CMDINX(ESDHC_CMD9) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
//   57     /* CMD10 */
//   58     SDHC_XFERTYP_CMDINX(ESDHC_CMD10) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
//   59     SDHC_XFERTYP_CMDINX(ESDHC_CMD11) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   60     SDHC_XFERTYP_CMDINX(ESDHC_CMD12) | SDHC_XFERTYP_CMDTYP(ESDHC_XFERTYP_CMDTYP_ABORT) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   61     SDHC_XFERTYP_CMDINX(ESDHC_CMD13) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   62     0,
//   63     /* CMD15 */
//   64     SDHC_XFERTYP_CMDINX(ESDHC_CMD15) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
//   65     SDHC_XFERTYP_CMDINX(ESDHC_CMD16) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   66     SDHC_XFERTYP_CMDINX(ESDHC_CMD17) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   67     SDHC_XFERTYP_CMDINX(ESDHC_CMD18) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   68     0,
//   69     /* CMD20 */
//   70     SDHC_XFERTYP_CMDINX(ESDHC_CMD20) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   71     0,
//   72     SDHC_XFERTYP_CMDINX(ESDHC_ACMD22) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   73     SDHC_XFERTYP_CMDINX(ESDHC_ACMD23) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   74     SDHC_XFERTYP_CMDINX(ESDHC_CMD24) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   75     /* CMD25 */
//   76     SDHC_XFERTYP_CMDINX(ESDHC_CMD25) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   77     SDHC_XFERTYP_CMDINX(ESDHC_CMD26) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   78     SDHC_XFERTYP_CMDINX(ESDHC_CMD27) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   79     SDHC_XFERTYP_CMDINX(ESDHC_CMD28) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   80     SDHC_XFERTYP_CMDINX(ESDHC_CMD29) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   81     /* CMD30 */
//   82     SDHC_XFERTYP_CMDINX(ESDHC_CMD30) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   83     0,
//   84     SDHC_XFERTYP_CMDINX(ESDHC_CMD32) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   85     SDHC_XFERTYP_CMDINX(ESDHC_CMD33) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   86     SDHC_XFERTYP_CMDINX(ESDHC_CMD34) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   87     /* CMD35 */
//   88     SDHC_XFERTYP_CMDINX(ESDHC_CMD35) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   89     SDHC_XFERTYP_CMDINX(ESDHC_CMD36) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   90     SDHC_XFERTYP_CMDINX(ESDHC_CMD37) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   91     SDHC_XFERTYP_CMDINX(ESDHC_CMD38) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   92     SDHC_XFERTYP_CMDINX(ESDHC_CMD39) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   93     /* CMD40 */
//   94     SDHC_XFERTYP_CMDINX(ESDHC_CMD40) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   95     SDHC_XFERTYP_CMDINX(ESDHC_ACMD41) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   96     SDHC_XFERTYP_CMDINX(ESDHC_CMD42) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   97     0,
//   98     0,
//   99     /* CMD45 */
//  100     0,
//  101     0,
//  102     0,
//  103     0,
//  104     0,
//  105     /* CMD50 */
//  106     0,
//  107     SDHC_XFERTYP_CMDINX(ESDHC_ACMD51) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  108     SDHC_XFERTYP_CMDINX(ESDHC_CMD52) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  109     SDHC_XFERTYP_CMDINX(ESDHC_CMD53) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  110     0,
//  111     /* CMD55 */
//  112     SDHC_XFERTYP_CMDINX(ESDHC_CMD55) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  113     SDHC_XFERTYP_CMDINX(ESDHC_CMD56) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//  114     0,
//  115     0,
//  116     0,
//  117     /* CMD60 */
//  118     SDHC_XFERTYP_CMDINX(ESDHC_CMD60) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//  119     SDHC_XFERTYP_CMDINX(ESDHC_CMD61) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//  120     0,
//  121     0
//  122 };
//  123 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  124 void  DELAY_MS(uint32  ms)
//  125 {
//  126 
//  127     uint32  i, j;
//  128     for(i = 0; i < ms; i++)
DELAY_MS:
        MOVS     R1,#+0
        B.N      ??DELAY_MS_0
//  129     {
//  130         for(j = periph_clk_khz; j > 0; j--)
//  131         {
//  132             asm("nop");
??DELAY_MS_1:
        nop
//  133         }
        SUBS     R2,R2,#+1
??DELAY_MS_2:
        CMP      R2,#+0
        BNE.N    ??DELAY_MS_1
        ADDS     R1,R1,#+1
??DELAY_MS_0:
        CMP      R1,R0
        BCS.N    ??DELAY_MS_3
        LDR.W    R2,??DataTable6
        LDR      R2,[R2, #+0]
        B.N      ??DELAY_MS_2
//  134     }
//  135 }
??DELAY_MS_3:
        BX       LR               ;; return
//  136 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 void SDHC_set_baudrate
//  138 (
//  139     /* [IN] Module input clock in Hz */
//  140     uint32         clock,
//  141 
//  142     /* [IN] Desired baudrate in Hz */
//  143     uint32         baudrate
//  144 )
//  145 {
SDHC_set_baudrate:
        PUSH     {R4-R7}
//  146     uint32 pres, div, min, minpres = 0x80, mindiv = 0x0F;
        MOVS     R2,#+128
        MOVS     R3,#+15
//  147     int32  val;
//  148 
//  149     /* Find closest setting */
//  150     min = (uint32) - 1;
        MOVS     R6,#-1
//  151     for (pres = 2; pres <= 256; pres <<= 1)
        MOVS     R4,#+2
        B.N      ??SDHC_set_baudrate_0
//  152     {
//  153         for (div = 1; div <= 16; div++)
//  154         {
//  155             val = pres * div * baudrate - clock;
??SDHC_set_baudrate_1:
        MUL      R7,R5,R4
        MULS     R7,R1,R7
        SUBS     R7,R7,R0
//  156             if (val >= 0)
        CMP      R7,#+0
        BMI.N    ??SDHC_set_baudrate_2
//  157             {
//  158                 if (min > val)
        CMP      R7,R6
        BCS.N    ??SDHC_set_baudrate_2
//  159                 {
//  160                     min = val;
        MOVS     R6,R7
//  161                     minpres = pres;
        MOVS     R2,R4
//  162                     mindiv = div;
        MOVS     R3,R5
//  163                 }
//  164             }
//  165         }
??SDHC_set_baudrate_2:
        ADDS     R5,R5,#+1
??SDHC_set_baudrate_3:
        CMP      R5,#+17
        BCC.N    ??SDHC_set_baudrate_1
        LSLS     R4,R4,#+1
??SDHC_set_baudrate_0:
        CMP      R4,#+256
        BHI.N    ??SDHC_set_baudrate_4
        MOVS     R5,#+1
        B.N      ??SDHC_set_baudrate_3
//  166     }
//  167 
//  168     /* Disable ESDHC clocks */
//  169     SDHC_SYSCTL &= (~ SDHC_SYSCTL_SDCLKEN_MASK);
??SDHC_set_baudrate_4:
        LDR.W    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.W    R1,??DataTable6_1  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  170 
//  171     /* Change dividers */
//  172     div = SDHC_SYSCTL & (~ (SDHC_SYSCTL_DTOCV_MASK | SDHC_SYSCTL_SDCLKFS_MASK | SDHC_SYSCTL_DVS_MASK));
        LDR.W    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BFC      R5,#+4,#+16
//  173     SDHC_SYSCTL = div | (SDHC_SYSCTL_DTOCV(0x0E) | SDHC_SYSCTL_SDCLKFS(minpres >> 1) | SDHC_SYSCTL_DVS(mindiv - 1));
        LSLS     R0,R2,#+7
        ANDS     R0,R0,#0xFF00
        ORRS     R0,R0,R5
        SUBS     R1,R3,#+1
        LSLS     R1,R1,#+4
        ANDS     R1,R1,#0xF0
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0xE0000
        LDR.W    R1,??DataTable6_1  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  174 
//  175     /* Wait for stable clock */
//  176     while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_SDSTB_MASK));
??SDHC_set_baudrate_5:
        LDR.W    R0,??DataTable6_2  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??SDHC_set_baudrate_5
//  177 
//  178 
//  179     /* Enable ESDHC clocks */
//  180     SDHC_SYSCTL |= SDHC_SYSCTL_SDCLKEN_MASK;
        LDR.W    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable6_1  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  181     SDHC_IRQSTAT |= SDHC_IRQSTAT_DTOE_MASK;
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100000
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  182 }
        POP      {R4-R7}
        BX       LR               ;; return
//  183 
//  184 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 uint32 SDHC_init
//  186 (
//  187     /* [IN/OUT] Device runtime information */
//  188     ESDHC_INFO_STRUCT_PTR  esdhc_info_ptr,
//  189 
//  190     /* [IN] Device initialization data */
//  191     ESDHC_INIT_STRUCT_CPTR esdhc_init_ptr
//  192 )
//  193 {
SDHC_init:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  194 
//  195     esdhc_info_ptr->CARD = ESDHC_CARD_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  196 
//  197     /* Reset ESDHC */
//  198     SDHC_SYSCTL = SDHC_SYSCTL_RSTA_MASK | SDHC_SYSCTL_SDCLKFS(0x80);
        LDR.W    R0,??DataTable6_4  ;; 0x1008000
        LDR.W    R1,??DataTable6_1  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  199     while (SDHC_SYSCTL & SDHC_SYSCTL_RSTA_MASK) {};
??SDHC_init_0:
        LDR.W    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+7
        BMI.N    ??SDHC_init_0
//  200 
//  201     /* Initial values */
//  202     SDHC_VENDOR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5  ;; 0x400b10c0
        STR      R0,[R1, #+0]
//  203     SDHC_BLKATTR = SDHC_BLKATTR_BLKCNT(1) | SDHC_BLKATTR_BLKSIZE(512);
        MOVS     R0,#+66048
        LDR.W    R1,??DataTable6_6  ;; 0x400b1004
        STR      R0,[R1, #+0]
//  204     SDHC_PROCTL = SDHC_PROCTL_EMODE(ESDHC_PROCTL_EMODE_INVARIANT) | SDHC_PROCTL_D3CD_MASK;
        MOVS     R0,#+40
        LDR.W    R1,??DataTable6_7  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  205     SDHC_WML = SDHC_WML_RDWML(1) | SDHC_WML_WRWML(1);
        MOVS     R0,#+65537
        LDR.W    R1,??DataTable6_8  ;; 0x400b1044
        STR      R0,[R1, #+0]
//  206 
//  207     /* Set the ESDHC initial baud rate divider and start */
//  208     //SDHC_set_baudrate (esdhc_init_ptr->CLOCK_SPEED,380000);
//  209     SDHC_set_baudrate (core_clk_khz * 1000, 9000000);
        LDR.W    R1,??DataTable6_9  ;; 0x895440
        LDR.W    R0,??DataTable6_10
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       SDHC_set_baudrate
//  210 
//  211     /* Poll inhibit bits */
//  212     while (SDHC_PRSSTAT & (SDHC_PRSSTAT_CIHB_MASK | SDHC_PRSSTAT_CDIHB_MASK)) {};
??SDHC_init_1:
        LDR.W    R0,??DataTable6_2  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        TST      R0,#0x3
        BNE.N    ??SDHC_init_1
//  213 
//  214     /* 初始化管脚复用 */
//  215     PORTE_PCR(0) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D1  */
        MOVW     R0,#+1091
        LDR.W    R1,??DataTable6_11  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  216     PORTE_PCR(1) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D0  */
        MOVW     R0,#+1091
        LDR.W    R1,??DataTable6_12  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  217     PORTE_PCR(2) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          /* ESDHC.CLK */
        MOV      R0,#+1088
        LDR.W    R1,??DataTable6_13  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  218     PORTE_PCR(3) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.CMD */
        MOVW     R0,#+1091
        LDR.W    R1,??DataTable6_14  ;; 0x4004d00c
        STR      R0,[R1, #+0]
//  219     PORTE_PCR(4) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D3  */
        MOVW     R0,#+1091
        LDR.W    R1,??DataTable6_15  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  220     PORTE_PCR(5) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D2  */
        MOVW     R0,#+1091
        LDR.W    R1,??DataTable6_16  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  221 
//  222     /* Enable clock gate to SDHC module */
//  223     SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
        LDR.W    R0,??DataTable6_17  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable6_17  ;; 0x40048030
        STR      R0,[R1, #+0]
//  224 
//  225     /* Enable requests */
//  226     SDHC_IRQSTAT = 0xFFFF;
        MOVW     R0,#+65535
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  227     SDHC_IRQSTATEN = 	  SDHC_IRQSTATEN_DEBESEN_MASK | SDHC_IRQSTATEN_DCESEN_MASK | SDHC_IRQSTATEN_DTOESEN_MASK
//  228                           | SDHC_IRQSTATEN_CIESEN_MASK | SDHC_IRQSTATEN_CEBESEN_MASK | SDHC_IRQSTATEN_CCESEN_MASK | SDHC_IRQSTATEN_CTOESEN_MASK
//  229                           | SDHC_IRQSTATEN_BRRSEN_MASK | SDHC_IRQSTATEN_BWRSEN_MASK | SDHC_IRQSTATEN_CRMSEN_MASK
//  230                           | SDHC_IRQSTATEN_TCSEN_MASK | SDHC_IRQSTATEN_CCSEN_MASK;
        LDR.W    R0,??DataTable6_18  ;; 0x7f00b3
        LDR.W    R1,??DataTable6_19  ;; 0x400b1034
        STR      R0,[R1, #+0]
//  231 
//  232     /* 80 initial clocks */
//  233     SDHC_SYSCTL |= SDHC_SYSCTL_INITA_MASK;
        LDR.W    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable6_1  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  234     while (SDHC_SYSCTL & SDHC_SYSCTL_INITA_MASK) {};
??SDHC_init_2:
        LDR.W    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??SDHC_init_2
//  235 
//  236     /* Check card */
//  237     if (SDHC_PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
        LDR.W    R0,??DataTable6_2  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??SDHC_init_3
//  238     {
//  239         esdhc_info_ptr->CARD = ESDHC_CARD_UNKNOWN;
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
//  240     }
//  241     SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
??SDHC_init_3:
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  242 
//  243     return ESDHC_OK;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  244 }
//  245 
//  246 /*FUNCTION****************************************************************
//  247 *
//  248 * Function Name    : _esdhc_is_running
//  249 * Returned Value   : TRUE if running, FALSE otherwise
//  250 * Comments         :
//  251 *    Checks whether eSDHC module is currently in use.
//  252 *
//  253 *END*********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 uint8 SDHC_is_running(void)
//  255 {
//  256     return (0 != (SDHC_PRSSTAT & (SDHC_PRSSTAT_RTA_MASK | SDHC_PRSSTAT_WTA_MASK | SDHC_PRSSTAT_DLA_MASK | SDHC_PRSSTAT_CDIHB_MASK | SDHC_PRSSTAT_CIHB_MASK)));
SDHC_is_running:
        LDR.W    R0,??DataTable6_2  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        MOVW     R1,#+775
        TST      R0,R1
        BEQ.N    ??SDHC_is_running_0
        MOVS     R0,#+1
        B.N      ??SDHC_is_running_1
??SDHC_is_running_0:
        MOVS     R0,#+0
??SDHC_is_running_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  257 }
//  258 
//  259 /*FUNCTION****************************************************************
//  260 *
//  261 * Function Name    : SDHC_status_wait
//  262 * Returned Value   : bits set for given mask
//  263 * Comments         :
//  264 *    Waits for ESDHC interrupt status register bits according to given mask.
//  265 *
//  266 *END*********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  267 uint32 SDHC_status_wait(uint32	mask)        /* [IN] Mask of IRQSTAT bits to wait for */
//  268 {
//  269     uint32	result;
//  270     do
//  271     {
//  272         result = SDHC_IRQSTAT & mask;
SDHC_status_wait:
??SDHC_status_wait_0:
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        LDR      R1,[R1, #+0]
        ANDS     R1,R0,R1
//  273     }
//  274     while (0 == result);
        CMP      R1,#+0
        BEQ.N    ??SDHC_status_wait_0
//  275     return result;
        MOVS     R0,R1
        BX       LR               ;; return
//  276 }
//  277 
//  278 /*FUNCTION****************************************************************
//  279 *
//  280 * Function Name    : SDHC_send_command
//  281 * Returned Value   : 0 on success, 1 on error, -1 on timeout
//  282 * Comments         :
//  283 *    One ESDHC command transaction.
//  284 *
//  285 *END*********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  286 uint32 SDHC_send_command (ESDHC_COMMAND_STRUCT_PTR command) /* [IN/OUT] Command specification */
//  287 {
SDHC_send_command:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  288     uint32	xfertyp;
//  289 
//  290     /* Check command */
//  291     xfertyp = ESDHC_COMMAND_XFERTYP[command->COMMAND & 0x3F];
        LDRB     R0,[R4, #+0]
        ANDS     R0,R0,#0x3F
        LDR.W    R1,??DataTable6_20
        LDR      R5,[R1, R0, LSL #+2]
//  292     if ((0 == xfertyp) && (0 != command->COMMAND))
        CMP      R5,#+0
        BNE.N    ??SDHC_send_command_0
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??SDHC_send_command_0
//  293     {
//  294         return 1;
        MOVS     R0,#+1
        B.N      ??SDHC_send_command_1
//  295     }
//  296 
//  297     /* Card removal check preparation */
//  298     SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
??SDHC_send_command_0:
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  299 
//  300     /* Wait for cmd line idle */
//  301     while (SDHC_PRSSTAT & SDHC_PRSSTAT_CIHB_MASK) {};
??SDHC_send_command_2:
        LDR.W    R0,??DataTable6_2  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??SDHC_send_command_2
//  302 
//  303     /* Setup command */
//  304     SDHC_CMDARG = command->ARGUMENT;
        LDR      R0,[R4, #+4]
        LDR.W    R1,??DataTable6_21  ;; 0x400b1008
        STR      R0,[R1, #+0]
//  305     xfertyp &= (~ SDHC_XFERTYP_CMDTYP_MASK);
        BICS     R5,R5,#0xC00000
//  306     xfertyp |= SDHC_XFERTYP_CMDTYP(command->TYPE);
        LDRB     R0,[R4, #+1]
        LSLS     R0,R0,#+22
        ANDS     R0,R0,#0xC00000
        ORRS     R5,R0,R5
//  307     if (ESDHC_TYPE_RESUME == command->TYPE)
        LDRB     R0,[R4, #+1]
        CMP      R0,#+2
        BNE.N    ??SDHC_send_command_3
//  308     {
//  309         xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        ORRS     R5,R5,#0x200000
//  310     }
//  311     if (ESDHC_TYPE_SWITCH_BUSY == command->TYPE)
??SDHC_send_command_3:
        LDRB     R0,[R4, #+1]
        CMP      R0,#+4
        BNE.N    ??SDHC_send_command_4
//  312     {
//  313         if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) == SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48))
        ANDS     R0,R5,#0x30000
        CMP      R0,#+131072
        BNE.N    ??SDHC_send_command_5
//  314         {
//  315             xfertyp &= (~ SDHC_XFERTYP_RSPTYP_MASK);
        BICS     R5,R5,#0x30000
//  316             xfertyp |= SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY);
        ORRS     R5,R5,#0x30000
        B.N      ??SDHC_send_command_4
//  317         }
//  318         else
//  319         {
//  320             xfertyp &= (~ SDHC_XFERTYP_RSPTYP_MASK);
??SDHC_send_command_5:
        BICS     R5,R5,#0x30000
//  321             xfertyp |= SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48);
        ORRS     R5,R5,#0x20000
//  322         }
//  323     }
//  324     SDHC_BLKATTR &= (~ SDHC_BLKATTR_BLKCNT_MASK);
??SDHC_send_command_4:
        LDR.W    R0,??DataTable6_6  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable6_6  ;; 0x400b1004
        STR      R0,[R1, #+0]
//  325     if (0 != command->BLOCKS)
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??SDHC_send_command_6
//  326     {
//  327         if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) != SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY))
        ANDS     R0,R5,#0x30000
        CMP      R0,#+196608
        BEQ.N    ??SDHC_send_command_7
//  328         {
//  329             xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        ORRS     R5,R5,#0x200000
//  330         }
//  331         if (command->READ)
??SDHC_send_command_7:
        LDRB     R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??SDHC_send_command_8
//  332         {
//  333             xfertyp |= SDHC_XFERTYP_DTDSEL_MASK;
        ORRS     R5,R5,#0x10
//  334         }
//  335         if (command->BLOCKS > 1)
??SDHC_send_command_8:
        LDR      R0,[R4, #+12]
        CMP      R0,#+2
        BCC.N    ??SDHC_send_command_9
//  336         {
//  337             xfertyp |= SDHC_XFERTYP_MSBSEL_MASK;
        ORRS     R5,R5,#0x20
//  338         }
//  339         if ((uint32) - 1 != command->BLOCKS)
??SDHC_send_command_9:
        LDR      R0,[R4, #+12]
        CMN      R0,#+1
        BEQ.N    ??SDHC_send_command_6
//  340         {
//  341             SDHC_BLKATTR |= SDHC_BLKATTR_BLKCNT(command->BLOCKS);
        LDR.W    R0,??DataTable6_6  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+12]
        ORRS     R0,R0,R1, LSL #+16
        LDR.W    R1,??DataTable6_6  ;; 0x400b1004
        STR      R0,[R1, #+0]
//  342             xfertyp |= SDHC_XFERTYP_BCEN_MASK;
        ORRS     R5,R5,#0x2
//  343         }
//  344     }
//  345 
//  346     /* Issue command */
//  347     SDHC_DSADDR = 0;
??SDHC_send_command_6:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_22  ;; 0x400b1000
        STR      R0,[R1, #+0]
//  348     SDHC_XFERTYP = xfertyp;
        LDR.W    R0,??DataTable6_23  ;; 0x400b100c
        STR      R5,[R0, #+0]
//  349 
//  350     /* Wait for response */
//  351     if (SDHC_status_wait (SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK) != SDHC_IRQSTAT_CC_MASK)
        LDR.W    R0,??DataTable6_24  ;; 0xe0001
        BL       SDHC_status_wait
        CMP      R0,#+1
        BEQ.N    ??SDHC_send_command_10
//  352     {
//  353         SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0xF0000
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  354         return 1;
        MOVS     R0,#+1
        B.N      ??SDHC_send_command_1
//  355     }
//  356 
//  357     /* Check card removal */
//  358     if (SDHC_IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
??SDHC_send_command_10:
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SDHC_send_command_11
//  359     {
//  360         SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10001
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  361         return 1;
        MOVS     R0,#+1
        B.N      ??SDHC_send_command_1
//  362     }
//  363 
//  364     /* Get response, if available */
//  365     if (SDHC_IRQSTAT & SDHC_IRQSTAT_CTOE_MASK)
??SDHC_send_command_11:
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??SDHC_send_command_12
//  366     {
//  367         SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10001
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  368         return -1;
        MOVS     R0,#-1
        B.N      ??SDHC_send_command_1
//  369     }
//  370     if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) != SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO))
??SDHC_send_command_12:
        TST      R5,#0x30000
        BEQ.N    ??SDHC_send_command_13
//  371     {
//  372         command->RESPONSE[0] = SDHC_CMDRSP(0);
        LDR.W    R0,??DataTable6_25  ;; 0x400b1010
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+16]
//  373         if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) == SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136))
        ANDS     R0,R5,#0x30000
        CMP      R0,#+65536
        BNE.N    ??SDHC_send_command_13
//  374         {
//  375             command->RESPONSE[1] = SDHC_CMDRSP(1);
        LDR.W    R0,??DataTable6_26  ;; 0x400b1014
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+20]
//  376             command->RESPONSE[2] = SDHC_CMDRSP(2);
        LDR.W    R0,??DataTable6_27  ;; 0x400b1018
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+24]
//  377             command->RESPONSE[3] = SDHC_CMDRSP(3);
        LDR.W    R0,??DataTable6_28  ;; 0x400b101c
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+28]
//  378         }
//  379     }
//  380 
//  381     SDHC_IRQSTAT |= SDHC_IRQSTAT_CC_MASK;
??SDHC_send_command_13:
        LDR.W    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  382 
//  383     return 0;
        MOVS     R0,#+0
??SDHC_send_command_1:
        POP      {R1,R4,R5,PC}    ;; return
//  384 }
//  385 
//  386 
//  387 /*FUNCTION****************************************************************
//  388 *
//  389 * Function Name    : _esdhc_ioctl
//  390 * Returned Value   : MQX error code
//  391 * Comments         :
//  392 *    This function performs miscellaneous services for the ESDHC I/O device.
//  393 *
//  394 *END*********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  395 int32 SDHC_ioctl
//  396 (
//  397     /* [IN] The command to perform */
//  398     uint32              cmd,
//  399 
//  400     /* [IN/OUT] Parameters for the command */
//  401     void                *param_ptr
//  402 )
//  403 {
SDHC_ioctl:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+36
        MOVS     R5,R1
//  404     ESDHC_INFO_STRUCT_PTR   esdhc_info_ptr;
//  405     ESDHC_DEVICE_STRUCT_PTR esdhc_device_ptr;
//  406     ESDHC_INIT_STRUCT_CPTR  esdhc_init_ptr;
//  407     ESDHC_COMMAND_STRUCT    command;
//  408     uint8                   mem, io, mmc, ceata, mp, hc;
//  409     int32                  val;
//  410     uint32                  result = ESDHC_OK;
        MOVS     R11,#+0
//  411     uint32             	    *param32_ptr = param_ptr;
//  412 
//  413     /* Check parameters */
//  414     esdhc_info_ptr = (ESDHC_INFO_STRUCT_PTR)&SDHC_Info;
        LDR.W    R4,??DataTable6_29
//  415 
//  416     if (NULL == esdhc_info_ptr)
        CMP      R4,#+0
        BNE.N    ??SDHC_ioctl_0
//  417     {
//  418         return IO_DEVICE_DOES_NOT_EXIST;
        MOVW     R0,#+2561
        B.N      ??SDHC_ioctl_1
//  419     }
//  420 
//  421     esdhc_device_ptr = &SDHC_Device;
??SDHC_ioctl_0:
        LDR.W    R1,??DataTable6_30
//  422     if (NULL == esdhc_device_ptr)
        CMP      R1,#+0
        BNE.N    ??SDHC_ioctl_2
//  423     {
//  424         return IO_ERROR_DEVICE_INVALID;
        MOVW     R0,#+2571
        B.N      ??SDHC_ioctl_1
//  425     }
//  426 
//  427     esdhc_init_ptr = esdhc_device_ptr->INIT;
??SDHC_ioctl_2:
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+32]
//  428     if (NULL == esdhc_init_ptr)
        LDR      R1,[SP, #+32]
        CMP      R1,#+0
        BNE.N    ??SDHC_ioctl_3
//  429     {
//  430         return IO_ERROR_DEVICE_INVALID;
        MOVW     R0,#+2571
        B.N      ??SDHC_ioctl_1
//  431     }
//  432 
//  433     switch (cmd)
??SDHC_ioctl_3:
        SUBS     R0,R0,#+3
        BEQ.W    ??SDHC_ioctl_4
        SUBS     R0,R0,#+6
        BEQ.W    ??SDHC_ioctl_5
        MOVW     R1,#+4856
        SUBS     R0,R0,R1
        BEQ.N    ??SDHC_ioctl_6
        SUBS     R0,R0,#+1
        BEQ.W    ??SDHC_ioctl_7
        SUBS     R0,R0,#+1
        BEQ.W    ??SDHC_ioctl_8
        SUBS     R0,R0,#+1
        BEQ.W    ??SDHC_ioctl_9
        SUBS     R0,R0,#+1
        BEQ.W    ??SDHC_ioctl_10
        SUBS     R0,R0,#+1
        BEQ.W    ??SDHC_ioctl_11
        SUBS     R0,R0,#+1
        BEQ.W    ??SDHC_ioctl_12
        SUBS     R0,R0,#+1
        BEQ.W    ??SDHC_ioctl_13
        SUBS     R0,R0,#+1
        BEQ.W    ??SDHC_ioctl_14
        B.N      ??SDHC_ioctl_15
//  434     {
//  435     case IO_IOCTL_ESDHC_INIT:
//  436 
//  437         result = SDHC_init (esdhc_info_ptr, &K60_SDHC0_init);
??SDHC_ioctl_6:
        LDR.W    R1,??DataTable6_31
        MOVS     R0,R4
        BL       SDHC_init
        MOV      R11,R0
//  438         if (ESDHC_OK != result)
        CMP      R11,#+0
        BNE.W    ??SDHC_ioctl_16
//  439         {
//  440             break;
//  441         }
//  442 
//  443         mem = FALSE;
??SDHC_ioctl_17:
        MOVS     R5,#+0
//  444         io = FALSE;
        MOVS     R6,#+0
//  445         mmc = FALSE;
        MOVS     R7,#+0
//  446         ceata = FALSE;
        MOVS     R8,#+0
//  447         hc = FALSE;
        MOVS     R9,#+0
//  448         mp = FALSE;
        MOVS     R10,#+0
//  449 
//  450         /* CMD0 - Go to idle - reset card */
//  451         command.COMMAND = ESDHC_CMD0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  452         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  453         command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  454         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  455         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  456         if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_18
//  457         {
//  458             result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  459             break;
        B.N      ??SDHC_ioctl_16
//  460         }
//  461 
//  462         DELAY_MS(1100);
??SDHC_ioctl_18:
        MOVW     R0,#+1100
        BL       DELAY_MS
//  463 
//  464         /* CMD8 - Send interface condition - check HC support */
//  465         command.COMMAND = ESDHC_CMD8;
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
//  466         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  467         command.ARGUMENT = 0x000001AA;
        MOV      R0,#+426
        STR      R0,[SP, #+4]
//  468         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  469         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  470         val = SDHC_send_command (&command);
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        MOV      R10,R0
//  471 
//  472         if (val == 0)
        CMP      R10,#+0
        BNE.N    ??SDHC_ioctl_19
//  473         {
//  474             // SDHC Card
//  475             if (command.RESPONSE[0] != command.ARGUMENT)
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+4]
        CMP      R0,R1
        BEQ.N    ??SDHC_ioctl_20
//  476             {
//  477                 result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  478                 break;
        B.N      ??SDHC_ioctl_16
//  479             }
//  480             hc = TRUE;
??SDHC_ioctl_20:
        MOVS     R9,#+1
//  481         }
//  482 
//  483         mp = TRUE;
??SDHC_ioctl_19:
        MOVS     R10,#+1
//  484 
//  485         if (mp)
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BEQ.W    ??SDHC_ioctl_21
//  486         {
//  487             /* CMD55 - Application specific command - check MMC */
//  488             command.COMMAND = ESDHC_CMD55;
        MOVS     R0,#+55
        STRB     R0,[SP, #+0]
//  489             command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  490             command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  491             command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  492             command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  493             val = SDHC_send_command (&command);
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        MOV      R10,R0
//  494             if (val > 0)
        CMP      R10,#+1
        BLT.N    ??SDHC_ioctl_22
//  495             {
//  496                 result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  497                 break;
        B.N      ??SDHC_ioctl_16
//  498             }
//  499             if (val < 0)
??SDHC_ioctl_22:
        CMP      R10,#+0
        BPL.N    ??SDHC_ioctl_23
//  500             {
//  501                 /* MMC or CE-ATA */
//  502                 io = FALSE;
        MOVS     R6,#+0
//  503                 mem = FALSE;
        MOVS     R5,#+0
//  504                 hc = FALSE;
        MOVS     R9,#+0
//  505 
//  506                 /* CMD1 - Send operating conditions - check HC */
//  507                 command.COMMAND = ESDHC_CMD1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//  508                 command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  509                 command.ARGUMENT = 0x40300000;
        LDR.W    R0,??DataTable6_32  ;; 0x40300000
        STR      R0,[SP, #+4]
//  510                 command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  511                 command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  512                 if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_24
//  513                 {
//  514                     result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  515                     break;
        B.N      ??SDHC_ioctl_16
//  516                 }
//  517                 if (0x20000000 == (command.RESPONSE[0] & 0x60000000))
??SDHC_ioctl_24:
        LDR      R0,[SP, #+16]
        ANDS     R0,R0,#0x60000000
        CMP      R0,#+536870912
        BNE.N    ??SDHC_ioctl_25
//  518                 {
//  519                     hc = TRUE;
        MOVS     R9,#+1
//  520                 }
//  521                 mmc = TRUE;
??SDHC_ioctl_25:
        MOVS     R7,#+1
//  522 
//  523                 /* CMD39 - Fast IO - check CE-ATA signature CE */
//  524                 command.COMMAND = ESDHC_CMD39;
        MOVS     R0,#+39
        STRB     R0,[SP, #+0]
//  525                 command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  526                 command.ARGUMENT = 0x0C00;
        MOV      R0,#+3072
        STR      R0,[SP, #+4]
//  527                 command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  528                 command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  529                 if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_26
//  530                 {
//  531                     result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  532                     break;
        B.N      ??SDHC_ioctl_16
//  533                 }
//  534                 if (0xCE == (command.RESPONSE[0] >> 8) & 0xFF)
??SDHC_ioctl_26:
        LDR      R0,[SP, #+16]
        LSRS     R0,R0,#+8
        CMP      R0,#+206
        BNE.N    ??SDHC_ioctl_27
        MOVS     R0,#+1
        B.N      ??SDHC_ioctl_28
??SDHC_ioctl_27:
        MOVS     R0,#+0
??SDHC_ioctl_28:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.W    ??SDHC_ioctl_21
//  535                 {
//  536                     /* CMD39 - Fast IO - check CE-ATA signature AA */
//  537                     command.COMMAND = ESDHC_CMD39;
        MOVS     R0,#+39
        STRB     R0,[SP, #+0]
//  538                     command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  539                     command.ARGUMENT = 0x0D00;
        MOV      R0,#+3328
        STR      R0,[SP, #+4]
//  540                     command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  541                     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  542                     if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_29
//  543                     {
//  544                         result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  545                         break;
        B.N      ??SDHC_ioctl_16
//  546                     }
//  547                     if (0xAA == (command.RESPONSE[0] >> 8) & 0xFF)
??SDHC_ioctl_29:
        LDR      R0,[SP, #+16]
        LSRS     R0,R0,#+8
        CMP      R0,#+170
        BNE.N    ??SDHC_ioctl_30
        MOVS     R0,#+1
        B.N      ??SDHC_ioctl_31
??SDHC_ioctl_30:
        MOVS     R0,#+0
??SDHC_ioctl_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_21
//  548                     {
//  549                         mmc = FALSE;
        MOVS     R7,#+0
//  550                         ceata = TRUE;
        MOVS     R8,#+1
        B.N      ??SDHC_ioctl_21
//  551                     }
//  552                 }
//  553             }
//  554             else
//  555             {
//  556                 /* SD */
//  557                 /* ACMD41 - Send Operating Conditions */
//  558                 command.COMMAND = ESDHC_ACMD41;
??SDHC_ioctl_23:
        MOVS     R0,#+105
        STRB     R0,[SP, #+0]
//  559                 command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  560                 command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  561                 command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  562                 command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  563                 if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_32
//  564                 {
//  565                     result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  566                     break;
        B.N      ??SDHC_ioctl_16
//  567                 }
//  568                 if (command.RESPONSE[0] & 0x300000)
??SDHC_ioctl_32:
        LDR      R0,[SP, #+16]
        TST      R0,#0x300000
        BEQ.N    ??SDHC_ioctl_21
//  569                 {
//  570                     val = 0;
        MOVS     R10,#+0
//  571                     do
//  572                     {
//  573                         DELAY_MS(BSP_ALARM_RESOLUTION);
??SDHC_ioctl_33:
        MOVS     R0,#+10
        BL       DELAY_MS
//  574                         val++;
        ADDS     R10,R10,#+1
//  575 
//  576                         /* CMD55 + ACMD41 - Send OCR */
//  577                         command.COMMAND = ESDHC_CMD55;
        MOVS     R0,#+55
        STRB     R0,[SP, #+0]
//  578                         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  579                         command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  580                         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  581                         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  582                         if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_34
//  583                         {
//  584                             result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  585                             break;
        B.N      ??SDHC_ioctl_35
//  586                         }
//  587 
//  588                         command.COMMAND = ESDHC_ACMD41;
??SDHC_ioctl_34:
        MOVS     R0,#+105
        STRB     R0,[SP, #+0]
//  589                         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  590                         if (hc)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??SDHC_ioctl_36
//  591                         {
//  592                             command.ARGUMENT = 0x40300000;
        LDR.W    R0,??DataTable6_32  ;; 0x40300000
        STR      R0,[SP, #+4]
        B.N      ??SDHC_ioctl_37
//  593                         }
//  594                         else
//  595                         {
//  596                             command.ARGUMENT = 0x00300000;
??SDHC_ioctl_36:
        MOVS     R0,#+3145728
        STR      R0,[SP, #+4]
//  597                         }
//  598                         command.READ = FALSE;
??SDHC_ioctl_37:
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  599                         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  600                         if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_38
//  601                         {
//  602                             result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R11,#+1
//  603                             break;
        B.N      ??SDHC_ioctl_35
//  604                         }
//  605                     }
//  606                     while ((0 == (command.RESPONSE[0] & 0x80000000)) && (val < BSP_ALARM_FREQUENCY));
??SDHC_ioctl_38:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BMI.N    ??SDHC_ioctl_35
        CMP      R10,#+100
        BLT.N    ??SDHC_ioctl_33
//  607                     if (ESDHC_OK != result)
??SDHC_ioctl_35:
        CMP      R11,#+0
        BNE.W    ??SDHC_ioctl_16
//  608                     {
//  609                         break;
//  610                     }
//  611                     if (val >= BSP_ALARM_FREQUENCY)
??SDHC_ioctl_39:
        CMP      R10,#+100
        BLT.N    ??SDHC_ioctl_40
//  612                     {
//  613                         hc = FALSE;
        MOVS     R9,#+0
        B.N      ??SDHC_ioctl_21
//  614                     }
//  615                     else
//  616                     {
//  617                         mem = TRUE;
??SDHC_ioctl_40:
        MOVS     R5,#+1
//  618                         if (hc)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??SDHC_ioctl_21
//  619                         {
//  620                             hc = FALSE;
        MOVS     R9,#+0
//  621                             if (command.RESPONSE[0] & 0x40000000)
        LDR      R0,[SP, #+16]
        LSLS     R0,R0,#+1
        BPL.N    ??SDHC_ioctl_21
//  622                             {
//  623                                 hc = TRUE;
        MOVS     R9,#+1
//  624                             }
//  625                         }
//  626                     }
//  627                 }
//  628             }
//  629         }
//  630 
//  631 
//  632         if (mmc)
??SDHC_ioctl_21:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??SDHC_ioctl_41
//  633         {
//  634             esdhc_info_ptr->CARD = ESDHC_CARD_MMC;
        MOVS     R0,#+7
        STR      R0,[R4, #+0]
//  635         }
//  636         if (ceata)
??SDHC_ioctl_41:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??SDHC_ioctl_42
//  637         {
//  638             esdhc_info_ptr->CARD = ESDHC_CARD_CEATA;
        MOVS     R0,#+8
        STR      R0,[R4, #+0]
//  639         }
//  640         if (io)
??SDHC_ioctl_42:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SDHC_ioctl_43
//  641         {
//  642             esdhc_info_ptr->CARD = ESDHC_CARD_SDIO;
        MOVS     R0,#+4
        STR      R0,[R4, #+0]
//  643         }
//  644         if (mem)
??SDHC_ioctl_43:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SDHC_ioctl_44
//  645         {
//  646             esdhc_info_ptr->CARD = ESDHC_CARD_SD;
        MOVS     R0,#+2
        STR      R0,[R4, #+0]
//  647             if (hc)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??SDHC_ioctl_44
//  648             {
//  649                 esdhc_info_ptr->CARD = ESDHC_CARD_SDHC;
        MOVS     R0,#+3
        STR      R0,[R4, #+0]
//  650             }
//  651         }
//  652         if (io && mem)
??SDHC_ioctl_44:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SDHC_ioctl_45
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SDHC_ioctl_45
//  653         {
//  654             esdhc_info_ptr->CARD = ESDHC_CARD_SDCOMBO;
        MOVS     R0,#+5
        STR      R0,[R4, #+0]
//  655             if (hc)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??SDHC_ioctl_45
//  656             {
//  657                 esdhc_info_ptr->CARD = ESDHC_CARD_SDHCCOMBO;
        MOVS     R0,#+6
        STR      R0,[R4, #+0]
//  658             }
//  659         }
//  660 
//  661         /* De-Init GPIO */
//  662         PORTE_PCR(0) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D1  */
??SDHC_ioctl_45:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_11  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  663         PORTE_PCR(1) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D0  */
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_12  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  664         PORTE_PCR(2) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          /* ESDHC.CLK */
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_13  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  665         PORTE_PCR(3) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.CMD */
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_14  ;; 0x4004d00c
        STR      R0,[R1, #+0]
//  666         PORTE_PCR(4) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D3  */
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_15  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  667         PORTE_PCR(5) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D2  */
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_16  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  668 
//  669         /* Set the ESDHC default baud rate */
//  670         //SDHC_set_baudrate (esdhc_init_ptr->CLOCK_SPEED, esdhc_init_ptr->BAUD_RATE);
//  671         SDHC_set_baudrate (core_clk_khz * 1000, esdhc_init_ptr->BAUD_RATE);
        LDR      R0,[SP, #+32]
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable6_10
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       SDHC_set_baudrate
//  672 
//  673         /* Init GPIO again */
//  674         PORTE_PCR(0) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D1  */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_11  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  675         PORTE_PCR(1) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D0  */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_12  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  676         PORTE_PCR(2) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          /* ESDHC.CLK */
        MOV      R0,#+1088
        LDR.N    R1,??DataTable6_13  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  677         PORTE_PCR(3) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.CMD */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_14  ;; 0x4004d00c
        STR      R0,[R1, #+0]
//  678         PORTE_PCR(4) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D3  */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_15  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  679         PORTE_PCR(5) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D2  */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_16  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  680 
//  681         /* Enable clock gate to SDHC module */
//  682         SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
        LDR.N    R0,??DataTable6_17  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable6_17  ;; 0x40048030
        STR      R0,[R1, #+0]
//  683 
//  684         break;
        B.N      ??SDHC_ioctl_16
//  685     case IO_IOCTL_ESDHC_SEND_COMMAND:
//  686         val = SDHC_send_command ((ESDHC_COMMAND_STRUCT_PTR)param32_ptr);
??SDHC_ioctl_7:
        MOVS     R0,R5
        BL       SDHC_send_command
        MOV      R10,R0
//  687         if (val > 0)
        CMP      R10,#+1
        BLT.N    ??SDHC_ioctl_46
//  688         {
//  689             result = ESDHC_ERROR_COMMAND_FAILED;
        MOVS     R11,#+2
//  690         }
//  691         if (val < 0)
??SDHC_ioctl_46:
        CMP      R10,#+0
        BPL.N    ??SDHC_ioctl_47
//  692         {
//  693             result = ESDHC_ERROR_COMMAND_TIMEOUT;
        MOVS     R11,#+3
//  694         }
//  695         break;
??SDHC_ioctl_47:
        B.N      ??SDHC_ioctl_16
//  696     case IO_IOCTL_ESDHC_GET_BAUDRATE:
//  697         if (NULL == param32_ptr)
??SDHC_ioctl_9:
        CMP      R5,#+0
        BNE.N    ??SDHC_ioctl_48
//  698         {
//  699             result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_49
//  700         }
//  701         else
//  702         {
//  703             /* Get actual baudrate */
//  704             val = ((SDHC_SYSCTL & SDHC_SYSCTL_SDCLKFS_MASK) >> SDHC_SYSCTL_SDCLKFS_SHIFT) << 1;
??SDHC_ioctl_48:
        LDR.N    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+7
        ANDS     R10,R0,#0x1FE
//  705             val *= ((SDHC_SYSCTL & SDHC_SYSCTL_DVS_MASK) >> SDHC_SYSCTL_DVS_SHIFT) + 1;
        LDR.N    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+4
        ADDS     R0,R0,#+1
        MUL      R10,R0,R10
//  706             //*param32_ptr = (uint32)((esdhc_init_ptr->CLOCK_SPEED) / val);
//  707             *param32_ptr = (uint32)((core_clk_khz * 1000) / val);
        LDR.N    R0,??DataTable6_10
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        SDIV     R0,R0,R10
        STR      R0,[R5, #+0]
//  708         }
//  709         break;
??SDHC_ioctl_49:
        B.N      ??SDHC_ioctl_16
//  710     case IO_IOCTL_ESDHC_SET_BAUDRATE:
//  711         if (NULL == param32_ptr)
??SDHC_ioctl_10:
        CMP      R5,#+0
        BNE.N    ??SDHC_ioctl_50
//  712         {
//  713             result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_51
//  714         }
//  715         else if (0 == (*param32_ptr))
??SDHC_ioctl_50:
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_52
//  716         {
//  717             result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_51
//  718         }
//  719         else
//  720         {
//  721             if (! SDHC_is_running())
??SDHC_ioctl_52:
        BL       SDHC_is_running
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_53
//  722             {
//  723                 /* De-Init GPIO */
//  724                 PORTE_PCR(0) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D1  */
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_11  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  725                 PORTE_PCR(1) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D0  */
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_12  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  726                 PORTE_PCR(2) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          /* ESDHC.CLK */
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_13  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  727                 PORTE_PCR(3) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.CMD */
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_14  ;; 0x4004d00c
        STR      R0,[R1, #+0]
//  728                 PORTE_PCR(4) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D3  */
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_15  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  729                 PORTE_PCR(5) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D2  */
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_16  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  730 
//  731                 /* Set closest baudrate */
//  732                 //SDHC_set_baudrate (esdhc_init_ptr->CLOCK_SPEED, *param32_ptr);
//  733                 SDHC_set_baudrate (core_clk_khz * 1000, *param32_ptr);
        LDR      R1,[R5, #+0]
        LDR.N    R0,??DataTable6_10
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       SDHC_set_baudrate
//  734 
//  735                 /* Init GPIO again */
//  736                 PORTE_PCR(0) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D1  */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_11  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  737                 PORTE_PCR(1) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D0  */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_12  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  738                 PORTE_PCR(2) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          /* ESDHC.CLK */
        MOV      R0,#+1088
        LDR.N    R1,??DataTable6_13  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  739                 PORTE_PCR(3) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.CMD */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_14  ;; 0x4004d00c
        STR      R0,[R1, #+0]
//  740                 PORTE_PCR(4) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D3  */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_15  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  741                 PORTE_PCR(5) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* ESDHC.D2  */
        MOVW     R0,#+1091
        LDR.N    R1,??DataTable6_16  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  742 
//  743                 /* Enable clock gate to SDHC module */
//  744                 SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
        LDR.N    R0,??DataTable6_17  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable6_17  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??SDHC_ioctl_51
//  745             }
//  746             else
//  747             {
//  748                 result = IO_ERROR_DEVICE_BUSY;
??SDHC_ioctl_53:
        MOVW     R11,#+2570
//  749             }
//  750         }
//  751         break;
??SDHC_ioctl_51:
        B.N      ??SDHC_ioctl_16
//  752     case IO_IOCTL_ESDHC_GET_BLOCK_SIZE:
//  753         if (NULL == param32_ptr)
??SDHC_ioctl_13:
        CMP      R5,#+0
        BNE.N    ??SDHC_ioctl_54
//  754         {
//  755             result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_55
//  756         }
//  757         else
//  758         {
//  759             /* Get actual ESDHC block size */
//  760             *param32_ptr = (SDHC_BLKATTR & SDHC_BLKATTR_BLKSIZE_MASK) >> SDHC_BLKATTR_BLKSIZE_SHIFT;
??SDHC_ioctl_54:
        LDR.N    R0,??DataTable6_6  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19       ;; ZeroExtS R0,R0,#+19,#+19
        LSRS     R0,R0,#+19
        STR      R0,[R5, #+0]
//  761         }
//  762         break;
??SDHC_ioctl_55:
        B.N      ??SDHC_ioctl_16
//  763     case IO_IOCTL_ESDHC_SET_BLOCK_SIZE:
//  764         if (NULL == param32_ptr)
??SDHC_ioctl_14:
        CMP      R5,#+0
        BNE.N    ??SDHC_ioctl_56
//  765         {
//  766             result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_57
//  767         }
//  768         else
//  769         {
//  770             /* Set actual ESDHC block size */
//  771             if (! SDHC_is_running())
??SDHC_ioctl_56:
        BL       SDHC_is_running
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_58
//  772             {
//  773                 if (*param32_ptr > 0x0FFF)
        LDR      R0,[R5, #+0]
        CMP      R0,#+4096
        BCC.N    ??SDHC_ioctl_59
//  774                 {
//  775                     result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_57
//  776                 }
//  777                 else
//  778                 {
//  779                     SDHC_BLKATTR &= (~ SDHC_BLKATTR_BLKSIZE_MASK);
??SDHC_ioctl_59:
        LDR.N    R0,??DataTable6_6  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+13
        LSLS     R0,R0,#+13
        LDR.N    R1,??DataTable6_6  ;; 0x400b1004
        STR      R0,[R1, #+0]
//  780                     SDHC_BLKATTR |= SDHC_BLKATTR_BLKSIZE(*param32_ptr);
        LDR.N    R0,??DataTable6_6  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        LDR      R1,[R5, #+0]
        LSLS     R1,R1,#+19       ;; ZeroExtS R1,R1,#+19,#+19
        LSRS     R1,R1,#+19
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_6  ;; 0x400b1004
        STR      R0,[R1, #+0]
        B.N      ??SDHC_ioctl_57
//  781                 }
//  782             }
//  783             else
//  784             {
//  785                 result = IO_ERROR_DEVICE_BUSY;
??SDHC_ioctl_58:
        MOVW     R11,#+2570
//  786             }
//  787         }
//  788         break;
??SDHC_ioctl_57:
        B.N      ??SDHC_ioctl_16
//  789     case IO_IOCTL_ESDHC_GET_BUS_WIDTH:
//  790         if (NULL == param32_ptr)
??SDHC_ioctl_11:
        CMP      R5,#+0
        BNE.N    ??SDHC_ioctl_60
//  791         {
//  792             result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_61
//  793         }
//  794         else
//  795         {
//  796             /* Get actual ESDHC bus width */
//  797             val = (SDHC_PROCTL & SDHC_PROCTL_DTW_MASK) >> SDHC_PROCTL_DTW_SHIFT;
??SDHC_ioctl_60:
        LDR.N    R0,??DataTable6_7  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        UBFX     R10,R0,#+1,#+2
//  798             if (ESDHC_PROCTL_DTW_1BIT == val)
        CMP      R10,#+0
        BNE.N    ??SDHC_ioctl_62
//  799             {
//  800                 *param32_ptr = ESDHC_BUS_WIDTH_1BIT;
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
        B.N      ??SDHC_ioctl_61
//  801             }
//  802             else if (ESDHC_PROCTL_DTW_4BIT == val)
??SDHC_ioctl_62:
        CMP      R10,#+1
        BNE.N    ??SDHC_ioctl_63
//  803             {
//  804                 *param32_ptr = ESDHC_BUS_WIDTH_4BIT;
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
        B.N      ??SDHC_ioctl_61
//  805             }
//  806             else if (ESDHC_PROCTL_DTW_8BIT == val)
??SDHC_ioctl_63:
        CMP      R10,#+16
        BNE.N    ??SDHC_ioctl_64
//  807             {
//  808                 *param32_ptr = ESDHC_BUS_WIDTH_8BIT;
        MOVS     R0,#+2
        STR      R0,[R5, #+0]
        B.N      ??SDHC_ioctl_61
//  809             }
//  810             else
//  811             {
//  812                 result = ESDHC_ERROR_INVALID_BUS_WIDTH;
??SDHC_ioctl_64:
        MOVS     R11,#+5
//  813             }
//  814         }
//  815         break;
??SDHC_ioctl_61:
        B.N      ??SDHC_ioctl_16
//  816     case IO_IOCTL_ESDHC_SET_BUS_WIDTH:
//  817         if (NULL == param32_ptr)
??SDHC_ioctl_12:
        CMP      R5,#+0
        BNE.N    ??SDHC_ioctl_65
//  818         {
//  819             result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_66
//  820         }
//  821         else
//  822         {
//  823             /* Set actual ESDHC bus width */
//  824             if (! SDHC_is_running())
??SDHC_ioctl_65:
        BL       SDHC_is_running
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_67
//  825             {
//  826                 if (ESDHC_BUS_WIDTH_1BIT == *param32_ptr)
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_68
//  827                 {
//  828                     SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.N    R0,??DataTable6_7  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.N    R1,??DataTable6_7  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  829                     SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_1BIT);
        LDR.N    R0,??DataTable6_7  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_7  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??SDHC_ioctl_66
//  830                 }
//  831                 else if (ESDHC_BUS_WIDTH_4BIT == *param32_ptr)
??SDHC_ioctl_68:
        LDR      R0,[R5, #+0]
        CMP      R0,#+1
        BNE.N    ??SDHC_ioctl_69
//  832                 {
//  833                     SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.N    R0,??DataTable6_7  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.N    R1,??DataTable6_7  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  834                     SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_4BIT);
        LDR.N    R0,??DataTable6_7  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable6_7  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??SDHC_ioctl_66
//  835                 }
//  836                 else if (ESDHC_BUS_WIDTH_8BIT == *param32_ptr)
??SDHC_ioctl_69:
        LDR      R0,[R5, #+0]
        CMP      R0,#+2
        BNE.N    ??SDHC_ioctl_70
//  837                 {
//  838                     SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.N    R0,??DataTable6_7  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.N    R1,??DataTable6_7  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  839                     SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_8BIT);
        LDR.N    R0,??DataTable6_7  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_7  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??SDHC_ioctl_66
//  840                 }
//  841                 else
//  842                 {
//  843                     result = ESDHC_ERROR_INVALID_BUS_WIDTH;
??SDHC_ioctl_70:
        MOVS     R11,#+5
        B.N      ??SDHC_ioctl_66
//  844                 }
//  845             }
//  846             else
//  847             {
//  848                 result = IO_ERROR_DEVICE_BUSY;
??SDHC_ioctl_67:
        MOVW     R11,#+2570
//  849             }
//  850         }
//  851         break;
??SDHC_ioctl_66:
        B.N      ??SDHC_ioctl_16
//  852     case IO_IOCTL_ESDHC_GET_CARD:
//  853         if (NULL == param32_ptr)
??SDHC_ioctl_8:
        CMP      R5,#+0
        BNE.N    ??SDHC_ioctl_71
//  854         {
//  855             result = BRTOS_INVALID_PARAMETER;
        MOVS     R11,#+12
        B.N      ??SDHC_ioctl_72
//  856         }
//  857         else
//  858         {
//  859             /* 80 clocks to update levels */
//  860             SDHC_SYSCTL |= SDHC_SYSCTL_INITA_MASK;
??SDHC_ioctl_71:
        LDR.N    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable6_1  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  861             while (SDHC_SYSCTL & SDHC_SYSCTL_INITA_MASK)
??SDHC_ioctl_73:
        LDR.N    R0,??DataTable6_1  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??SDHC_ioctl_73
//  862                 { };
//  863 
//  864             /* Update and return actual card status */
//  865             if (SDHC_IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
        LDR.N    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SDHC_ioctl_74
//  866             {
//  867                 SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
        LDR.N    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  868                 esdhc_info_ptr->CARD = ESDHC_CARD_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  869             }
//  870             if (SDHC_PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
??SDHC_ioctl_74:
        LDR.N    R0,??DataTable6_2  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??SDHC_ioctl_75
//  871             {
//  872                 if (ESDHC_CARD_NONE == esdhc_info_ptr->CARD)
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_76
//  873                 {
//  874                     esdhc_info_ptr->CARD = ESDHC_CARD_UNKNOWN;
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??SDHC_ioctl_76
//  875                 }
//  876             }
//  877             else
//  878             {
//  879                 esdhc_info_ptr->CARD = ESDHC_CARD_NONE;
??SDHC_ioctl_75:
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  880             }
//  881             *param32_ptr = esdhc_info_ptr->CARD;
??SDHC_ioctl_76:
        LDR      R0,[R4, #+0]
        STR      R0,[R5, #+0]
//  882         }
//  883         break;
??SDHC_ioctl_72:
        B.N      ??SDHC_ioctl_16
//  884     case IO_IOCTL_DEVICE_IDENTIFY:
//  885         /* Get ESDHC device parameters */
//  886         param32_ptr[IO_IOCTL_ID_PHY_ELEMENT]  = IO_DEV_TYPE_PHYS_ESDHC;
??SDHC_ioctl_5:
        MOVS     R0,#+28
        STR      R0,[R5, #+0]
//  887         param32_ptr[IO_IOCTL_ID_LOG_ELEMENT]  = IO_DEV_TYPE_LOGICAL_MFS;
        MOVS     R0,#+4
        STR      R0,[R5, #+4]
//  888         param32_ptr[IO_IOCTL_ID_ATTR_ELEMENT] = IO_ESDHC_ATTRIBS;
        MOV      R0,#+632
        STR      R0,[R5, #+8]
//  889         /*
//  890         if (esdhc_fd_ptr->FLAGS & IO_O_RDONLY)
//  891         {
//  892             param32_ptr[IO_IOCTL_ID_ATTR_ELEMENT] &= (~ IO_DEV_ATTR_WRITE);
//  893         }
//  894         */
//  895         break;
        B.N      ??SDHC_ioctl_16
//  896     case IO_IOCTL_FLUSH_OUTPUT:
//  897         /* Wait for transfer complete */
//  898         SDHC_status_wait (SDHC_IRQSTAT_TC_MASK);
??SDHC_ioctl_4:
        MOVS     R0,#+2
        BL       SDHC_status_wait
//  899         if (SDHC_IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.N    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??SDHC_ioctl_77
//  900         {
//  901             SDHC_IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK;
        LDR.N    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700000
        LDR.N    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  902             result = ESDHC_ERROR_DATA_TRANSFER;
        MOVS     R11,#+4
//  903         }
//  904         SDHC_IRQSTAT |= SDHC_IRQSTAT_TC_MASK | SDHC_IRQSTAT_BRR_MASK | SDHC_IRQSTAT_BWR_MASK;
??SDHC_ioctl_77:
        LDR.N    R0,??DataTable6_3  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x32
        LDR.N    R1,??DataTable6_3  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  905         break;
        B.N      ??SDHC_ioctl_16
//  906     default:
//  907         result = IO_ERROR_INVALID_IOCTL_CMD;
??SDHC_ioctl_15:
        MOVW     R11,#+2569
//  908         break;
//  909     }
//  910     return result;
??SDHC_ioctl_16:
        MOV      R0,R11
??SDHC_ioctl_1:
        ADD      SP,SP,#+36
        POP      {R4-R11,PC}      ;; return
//  911 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     periph_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x400b102c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x400b1024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x400b1030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x1008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x400b10c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x400b1004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x400b1028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x400b1044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x895440

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     0x7f00b3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     0x400b1034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     ESDHC_COMMAND_XFERTYP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     0x400b1008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     0x400b1000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_23:
        DC32     0x400b100c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_24:
        DC32     0xe0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_25:
        DC32     0x400b1010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_26:
        DC32     0x400b1014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_27:
        DC32     0x400b1018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_28:
        DC32     0x400b101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_29:
        DC32     SDHC_Info

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_30:
        DC32     SDHC_Device

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_31:
        DC32     K60_SDHC0_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_32:
        DC32     0x40300000

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
//   548 bytes in section .bss
//   264 bytes in section .rodata
// 2 646 bytes in section .text
// 
// 2 646 bytes of CODE  memory
//   264 bytes of CONST memory
//   548 bytes of DATA  memory
//
//Errors: none
//Warnings: none
