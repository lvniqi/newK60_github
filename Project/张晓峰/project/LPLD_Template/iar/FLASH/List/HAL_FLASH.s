///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:46:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_FLASH.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_FLASH.c" -D IAR
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\FLASH\List\HAL_FLASH.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN assert_failed

        PUBLIC flash_erase_sector
        PUBLIC flash_init
        PUBLIC flash_write
        PUBLIC flash_write_buf

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\HAL_FLASH.c
//    1 /*
//    2  * --------------"拉普兰德K60底层库"-----------------
//    3  *
//    4  * 测试硬件平台:LPLD_K60 Card
//    5  * 版权所有:北京拉普兰德电子技术有限公司
//    6  * 网络销售:http://laplenden.taobao.com
//    7  * 公司门户:http://www.lpld.cn
//    8  *
//    9  * 文件名: HAL_FLASH.c
//   10  * 用途: 用于配置K60 FLASH
//   11  * 最后修改日期: 20120730
//   12  *
//   13  * 开发者使用协议:
//   14  *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
//   15  *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
//   16  *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   17  */
//   18 
//   19 #include "HAL_FLASH.h"
//   20 
//   21 
//   22 //Flash命令宏定义，内部使用
//   23 #define   RD1BLK    0x00   // 读整块Flash
//   24 #define   RD1SEC    0x01   // 读整个扇区
//   25 #define   PGMCHK    0x02   // 写入检查
//   26 #define   RDRSRC    0x03   // 读目标数据
//   27 #define   PGM4      0x06   // 写入长字
//   28 #define   ERSBLK    0x08   // 擦除整块Flash
//   29 #define   ERSSCR    0x09   // 擦除Flash扇区
//   30 #define   PGMSEC    0x0B   // 写入扇区
//   31 #define   RD1ALL    0x40   // 读所有的块
//   32 #define   RDONCE    0x41   // 只读一次
//   33 #define   PGMONCE   0x43   // 只写一次
//   34 #define   ERSALL    0x44   // 擦除所有块
//   35 #define   VFYKEY    0x45   // 验证后门访问钥匙
//   36 #define   PGMPART   0x80   // 写入分区
//   37 #define   SETRAM    0x81   // 设定FlexRAM功能
//   38 
//   39 
//   40 //=================内部函数实现=============================================
//   41 
//   42 //==========================================================================
//   43 //函数名称：flash_cmd_launch
//   44 //函数返回：0-成功 1-失败
//   45 //参数说明：无
//   46 //功能概要：启动Flash命令
//   47 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   48 __ramfunc static uint32 flash_cmd_launch(void)
//   49 {
//   50     
//   51     FTFL_FSTAT = 	(0
//   52 				  	|	FTFL_FSTAT_CCIF_MASK 		// 启动命令
//   53 					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
//   54 					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
//   55 					);	
flash_cmd_launch:
        MOVS     R0,#+176
        LDR.N    R1,??DataTable4  ;; 0x40020000
        STRB     R0,[R1, #+0]
//   56     									
//   57     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
??flash_cmd_launch_0:
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_cmd_launch_0
//   58 
//   59     // 检查错误标志
//   60     if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+49
        TST      R0,R1
        BEQ.N    ??flash_cmd_launch_1
//   61         return 1 ; 				//执行命令出错
        MOVS     R0,#+1
        B.N      ??flash_cmd_launch_2
//   62   
//   63     return 0; 					//执行命令成功
??flash_cmd_launch_1:
        MOVS     R0,#+0
??flash_cmd_launch_2:
        BX       LR               ;; return
//   64 }
//   65 
//   66 //===========================================================================
//   67 
//   68 //=================外部接口函数==============================================
//   69 //==========================================================================
//   70 //函数名称：flash_init
//   71 //函数返回：无
//   72 //参数说明：无
//   73 //功能概要：初始化flash模块
//   74 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   75 __ramfunc void flash_init(void)
//   76 {
//   77 	// 清除Flash预读取缓冲区
//   78     FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
flash_init:
        LDR.N    R0,??DataTable4_1  ;; 0x4001f004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable4_1  ;; 0x4001f004
        STR      R0,[R1, #+0]
//   79     FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
        LDR.N    R0,??DataTable4_2  ;; 0x4001f008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable4_2  ;; 0x4001f008
        STR      R0,[R1, #+0]
//   80     
//   81     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
??flash_init_0:
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_init_0
//   82     
//   83 	FTFL_FSTAT = 	(0
//   84 					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
//   85 					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
//   86 					);	
        MOVS     R0,#+48
        LDR.N    R1,??DataTable4  ;; 0x40020000
        STRB     R0,[R1, #+0]
//   87 }
        BX       LR               ;; return
//   88 
//   89 //==========================================================================
//   90 //函数名称：flash_erase_sector
//   91 //函数返回：函数执行执行状态：0=正常；非0=异常。
//   92 //参数说明：sectorNo：扇区号（K60N512实际使用0~255）
//   93 //功能概要：擦除指定flash扇区
//   94 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   95 __ramfunc uint8 flash_erase_sector(uint16 sectorNo)
//   96 {
flash_erase_sector:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   97     Dtype	addr;	
//   98 	addr.DW = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+11
        STR      R0,[SP, #+0]
//   99     
//  100     //dest.word    = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
//  101 
//  102     // 设置擦除命令
//  103     FTFL_FCCOB0 = ERSSCR; // 擦除扇区命令
        MOVS     R0,#+9
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  104     
//  105     // 设置目标地址
//  106     FTFL_FCCOB1 = addr.B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  107     FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  108     FTFL_FCCOB3 = addr.B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  109     
//  110     // 执行命令序列
//  111     if(1 == flash_cmd_launch())    //若执行命令出现错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_erase_sector_0
//  112         return 1;     //擦除命令错误
        MOVS     R0,#+1
        B.N      ??flash_erase_sector_1
//  113    
//  114     // 若擦除sector0时，则解锁设备
//  115     if(sectorNo ==0)
??flash_erase_sector_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??flash_erase_sector_2
//  116     {
//  117         // 写入4字节
//  118         FTFL_FCCOB0 = PGM4; 
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  119         // 设置目标地址
//  120         FTFL_FCCOB1 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  121         FTFL_FCCOB2 = 0x04;
        MOVS     R0,#+4
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  122         FTFL_FCCOB3 = 0x0C;
        MOVS     R0,#+12
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  123         // 数据
//  124         FTFL_FCCOB4 = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  125         FTFL_FCCOB5 = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  126         FTFL_FCCOB6 = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  127         FTFL_FCCOB7 = 0xFE;
        MOVS     R0,#+254
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  128         // 执行命令序列
//  129         if(1 == flash_cmd_launch())  //若执行命令出现错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_erase_sector_2
//  130             return 2;   //解锁命令错误
        MOVS     R0,#+2
        B.N      ??flash_erase_sector_1
//  131     }  
//  132     
//  133     return 0;  //成功返回
??flash_erase_sector_2:
        MOVS     R0,#+0
??flash_erase_sector_1:
        POP      {R1,R2,R4,PC}    ;; return
//  134 }
//  135 
//  136 //==========================================================================
//  137 //函数名称：flash_write
//  138 //函数返回：函数执行状态：0=正常；非0=异常。
//  139 //参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//  140 //         offset:写入扇区内部偏移地址（0~2043）
//  141 //         cnt：写入字节数目（0~2043）
//  142 //         buf：源数据缓冲区首地址
//  143 //功能概要：flash写入操作
//  144 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  145 __ramfunc uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
//  146 {
flash_write:
        PUSH     {R2-R6,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R4,R2
//  147 	Dtype	addr;	
//  148     Dtype	Data;
//  149 	
//  150 	ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        CMP      R1,#+0
        BEQ.N    ??flash_write_0
        MOVS     R1,#+150
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  151 									//此处提示警告，但是安全的……
//  152 	ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
??flash_write_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2048
        BLE.N    ??flash_write_1
        MOVS     R1,#+152
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  153 									//此处提示警告，但是安全的……
//  154 	
//  155     addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
??flash_write_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+11
        UXTAH    R0,R0,R6
        STR      R0,[SP, #+4]
//  156 	Data.DW	= data;	
        STR      R4,[SP, #+0]
//  157 	    
//  158     FTFL_FCCOB0 = PGM4;				// 设置写入命令
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  159 
//  160 	FTFL_FCCOB1 = addr.B[2];		// 设置目标地址
        LDRB     R0,[SP, #+6]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  161 	FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+5]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  162 	FTFL_FCCOB3 = addr.B[0];
        LDRB     R0,[SP, #+4]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  163 
//  164 
//  165 	FTFL_FCCOB4 = Data.B[3];        // 设置写入数据
        LDRB     R0,[SP, #+3]
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  166 	FTFL_FCCOB5 = Data.B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  167 	FTFL_FCCOB6 = Data.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  168 	FTFL_FCCOB7 = Data.B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  169 	
//  170 	if(1 == flash_cmd_launch()) 	return 2;  //写入命令错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_2
        MOVS     R0,#+2
        B.N      ??flash_write_3
//  171 
//  172     return 0;  //成功执行
??flash_write_2:
        MOVS     R0,#+0
??flash_write_3:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  173 }
//  174 
//  175 
//  176 //==========================================================================
//  177 //函数名称：flash_write
//  178 //函数返回：函数执行状态：0=正常；非0=异常。
//  179 //参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//  180 //         offset:写入扇区内部偏移地址（0~2043）
//  181 //         cnt：写入字节数目（0~2043）
//  182 //         buf：源数据缓冲区首地址
//  183 //功能概要：flash写入操作
//  184 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  185 __ramfunc uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
//  186 {
flash_write_buf:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R4,R2
        MOVS     R5,R3
//  187     uint32 size;
//  188  
//  189 	Dtype	addr;	
//  190     
//  191 	ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R7,R0
        MLS      R1,R1,R0,R7
        CMP      R1,#+0
        BEQ.N    ??flash_write_buf_0
        MOVS     R1,#+191
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  192 									//此处提示警告，但是安全的……
//  193 	ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
??flash_write_buf_0:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+2048
        BLE.N    ??flash_write_buf_1
        MOVS     R1,#+193
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  194 									//此处提示警告，但是安全的……
//  195 	
//  196     addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
??flash_write_buf_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R0,R6,#+11
        UXTAH    R0,R0,R7
        STR      R0,[SP, #+0]
//  197 	
//  198     // 设置写入命令
//  199     FTFL_FCCOB0 = PGM4;
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  200 
//  201     for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
        MOVS     R6,#+0
        B.N      ??flash_write_buf_2
??flash_write_buf_3:
        ADDS     R6,R6,#+4
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+4
        STR      R0,[SP, #+0]
        ADDS     R5,R5,#+4
??flash_write_buf_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R6,R4
        BCS.N    ??flash_write_buf_4
//  202     {
//  203         
//  204         FTFL_FCCOB1 = addr.B[2];						// 设置目标地址
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  205         FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  206         FTFL_FCCOB3 = addr.B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  207  
//  208         FTFL_FCCOB4 = buf[3];							// 拷贝数据
        LDRB     R0,[R5, #+3]
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  209         FTFL_FCCOB5 = buf[2];
        LDRB     R0,[R5, #+2]
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  210         FTFL_FCCOB6 = buf[1];
        LDRB     R0,[R5, #+1]
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  211         FTFL_FCCOB7 = buf[0];
        LDRB     R0,[R5, #+0]
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  212         
//  213         if(1 == flash_cmd_launch()) 
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_buf_3
//  214             return 2;  									//写入命令错误
        MOVS     R0,#+2
        B.N      ??flash_write_buf_5
//  215     }
//  216     
//  217     return 0;  //成功执行
??flash_write_buf_4:
        MOVS     R0,#+0
??flash_write_buf_5:
        POP      {R1,R4-R7,PC}    ;; return
//  218 }

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4:
        DC32     0x40020000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_1:
        DC32     0x4001f004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_2:
        DC32     0x4001f008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_3:
        DC32     0x40020007

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_4:
        DC32     0x40020006

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_5:
        DC32     0x40020005

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_6:
        DC32     0x40020004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_7:
        DC32     0x4002000b

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_8:
        DC32     0x4002000a

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_9:
        DC32     0x40020009

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_10:
        DC32     0x40020008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_11:
        DC32     `?<Constant "C:\\\\Users\\\\zxf\\\\Desktop\\\\...">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\zxf\\\\Desktop\\\\...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 7AH, 78H, 66H, 5CH, 44H, 65H, 73H
        DC8 6BH, 74H, 6FH, 70H, 5CH, 38H, 2EH, 31H
        DC8 30H, 5CH, 37H, 2EH, 31H, 37H, 28H, 43H
        DC8 43H, 44H, 0D0H, 0DEH, 0B8H, 0C4H, 29H, 5CH
        DC8 6CH, 69H, 62H, 5CH, 4CH, 50H, 4CH, 44H
        DC8 5CH, 48H, 41H, 4CH, 5FH, 46H, 4CH, 41H
        DC8 53H, 48H, 2EH, 63H, 0
        DC8 0, 0, 0

        END
//  219 
//  220 
//  221 
//  222 
//  223 //==========================================================================
// 
//  64 bytes in section .rodata
// 532 bytes in section .textrw
// 
// 532 bytes of CODE  memory
//  64 bytes of CONST memory
//
//Errors: none
//Warnings: 8
