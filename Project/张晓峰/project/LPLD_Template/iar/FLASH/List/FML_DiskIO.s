///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:46:25
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\FML_DiskIO.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\FML_DiskIO.c" -D
//        IAR -D LPLD_K60 -lCN
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\List\FML_DiskIO.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN K60_SDHC0_init
        EXTERN SDHC_Card
        EXTERN SDHC_Device
        EXTERN SDHC_Info
        EXTERN SDHC_Init
        EXTERN SDHC_ioctl

        PUBLIC disk_initialize
        PUBLIC disk_ioctl
        PUBLIC disk_read
        PUBLIC disk_status
        PUBLIC disk_write
        PUBLIC get_fattime

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\FML_DiskIO.c
//    1 /*
//    2  * --------------"拉普兰德K60底层库"-----------------
//    3  *
//    4  * 测试硬件平台:LPLD_K60 Card
//    5  * 版权所有:北京拉普兰德电子技术有限公司
//    6  * 网络销售:http://laplenden.taobao.com
//    7  * 公司门户:http://www.lpld.cn
//    8  *
//    9  * 文件名: FML_DiskIO.c
//   10  * 用途: 磁盘底层模块相关函数，需调用SDHC底层驱动
//   11  * 最后修改日期: 20130214
//   12  *
//   13  * 开发者使用协议:
//   14  *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
//   15  *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
//   16  *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   17  */
//   18 
//   19 #include "common.h"
//   20 #include "HAL_SDHC.h"
//   21 #include "FML_DiskIO.h"
//   22 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   23 static volatile DSTATUS   Stat             = STA_NOINIT;	/* Disk status */
Stat:
        DATA
        DC8 1
//   24 static volatile uint32	  Timer            = 0;           	/* Read/Write timer */
//   25 
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 DSTATUS disk_initialize (unsigned char drv)
//   28 {
disk_initialize:
        PUSH     {R4,LR}
        SUB      SP,SP,#+40
//   29     uint32              		param, c_size, c_size_mult, read_bl_len;
//   30     ESDHC_COMMAND_STRUCT 		command;
//   31     ESDHC_DEVICE_STRUCT_PTR     esdhc_device_ptr = &SDHC_Device;
        LDR.W    R1,??DataTable6
//   32     SDCARD_STRUCT_PTR    		sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;
        LDR.W    R4,??DataTable6_1
//   33     sdcard_ptr->INIT = 			&SDHC_Init;
        LDR.W    R2,??DataTable6_2
        STR      R2,[R4, #+0]
//   34 
//   35     if (drv) return STA_NOINIT;			/* Supports only single drive */
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_0
        MOVS     R0,#+1
        B.N      ??disk_initialize_1
//   36     if (Stat & STA_NODISK) return Stat;	/* No card in the socket */
??disk_initialize_0:
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??disk_initialize_2
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        B.N      ??disk_initialize_1
//   37     if ((Stat & 0x03) == 0)	return 0;
??disk_initialize_2:
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        MOVS     R2,#+3
        TST      R0,R2
        BNE.N    ??disk_initialize_3
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//   38 
//   39     /* Check parameters */
//   40     if ((NULL == sdcard_ptr) || (NULL == sdcard_ptr->INIT))
??disk_initialize_3:
        CMP      R4,#+0
        BEQ.N    ??disk_initialize_4
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??disk_initialize_5
//   41     {
//   42         return FALSE;
??disk_initialize_4:
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//   43     }
//   44 
//   45     esdhc_device_ptr->INIT = &K60_SDHC0_init;
??disk_initialize_5:
        LDR.W    R0,??DataTable6_4
        STR      R0,[R1, #+0]
//   46     // Indicates one SDHC open
//   47     esdhc_device_ptr->COUNT = 1;
        MOVS     R0,#+1
        STR      R0,[R1, #+4]
//   48 
//   49     sdcard_ptr->SD_TIMEOUT = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
//   50     sdcard_ptr->NUM_BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
//   51     sdcard_ptr->ADDRESS = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
//   52     sdcard_ptr->SDHC = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//   53     sdcard_ptr->VERSION2 = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+13]
//   54 
//   55     /* Enable clock gate to SDHC module */
//   56     SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
        LDR.W    R0,??DataTable6_5  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable6_5  ;; 0x40048030
        STR      R0,[R1, #+0]
//   57 
//   58     /* Initialize and detect card */
//   59     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_INIT, NULL))
        MOVS     R1,#+0
        MOVW     R0,#+4865
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_6
//   60     {
//   61         return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//   62     }
//   63 
//   64     /* SDHC check */
//   65     param = 0;
??disk_initialize_6:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//   66     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_GET_CARD, &param))
        ADD      R1,SP,#+0
        MOVW     R0,#+4867
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_7
//   67     {
//   68         return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//   69     }
//   70     if ((ESDHC_CARD_SD == param) || (ESDHC_CARD_SDHC == param) || (ESDHC_CARD_SDCOMBO == param) || (ESDHC_CARD_SDHCCOMBO == param))
??disk_initialize_7:
        LDR      R0,[SP, #+0]
        CMP      R0,#+2
        BEQ.N    ??disk_initialize_8
        LDR      R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??disk_initialize_8
        LDR      R0,[SP, #+0]
        CMP      R0,#+5
        BEQ.N    ??disk_initialize_8
        LDR      R0,[SP, #+0]
        CMP      R0,#+6
        BNE.N    ??disk_initialize_9
//   71     {
//   72         if ((ESDHC_CARD_SDHC == param) || (ESDHC_CARD_SDHCCOMBO == param))
??disk_initialize_8:
        LDR      R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??disk_initialize_10
        LDR      R0,[SP, #+0]
        CMP      R0,#+6
        BNE.N    ??disk_initialize_11
//   73         {
//   74             sdcard_ptr->SDHC = TRUE;
??disk_initialize_10:
        MOVS     R0,#+1
        STRB     R0,[R4, #+12]
//   75         }
//   76     }
//   77     else
//   78     {
//   79         return FALSE;
//   80     }
//   81 
//   82     /* Card identify */
//   83     command.COMMAND = ESDHC_CMD2;
??disk_initialize_11:
        MOVS     R0,#+2
        STRB     R0,[SP, #+4]
//   84     command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   85     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   86     command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//   87     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   88     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_initialize_12
//   89     {
//   90         return FALSE;
//   91     }
//   92 
//   93     /* Get card address */
//   94     command.COMMAND = ESDHC_CMD3;
        MOVS     R0,#+3
        STRB     R0,[SP, #+4]
//   95     command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   96     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   97     command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//   98     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   99     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_13
//  100     {
//  101         return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//  102     }
??disk_initialize_9:
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
??disk_initialize_12:
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//  103     sdcard_ptr->ADDRESS = command.RESPONSE[0] & 0xFFFF0000;
??disk_initialize_13:
        LDR      R0,[SP, #+20]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        STR      R0,[R4, #+16]
//  104 
//  105     /* Get card parameters */
//  106     command.COMMAND = ESDHC_CMD9;
        MOVS     R0,#+9
        STRB     R0,[SP, #+4]
//  107     command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  108     command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R4, #+16]
        STR      R0,[SP, #+8]
//  109     command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  110     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  111     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_14
//  112     {
//  113         return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//  114     }
//  115     if (0 == (command.RESPONSE[3] & 0x00C00000))
??disk_initialize_14:
        LDR      R0,[SP, #+32]
        TST      R0,#0xC00000
        BNE.N    ??disk_initialize_15
//  116     {
//  117         read_bl_len = (command.RESPONSE[2] >> 8) & 0x0F;
        LDR      R0,[SP, #+28]
        UBFX     R2,R0,#+8,#+4
//  118         c_size = command.RESPONSE[2] & 0x03;
        LDRB     R0,[SP, #+28]
        ANDS     R0,R0,#0x3
//  119         c_size = (c_size << 10) | (command.RESPONSE[1] >> 22);
        LDR      R1,[SP, #+24]
        LSRS     R1,R1,#+22
        ORRS     R0,R1,R0, LSL #+10
//  120         c_size_mult = (command.RESPONSE[1] >> 7) & 0x07;
        LDR      R1,[SP, #+24]
        UBFX     R1,R1,#+7,#+3
//  121         sdcard_ptr->NUM_BLOCKS = (c_size + 1) * (1 << (c_size_mult + 2)) * (1 << (read_bl_len - 9));
        ADDS     R0,R0,#+1
        MOVS     R3,#+1
        ADDS     R1,R1,#+2
        LSLS     R1,R3,R1
        MULS     R0,R1,R0
        MOVS     R1,#+1
        SUBS     R2,R2,#+9
        LSLS     R1,R1,R2
        MULS     R0,R1,R0
        STR      R0,[R4, #+8]
        B.N      ??disk_initialize_16
//  122     }
//  123     else
//  124     {
//  125         sdcard_ptr->VERSION2 = TRUE;
??disk_initialize_15:
        MOVS     R0,#+1
        STRB     R0,[R4, #+13]
//  126         c_size = (command.RESPONSE[1] >> 8) & 0x003FFFFF;
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+8,#+22
//  127         sdcard_ptr->NUM_BLOCKS = (c_size + 1) << 10;
        ADDS     R0,R0,#+1
        LSLS     R0,R0,#+10
        STR      R0,[R4, #+8]
//  128     }
//  129 
//  130     /* Select card */
//  131     command.COMMAND = ESDHC_CMD7;
??disk_initialize_16:
        MOVS     R0,#+7
        STRB     R0,[SP, #+4]
//  132     command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  133     command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R4, #+16]
        STR      R0,[SP, #+8]
//  134     command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  135     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  136     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_17
//  137     {
//  138         return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//  139     }
//  140 
//  141     /* Set block size */
//  142     command.COMMAND = ESDHC_CMD16;
??disk_initialize_17:
        MOVS     R0,#+16
        STRB     R0,[SP, #+4]
//  143     command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  144     command.ARGUMENT = IO_SDCARD_BLOCK_SIZE;
        MOV      R0,#+512
        STR      R0,[SP, #+8]
//  145     command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  146     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  147     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_18
//  148     {
//  149         return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//  150     }
//  151 
//  152     if (ESDHC_BUS_WIDTH_4BIT == sdcard_ptr->INIT->SIGNALS)
??disk_initialize_18:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??disk_initialize_19
//  153     {
//  154         /* Application specific command */
//  155         command.COMMAND = ESDHC_CMD55;
        MOVS     R0,#+55
        STRB     R0,[SP, #+4]
//  156         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  157         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R4, #+16]
        STR      R0,[SP, #+8]
//  158         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  159         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  160         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_20
//  161         {
//  162             return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//  163         }
//  164 
//  165         /* Set bus width == 4 */
//  166         command.COMMAND = ESDHC_ACMD6;
??disk_initialize_20:
        MOVS     R0,#+70
        STRB     R0,[SP, #+4]
//  167         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  168         command.ARGUMENT = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
//  169         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  170         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  171         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_21
//  172         {
//  173             return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//  174         }
//  175 
//  176         param = ESDHC_BUS_WIDTH_4BIT;
??disk_initialize_21:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
//  177         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SET_BUS_WIDTH, &param))
        ADD      R1,SP,#+0
        MOVW     R0,#+4871
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_19
//  178         {
//  179             return FALSE;
        MOVS     R0,#+0
        B.N      ??disk_initialize_1
//  180         }
//  181     }
//  182 
//  183     Stat &= ~STA_NOINIT;		/* Clear STA_NOINIT */
??disk_initialize_19:
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.W    R1,??DataTable6_3
        STRB     R0,[R1, #+0]
//  184 
//  185     return (Stat & 0x03);
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3
??disk_initialize_1:
        ADD      SP,SP,#+40
        POP      {R4,PC}          ;; return
//  186 }
//  187 
//  188 
//  189 
//  190 /*-----------------------------------------------------------------------*/
//  191 /* Receive a data packet from MMC                                        */
//  192 /*-----------------------------------------------------------------------*/
//  193 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 static int rcvr_datablock (
//  195     uint8   *buff,			/* Data buffer to store received data */
//  196     uint32  btr				/* Byte count (must be multiple of 4) */
//  197 )
//  198 {
rcvr_datablock:
        PUSH     {R4}
//  199     uint32	bytes, i, j;
//  200     uint32	*ptr = (uint32 *)buff;
//  201     ESDHC_INFO_STRUCT_PTR   esdhc_info_ptr;
//  202 
//  203     /* Check parameters */
//  204     esdhc_info_ptr = (ESDHC_INFO_STRUCT_PTR)&SDHC_Info;
        LDR.W    R2,??DataTable6_6
//  205 
//  206     /* Check parameters */
//  207     if (NULL == esdhc_info_ptr)
        CMP      R2,#+0
        BNE.N    ??rcvr_datablock_0
//  208     {
//  209         return 0;
        MOVS     R0,#+0
        B.N      ??rcvr_datablock_1
//  210     }
//  211 
//  212     /* Workaround for random bit polling failures - not suitable for IO cards */
//  213     if ((esdhc_info_ptr->CARD == ESDHC_CARD_SD) || (esdhc_info_ptr->CARD == ESDHC_CARD_SDHC) || (esdhc_info_ptr->CARD == ESDHC_CARD_MMC) || (esdhc_info_ptr->CARD == ESDHC_CARD_CEATA))
??rcvr_datablock_0:
        LDR      R3,[R2, #+0]
        CMP      R3,#+2
        BEQ.N    ??rcvr_datablock_2
        LDR      R3,[R2, #+0]
        CMP      R3,#+3
        BEQ.N    ??rcvr_datablock_2
        LDR      R3,[R2, #+0]
        CMP      R3,#+7
        BEQ.N    ??rcvr_datablock_2
        LDR      R2,[R2, #+0]
        CMP      R2,#+8
        BNE.N    ??rcvr_datablock_3
//  214     {
//  215         while (SDHC_PRSSTAT & SDHC_PRSSTAT_DLA_MASK) {};
??rcvr_datablock_2:
        LDR.W    R2,??DataTable6_7  ;; 0x400b1024
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+29
        BMI.N    ??rcvr_datablock_2
//  216     }
//  217 
//  218     /* Read data in 4 byte counts */
//  219     bytes = btr;
??rcvr_datablock_3:
        B.N      ??rcvr_datablock_4
//  220     while (bytes)
//  221     {
//  222         i = bytes > 512 ? 512 : bytes;
//  223         for (j = (i + 3) >> 2; j != 0; j--)
//  224         {
//  225             if (SDHC_IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
//  226             {
//  227                 SDHC_IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
//  228                 return 0;
//  229             }
//  230 
//  231             while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_BREN_MASK)) {};
//  232 
//  233 #if BRTOS_ENDIAN == BRTOS_LITTLE_ENDIAN
//  234             *ptr++ = SDHC_DATPORT;
//  235 #else
//  236             *ptr++ = _psp_swap4byte (SDHC_DATPORT);
//  237 #endif
//  238         }
//  239         bytes -= i;
??rcvr_datablock_5:
        SUBS     R1,R1,R2
??rcvr_datablock_4:
        CMP      R1,#+0
        BEQ.N    ??rcvr_datablock_6
        CMP      R1,#+512
        BLS.N    ??rcvr_datablock_7
        MOV      R2,#+512
        B.N      ??rcvr_datablock_8
??rcvr_datablock_7:
        MOVS     R2,R1
??rcvr_datablock_8:
        ADDS     R3,R2,#+3
        LSRS     R3,R3,#+2
        B.N      ??rcvr_datablock_9
??rcvr_datablock_10:
        LDR.W    R4,??DataTable6_7  ;; 0x400b1024
        LDR      R4,[R4, #+0]
        LSLS     R4,R4,#+20
        BPL.N    ??rcvr_datablock_10
        LDR.N    R4,??DataTable6_8  ;; 0x400b1020
        LDR      R4,[R4, #+0]
        STR      R4,[R0, #+0]
        ADDS     R0,R0,#+4
        SUBS     R3,R3,#+1
??rcvr_datablock_9:
        CMP      R3,#+0
        BEQ.N    ??rcvr_datablock_5
        LDR.N    R4,??DataTable6_9  ;; 0x400b1030
        LDR      R4,[R4, #+0]
        TST      R4,#0x700000
        BEQ.N    ??rcvr_datablock_10
        LDR.N    R0,??DataTable6_9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable6_9  ;; 0x400b1030
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        B.N      ??rcvr_datablock_1
//  240     }
//  241 
//  242     return 1;						/* Return with success */
??rcvr_datablock_6:
        MOVS     R0,#+1
??rcvr_datablock_1:
        POP      {R4}
        BX       LR               ;; return
//  243 }
//  244 
//  245 /*-----------------------------------------------------------------------*/
//  246 /* Read Sector(s)                                                        */
//  247 /*-----------------------------------------------------------------------*/
//  248 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 DRESULT disk_read (  //读磁盘扇区
//  250     uint8  drv,			/* Physical drive nmuber (0) */
//  251     uint8  *buff,		/* Pointer to the data buffer to store read data */
//  252     uint32 sector,		/* Start sector number (LBA) */
//  253     uint8  count			/* Sector count (1..255) */
//  254 )
//  255 {
disk_read:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+36
        MOVS     R4,R1
        MOVS     R5,R3
//  256     ESDHC_COMMAND_STRUCT command;
//  257     SDCARD_STRUCT_PTR    sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;
        LDR.N    R1,??DataTable6_1
//  258 
//  259     if (drv || !count) return RES_PARERR;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??disk_read_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??disk_read_1
??disk_read_0:
        MOVS     R0,#+4
        B.N      ??disk_read_2
//  260     if (Stat & STA_NOINIT) return RES_NOTRDY;
??disk_read_1:
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??disk_read_3
        MOVS     R0,#+3
        B.N      ??disk_read_2
//  261 
//  262     /* Check parameters */
//  263     if ((NULL == buff))
??disk_read_3:
        CMP      R4,#+0
        BNE.N    ??disk_read_4
//  264     {
//  265         return RES_PARERR;//参数无效
        MOVS     R0,#+4
        B.N      ??disk_read_2
//  266     }
//  267 
//  268     if (!sdcard_ptr->SDHC)
??disk_read_4:
        LDRB     R0,[R1, #+12]
        CMP      R0,#+0
        BNE.N    ??disk_read_5
//  269     {
//  270         sector *= 512;	/* Convert to byte address if needed */
        MOV      R0,#+512
        MULS     R2,R0,R2
//  271     }
//  272 
//  273     if (count == 1)	/* Single block read */
??disk_read_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??disk_read_6
//  274     {
//  275         command.COMMAND = ESDHC_CMD17;
        MOVS     R0,#+17
        STRB     R0,[SP, #+0]
//  276         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  277         command.ARGUMENT = sector;
        STR      R2,[SP, #+4]
//  278         command.READ = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+8]
//  279         command.BLOCKS = count;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+12]
//  280 
//  281         if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_read_7
//  282         {
//  283             if (rcvr_datablock(buff, 512))
        MOV      R1,#+512
        MOVS     R0,R4
        BL       rcvr_datablock
        CMP      R0,#+0
        BEQ.N    ??disk_read_7
//  284             {
//  285                 count = 0;
        MOVS     R5,#+0
        B.N      ??disk_read_7
//  286             }
//  287         }
//  288     }
//  289     else
//  290     {
//  291         /* Multiple block read */
//  292         // N鉶 sei se ?17 ou 18 no ESDHC
//  293         command.COMMAND = ESDHC_CMD18;
??disk_read_6:
        MOVS     R0,#+18
        STRB     R0,[SP, #+0]
//  294         //command.COMMAND = ESDHC_CMD17;
//  295         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  296         command.ARGUMENT = sector;
        STR      R2,[SP, #+4]
//  297         command.READ = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+8]
//  298         command.BLOCKS = count;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+12]
//  299 
//  300         if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_read_7
//  301         {
//  302             if (rcvr_datablock(buff, 512 * count))
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOV      R0,#+512
        MUL      R1,R0,R5
        MOVS     R0,R4
        BL       rcvr_datablock
        CMP      R0,#+0
        BEQ.N    ??disk_read_7
//  303             {
//  304                 count = 0;
        MOVS     R5,#+0
//  305             }
//  306         }
//  307     }
//  308 
//  309     return count ? RES_ERROR : RES_OK;
??disk_read_7:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??disk_read_8
        MOVS     R0,#+1
        B.N      ??disk_read_9
??disk_read_8:
        MOVS     R0,#+0
??disk_read_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??disk_read_2:
        ADD      SP,SP,#+36
        POP      {R4,R5,PC}       ;; return
//  310 }
//  311 
//  312 /*-----------------------------------------------------------------------*/
//  313 /* Send a data packet to MMC                                             */
//  314 /*-----------------------------------------------------------------------*/
//  315 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  316 static int xmit_datablock (
//  317     const uint8 *buff,			/* 512 byte data block to be transmitted */
//  318     uint32 btr				/* Byte count (must be multiple of 4) */
//  319 )
//  320 {
xmit_datablock:
        PUSH     {R4}
//  321     uint32  bytes, i;
//  322     uint32	*ptr = (uint32 *)buff;
//  323 
//  324     /* Write data in 4 byte counts */
//  325     bytes = btr;
//  326     while (bytes)
??xmit_datablock_0:
        CMP      R1,#+0
        BEQ.N    ??xmit_datablock_1
//  327     {
//  328         i = bytes > 512 ? 512 : bytes;
        CMP      R1,#+512
        BLS.N    ??xmit_datablock_2
        MOV      R2,#+512
        B.N      ??xmit_datablock_3
??xmit_datablock_2:
        MOVS     R2,R1
//  329         bytes -= i;
??xmit_datablock_3:
        SUBS     R1,R1,R2
//  330         for (i = (i + 3) >> 2; i != 0; i--)
        ADDS     R2,R2,#+3
        LSRS     R2,R2,#+2
        B.N      ??xmit_datablock_4
//  331         {
//  332             if (SDHC_IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
//  333             {
//  334                 SDHC_IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
//  335                 return IO_ERROR;
//  336             }
//  337             while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_BWEN_MASK)) {};
??xmit_datablock_5:
        LDR.N    R3,??DataTable6_7  ;; 0x400b1024
        LDR      R3,[R3, #+0]
        LSLS     R3,R3,#+21
        BPL.N    ??xmit_datablock_5
//  338 
//  339 #if PSP_ENDIAN == BRTOS_LITTLE_ENDIAN
//  340             SDHC_DATPORT = *ptr++;
        LDR      R3,[R0, #+0]
        LDR.N    R4,??DataTable6_8  ;; 0x400b1020
        STR      R3,[R4, #+0]
        ADDS     R0,R0,#+4
        SUBS     R2,R2,#+1
??xmit_datablock_4:
        CMP      R2,#+0
        BEQ.N    ??xmit_datablock_0
        LDR.N    R3,??DataTable6_9  ;; 0x400b1030
        LDR      R3,[R3, #+0]
        TST      R3,#0x700000
        BEQ.N    ??xmit_datablock_5
        LDR.N    R0,??DataTable6_9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable6_9  ;; 0x400b1030
        STR      R0,[R1, #+0]
        MOVS     R0,#-1
        B.N      ??xmit_datablock_6
//  341 #else
//  342             SDHC_DATPORT = _psp_swap4byte (*ptr++);
//  343 #endif
//  344 
//  345         }
//  346     }
//  347 
//  348 
//  349     return 1;
??xmit_datablock_1:
        MOVS     R0,#+1
??xmit_datablock_6:
        POP      {R4}
        BX       LR               ;; return
//  350 }
//  351 
//  352 
//  353 
//  354 /*-----------------------------------------------------------------------*/
//  355 /* Write Sector(s)                                                        */
//  356 /*-----------------------------------------------------------------------*/
//  357 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  358 DRESULT disk_write (
//  359     uint8  drv,			/* Physical drive nmuber (0) */
//  360     const uint8  *buff,		/* Pointer to the data buffer to store read data */
//  361     uint32 sector,		/* Start sector number (LBA) */
//  362     uint8  count		/* Sector count (1..255) */
//  363 )
//  364 {
disk_write:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+32
        MOVS     R6,R1
        MOVS     R5,R3
//  365     ESDHC_COMMAND_STRUCT command;
//  366     SDCARD_STRUCT_PTR    sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;
        LDR.N    R4,??DataTable6_1
//  367 
//  368     if (drv || !count) return RES_PARERR;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??disk_write_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??disk_write_1
??disk_write_0:
        MOVS     R0,#+4
        B.N      ??disk_write_2
//  369     if (Stat & STA_NOINIT) return RES_NOTRDY;
??disk_write_1:
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??disk_write_3
        MOVS     R0,#+3
        B.N      ??disk_write_2
//  370     if (Stat & STA_PROTECT) return RES_WRPRT;
??disk_write_3:
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??disk_write_4
        MOVS     R0,#+2
        B.N      ??disk_write_2
//  371 
//  372     /* Check parameters */
//  373     if ((NULL == buff))
??disk_write_4:
        CMP      R6,#+0
        BNE.N    ??disk_write_5
//  374     {
//  375         return RES_PARERR;		// 参数无效
        MOVS     R0,#+4
        B.N      ??disk_write_2
//  376     }
//  377 
//  378     if (!sdcard_ptr->SDHC)
??disk_write_5:
        LDRB     R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??disk_write_6
//  379     {
//  380         sector *= 512;	/* Convert to byte address if needed */
        MOV      R0,#+512
        MULS     R2,R0,R2
//  381     }
//  382 
//  383     if (count == 1)	/* Single block write */
??disk_write_6:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??disk_write_7
//  384     {
//  385         command.COMMAND = ESDHC_CMD24;
        MOVS     R0,#+24
        STRB     R0,[SP, #+0]
//  386         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  387         command.ARGUMENT = sector;
        STR      R2,[SP, #+4]
//  388         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  389         command.BLOCKS = count;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+12]
//  390 
//  391         if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_write_8
//  392         {
//  393             if (xmit_datablock(buff, 512))
        MOV      R1,#+512
        MOVS     R0,R6
        BL       xmit_datablock
        CMP      R0,#+0
        BEQ.N    ??disk_write_8
//  394             {
//  395                 count = 0;
        MOVS     R5,#+0
        B.N      ??disk_write_8
//  396             }
//  397         }
//  398     }
//  399     else
//  400     {
//  401         //if (CardType & CT_SDC) send_cmd(ACMD23, count);
//  402         //if (send_cmd(CMD25, sector) == 0) {	/* WRITE_MULTIPLE_BLOCK */
//  403         command.COMMAND = ESDHC_CMD25;
??disk_write_7:
        MOVS     R0,#+25
        STRB     R0,[SP, #+0]
//  404         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  405         command.ARGUMENT = sector;
        STR      R2,[SP, #+4]
//  406         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  407         command.BLOCKS = count;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+12]
//  408 
//  409         if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_write_8
//  410         {
//  411             if (xmit_datablock(buff, 512 * count))
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOV      R0,#+512
        MUL      R1,R0,R5
        MOVS     R0,R6
        BL       xmit_datablock
        CMP      R0,#+0
        BEQ.N    ??disk_write_8
//  412             {
//  413                 count = 0;
        MOVS     R5,#+0
//  414             }
//  415         }
//  416     }
//  417 
//  418     /* Wait for card ready / transaction state */
//  419     do
//  420     {
//  421         command.COMMAND = ESDHC_CMD13;
??disk_write_8:
        MOVS     R0,#+13
        STRB     R0,[SP, #+0]
//  422         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  423         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R4, #+16]
        STR      R0,[SP, #+4]
//  424         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  425         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  426         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_write_9
//  427         {
//  428             return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_write_2
//  429         }
//  430 
//  431         /* Card status error check */
//  432         if (command.RESPONSE[0] & 0xFFD98008)
??disk_write_9:
        LDR      R0,[SP, #+16]
        LDR.N    R1,??DataTable6_10  ;; 0xffd98008
        TST      R0,R1
        BEQ.N    ??disk_write_10
//  433         {
//  434             return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_write_2
//  435         }
//  436     }
//  437     while (0x000000900 != (command.RESPONSE[0] & 0x00001F00));
??disk_write_10:
        LDR      R0,[SP, #+16]
        ANDS     R0,R0,#0x1F00
        CMP      R0,#+2304
        BNE.N    ??disk_write_8
//  438 
//  439     return count ? RES_ERROR : RES_OK;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??disk_write_11
        MOVS     R0,#+1
        B.N      ??disk_write_12
??disk_write_11:
        MOVS     R0,#+0
??disk_write_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??disk_write_2:
        ADD      SP,SP,#+32
        POP      {R4-R6,PC}       ;; return
//  440 }
//  441 
//  442 
//  443 /*-----------------------------------------------------------------------*/
//  444 /* Miscellaneous Functions                                               */
//  445 /*-----------------------------------------------------------------------*/
//  446 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  447 DRESULT disk_ioctl (
//  448     uint8 drv,		/* Physical drive nmuber (0) */
//  449     uint8 ctrl,		/* Control code */
//  450     void  *buff		/* Buffer to send/receive control data */
//  451 )
//  452 {
disk_ioctl:
        PUSH     {R4,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R2
//  453     DRESULT 			 res;
//  454     ESDHC_COMMAND_STRUCT command;
//  455     SDCARD_STRUCT_PTR	 sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;
        LDR.N    R2,??DataTable6_1
//  456 
//  457     if (drv) return RES_PARERR;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??disk_ioctl_0
        MOVS     R0,#+4
        B.N      ??disk_ioctl_1
//  458 
//  459     res = RES_ERROR;
??disk_ioctl_0:
        MOVS     R0,#+1
//  460 
//  461     if (Stat & STA_NOINIT) return RES_NOTRDY;
        LDR.N    R3,??DataTable6_3
        LDRB     R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BPL.N    ??disk_ioctl_2
        MOVS     R0,#+3
        B.N      ??disk_ioctl_1
//  462 
//  463     switch (ctrl)
??disk_ioctl_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??disk_ioctl_3
        CMP      R1,#+2
        BEQ.N    ??disk_ioctl_4
        BCC.N    ??disk_ioctl_5
        CMP      R1,#+3
        BEQ.N    ??disk_ioctl_6
        B.N      ??disk_ioctl_7
//  464     {
//  465     case CTRL_SYNC :		/* Make sure that no pending write process. Do not remove this or written sector might not left updated. */
//  466         res = RES_OK;
??disk_ioctl_3:
        MOVS     R0,#+0
//  467         break;
        B.N      ??disk_ioctl_8
//  468 
//  469     case GET_SECTOR_COUNT :	/* Get number of sectors on the disk (DWORD) */
//  470         *(unsigned long *)buff = sdcard_ptr->NUM_BLOCKS;
??disk_ioctl_5:
        LDR      R0,[R2, #+8]
        STR      R0,[R4, #+0]
//  471         res = RES_OK;
        MOVS     R0,#+0
//  472         break;
        B.N      ??disk_ioctl_8
//  473 
//  474     case GET_SECTOR_SIZE :	/* Get R/W sector size (WORD) */
//  475         *(unsigned short *)buff = 512;
??disk_ioctl_4:
        MOV      R0,#+512
        STRH     R0,[R4, #+0]
//  476         res = RES_OK;
        MOVS     R0,#+0
//  477         break;
        B.N      ??disk_ioctl_8
//  478 
//  479     case GET_BLOCK_SIZE :			/* Get erase block size in unit of sector (DWORD) */
//  480         // Implementar
//  481         command.COMMAND = ESDHC_CMD9;
??disk_ioctl_6:
        MOVS     R0,#+9
        STRB     R0,[SP, #+0]
//  482         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  483         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R2, #+16]
        STR      R0,[SP, #+4]
//  484         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  485         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  486         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVW     R0,#+4866
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_ioctl_9
//  487         {
//  488             return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_ioctl_1
//  489         }
//  490         if (0 == (command.RESPONSE[3] & 0x00C00000))
??disk_ioctl_9:
        LDR      R0,[SP, #+28]
        TST      R0,#0xC00000
        BNE.N    ??disk_ioctl_10
//  491         {
//  492             //SD V1
//  493             *(unsigned long *)buff = ((((command.RESPONSE[2] >> 18) & 0x7F) + 1) << (((command.RESPONSE[3] >> 8) & 0x03) - 1));
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+18,#+7
        ADDS     R0,R0,#+1
        LDR      R1,[SP, #+28]
        LSRS     R1,R1,#+8
        ANDS     R1,R1,#0x3
        SUBS     R1,R1,#+1
        LSLS     R0,R0,R1
        STR      R0,[R4, #+0]
//  494         }
//  495         else
//  496         {
//  497             //SD V2
//  498             // Implementar
//  499             //*(DWORD*)buff = (((command.RESPONSE[2] >> 18) & 0x7F) << (((command.RESPONSE[3] >> 8) & 0x03) - 1));
//  500         }
//  501         res = RES_OK;
??disk_ioctl_10:
        MOVS     R0,#+0
//  502         break;
        B.N      ??disk_ioctl_8
//  503 
//  504     default:
//  505         res = RES_PARERR;
??disk_ioctl_7:
        MOVS     R0,#+4
//  506     }
//  507 
//  508     return res;
??disk_ioctl_8:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??disk_ioctl_1:
        ADD      SP,SP,#+32
        POP      {R4,PC}          ;; return
//  509 }
//  510 
//  511 
//  512 
//  513 
//  514 /*-----------------------------------------------------------------------*/
//  515 /* Get Disk Status                                                       */
//  516 /*-----------------------------------------------------------------------*/
//  517 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  518 DSTATUS disk_status (
//  519     uint8 drv		/* Physical drive nmuber (0) */
//  520 )
//  521 {
//  522     if (drv) return STA_NOINIT;		/* Supports only single drive */
disk_status:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??disk_status_0
        MOVS     R0,#+1
        B.N      ??disk_status_1
//  523     return Stat;
??disk_status_0:
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
??disk_status_1:
        BX       LR               ;; return
//  524 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     SDHC_Device

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     SDHC_Card

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     SDHC_Init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     Stat

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     K60_SDHC0_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     SDHC_Info

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x400b1024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x400b1020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x400b1030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0xffd98008
//  525 
//  526 
//  527 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  528 DWORD  get_fattime (void)
//  529 {
//  530     return   0;
get_fattime:
        MOVS     R0,#+0
        BX       LR               ;; return
//  531 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  532 
//  533 
// 
//     1 byte  in section .data
// 1 582 bytes in section .text
// 
// 1 582 bytes of CODE memory
//     1 byte  of DATA memory
//
//Errors: none
//Warnings: none
