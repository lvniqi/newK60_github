///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:46
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\FatFs\ff.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\FatFs\ff.c" -D IAR
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\project\LPLD_Template\iar\RAM\List\ff.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN disk_initialize
        EXTERN disk_ioctl
        EXTERN disk_read
        EXTERN disk_status
        EXTERN disk_write
        EXTERN ff_convert
        EXTERN ff_memalloc
        EXTERN ff_memfree
        EXTERN ff_wtoupper
        EXTERN get_fattime

        PUBLIC clust2sect
        PUBLIC f_chdir
        PUBLIC f_chdrive
        PUBLIC f_chmod
        PUBLIC f_close
        PUBLIC f_getcwd
        PUBLIC f_getfree
        PUBLIC f_gets
        PUBLIC f_lseek
        PUBLIC f_mkdir
        PUBLIC f_mkfs
        PUBLIC f_mount
        PUBLIC f_open
        PUBLIC f_opendir
        PUBLIC f_printf
        PUBLIC f_putc
        PUBLIC f_puts
        PUBLIC f_read
        PUBLIC f_readdir
        PUBLIC f_rename
        PUBLIC f_stat
        PUBLIC f_sync
        PUBLIC f_truncate
        PUBLIC f_unlink
        PUBLIC f_utime
        PUBLIC f_write
        PUBLIC gen_numname
        PUBLIC get_fat
        PUBLIC put_fat

// C:\Users\zxf\Desktop\8.10\7.17(CCD修改)\lib\LPLD\FatFs\ff.c
//    1 /*----------------------------------------------------------------------------/
//    2 /  FatFs - FAT file system module  R0.09                  (C)ChaN, 2011
//    3 /-----------------------------------------------------------------------------/
//    4 / FatFs module is a generic FAT file system module for small embedded systems.
//    5 / This is a free software that opened for education, research and commercial
//    6 / developments under license policy of following terms.
//    7 /
//    8 /  Copyright (C) 2011, ChaN, all right reserved.
//    9 /
//   10 / * The FatFs module is a free software and there is NO WARRANTY.
//   11 / * No restriction on use. You can use, modify and redistribute it for
//   12 /   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
//   13 / * Redistributions of source code must retain the above copyright notice.
//   14 /
//   15 /-----------------------------------------------------------------------------/
//   16 / Feb 26,'06 R0.00  Prototype.
//   17 /
//   18 / Apr 29,'06 R0.01  First stable version.
//   19 /
//   20 / Jun 01,'06 R0.02  Added FAT12 support.
//   21 /                   Removed unbuffered mode.
//   22 /                   Fixed a problem on small (<32M) partition.
//   23 / Jun 10,'06 R0.02a Added a configuration option (_FS_MINIMUM).
//   24 /
//   25 / Sep 22,'06 R0.03  Added f_rename().
//   26 /                   Changed option _FS_MINIMUM to _FS_MINIMIZE.
//   27 / Dec 11,'06 R0.03a Improved cluster scan algorithm to write files fast.
//   28 /                   Fixed f_mkdir() creates incorrect directory on FAT32.
//   29 /
//   30 / Feb 04,'07 R0.04  Supported multiple drive system.
//   31 /                   Changed some interfaces for multiple drive system.
//   32 /                   Changed f_mountdrv() to f_mount().
//   33 /                   Added f_mkfs().
//   34 / Apr 01,'07 R0.04a Supported multiple partitions on a physical drive.
//   35 /                   Added a capability of extending file size to f_lseek().
//   36 /                   Added minimization level 3.
//   37 /                   Fixed an endian sensitive code in f_mkfs().
//   38 / May 05,'07 R0.04b Added a configuration option _USE_NTFLAG.
//   39 /                   Added FSInfo support.
//   40 /                   Fixed DBCS name can result FR_INVALID_NAME.
//   41 /                   Fixed short seek (<= csize) collapses the file object.
//   42 /
//   43 / Aug 25,'07 R0.05  Changed arguments of f_read(), f_write() and f_mkfs().
//   44 /                   Fixed f_mkfs() on FAT32 creates incorrect FSInfo.
//   45 /                   Fixed f_mkdir() on FAT32 creates incorrect directory.
//   46 / Feb 03,'08 R0.05a Added f_truncate() and f_utime().
//   47 /                   Fixed off by one error at FAT sub-type determination.
//   48 /                   Fixed btr in f_read() can be mistruncated.
//   49 /                   Fixed cached sector is not flushed when create and close without write.
//   50 /
//   51 / Apr 01,'08 R0.06  Added fputc(), fputs(), fprintf() and fgets().
//   52 /                   Improved performance of f_lseek() on moving to the same or following cluster.
//   53 /
//   54 / Apr 01,'09 R0.07  Merged Tiny-FatFs as a configuration option. (_FS_TINY)
//   55 /                   Added long file name feature.
//   56 /                   Added multiple code page feature.
//   57 /                   Added re-entrancy for multitask operation.
//   58 /                   Added auto cluster size selection to f_mkfs().
//   59 /                   Added rewind option to f_readdir().
//   60 /                   Changed result code of critical errors.
//   61 /                   Renamed string functions to avoid name collision.
//   62 / Apr 14,'09 R0.07a Separated out OS dependent code on reentrant cfg.
//   63 /                   Added multiple sector size feature.
//   64 / Jun 21,'09 R0.07c Fixed f_unlink() can return FR_OK on error.
//   65 /                   Fixed wrong cache control in f_lseek().
//   66 /                   Added relative path feature.
//   67 /                   Added f_chdir() and f_chdrive().
//   68 /                   Added proper case conversion to extended char.
//   69 / Nov 03,'09 R0.07e Separated out configuration options from ff.h to ffconf.h.
//   70 /                   Fixed f_unlink() fails to remove a sub-dir on _FS_RPATH.
//   71 /                   Fixed name matching error on the 13 char boundary.
//   72 /                   Added a configuration option, _LFN_UNICODE.
//   73 /                   Changed f_readdir() to return the SFN with always upper case on non-LFN cfg.
//   74 /
//   75 / May 15,'10 R0.08  Added a memory configuration option. (_USE_LFN = 3)
//   76 /                   Added file lock feature. (_FS_SHARE)
//   77 /                   Added fast seek feature. (_USE_FASTSEEK)
//   78 /                   Changed some types on the API, XCHAR->TCHAR.
//   79 /                   Changed fname member in the FILINFO structure on Unicode cfg.
//   80 /                   String functions support UTF-8 encoding files on Unicode cfg.
//   81 / Aug 16,'10 R0.08a Added f_getcwd(). (_FS_RPATH = 2)
//   82 /                   Added sector erase feature. (_USE_ERASE)
//   83 /                   Moved file lock semaphore table from fs object to the bss.
//   84 /                   Fixed a wrong directory entry is created on non-LFN cfg when the given name contains ';'.
//   85 /                   Fixed f_mkfs() creates wrong FAT32 volume.
//   86 / Jan 15,'11 R0.08b Fast seek feature is also applied to f_read() and f_write().
//   87 /                   f_lseek() reports required table size on creating CLMP.
//   88 /                   Extended format syntax of f_printf function.
//   89 /                   Ignores duplicated directory separators in given path names.
//   90 /
//   91 / Sep 06,'11 R0.09  f_mkfs() supports multiple partition to finish the multiple partition feature.
//   92 /                   Added f_fdisk(). (_MULTI_PARTITION = 2)
//   93 /---------------------------------------------------------------------------*/
//   94 
//   95 #include "ff.h"			/* FatFs configurations and declarations */
//   96 #include "FML_DiskIO.h"		/* Declarations of low level disk I/O functions */
//   97 
//   98 
//   99 /*--------------------------------------------------------------------------
//  100 
//  101    Module Private Definitions
//  102 
//  103 ---------------------------------------------------------------------------*/
//  104 
//  105 #if _FATFS != 6502	/* Revision ID */
//  106 #error Wrong include file (ff.h).
//  107 #endif
//  108 
//  109 
//  110 /* Definitions on sector size */
//  111 #if _MAX_SS != 512 && _MAX_SS != 1024 && _MAX_SS != 2048 && _MAX_SS != 4096
//  112 #error Wrong sector size.
//  113 #endif
//  114 #if _MAX_SS != 512
//  115 #define	SS(fs)	((fs)->ssize)	/* Variable sector size */
//  116 #else
//  117 #define	SS(fs)	512U			/* Fixed sector size */
//  118 #endif
//  119 
//  120 
//  121 /* Reentrancy related */
//  122 #if _FS_REENTRANT
//  123 #if _USE_LFN == 1
//  124 #error Static LFN work area must not be used in re-entrant configuration.
//  125 #endif
//  126 #define	ENTER_FF(fs)		{ if (!lock_fs(fs)) return FR_TIMEOUT; }
//  127 #define	LEAVE_FF(fs, res)	{ unlock_fs(fs, res); return res; }
//  128 #else
//  129 #define	ENTER_FF(fs)
//  130 #define LEAVE_FF(fs, res)	return res
//  131 #endif
//  132 
//  133 #define	ABORT(fs, res)		{ fp->flag |= FA__ERROR; LEAVE_FF(fs, res); }
//  134 
//  135 
//  136 /* File shareing feature */
//  137 #if _FS_SHARE
//  138 #if _FS_READONLY
//  139 #error _FS_SHARE must be 0 on read-only cfg.
//  140 #endif
//  141 typedef struct
//  142 {
//  143     FATFS *fs;				/* File ID 1, volume (NULL:blank entry) */
//  144     DWORD clu;				/* File ID 2, directory */
//  145     WORD idx;				/* File ID 3, directory index */
//  146     WORD ctr;				/* File open counter, 0:none, 0x01..0xFF:read open count, 0x100:write mode */
//  147 } FILESEM;
//  148 #endif
//  149 
//  150 
//  151 /* Misc definitions */
//  152 #define LD_CLUST(dir)	(((DWORD)LD_WORD(dir+DIR_FstClusHI)<<16) | LD_WORD(dir+DIR_FstClusLO))
//  153 #define ST_CLUST(dir,cl) {ST_WORD(dir+DIR_FstClusLO, cl); ST_WORD(dir+DIR_FstClusHI, (DWORD)cl>>16);}
//  154 
//  155 
//  156 /* DBCS code ranges and SBCS extend char conversion table */
//  157 
//  158 #if _CODE_PAGE == 932	/* Japanese Shift-JIS */
//  159 #define _DF1S	0x81	/* DBC 1st byte range 1 start */
//  160 #define _DF1E	0x9F	/* DBC 1st byte range 1 end */
//  161 #define _DF2S	0xE0	/* DBC 1st byte range 2 start */
//  162 #define _DF2E	0xFC	/* DBC 1st byte range 2 end */
//  163 #define _DS1S	0x40	/* DBC 2nd byte range 1 start */
//  164 #define _DS1E	0x7E	/* DBC 2nd byte range 1 end */
//  165 #define _DS2S	0x80	/* DBC 2nd byte range 2 start */
//  166 #define _DS2E	0xFC	/* DBC 2nd byte range 2 end */
//  167 
//  168 #elif _CODE_PAGE == 936	/* Simplified Chinese GBK */
//  169 #define _DF1S	0x81
//  170 #define _DF1E	0xFE
//  171 #define _DS1S	0x40
//  172 #define _DS1E	0x7E
//  173 #define _DS2S	0x80
//  174 #define _DS2E	0xFE
//  175 
//  176 #elif _CODE_PAGE == 949	/* Korean */
//  177 #define _DF1S	0x81
//  178 #define _DF1E	0xFE
//  179 #define _DS1S	0x41
//  180 #define _DS1E	0x5A
//  181 #define _DS2S	0x61
//  182 #define _DS2E	0x7A
//  183 #define _DS3S	0x81
//  184 #define _DS3E	0xFE
//  185 
//  186 #elif _CODE_PAGE == 950	/* Traditional Chinese Big5 */
//  187 #define _DF1S	0x81
//  188 #define _DF1E	0xFE
//  189 #define _DS1S	0x40
//  190 #define _DS1E	0x7E
//  191 #define _DS2S	0xA1
//  192 #define _DS2E	0xFE
//  193 
//  194 #elif _CODE_PAGE == 437	/* U.S. (OEM) */
//  195 #define _DF1S	0
//  196 #define _EXCVT {0x80,0x9A,0x90,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F,0x90,0x92,0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  197 				0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  198 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  199 				0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  200 
//  201 #elif _CODE_PAGE == 720	/* Arabic (OEM) */
//  202 #define _DF1S	0
//  203 #define _EXCVT {0x80,0x81,0x45,0x41,0x84,0x41,0x86,0x43,0x45,0x45,0x45,0x49,0x49,0x8D,0x8E,0x8F,0x90,0x92,0x92,0x93,0x94,0x95,0x49,0x49,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  204 				0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  205 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  206 				0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  207 
//  208 #elif _CODE_PAGE == 737	/* Greek (OEM) */
//  209 #define _DF1S	0
//  210 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x92,0x92,0x93,0x94,0x95,0x96,0x97,0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87, \ 
//  211 				0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0xAA,0x92,0x93,0x94,0x95,0x96,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  212 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  213 				0x97,0xEA,0xEB,0xEC,0xE4,0xED,0xEE,0xE7,0xE8,0xF1,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  214 
//  215 #elif _CODE_PAGE == 775	/* Baltic (OEM) */
//  216 #define _DF1S	0
//  217 #define _EXCVT {0x80,0x9A,0x91,0xA0,0x8E,0x95,0x8F,0x80,0xAD,0xED,0x8A,0x8A,0xA1,0x8D,0x8E,0x8F,0x90,0x92,0x92,0xE2,0x99,0x95,0x96,0x97,0x97,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9F, \ 
//  218 				0xA0,0xA1,0xE0,0xA3,0xA3,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  219 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xB5,0xB6,0xB7,0xB8,0xBD,0xBE,0xC6,0xC7,0xA5,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  220 				0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE3,0xE8,0xE8,0xEA,0xEA,0xEE,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  221 
//  222 #elif _CODE_PAGE == 850	/* Multilingual Latin 1 (OEM) */
//  223 #define _DF1S	0
//  224 #define _EXCVT {0x80,0x9A,0x90,0xB6,0x8E,0xB7,0x8F,0x80,0xD2,0xD3,0xD4,0xD8,0xD7,0xDE,0x8E,0x8F,0x90,0x92,0x92,0xE2,0x99,0xE3,0xEA,0xEB,0x59,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9F, \ 
//  225 				0xB5,0xD6,0xE0,0xE9,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  226 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  227 				0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE7,0xE7,0xE9,0xEA,0xEB,0xED,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  228 
//  229 #elif _CODE_PAGE == 852	/* Latin 2 (OEM) */
//  230 #define _DF1S	0
//  231 #define _EXCVT {0x80,0x9A,0x90,0xB6,0x8E,0xDE,0x8F,0x80,0x9D,0xD3,0x8A,0x8A,0xD7,0x8D,0x8E,0x8F,0x90,0x91,0x91,0xE2,0x99,0x95,0x95,0x97,0x97,0x99,0x9A,0x9B,0x9B,0x9D,0x9E,0x9F, \ 
//  232 				0xB5,0xD6,0xE0,0xE9,0xA4,0xA4,0xA6,0xA6,0xA8,0xA8,0xAA,0x8D,0xAC,0xB8,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBD,0xBF, \ 
//  233 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC6,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD1,0xD1,0xD2,0xD3,0xD2,0xD5,0xD6,0xD7,0xB7,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  234 				0xE0,0xE1,0xE2,0xE3,0xE3,0xD5,0xE6,0xE6,0xE8,0xE9,0xE8,0xEB,0xED,0xED,0xDD,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xEB,0xFC,0xFC,0xFE,0xFF}
//  235 
//  236 #elif _CODE_PAGE == 855	/* Cyrillic (OEM) */
//  237 #define _DF1S	0
//  238 #define _EXCVT {0x81,0x81,0x83,0x83,0x85,0x85,0x87,0x87,0x89,0x89,0x8B,0x8B,0x8D,0x8D,0x8F,0x8F,0x91,0x91,0x93,0x93,0x95,0x95,0x97,0x97,0x99,0x99,0x9B,0x9B,0x9D,0x9D,0x9F,0x9F, \ 
//  239 				0xA1,0xA1,0xA3,0xA3,0xA5,0xA5,0xA7,0xA7,0xA9,0xA9,0xAB,0xAB,0xAD,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB6,0xB6,0xB8,0xB8,0xB9,0xBA,0xBB,0xBC,0xBE,0xBE,0xBF, \ 
//  240 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD1,0xD1,0xD3,0xD3,0xD5,0xD5,0xD7,0xD7,0xDD,0xD9,0xDA,0xDB,0xDC,0xDD,0xE0,0xDF, \ 
//  241 				0xE0,0xE2,0xE2,0xE4,0xE4,0xE6,0xE6,0xE8,0xE8,0xEA,0xEA,0xEC,0xEC,0xEE,0xEE,0xEF,0xF0,0xF2,0xF2,0xF4,0xF4,0xF6,0xF6,0xF8,0xF8,0xFA,0xFA,0xFC,0xFC,0xFD,0xFE,0xFF}
//  242 
//  243 #elif _CODE_PAGE == 857	/* Turkish (OEM) */
//  244 #define _DF1S	0
//  245 #define _EXCVT {0x80,0x9A,0x90,0xB6,0x8E,0xB7,0x8F,0x80,0xD2,0xD3,0xD4,0xD8,0xD7,0x98,0x8E,0x8F,0x90,0x92,0x92,0xE2,0x99,0xE3,0xEA,0xEB,0x98,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9E, \ 
//  246 				0xB5,0xD6,0xE0,0xE9,0xA5,0xA5,0xA6,0xA6,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  247 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  248 				0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xDE,0x59,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  249 
//  250 #elif _CODE_PAGE == 858	/* Multilingual Latin 1 + Euro (OEM) */
//  251 #define _DF1S	0
//  252 #define _EXCVT {0x80,0x9A,0x90,0xB6,0x8E,0xB7,0x8F,0x80,0xD2,0xD3,0xD4,0xD8,0xD7,0xDE,0x8E,0x8F,0x90,0x92,0x92,0xE2,0x99,0xE3,0xEA,0xEB,0x59,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9F, \ 
//  253 				0xB5,0xD6,0xE0,0xE9,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  254 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD1,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  255 				0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE7,0xE7,0xE9,0xEA,0xEB,0xED,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  256 
//  257 #elif _CODE_PAGE == 862	/* Hebrew (OEM) */
//  258 #define _DF1S	0
//  259 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  260 				0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  261 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  262 				0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  263 
//  264 #elif _CODE_PAGE == 866	/* Russian (OEM) */
//  265 #define _DF1S	0
//  266 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  267 				0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  268 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  269 				0x90,0x91,0x92,0x93,0x9d,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F,0xF0,0xF0,0xF2,0xF2,0xF4,0xF4,0xF6,0xF6,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  270 
//  271 #elif _CODE_PAGE == 874	/* Thai (OEM, Windows) */
//  272 #define _DF1S	0
//  273 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  274 				0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  275 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  276 				0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  277 
//  278 #elif _CODE_PAGE == 1250 /* Central Europe (Windows) */
//  279 #define _DF1S	0
//  280 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x8A,0x9B,0x8C,0x8D,0x8E,0x8F, \ 
//  281 				0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xA3,0xB4,0xB5,0xB6,0xB7,0xB8,0xA5,0xAA,0xBB,0xBC,0xBD,0xBC,0xAF, \ 
//  282 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  283 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xFF}
//  284 
//  285 #elif _CODE_PAGE == 1251 /* Cyrillic (Windows) */
//  286 #define _DF1S	0
//  287 #define _EXCVT {0x80,0x81,0x82,0x82,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x80,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x8A,0x9B,0x8C,0x8D,0x8E,0x8F, \ 
//  288 				0xA0,0xA2,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB2,0xA5,0xB5,0xB6,0xB7,0xA8,0xB9,0xAA,0xBB,0xA3,0xBD,0xBD,0xAF, \ 
//  289 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  290 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF}
//  291 
//  292 #elif _CODE_PAGE == 1252 /* Latin 1 (Windows) */
//  293 #define _DF1S	0
//  294 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0xAd,0x9B,0x8C,0x9D,0xAE,0x9F, \ 
//  295 				0xA0,0x21,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  296 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  297 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0x9F}
//  298 
//  299 #elif _CODE_PAGE == 1253 /* Greek (Windows) */
//  300 #define _DF1S	0
//  301 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  302 				0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  303 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xA2,0xB8,0xB9,0xBA, \ 
//  304 				0xE0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xF2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xFB,0xBC,0xFD,0xBF,0xFF}
//  305 
//  306 #elif _CODE_PAGE == 1254 /* Turkish (Windows) */
//  307 #define _DF1S	0
//  308 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x8A,0x9B,0x8C,0x9D,0x9E,0x9F, \ 
//  309 				0xA0,0x21,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  310 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  311 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0x9F}
//  312 
//  313 #elif _CODE_PAGE == 1255 /* Hebrew (Windows) */
//  314 #define _DF1S	0
//  315 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  316 				0xA0,0x21,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  317 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  318 				0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  319 
//  320 #elif _CODE_PAGE == 1256 /* Arabic (Windows) */
//  321 #define _DF1S	0
//  322 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x8C,0x9D,0x9E,0x9F, \ 
//  323 				0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  324 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  325 				0x41,0xE1,0x41,0xE3,0xE4,0xE5,0xE6,0x43,0x45,0x45,0x45,0x45,0xEC,0xED,0x49,0x49,0xF0,0xF1,0xF2,0xF3,0x4F,0xF5,0xF6,0xF7,0xF8,0x55,0xFA,0x55,0x55,0xFD,0xFE,0xFF}
//  326 
//  327 #elif _CODE_PAGE == 1257 /* Baltic (Windows) */
//  328 #define _DF1S	0
//  329 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  330 				0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xA8,0xB9,0xAA,0xBB,0xBC,0xBD,0xBE,0xAF, \ 
//  331 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  332 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xFF}
//  333 
//  334 #elif _CODE_PAGE == 1258 /* Vietnam (OEM, Windows) */
//  335 #define _DF1S	0
//  336 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0xAC,0x9D,0x9E,0x9F, \ 
//  337 				0xA0,0x21,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  338 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  339 				0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xEC,0xCD,0xCE,0xCF,0xD0,0xD1,0xF2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xFE,0x9F}
//  340 
//  341 #elif _CODE_PAGE == 1	/* ASCII (for only non-LFN cfg) */
//  342 #if _USE_LFN
//  343 #error Cannot use LFN feature without valid code page.
//  344 #endif
//  345 #define _DF1S	0
//  346 
//  347 #else
//  348 #error Unknown code page
//  349 
//  350 #endif
//  351 
//  352 
//  353 /* Character code support macros */
//  354 #define IsUpper(c)	(((c)>='A')&&((c)<='Z'))
//  355 #define IsLower(c)	(((c)>='a')&&((c)<='z'))
//  356 #define IsDigit(c)	(((c)>='0')&&((c)<='9'))
//  357 
//  358 #if _DF1S		/* Code page is DBCS */
//  359 
//  360 #ifdef _DF2S	/* Two 1st byte areas */
//  361 #define IsDBCS1(c)	(((BYTE)(c) >= _DF1S && (BYTE)(c) <= _DF1E) || ((BYTE)(c) >= _DF2S && (BYTE)(c) <= _DF2E))
//  362 #else			/* One 1st byte area */
//  363 #define IsDBCS1(c)	((BYTE)(c) >= _DF1S && (BYTE)(c) <= _DF1E)
//  364 #endif
//  365 
//  366 #ifdef _DS3S	/* Three 2nd byte areas */
//  367 #define IsDBCS2(c)	(((BYTE)(c) >= _DS1S && (BYTE)(c) <= _DS1E) || ((BYTE)(c) >= _DS2S && (BYTE)(c) <= _DS2E) || ((BYTE)(c) >= _DS3S && (BYTE)(c) <= _DS3E))
//  368 #else			/* Two 2nd byte areas */
//  369 #define IsDBCS2(c)	(((BYTE)(c) >= _DS1S && (BYTE)(c) <= _DS1E) || ((BYTE)(c) >= _DS2S && (BYTE)(c) <= _DS2E))
//  370 #endif
//  371 
//  372 #else			/* Code page is SBCS */
//  373 
//  374 #define IsDBCS1(c)	0
//  375 #define IsDBCS2(c)	0
//  376 
//  377 #endif /* _DF1S */
//  378 
//  379 
//  380 /* Name status flags */
//  381 #define NS			11		/* Index of name status byte in fn[] */
//  382 #define NS_LOSS		0x01	/* Out of 8.3 format */
//  383 #define NS_LFN		0x02	/* Force to create LFN entry */
//  384 #define NS_LAST		0x04	/* Last segment */
//  385 #define NS_BODY		0x08	/* Lower case flag (body) */
//  386 #define NS_EXT		0x10	/* Lower case flag (ext) */
//  387 #define NS_DOT		0x20	/* Dot entry */
//  388 
//  389 
//  390 /* FAT sub-type boundaries */
//  391 /* Note that the FAT spec by Microsoft says 4085 but Windows works with 4087! */
//  392 #define MIN_FAT16	4086	/* Minimum number of clusters for FAT16 */
//  393 #define	MIN_FAT32	65526	/* Minimum number of clusters for FAT32 */
//  394 
//  395 
//  396 /* FatFs refers the members in the FAT structures as byte array instead of
//  397 / structure member because the structure is not binary compatible between
//  398 / different platforms */
//  399 
//  400 #define BS_jmpBoot			0	/* Jump instruction (3) */
//  401 #define BS_OEMName			3	/* OEM name (8) */
//  402 #define BPB_BytsPerSec		11	/* Sector size [byte] (2) */
//  403 #define BPB_SecPerClus		13	/* Cluster size [sector] (1) */
//  404 #define BPB_RsvdSecCnt		14	/* Size of reserved area [sector] (2) */
//  405 #define BPB_NumFATs			16	/* Number of FAT copies (1) */
//  406 #define BPB_RootEntCnt		17	/* Number of root dir entries for FAT12/16 (2) */
//  407 #define BPB_TotSec16		19	/* Volume size [sector] (2) */
//  408 #define BPB_Media			21	/* Media descriptor (1) */
//  409 #define BPB_FATSz16			22	/* FAT size [sector] (2) */
//  410 #define BPB_SecPerTrk		24	/* Track size [sector] (2) */
//  411 #define BPB_NumHeads		26	/* Number of heads (2) */
//  412 #define BPB_HiddSec			28	/* Number of special hidden sectors (4) */
//  413 #define BPB_TotSec32		32	/* Volume size [sector] (4) */
//  414 #define BS_DrvNum			36	/* Physical drive number (2) */
//  415 #define BS_BootSig			38	/* Extended boot signature (1) */
//  416 #define BS_VolID			39	/* Volume serial number (4) */
//  417 #define BS_VolLab			43	/* Volume label (8) */
//  418 #define BS_FilSysType		54	/* File system type (1) */
//  419 #define BPB_FATSz32			36	/* FAT size [sector] (4) */
//  420 #define BPB_ExtFlags		40	/* Extended flags (2) */
//  421 #define BPB_FSVer			42	/* File system version (2) */
//  422 #define BPB_RootClus		44	/* Root dir first cluster (4) */
//  423 #define BPB_FSInfo			48	/* Offset of FSInfo sector (2) */
//  424 #define BPB_BkBootSec		50	/* Offset of backup boot sectot (2) */
//  425 #define BS_DrvNum32			64	/* Physical drive number (2) */
//  426 #define BS_BootSig32		66	/* Extended boot signature (1) */
//  427 #define BS_VolID32			67	/* Volume serial number (4) */
//  428 #define BS_VolLab32			71	/* Volume label (8) */
//  429 #define BS_FilSysType32		82	/* File system type (1) */
//  430 #define	FSI_LeadSig			0	/* FSI: Leading signature (4) */
//  431 #define	FSI_StrucSig		484	/* FSI: Structure signature (4) */
//  432 #define	FSI_Free_Count		488	/* FSI: Number of free clusters (4) */
//  433 #define	FSI_Nxt_Free		492	/* FSI: Last allocated cluster (4) */
//  434 #define MBR_Table			446	/* MBR: Partition table offset (2) */
//  435 #define	SZ_PTE				16	/* MBR: Size of a partition table entry */
//  436 #define BS_55AA				510	/* Boot sector signature (2) */
//  437 
//  438 #define	DIR_Name			0	/* Short file name (11) */
//  439 #define	DIR_Attr			11	/* Attribute (1) */
//  440 #define	DIR_NTres			12	/* NT flag (1) */
//  441 #define	DIR_CrtTime			14	/* Created time (2) */
//  442 #define	DIR_CrtDate			16	/* Created date (2) */
//  443 #define	DIR_FstClusHI		20	/* Higher 16-bit of first cluster (2) */
//  444 #define	DIR_WrtTime			22	/* Modified time (2) */
//  445 #define	DIR_WrtDate			24	/* Modified date (2) */
//  446 #define	DIR_FstClusLO		26	/* Lower 16-bit of first cluster (2) */
//  447 #define	DIR_FileSize		28	/* File size (4) */
//  448 #define	LDIR_Ord			0	/* LFN entry order and LLE flag (1) */
//  449 #define	LDIR_Attr			11	/* LFN attribute (1) */
//  450 #define	LDIR_Type			12	/* LFN type (1) */
//  451 #define	LDIR_Chksum			13	/* Sum of corresponding SFN entry */
//  452 #define	LDIR_FstClusLO		26	/* Filled by zero (0) */
//  453 #define	SZ_DIR				32		/* Size of a directory entry */
//  454 #define	LLE					0x40	/* Last long entry flag in LDIR_Ord */
//  455 #define	DDE					0xE5	/* Deleted directory enrty mark in DIR_Name[0] */
//  456 #define	NDDE				0x05	/* Replacement of a character collides with DDE */
//  457 
//  458 
//  459 /*------------------------------------------------------------*/
//  460 /* Module private work area                                   */
//  461 /*------------------------------------------------------------*/
//  462 /* Note that uninitialized variables with static duration are
//  463 /  zeroed/nulled at start-up. If not, the compiler or start-up
//  464 /  routine is out of ANSI-C standard.
//  465 */
//  466 
//  467 #if _VOLUMES
//  468 static

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  469 FATFS *FatFs[_VOLUMES];	/* Pointer to the file system objects (logical drives) */
FatFs:
        DS8 4
//  470 #else
//  471 #error Number of volumes must not be 0.
//  472 #endif
//  473 
//  474 static

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  475 WORD Fsid;				/* File system mount ID */
Fsid:
        DS8 2
//  476 
//  477 #if _FS_RPATH
//  478 static

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  479 BYTE CurrVol;			/* Current drive */
CurrVol:
        DS8 1
//  480 #endif
//  481 
//  482 #if _FS_SHARE
//  483 static

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  484 FILESEM	Files[_FS_SHARE];	/* File lock semaphores */
Files:
        DS8 96
//  485 #endif
//  486 
//  487 #if _USE_LFN == 0			/* No LFN feature */
//  488 #define	DEF_NAMEBUF			BYTE sfn[12]
//  489 #define INIT_BUF(dobj)		(dobj).fn = sfn
//  490 #define	FREE_BUF()
//  491 
//  492 #elif _USE_LFN == 1			/* LFN feature with static working buffer */
//  493 static WCHAR LfnBuf[_MAX_LFN+1];
//  494 #define	DEF_NAMEBUF			BYTE sfn[12]
//  495 #define INIT_BUF(dobj)		{ (dobj).fn = sfn; (dobj).lfn = LfnBuf; }
//  496 #define	FREE_BUF()
//  497 
//  498 #elif _USE_LFN == 2 		/* LFN feature with dynamic working buffer on the stack */
//  499 #define	DEF_NAMEBUF			BYTE sfn[12]; WCHAR lbuf[_MAX_LFN+1]
//  500 #define INIT_BUF(dobj)		{ (dobj).fn = sfn; (dobj).lfn = lbuf; }
//  501 #define	FREE_BUF()
//  502 
//  503 #elif _USE_LFN == 3 		/* LFN feature with dynamic working buffer on the heap */
//  504 #define	DEF_NAMEBUF			BYTE sfn[12]; WCHAR *lfn
//  505 #define INIT_BUF(dobj)		{ lfn = ff_memalloc((_MAX_LFN + 1) * 2); \ 
//  506 							  if (!lfn) LEAVE_FF((dobj).fs, FR_NOT_ENOUGH_CORE); \ 
//  507 							  (dobj).lfn = lfn;	(dobj).fn = sfn; }
//  508 #define	FREE_BUF()			ff_memfree(lfn)
//  509 
//  510 #else
//  511 #error Wrong LFN configuration.
//  512 #endif
//  513 
//  514 
//  515 
//  516 
//  517 /*--------------------------------------------------------------------------
//  518 
//  519    Module Private Functions
//  520 
//  521 ---------------------------------------------------------------------------*/
//  522 
//  523 
//  524 /*-----------------------------------------------------------------------*/
//  525 /* String functions                                                      */
//  526 /*-----------------------------------------------------------------------*/
//  527 
//  528 /* Copy memory to memory */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  529 static
//  530 void mem_cpy (void *dst, const void *src, UINT cnt)
//  531 {
//  532     BYTE *d = (BYTE *)dst;
//  533     const BYTE *s = (const BYTE *)src;
mem_cpy:
        B.N      ??mem_cpy_0
//  534 
//  535 #if _WORD_ACCESS == 1
//  536     while (cnt >= sizeof(int))
//  537     {
//  538         *(int *)d = *(int *)s;
//  539         d += sizeof(int);
//  540         s += sizeof(int);
//  541         cnt -= sizeof(int);
//  542     }
//  543 #endif
//  544     while (cnt--)
//  545         *d++ = *s++;
??mem_cpy_1:
        LDRB     R3,[R1, #+0]
        STRB     R3,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
??mem_cpy_0:
        MOVS     R3,R2
        SUBS     R2,R3,#+1
        CMP      R3,#+0
        BNE.N    ??mem_cpy_1
//  546 }
        BX       LR               ;; return
//  547 
//  548 /* Fill memory */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  549 static
//  550 void mem_set (void *dst, int val, UINT cnt)
//  551 {
//  552     BYTE *d = (BYTE *)dst;
mem_set:
        B.N      ??mem_set_0
//  553 
//  554     while (cnt--)
//  555         *d++ = (BYTE)val;
??mem_set_1:
        STRB     R1,[R0, #+0]
        ADDS     R0,R0,#+1
??mem_set_0:
        MOVS     R3,R2
        SUBS     R2,R3,#+1
        CMP      R3,#+0
        BNE.N    ??mem_set_1
//  556 }
        BX       LR               ;; return
//  557 
//  558 /* Compare memory to memory */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  559 static
//  560 int mem_cmp (const void *dst, const void *src, UINT cnt)
//  561 {
mem_cmp:
        PUSH     {R4}
//  562     const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
//  563     int r = 0;
        MOVS     R3,#+0
//  564 
//  565     while (cnt-- && (r = *d++ - *s++) == 0) ;
??mem_cmp_0:
        MOVS     R4,R2
        SUBS     R2,R4,#+1
        CMP      R4,#+0
        BEQ.N    ??mem_cmp_1
        LDRB     R3,[R0, #+0]
        LDRB     R4,[R1, #+0]
        SUBS     R3,R3,R4
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
        CMP      R3,#+0
        BEQ.N    ??mem_cmp_0
//  566     return r;
??mem_cmp_1:
        MOVS     R0,R3
        POP      {R4}
        BX       LR               ;; return
//  567 }
//  568 
//  569 /* Check if chr is contained in the string */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  570 static
//  571 int chk_chr (const char *str, int chr)
//  572 {
chk_chr:
        B.N      ??chk_chr_0
//  573     while (*str && *str != chr) str++;
??chk_chr_1:
        ADDS     R0,R0,#+1
??chk_chr_0:
        LDRB     R2,[R0, #+0]
        CMP      R2,#+0
        BEQ.N    ??chk_chr_2
        LDRB     R2,[R0, #+0]
        CMP      R2,R1
        BNE.N    ??chk_chr_1
//  574     return *str;
??chk_chr_2:
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return
//  575 }
//  576 
//  577 
//  578 
//  579 /*-----------------------------------------------------------------------*/
//  580 /* Request/Release grant to access the volume                            */
//  581 /*-----------------------------------------------------------------------*/
//  582 #if _FS_REENTRANT
//  583 
//  584 static
//  585 int lock_fs (
//  586     FATFS *fs		/* File system object */
//  587 )
//  588 {
//  589     return ff_req_grant(fs->sobj);
//  590 }
//  591 
//  592 
//  593 static
//  594 void unlock_fs (
//  595     FATFS *fs,		/* File system object */
//  596     FRESULT res		/* Result code to be returned */
//  597 )
//  598 {
//  599     if (res != FR_NOT_ENABLED &&
//  600             res != FR_INVALID_DRIVE &&
//  601             res != FR_INVALID_OBJECT &&
//  602             res != FR_TIMEOUT)
//  603     {
//  604         ff_rel_grant(fs->sobj);
//  605     }
//  606 }
//  607 #endif
//  608 
//  609 
//  610 
//  611 /*-----------------------------------------------------------------------*/
//  612 /* File shareing control functions                                       */
//  613 /*-----------------------------------------------------------------------*/
//  614 #if _FS_SHARE
//  615 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  616 static
//  617 FRESULT chk_lock (	/* Check if the file can be accessed */
//  618     DIR *dj,		/* Directory object pointing the file to be checked */
//  619     int acc			/* Desired access (0:Read, 1:Write, 2:Delete/Rename) */
//  620 )
//  621 {
chk_lock:
        PUSH     {R4,R5}
//  622     UINT i, be;
//  623 
//  624     /* Search file semaphore table */
//  625     for (i = be = 0; i < _FS_SHARE; i++)
        MOVS     R3,#+0
        MOVS     R2,R3
        B.N      ??chk_lock_0
//  626     {
//  627         if (Files[i].fs)  	/* Existing entry */
//  628         {
//  629             if (Files[i].fs == dj->fs &&	 	/* Check if the file matched with an open file */
//  630                     Files[i].clu == dj->sclust &&
//  631                     Files[i].idx == dj->index) break;
//  632         }
//  633         else  			/* Blank entry */
//  634         {
//  635             be++;
??chk_lock_1:
        ADDS     R2,R2,#+1
//  636         }
??chk_lock_2:
        ADDS     R3,R3,#+1
??chk_lock_0:
        CMP      R3,#+8
        BCS.N    ??chk_lock_3
        MOVS     R4,#+12
        LDR.W    R5,??DataTable7
        MLA      R4,R4,R3,R5
        LDR      R4,[R4, #+0]
        CMP      R4,#+0
        BEQ.N    ??chk_lock_1
        MOVS     R4,#+12
        LDR.W    R5,??DataTable7
        MLA      R4,R4,R3,R5
        LDR      R4,[R4, #+0]
        LDR      R5,[R0, #+0]
        CMP      R4,R5
        BNE.N    ??chk_lock_2
        MOVS     R4,#+12
        LDR.W    R5,??DataTable7
        MLA      R4,R4,R3,R5
        LDR      R4,[R4, #+4]
        LDR      R5,[R0, #+8]
        CMP      R4,R5
        BNE.N    ??chk_lock_2
        MOVS     R4,#+12
        LDR.W    R5,??DataTable7
        MLA      R4,R4,R3,R5
        LDRH     R4,[R4, #+8]
        LDRH     R5,[R0, #+6]
        CMP      R4,R5
        BNE.N    ??chk_lock_2
//  637     }
//  638     if (i == _FS_SHARE)	/* The file is not opened */
??chk_lock_3:
        CMP      R3,#+8
        BNE.N    ??chk_lock_4
//  639         return (be || acc == 2) ? FR_OK : FR_TOO_MANY_OPEN_FILES;	/* Is there a blank entry for new file? */
        CMP      R2,#+0
        BNE.N    ??chk_lock_5
        CMP      R1,#+2
        BNE.N    ??chk_lock_6
??chk_lock_5:
        MOVS     R0,#+0
        B.N      ??chk_lock_7
??chk_lock_6:
        MOVS     R0,#+18
??chk_lock_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??chk_lock_8
//  640 
//  641     /* The file has been opened. Reject any open against writing file and all write mode open */
//  642     return (acc || Files[i].ctr == 0x100) ? FR_LOCKED : FR_OK;
??chk_lock_4:
        CMP      R1,#+0
        BNE.N    ??chk_lock_9
        MOVS     R0,#+12
        LDR.W    R1,??DataTable7
        MLA      R0,R0,R3,R1
        LDRH     R0,[R0, #+10]
        CMP      R0,#+256
        BNE.N    ??chk_lock_10
??chk_lock_9:
        MOVS     R0,#+16
        B.N      ??chk_lock_11
??chk_lock_10:
        MOVS     R0,#+0
??chk_lock_11:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??chk_lock_8:
        POP      {R4,R5}
        BX       LR               ;; return
//  643 }
//  644 
//  645 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  646 static
//  647 int enq_lock (void)	/* Check if an entry is available for a new file */
//  648 {
//  649     UINT i;
//  650 
//  651     for (i = 0; i < _FS_SHARE && Files[i].fs; i++) ;
enq_lock:
        MOVS     R0,#+0
        B.N      ??enq_lock_0
??enq_lock_1:
        ADDS     R0,R0,#+1
??enq_lock_0:
        CMP      R0,#+8
        BCS.N    ??enq_lock_2
        MOVS     R1,#+12
        LDR.W    R2,??DataTable7
        MLA      R1,R1,R0,R2
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??enq_lock_1
//  652     return (i == _FS_SHARE) ? 0 : 1;
??enq_lock_2:
        CMP      R0,#+8
        BNE.N    ??enq_lock_3
        MOVS     R0,#+0
        B.N      ??enq_lock_4
??enq_lock_3:
        MOVS     R0,#+1
??enq_lock_4:
        BX       LR               ;; return
//  653 }
//  654 
//  655 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  656 static
//  657 UINT inc_lock (	/* Increment file open counter and returns its index (0:int error) */
//  658     DIR *dj,	/* Directory object pointing the file to register or increment */
//  659     int acc		/* Desired access mode (0:Read, !0:Write) */
//  660 )
//  661 {
inc_lock:
        PUSH     {R4,R5}
//  662     UINT i;
//  663 
//  664 
//  665     for (i = 0; i < _FS_SHARE; i++)  	/* Find the file */
        MOVS     R2,#+0
        B.N      ??inc_lock_0
??inc_lock_1:
        ADDS     R2,R2,#+1
??inc_lock_0:
        CMP      R2,#+8
        BCS.N    ??inc_lock_2
//  666     {
//  667         if (Files[i].fs == dj->fs &&
//  668                 Files[i].clu == dj->sclust &&
//  669                 Files[i].idx == dj->index) break;
        MOVS     R3,#+12
        LDR.W    R4,??DataTable7
        MLA      R3,R3,R2,R4
        LDR      R3,[R3, #+0]
        LDR      R4,[R0, #+0]
        CMP      R3,R4
        BNE.N    ??inc_lock_1
        MOVS     R3,#+12
        LDR.W    R4,??DataTable7
        MLA      R3,R3,R2,R4
        LDR      R3,[R3, #+4]
        LDR      R4,[R0, #+8]
        CMP      R3,R4
        BNE.N    ??inc_lock_1
        MOVS     R3,#+12
        LDR.W    R4,??DataTable7
        MLA      R3,R3,R2,R4
        LDRH     R3,[R3, #+8]
        LDRH     R4,[R0, #+6]
        CMP      R3,R4
        BNE.N    ??inc_lock_1
//  670     }
//  671 
//  672     if (i == _FS_SHARE)  				/* Not opened. Register it as new. */
??inc_lock_2:
        CMP      R2,#+8
        BNE.N    ??inc_lock_3
//  673     {
//  674         for (i = 0; i < _FS_SHARE && Files[i].fs; i++) ;
        MOVS     R2,#+0
        B.N      ??inc_lock_4
??inc_lock_5:
        ADDS     R2,R2,#+1
??inc_lock_4:
        CMP      R2,#+8
        BCS.N    ??inc_lock_6
        MOVS     R3,#+12
        LDR.W    R4,??DataTable7
        MLA      R3,R3,R2,R4
        LDR      R3,[R3, #+0]
        CMP      R3,#+0
        BNE.N    ??inc_lock_5
//  675         if (i == _FS_SHARE) return 0;	/* No space to register (int err) */
??inc_lock_6:
        CMP      R2,#+8
        BNE.N    ??inc_lock_7
        MOVS     R0,#+0
        B.N      ??inc_lock_8
//  676         Files[i].fs = dj->fs;
??inc_lock_7:
        LDR      R3,[R0, #+0]
        MOVS     R4,#+12
        LDR.W    R5,??DataTable7
        MLA      R4,R4,R2,R5
        STR      R3,[R4, #+0]
//  677         Files[i].clu = dj->sclust;
        LDR      R3,[R0, #+8]
        MOVS     R4,#+12
        LDR.W    R5,??DataTable7
        MLA      R4,R4,R2,R5
        STR      R3,[R4, #+4]
//  678         Files[i].idx = dj->index;
        LDRH     R0,[R0, #+6]
        MOVS     R3,#+12
        LDR.W    R4,??DataTable7
        MLA      R3,R3,R2,R4
        STRH     R0,[R3, #+8]
//  679         Files[i].ctr = 0;
        MOVS     R0,#+0
        MOVS     R3,#+12
        LDR.W    R4,??DataTable7
        MLA      R3,R3,R2,R4
        STRH     R0,[R3, #+10]
//  680     }
//  681 
//  682     if (acc && Files[i].ctr) return 0;	/* Access violation (int err) */
??inc_lock_3:
        CMP      R1,#+0
        BEQ.N    ??inc_lock_9
        MOVS     R0,#+12
        LDR.W    R3,??DataTable7
        MLA      R0,R0,R2,R3
        LDRH     R0,[R0, #+10]
        CMP      R0,#+0
        BEQ.N    ??inc_lock_9
        MOVS     R0,#+0
        B.N      ??inc_lock_8
//  683 
//  684     Files[i].ctr = acc ? 0x100 : Files[i].ctr + 1;	/* Set semaphore value */
??inc_lock_9:
        CMP      R1,#+0
        BEQ.N    ??inc_lock_10
        MOV      R0,#+256
        B.N      ??inc_lock_11
??inc_lock_10:
        MOVS     R0,#+12
        LDR.W    R1,??DataTable7
        MLA      R0,R0,R2,R1
        LDRH     R0,[R0, #+10]
        ADDS     R0,R0,#+1
??inc_lock_11:
        MOVS     R1,#+12
        LDR.W    R3,??DataTable7
        MLA      R1,R1,R2,R3
        STRH     R0,[R1, #+10]
//  685 
//  686     return i + 1;
        ADDS     R0,R2,#+1
??inc_lock_8:
        POP      {R4,R5}
        BX       LR               ;; return
//  687 }
//  688 
//  689 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  690 static
//  691 FRESULT dec_lock (	/* Decrement file open counter */
//  692     UINT i			/* Semaphore index */
//  693 )
//  694 {
//  695     WORD n;
//  696     FRESULT res;
//  697 
//  698 
//  699     if (--i < _FS_SHARE)
dec_lock:
        SUBS     R0,R0,#+1
        CMP      R0,#+8
        BCS.N    ??dec_lock_0
//  700     {
//  701         n = Files[i].ctr;
        MOVS     R1,#+12
        LDR.W    R2,??DataTable7
        MLA      R1,R1,R0,R2
        LDRH     R1,[R1, #+10]
//  702         if (n == 0x100) n = 0;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+256
        BNE.N    ??dec_lock_1
        MOVS     R1,#+0
//  703         if (n) n--;
??dec_lock_1:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BEQ.N    ??dec_lock_2
        SUBS     R1,R1,#+1
//  704         Files[i].ctr = n;
??dec_lock_2:
        MOVS     R2,#+12
        LDR.W    R3,??DataTable7
        MLA      R2,R2,R0,R3
        STRH     R1,[R2, #+10]
//  705         if (!n) Files[i].fs = 0;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??dec_lock_3
        MOVS     R1,#+0
        MOVS     R2,#+12
        LDR.W    R3,??DataTable7
        MLA      R0,R2,R0,R3
        STR      R1,[R0, #+0]
//  706         res = FR_OK;
??dec_lock_3:
        MOVS     R0,#+0
        B.N      ??dec_lock_4
//  707     }
//  708     else
//  709     {
//  710         res = FR_INT_ERR;
??dec_lock_0:
        MOVS     R0,#+2
//  711     }
//  712     return res;
??dec_lock_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  713 }
//  714 
//  715 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  716 static
//  717 void clear_lock (	/* Clear lock entries of the volume */
//  718     FATFS *fs
//  719 )
//  720 {
clear_lock:
        PUSH     {R4}
//  721     UINT i;
//  722 
//  723     for (i = 0; i < _FS_SHARE; i++)
        MOVS     R1,#+0
        B.N      ??clear_lock_0
//  724     {
//  725         if (Files[i].fs == fs) Files[i].fs = 0;
??clear_lock_1:
        MOVS     R2,#+12
        LDR.W    R3,??DataTable7
        MLA      R2,R2,R1,R3
        LDR      R2,[R2, #+0]
        CMP      R2,R0
        BNE.N    ??clear_lock_2
        MOVS     R2,#+0
        MOVS     R3,#+12
        LDR.W    R4,??DataTable7
        MLA      R3,R3,R1,R4
        STR      R2,[R3, #+0]
//  726     }
??clear_lock_2:
        ADDS     R1,R1,#+1
??clear_lock_0:
        CMP      R1,#+8
        BCC.N    ??clear_lock_1
//  727 }
        POP      {R4}
        BX       LR               ;; return
//  728 #endif
//  729 
//  730 
//  731 
//  732 /*-----------------------------------------------------------------------*/
//  733 /* Change window offset                                                  */
//  734 /*-----------------------------------------------------------------------*/
//  735 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  736 static
//  737 FRESULT move_window (
//  738     FATFS *fs,		/* File system object */
//  739     DWORD sector	/* Sector number to make appearance in the fs->win[] */
//  740 )					/* Move to zero only writes back dirty window */
//  741 {
move_window:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  742     DWORD wsect;
//  743 
//  744 
//  745     wsect = fs->winsect;
        LDR      R6,[R4, #+48]
//  746     if (wsect != sector)  	/* Changed current window */
        CMP      R6,R5
        BEQ.N    ??move_window_0
//  747     {
//  748 #if !_FS_READONLY
//  749         if (fs->wflag)  	/* Write back dirty window if needed */
        LDRB     R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??move_window_1
//  750         {
//  751             if (disk_write(fs->drv, fs->win, wsect, 1) != RES_OK)
        MOVS     R3,#+1
        MOVS     R2,R6
        ADDS     R1,R4,#+52
        LDRB     R0,[R4, #+1]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??move_window_2
//  752                 return FR_DISK_ERR;
        MOVS     R0,#+1
        B.N      ??move_window_3
//  753             fs->wflag = 0;
??move_window_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
//  754             if (wsect < (fs->fatbase + fs->fsize))  	/* In FAT area */
        LDR      R0,[R4, #+36]
        LDR      R1,[R4, #+32]
        ADDS     R0,R1,R0
        CMP      R6,R0
        BCS.N    ??move_window_1
//  755             {
//  756                 BYTE nf;
//  757                 for (nf = fs->n_fats; nf > 1; nf--)  	/* Reflect the change to all FAT copies */
        LDRB     R7,[R4, #+3]
        B.N      ??move_window_4
//  758                 {
//  759                     wsect += fs->fsize;
??move_window_5:
        LDR      R0,[R4, #+32]
        ADDS     R6,R0,R6
//  760                     disk_write(fs->drv, fs->win, wsect, 1);
        MOVS     R3,#+1
        MOVS     R2,R6
        ADDS     R1,R4,#+52
        LDRB     R0,[R4, #+1]
        BL       disk_write
//  761                 }
        SUBS     R7,R7,#+1
??move_window_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BGE.N    ??move_window_5
//  762             }
//  763         }
//  764 #endif
//  765         if (sector)
??move_window_1:
        CMP      R5,#+0
        BEQ.N    ??move_window_0
//  766         {
//  767             if (disk_read(fs->drv, fs->win, sector, 1) != RES_OK)
        MOVS     R3,#+1
        MOVS     R2,R5
        ADDS     R1,R4,#+52
        LDRB     R0,[R4, #+1]
        BL       disk_read
        CMP      R0,#+0
        BEQ.N    ??move_window_6
//  768                 return FR_DISK_ERR;
        MOVS     R0,#+1
        B.N      ??move_window_3
//  769             fs->winsect = sector;
??move_window_6:
        STR      R5,[R4, #+48]
//  770         }
//  771     }
//  772 
//  773     return FR_OK;
??move_window_0:
        MOVS     R0,#+0
??move_window_3:
        POP      {R1,R4-R7,PC}    ;; return
//  774 }
//  775 
//  776 
//  777 
//  778 
//  779 /*-----------------------------------------------------------------------*/
//  780 /* Clean-up cached data                                                  */
//  781 /*-----------------------------------------------------------------------*/
//  782 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  783 static
//  784 FRESULT sync (	/* FR_OK: successful, FR_DISK_ERR: failed */
//  785     FATFS *fs	/* File system object */
//  786 )
//  787 {
sync:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  788     FRESULT res;
//  789 
//  790 
//  791     res = move_window(fs, 0);
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       move_window
        MOVS     R5,R0
//  792     if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??sync_0
//  793     {
//  794         /* Update FSInfo sector if needed */
//  795         if (fs->fs_type == FS_FAT32 && fs->fsi_flag)
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BNE.N    ??sync_1
        LDRB     R0,[R4, #+5]
        CMP      R0,#+0
        BEQ.N    ??sync_1
//  796         {
//  797             fs->winsect = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
//  798             /* Create FSInfo structure */
//  799             mem_set(fs->win, 0, 512);
        MOV      R2,#+512
        MOVS     R1,#+0
        ADDS     R0,R4,#+52
        BL       mem_set
//  800             ST_WORD(fs->win + BS_55AA, 0xAA55);
        MOVS     R0,#+85
        STRB     R0,[R4, #+562]
        MOVS     R0,#+170
        STRB     R0,[R4, #+563]
//  801             ST_DWORD(fs->win + FSI_LeadSig, 0x41615252);
        MOVS     R0,#+82
        STRB     R0,[R4, #+52]
        MOVS     R0,#+82
        STRB     R0,[R4, #+53]
        MOVS     R0,#+97
        STRB     R0,[R4, #+54]
        MOVS     R0,#+65
        STRB     R0,[R4, #+55]
//  802             ST_DWORD(fs->win + FSI_StrucSig, 0x61417272);
        MOVS     R0,#+114
        STRB     R0,[R4, #+536]
        MOVS     R0,#+114
        STRB     R0,[R4, #+537]
        MOVS     R0,#+65
        STRB     R0,[R4, #+538]
        MOVS     R0,#+97
        STRB     R0,[R4, #+539]
//  803             ST_DWORD(fs->win + FSI_Free_Count, fs->free_clust);
        LDR      R0,[R4, #+16]
        STRB     R0,[R4, #+540]
        LDR      R0,[R4, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R4, #+541]
        LDR      R0,[R4, #+16]
        LSRS     R0,R0,#+16
        STRB     R0,[R4, #+542]
        LDR      R0,[R4, #+16]
        LSRS     R0,R0,#+24
        STRB     R0,[R4, #+543]
//  804             ST_DWORD(fs->win + FSI_Nxt_Free, fs->last_clust);
        LDR      R0,[R4, #+12]
        STRB     R0,[R4, #+544]
        LDR      R0,[R4, #+12]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R4, #+545]
        LDR      R0,[R4, #+12]
        LSRS     R0,R0,#+16
        STRB     R0,[R4, #+546]
        LDR      R0,[R4, #+12]
        LSRS     R0,R0,#+24
        STRB     R0,[R4, #+547]
//  805             /* Write it into the FSInfo sector */
//  806             disk_write(fs->drv, fs->win, fs->fsi_sector, 1);
        MOVS     R3,#+1
        LDR      R2,[R4, #+20]
        ADDS     R1,R4,#+52
        LDRB     R0,[R4, #+1]
        BL       disk_write
//  807             fs->fsi_flag = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+5]
//  808         }
//  809         /* Make sure that no pending write process in the physical drive */
//  810         if (disk_ioctl(fs->drv, CTRL_SYNC, 0) != RES_OK)
??sync_1:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDRB     R0,[R4, #+1]
        BL       disk_ioctl
        CMP      R0,#+0
        BEQ.N    ??sync_0
//  811             res = FR_DISK_ERR;
        MOVS     R5,#+1
//  812     }
//  813 
//  814     return res;
??sync_0:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  815 }
//  816 #endif
//  817 
//  818 
//  819 
//  820 
//  821 /*-----------------------------------------------------------------------*/
//  822 /* Get sector# from cluster#                                             */
//  823 /*-----------------------------------------------------------------------*/
//  824 
//  825 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  826 DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
//  827     FATFS *fs,		/* File system object */
//  828     DWORD clst		/* Cluster# to be converted */
//  829 )
//  830 {
//  831     clst -= 2;
clust2sect:
        SUBS     R1,R1,#+2
//  832     if (clst >= (fs->n_fatent - 2)) return 0;		/* Invalid cluster# */
        LDR      R2,[R0, #+28]
        SUBS     R2,R2,#+2
        CMP      R1,R2
        BCC.N    ??clust2sect_0
        MOVS     R0,#+0
        B.N      ??clust2sect_1
//  833     return clst * fs->csize + fs->database;
??clust2sect_0:
        LDRB     R2,[R0, #+2]
        LDR      R0,[R0, #+44]
        MLA      R0,R2,R1,R0
??clust2sect_1:
        BX       LR               ;; return
//  834 }
//  835 
//  836 
//  837 
//  838 
//  839 /*-----------------------------------------------------------------------*/
//  840 /* FAT access - Read value of a FAT entry                                */
//  841 /*-----------------------------------------------------------------------*/
//  842 
//  843 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  844 DWORD get_fat (	/* 0xFFFFFFFF:Disk error, 1:Internal error, Else:Cluster status */
//  845     FATFS *fs,	/* File system object */
//  846     DWORD clst	/* Cluster# to get the link information */
//  847 )
//  848 {
get_fat:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  849     UINT wc, bc;
//  850     BYTE *p;
//  851 
//  852 
//  853     if (clst < 2 || clst >= fs->n_fatent)	/* Chack range */
        CMP      R5,#+2
        BCC.N    ??get_fat_0
        LDR      R0,[R4, #+28]
        CMP      R5,R0
        BCC.N    ??get_fat_1
//  854         return 1;
??get_fat_0:
        MOVS     R0,#+1
        B.N      ??get_fat_2
//  855 
//  856     switch (fs->fs_type)
??get_fat_1:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ.N    ??get_fat_3
        BCC.N    ??get_fat_4
        CMP      R0,#+3
        BEQ.N    ??get_fat_5
        BCC.N    ??get_fat_6
        B.N      ??get_fat_4
//  857     {
//  858     case FS_FAT12 :
//  859         bc = (UINT)clst;
??get_fat_3:
        MOVS     R6,R5
//  860         bc += bc / 2;
        ADDS     R6,R6,R6, LSR #+1
//  861         if (move_window(fs, fs->fatbase + (bc / SS(fs)))) break;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,R6, LSR #+9
        MOVS     R0,R4
        BL       move_window
        CMP      R0,#+0
        BEQ.N    ??get_fat_7
//  862         wc = fs->win[bc % SS(fs)];
//  863         bc++;
//  864         if (move_window(fs, fs->fatbase + (bc / SS(fs)))) break;
//  865         wc |= fs->win[bc % SS(fs)] << 8;
//  866         return (clst & 1) ? (wc >> 4) : (wc & 0xFFF);
//  867 
//  868     case FS_FAT16 :
//  869         if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 2)))) break;
//  870         p = &fs->win[clst * 2 % SS(fs)];
//  871         return LD_WORD(p);
//  872 
//  873     case FS_FAT32 :
//  874         if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 4)))) break;
//  875         p = &fs->win[clst * 4 % SS(fs)];
//  876         return LD_DWORD(p) & 0x0FFFFFFF;
//  877     }
//  878 
//  879     return 0xFFFFFFFF;	/* An error occurred at the disk I/O layer */
??get_fat_4:
        MOVS     R0,#-1
??get_fat_2:
        POP      {R1,R4-R7,PC}    ;; return
??get_fat_7:
        MOV      R0,#+512
        UDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        ADDS     R0,R1,R4
        LDRB     R7,[R0, #+52]
        ADDS     R6,R6,#+1
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,R6, LSR #+9
        MOVS     R0,R4
        BL       move_window
        CMP      R0,#+0
        BNE.N    ??get_fat_4
??get_fat_8:
        MOV      R0,#+512
        UDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        ADDS     R0,R1,R4
        LDRB     R0,[R0, #+52]
        ORRS     R7,R7,R0, LSL #+8
        LSLS     R0,R5,#+31
        BPL.N    ??get_fat_9
        LSRS     R0,R7,#+4
        B.N      ??get_fat_10
??get_fat_9:
        LSLS     R0,R7,#+20       ;; ZeroExtS R0,R7,#+20,#+20
        LSRS     R0,R0,#+20
??get_fat_10:
        B.N      ??get_fat_2
??get_fat_6:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,R5, LSR #+8
        MOVS     R0,R4
        BL       move_window
        CMP      R0,#+0
        BNE.N    ??get_fat_4
??get_fat_11:
        LSLS     R0,R5,#+1
        MOV      R1,#+512
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        ADDS     R0,R2,R4
        ADDS     R0,R0,#+52
        LDRB     R1,[R0, #+1]
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,R1, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        B.N      ??get_fat_2
??get_fat_5:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,R5, LSR #+7
        MOVS     R0,R4
        BL       move_window
        CMP      R0,#+0
        BNE.N    ??get_fat_4
??get_fat_12:
        LSLS     R0,R5,#+2
        MOV      R1,#+512
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        ADDS     R0,R2,R4
        ADDS     R0,R0,#+52
        LDRB     R1,[R0, #+3]
        LDRB     R2,[R0, #+2]
        LSLS     R2,R2,#+16
        ORRS     R1,R2,R1, LSL #+24
        LDRB     R2,[R0, #+1]
        ORRS     R1,R1,R2, LSL #+8
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,R1
        LSLS     R0,R0,#+4        ;; ZeroExtS R0,R0,#+4,#+4
        LSRS     R0,R0,#+4
        B.N      ??get_fat_2
//  880 }
//  881 
//  882 
//  883 
//  884 
//  885 /*-----------------------------------------------------------------------*/
//  886 /* FAT access - Change value of a FAT entry                              */
//  887 /*-----------------------------------------------------------------------*/
//  888 #if !_FS_READONLY
//  889 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  890 FRESULT put_fat (
//  891     FATFS *fs,	/* File system object */
//  892     DWORD clst,	/* Cluster# to be changed in range of 2 to fs->n_fatent - 1 */
//  893     DWORD val	/* New value to mark the cluster */
//  894 )
//  895 {
put_fat:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  896     UINT bc;
//  897     BYTE *p;
//  898     FRESULT res;
//  899 
//  900 
//  901     if (clst < 2 || clst >= fs->n_fatent)  	/* Check range */
        CMP      R5,#+2
        BCC.N    ??put_fat_0
        LDR      R0,[R4, #+28]
        CMP      R5,R0
        BCC.N    ??put_fat_1
//  902     {
//  903         res = FR_INT_ERR;
??put_fat_0:
        MOVS     R0,#+2
        B.N      ??put_fat_2
//  904 
//  905     }
//  906     else
//  907     {
//  908         switch (fs->fs_type)
??put_fat_1:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ.N    ??put_fat_3
        BCC.N    ??put_fat_4
        CMP      R0,#+3
        BEQ.N    ??put_fat_5
        BCC.N    ??put_fat_6
        B.N      ??put_fat_4
//  909         {
//  910         case FS_FAT12 :
//  911             bc = clst;
??put_fat_3:
        MOVS     R7,R5
//  912             bc += bc / 2;
        ADDS     R7,R7,R7, LSR #+1
//  913             res = move_window(fs, fs->fatbase + (bc / SS(fs)));
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,R7, LSR #+9
        MOVS     R0,R4
        BL       move_window
//  914             if (res != FR_OK) break;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??put_fat_7
//  915             p = &fs->win[bc % SS(fs)];
??put_fat_8:
        MOV      R0,#+512
        UDIV     R1,R7,R0
        MLS      R1,R1,R0,R7
        ADDS     R0,R1,R4
        ADDS     R1,R0,#+52
//  916             *p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;
        LSLS     R0,R5,#+31
        BPL.N    ??put_fat_9
        LDRB     R0,[R1, #+0]
        ANDS     R0,R0,#0xF
        ORRS     R0,R0,R6, LSL #+4
        B.N      ??put_fat_10
??put_fat_9:
        MOVS     R0,R6
??put_fat_10:
        STRB     R0,[R1, #+0]
//  917             bc++;
        ADDS     R7,R7,#+1
//  918             fs->wflag = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+4]
//  919             res = move_window(fs, fs->fatbase + (bc / SS(fs)));
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,R7, LSR #+9
        MOVS     R0,R4
        BL       move_window
//  920             if (res != FR_OK) break;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??put_fat_7
//  921             p = &fs->win[bc % SS(fs)];
??put_fat_11:
        MOV      R1,#+512
        UDIV     R2,R7,R1
        MLS      R2,R2,R1,R7
        ADDS     R1,R2,R4
        ADDS     R1,R1,#+52
//  922             *p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));
        LSLS     R2,R5,#+31
        BPL.N    ??put_fat_12
        LSRS     R2,R6,#+4
        B.N      ??put_fat_13
??put_fat_12:
        LDRB     R2,[R1, #+0]
        ANDS     R2,R2,#0xF0
        LSRS     R3,R6,#+8
        ANDS     R3,R3,#0xF
        ORRS     R2,R3,R2
??put_fat_13:
        STRB     R2,[R1, #+0]
//  923             break;
        B.N      ??put_fat_7
//  924 
//  925         case FS_FAT16 :
//  926             res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 2)));
??put_fat_6:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,R5, LSR #+8
        MOVS     R0,R4
        BL       move_window
//  927             if (res != FR_OK) break;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??put_fat_7
//  928             p = &fs->win[clst * 2 % SS(fs)];
??put_fat_14:
        LSLS     R1,R5,#+1
        MOV      R2,#+512
        UDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        ADDS     R1,R3,R4
        ADDS     R1,R1,#+52
//  929             ST_WORD(p, (WORD)val);
        STRB     R6,[R1, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R2,R6,#+8
        STRB     R2,[R1, #+1]
//  930             break;
        B.N      ??put_fat_7
//  931 
//  932         case FS_FAT32 :
//  933             res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 4)));
??put_fat_5:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,R5, LSR #+7
        MOVS     R0,R4
        BL       move_window
//  934             if (res != FR_OK) break;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??put_fat_7
//  935             p = &fs->win[clst * 4 % SS(fs)];
??put_fat_15:
        LSLS     R1,R5,#+2
        MOV      R2,#+512
        UDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        ADDS     R1,R3,R4
        ADDS     R1,R1,#+52
//  936             val |= LD_DWORD(p) & 0xF0000000;
        LDRB     R2,[R1, #+3]
        LSLS     R2,R2,#+24
        ANDS     R2,R2,#0xF0000000
        ORRS     R6,R2,R6
//  937             ST_DWORD(p, val);
        STRB     R6,[R1, #+0]
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R2,R2,#+8
        STRB     R2,[R1, #+1]
        LSRS     R2,R6,#+16
        STRB     R2,[R1, #+2]
        LSRS     R2,R6,#+24
        STRB     R2,[R1, #+3]
//  938             break;
        B.N      ??put_fat_7
//  939 
//  940         default :
//  941             res = FR_INT_ERR;
??put_fat_4:
        MOVS     R0,#+2
//  942         }
//  943         fs->wflag = 1;
??put_fat_7:
        MOVS     R1,#+1
        STRB     R1,[R4, #+4]
//  944     }
//  945 
//  946     return res;
??put_fat_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
//  947 }
//  948 #endif /* !_FS_READONLY */
//  949 
//  950 
//  951 
//  952 
//  953 /*-----------------------------------------------------------------------*/
//  954 /* FAT handling - Remove a cluster chain                                 */
//  955 /*-----------------------------------------------------------------------*/
//  956 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  957 static
//  958 FRESULT remove_chain (
//  959     FATFS *fs,			/* File system object */
//  960     DWORD clst			/* Cluster# to remove a chain from */
//  961 )
//  962 {
remove_chain:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R6,R1
//  963     FRESULT res;
//  964     DWORD nxt;
//  965 #if _USE_ERASE
//  966     DWORD scl = clst, ecl = clst, resion[2];
//  967 #endif
//  968 
//  969     if (clst < 2 || clst >= fs->n_fatent)  	/* Check range */
        CMP      R6,#+2
        BCC.N    ??remove_chain_0
        LDR      R0,[R4, #+28]
        CMP      R6,R0
        BCC.N    ??remove_chain_1
//  970     {
//  971         res = FR_INT_ERR;
??remove_chain_0:
        MOVS     R5,#+2
        B.N      ??remove_chain_2
//  972 
//  973     }
//  974     else
//  975     {
//  976         res = FR_OK;
??remove_chain_1:
        MOVS     R5,#+0
        B.N      ??remove_chain_3
//  977         while (clst < fs->n_fatent)  			/* Not a last link? */
//  978         {
//  979             nxt = get_fat(fs, clst);			/* Get cluster status */
//  980             if (nxt == 0) break;				/* Empty cluster? */
//  981             if (nxt == 1)
//  982             {
//  983                 res = FR_INT_ERR;    /* Internal error? */
//  984                 break;
//  985             }
//  986             if (nxt == 0xFFFFFFFF)
//  987             {
//  988                 res = FR_DISK_ERR;    /* Disk error? */
//  989                 break;
//  990             }
//  991             res = put_fat(fs, clst, 0);			/* Mark the cluster "empty" */
//  992             if (res != FR_OK) break;
//  993             if (fs->free_clust != 0xFFFFFFFF)  	/* Update FSInfo */
??remove_chain_4:
        LDR      R0,[R4, #+16]
        CMN      R0,#+1
        BEQ.N    ??remove_chain_5
//  994             {
//  995                 fs->free_clust++;
        LDR      R0,[R4, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+16]
//  996                 fs->fsi_flag = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+5]
//  997             }
//  998 #if _USE_ERASE
//  999             if (ecl + 1 == nxt)  	/* Next cluster is contiguous */
// 1000             {
// 1001                 ecl = nxt;
// 1002             }
// 1003             else  				/* End of contiguous clusters */
// 1004             {
// 1005                 resion[0] = clust2sect(fs, scl);					/* Start sector */
// 1006                 resion[1] = clust2sect(fs, ecl) + fs->csize - 1;	/* End sector */
// 1007                 disk_ioctl(fs->drv, CTRL_ERASE_SECTOR, resion);		/* Erase the block */
// 1008                 scl = ecl = nxt;
// 1009             }
// 1010 #endif
// 1011             clst = nxt;	/* Next cluster */
??remove_chain_5:
        MOVS     R6,R7
??remove_chain_3:
        LDR      R0,[R4, #+28]
        CMP      R6,R0
        BCS.N    ??remove_chain_2
        MOVS     R1,R6
        MOVS     R0,R4
        BL       get_fat
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??remove_chain_2
??remove_chain_6:
        CMP      R7,#+1
        BNE.N    ??remove_chain_7
        MOVS     R5,#+2
        B.N      ??remove_chain_2
??remove_chain_7:
        CMN      R7,#+1
        BNE.N    ??remove_chain_8
        MOVS     R5,#+1
        B.N      ??remove_chain_2
??remove_chain_8:
        MOVS     R2,#+0
        MOVS     R1,R6
        MOVS     R0,R4
        BL       put_fat
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??remove_chain_4
// 1012         }
// 1013     }
// 1014 
// 1015     return res;
??remove_chain_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
// 1016 }
// 1017 #endif
// 1018 
// 1019 
// 1020 
// 1021 
// 1022 /*-----------------------------------------------------------------------*/
// 1023 /* FAT handling - Stretch or Create a cluster chain                      */
// 1024 /*-----------------------------------------------------------------------*/
// 1025 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1026 static
// 1027 DWORD create_chain (	/* 0:No free cluster, 1:Internal error, 0xFFFFFFFF:Disk error, >=2:New cluster# */
// 1028     FATFS *fs,			/* File system object */
// 1029     DWORD clst			/* Cluster# to stretch. 0 means create a new chain. */
// 1030 )
// 1031 {
create_chain:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R6,R1
// 1032     DWORD cs, ncl, scl;
// 1033     FRESULT res;
// 1034 
// 1035 
// 1036     if (clst == 0)  		/* Create a new chain */
        CMP      R6,#+0
        BNE.N    ??create_chain_0
// 1037     {
// 1038         scl = fs->last_clust;			/* Get suggested start point */
        LDR      R7,[R4, #+12]
// 1039         if (!scl || scl >= fs->n_fatent) scl = 1;
        CMP      R7,#+0
        BEQ.N    ??create_chain_1
        LDR      R0,[R4, #+28]
        CMP      R7,R0
        BCC.N    ??create_chain_2
??create_chain_1:
        MOVS     R7,#+1
        B.N      ??create_chain_2
// 1040     }
// 1041     else  					/* Stretch the current chain */
// 1042     {
// 1043         cs = get_fat(fs, clst);			/* Check the cluster status */
??create_chain_0:
        MOVS     R1,R6
        MOVS     R0,R4
        BL       get_fat
// 1044         if (cs < 2) return 1;			/* It is an invalid cluster */
        CMP      R0,#+2
        BCS.N    ??create_chain_3
        MOVS     R0,#+1
        B.N      ??create_chain_4
// 1045         if (cs < fs->n_fatent) return cs;	/* It is already followed by next cluster */
??create_chain_3:
        LDR      R1,[R4, #+28]
        CMP      R0,R1
        BCC.N    ??create_chain_4
// 1046         scl = clst;
??create_chain_5:
        MOVS     R7,R6
// 1047     }
// 1048 
// 1049     ncl = scl;				/* Start cluster */
??create_chain_2:
        MOVS     R5,R7
// 1050     for (;;)
// 1051     {
// 1052         ncl++;							/* Next cluster */
??create_chain_6:
        ADDS     R5,R5,#+1
// 1053         if (ncl >= fs->n_fatent)  		/* Wrap around */
        LDR      R0,[R4, #+28]
        CMP      R5,R0
        BCC.N    ??create_chain_7
// 1054         {
// 1055             ncl = 2;
        MOVS     R5,#+2
// 1056             if (ncl > scl) return 0;	/* No free cluster */
        CMP      R7,R5
        BCS.N    ??create_chain_7
        MOVS     R0,#+0
        B.N      ??create_chain_4
// 1057         }
// 1058         cs = get_fat(fs, ncl);			/* Get the cluster status */
??create_chain_7:
        MOVS     R1,R5
        MOVS     R0,R4
        BL       get_fat
// 1059         if (cs == 0) break;				/* Found a free cluster */
        CMP      R0,#+0
        BNE.N    ??create_chain_8
// 1060         if (cs == 0xFFFFFFFF || cs == 1)/* An error occurred */
// 1061             return cs;
// 1062         if (ncl == scl) return 0;		/* No free cluster */
// 1063     }
// 1064 
// 1065     res = put_fat(fs, ncl, 0x0FFFFFFF);	/* Mark the new cluster "last link" */
        MVNS     R2,#-268435456
        MOVS     R1,R5
        MOVS     R0,R4
        BL       put_fat
// 1066     if (res == FR_OK && clst != 0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??create_chain_9
        CMP      R6,#+0
        BEQ.N    ??create_chain_9
// 1067     {
// 1068         res = put_fat(fs, clst, ncl);	/* Link it to the previous one if needed */
        MOVS     R2,R5
        MOVS     R1,R6
        MOVS     R0,R4
        BL       put_fat
// 1069     }
// 1070     if (res == FR_OK)
??create_chain_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??create_chain_10
// 1071     {
// 1072         fs->last_clust = ncl;			/* Update FSINFO */
        STR      R5,[R4, #+12]
// 1073         if (fs->free_clust != 0xFFFFFFFF)
        LDR      R0,[R4, #+16]
        CMN      R0,#+1
        BEQ.N    ??create_chain_11
// 1074         {
// 1075             fs->free_clust--;
        LDR      R0,[R4, #+16]
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+16]
// 1076             fs->fsi_flag = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+5]
        B.N      ??create_chain_11
// 1077         }
// 1078     }
??create_chain_8:
        CMN      R0,#+1
        BEQ.N    ??create_chain_12
        CMP      R0,#+1
        BNE.N    ??create_chain_13
??create_chain_12:
        B.N      ??create_chain_4
??create_chain_13:
        CMP      R5,R7
        BNE.N    ??create_chain_6
        MOVS     R0,#+0
        B.N      ??create_chain_4
// 1079     else
// 1080     {
// 1081         ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;
??create_chain_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??create_chain_14
        MOVS     R5,#-1
        B.N      ??create_chain_11
??create_chain_14:
        MOVS     R5,#+1
// 1082     }
// 1083 
// 1084     return ncl;		/* Return new cluster number or error code */
??create_chain_11:
        MOVS     R0,R5
??create_chain_4:
        POP      {R1,R4-R7,PC}    ;; return
// 1085 }
// 1086 #endif /* !_FS_READONLY */
// 1087 
// 1088 
// 1089 
// 1090 /*-----------------------------------------------------------------------*/
// 1091 /* FAT handling - Convert offset into cluster with link map table        */
// 1092 /*-----------------------------------------------------------------------*/
// 1093 
// 1094 #if _USE_FASTSEEK

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1095 static
// 1096 DWORD clmt_clust (	/* <2:Error, >=2:Cluster number */
// 1097     FIL *fp,		/* Pointer to the file object */
// 1098     DWORD ofs		/* File offset to be converted to cluster# */
// 1099 )
// 1100 {
// 1101     DWORD cl, ncl, *tbl;
// 1102 
// 1103 
// 1104     tbl = fp->cltbl + 1;	/* Top of CLMT */
clmt_clust:
        LDR      R2,[R0, #+36]
        ADDS     R2,R2,#+4
// 1105     cl = ofs / SS(fp->fs) / fp->fs->csize;	/* Cluster order from top of the file */
        LSRS     R1,R1,#+9
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        UDIV     R0,R1,R0
        B.N      ??clmt_clust_0
// 1106     for (;;)
// 1107     {
// 1108         ncl = *tbl++;			/* Number of cluters in the fragment */
// 1109         if (!ncl) return 0;		/* End of table? (error) */
// 1110         if (cl < ncl) break;	/* In this fragment? */
// 1111         cl -= ncl;
??clmt_clust_1:
        SUBS     R0,R0,R1
// 1112         tbl++;		/* Next fragment */
        ADDS     R2,R2,#+4
??clmt_clust_0:
        LDR      R1,[R2, #+0]
        ADDS     R2,R2,#+4
        CMP      R1,#+0
        BNE.N    ??clmt_clust_2
        MOVS     R0,#+0
        B.N      ??clmt_clust_3
??clmt_clust_2:
        CMP      R0,R1
        BCS.N    ??clmt_clust_1
// 1113     }
// 1114     return cl + *tbl;	/* Return the cluster number */
        LDR      R1,[R2, #+0]
        ADDS     R0,R1,R0
??clmt_clust_3:
        BX       LR               ;; return
// 1115 }
// 1116 #endif	/* _USE_FASTSEEK */
// 1117 
// 1118 
// 1119 
// 1120 /*-----------------------------------------------------------------------*/
// 1121 /* Directory handling - Set directory index                              */
// 1122 /*-----------------------------------------------------------------------*/
// 1123 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1124 static
// 1125 FRESULT dir_sdi (
// 1126     DIR *dj,		/* Pointer to directory object */
// 1127     WORD idx		/* Directory index number */
// 1128 )
// 1129 {
dir_sdi:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 1130     DWORD clst;
// 1131     WORD ic;
// 1132 
// 1133 
// 1134     dj->index = idx;
        STRH     R5,[R4, #+6]
// 1135     clst = dj->sclust;
        LDR      R0,[R4, #+8]
// 1136     if (clst == 1 || clst >= dj->fs->n_fatent)	/* Check start cluster range */
        CMP      R0,#+1
        BEQ.N    ??dir_sdi_0
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+28]
        CMP      R0,R1
        BCC.N    ??dir_sdi_1
// 1137         return FR_INT_ERR;
??dir_sdi_0:
        MOVS     R0,#+2
        B.N      ??dir_sdi_2
// 1138     if (!clst && dj->fs->fs_type == FS_FAT32)	/* Replace cluster# 0 with root cluster# if in FAT32 */
??dir_sdi_1:
        CMP      R0,#+0
        BNE.N    ??dir_sdi_3
        LDR      R1,[R4, #+0]
        LDRB     R1,[R1, #+0]
        CMP      R1,#+3
        BNE.N    ??dir_sdi_3
// 1139         clst = dj->fs->dirbase;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+40]
// 1140 
// 1141     if (clst == 0)  	/* Static table (root-dir in FAT12/16) */
??dir_sdi_3:
        CMP      R0,#+0
        BNE.N    ??dir_sdi_4
// 1142     {
// 1143         dj->clust = clst;
        STR      R0,[R4, #+12]
// 1144         if (idx >= dj->fs->n_rootdir)		/* Index is out of range */
        LDR      R0,[R4, #+0]
        LDRH     R0,[R0, #+8]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BCC.N    ??dir_sdi_5
// 1145             return FR_INT_ERR;
        MOVS     R0,#+2
        B.N      ??dir_sdi_2
// 1146         dj->sect = dj->fs->dirbase + idx / (SS(dj->fs) / SZ_DIR);	/* Sector# */
??dir_sdi_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+40]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R0,R0,R5, LSR #+4
        STR      R0,[R4, #+16]
        B.N      ??dir_sdi_6
// 1147     }
// 1148     else  				/* Dynamic table (sub-dirs or root-dir in FAT32) */
// 1149     {
// 1150         ic = SS(dj->fs) / SZ_DIR * dj->fs->csize;	/* Entries per cluster */
??dir_sdi_4:
        LDR      R1,[R4, #+0]
        LDRB     R1,[R1, #+2]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSLS     R6,R1,#+4
        B.N      ??dir_sdi_7
// 1151         while (idx >= ic)  	/* Follow cluster chain */
// 1152         {
// 1153             clst = get_fat(dj->fs, clst);				/* Get next cluster */
// 1154             if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
// 1155             if (clst < 2 || clst >= dj->fs->n_fatent)	/* Reached to end of table or int error */
// 1156                 return FR_INT_ERR;
// 1157             idx -= ic;
??dir_sdi_8:
        SUBS     R5,R5,R6
??dir_sdi_7:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R5,R6
        BCC.N    ??dir_sdi_9
        MOVS     R1,R0
        LDR      R0,[R4, #+0]
        BL       get_fat
        CMN      R0,#+1
        BNE.N    ??dir_sdi_10
        MOVS     R0,#+1
        B.N      ??dir_sdi_2
??dir_sdi_10:
        CMP      R0,#+2
        BCC.N    ??dir_sdi_11
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+28]
        CMP      R0,R1
        BCC.N    ??dir_sdi_8
??dir_sdi_11:
        MOVS     R0,#+2
        B.N      ??dir_sdi_2
// 1158         }
// 1159         dj->clust = clst;
??dir_sdi_9:
        STR      R0,[R4, #+12]
// 1160         dj->sect = clust2sect(dj->fs, clst) + idx / (SS(dj->fs) / SZ_DIR);	/* Sector# */
        MOVS     R1,R0
        LDR      R0,[R4, #+0]
        BL       clust2sect
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R0,R0,R5, LSR #+4
        STR      R0,[R4, #+16]
// 1161     }
// 1162 
// 1163     dj->dir = dj->fs->win + (idx % (SS(dj->fs) / SZ_DIR)) * SZ_DIR;	/* Ptr to the entry in the sector */
??dir_sdi_6:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R0,#+16
        UDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,R1, LSL #+5
        ADDS     R0,R0,#+52
        STR      R0,[R4, #+20]
// 1164 
// 1165     return FR_OK;	/* Seek succeeded */
        MOVS     R0,#+0
??dir_sdi_2:
        POP      {R4-R6,PC}       ;; return
// 1166 }
// 1167 
// 1168 
// 1169 
// 1170 
// 1171 /*-----------------------------------------------------------------------*/
// 1172 /* Directory handling - Move directory index next                        */
// 1173 /*-----------------------------------------------------------------------*/
// 1174 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1175 static
// 1176 FRESULT dir_next (	/* FR_OK:Succeeded, FR_NO_FILE:End of table, FR_DENIED:EOT and could not stretch */
// 1177     DIR *dj,		/* Pointer to directory object */
// 1178     int stretch		/* 0: Do not stretch table, 1: Stretch table if needed */
// 1179 )
// 1180 {
dir_next:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 1181     DWORD clst;
// 1182     WORD i;
// 1183 
// 1184 
// 1185     stretch = stretch;		/* To suppress warning on read-only cfg. */
// 1186     i = dj->index + 1;
        LDRH     R0,[R4, #+6]
        ADDS     R6,R0,#+1
// 1187     if (!i || !dj->sect)	/* Report EOT when index has reached 65535 */
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??dir_next_0
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BNE.N    ??dir_next_1
// 1188         return FR_NO_FILE;
??dir_next_0:
        MOVS     R0,#+4
        B.N      ??dir_next_2
// 1189 
// 1190     if (!(i % (SS(dj->fs) / SZ_DIR)))  	/* Sector changed? */
??dir_next_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,#+16
        UDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        CMP      R1,#+0
        BNE.N    ??dir_next_3
// 1191     {
// 1192         dj->sect++;					/* Next sector */
        LDR      R0,[R4, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+16]
// 1193 
// 1194         if (dj->clust == 0)  	/* Static table */
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??dir_next_4
// 1195         {
// 1196             if (i >= dj->fs->n_rootdir)	/* Report EOT when end of table */
        LDR      R0,[R4, #+0]
        LDRH     R0,[R0, #+8]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BCC.N    ??dir_next_3
// 1197                 return FR_NO_FILE;
        MOVS     R0,#+4
        B.N      ??dir_next_2
// 1198         }
// 1199         else  					/* Dynamic table */
// 1200         {
// 1201             if (((i / (SS(dj->fs) / SZ_DIR)) & (dj->fs->csize - 1)) == 0)  	/* Cluster changed? */
??dir_next_4:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDR      R0,[R4, #+0]
        LDRB     R0,[R0, #+2]
        SUBS     R0,R0,#+1
        TST      R0,R6, LSR #+4
        BNE.N    ??dir_next_3
// 1202             {
// 1203                 clst = get_fat(dj->fs, dj->clust);				/* Get next cluster */
        LDR      R1,[R4, #+12]
        LDR      R0,[R4, #+0]
        BL       get_fat
        MOVS     R7,R0
// 1204                 if (clst <= 1) return FR_INT_ERR;
        CMP      R7,#+2
        BCS.N    ??dir_next_5
        MOVS     R0,#+2
        B.N      ??dir_next_2
// 1205                 if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
??dir_next_5:
        CMN      R7,#+1
        BNE.N    ??dir_next_6
        MOVS     R0,#+1
        B.N      ??dir_next_2
// 1206                 if (clst >= dj->fs->n_fatent)  					/* When it reached end of dynamic table */
??dir_next_6:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        CMP      R7,R0
        BCC.N    ??dir_next_7
// 1207                 {
// 1208 #if !_FS_READONLY
// 1209                     BYTE c;
// 1210                     if (!stretch) return FR_NO_FILE;			/* When do not stretch, report EOT */
        CMP      R5,#+0
        BNE.N    ??dir_next_8
        MOVS     R0,#+4
        B.N      ??dir_next_2
// 1211                     clst = create_chain(dj->fs, dj->clust);		/* Stretch cluster chain */
??dir_next_8:
        LDR      R1,[R4, #+12]
        LDR      R0,[R4, #+0]
        BL       create_chain
        MOVS     R7,R0
// 1212                     if (clst == 0) return FR_DENIED;			/* No free cluster */
        CMP      R7,#+0
        BNE.N    ??dir_next_9
        MOVS     R0,#+7
        B.N      ??dir_next_2
// 1213                     if (clst == 1) return FR_INT_ERR;
??dir_next_9:
        CMP      R7,#+1
        BNE.N    ??dir_next_10
        MOVS     R0,#+2
        B.N      ??dir_next_2
// 1214                     if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
??dir_next_10:
        CMN      R7,#+1
        BNE.N    ??dir_next_11
        MOVS     R0,#+1
        B.N      ??dir_next_2
// 1215                     /* Clean-up stretched table */
// 1216                     if (move_window(dj->fs, 0)) return FR_DISK_ERR;	/* Flush active window */
??dir_next_11:
        MOVS     R1,#+0
        LDR      R0,[R4, #+0]
        BL       move_window
        CMP      R0,#+0
        BEQ.N    ??dir_next_12
        MOVS     R0,#+1
        B.N      ??dir_next_2
// 1217                     mem_set(dj->fs->win, 0, SS(dj->fs));			/* Clear window buffer */
??dir_next_12:
        MOV      R2,#+512
        MOVS     R1,#+0
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+52
        BL       mem_set
// 1218                     dj->fs->winsect = clust2sect(dj->fs, clst);	/* Cluster start sector */
        MOVS     R1,R7
        LDR      R0,[R4, #+0]
        BL       clust2sect
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+48]
// 1219                     for (c = 0; c < dj->fs->csize; c++)  		/* Fill the new cluster with 0 */
        MOVS     R5,#+0
        B.N      ??dir_next_13
// 1220                     {
// 1221                         dj->fs->wflag = 1;
// 1222                         if (move_window(dj->fs, 0)) return FR_DISK_ERR;
// 1223                         dj->fs->winsect++;
??dir_next_14:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+48]
        ADDS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+48]
        ADDS     R5,R5,#+1
??dir_next_13:
        LDR      R0,[R4, #+0]
        LDRB     R0,[R0, #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BCS.N    ??dir_next_15
        MOVS     R0,#+1
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+4]
        MOVS     R1,#+0
        LDR      R0,[R4, #+0]
        BL       move_window
        CMP      R0,#+0
        BEQ.N    ??dir_next_14
        MOVS     R0,#+1
        B.N      ??dir_next_2
// 1224                     }
// 1225                     dj->fs->winsect -= c;						/* Rewind window address */
??dir_next_15:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+48]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R0,R5
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+48]
// 1226 #else
// 1227                     return FR_NO_FILE;			/* Report EOT */
// 1228 #endif
// 1229                 }
// 1230                 dj->clust = clst;				/* Initialize data for new cluster */
??dir_next_7:
        STR      R7,[R4, #+12]
// 1231                 dj->sect = clust2sect(dj->fs, clst);
        MOVS     R1,R7
        LDR      R0,[R4, #+0]
        BL       clust2sect
        STR      R0,[R4, #+16]
// 1232             }
// 1233         }
// 1234     }
// 1235 
// 1236     dj->index = i;
??dir_next_3:
        STRH     R6,[R4, #+6]
// 1237     dj->dir = dj->fs->win + (i % (SS(dj->fs) / SZ_DIR)) * SZ_DIR;
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,#+16
        UDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,R1, LSL #+5
        ADDS     R0,R0,#+52
        STR      R0,[R4, #+20]
// 1238 
// 1239     return FR_OK;
        MOVS     R0,#+0
??dir_next_2:
        POP      {R1,R4-R7,PC}    ;; return
// 1240 }

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\"*:<>?|\\177">`:
        DATA
        DC8 "\"*:<>?|\177"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "+,;=[]">`:
        DATA
        DC8 "+,;=[]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\353\\376\\220MSDOS5.0">`:
        DATA
        DC8 "\353\376\220MSDOS5.0"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "NO NAME    FAT32   ">`:
        DATA
        DC8 "NO NAME    FAT32   "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "NO NAME    FAT     ">`:
        DATA
        DC8 "NO NAME    FAT     "
// 1241 
// 1242 
// 1243 
// 1244 
// 1245 /*-----------------------------------------------------------------------*/
// 1246 /* LFN handling - Test/Pick/Fit an LFN segment from/to directory entry   */
// 1247 /*-----------------------------------------------------------------------*/
// 1248 #if _USE_LFN
// 1249 static

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// 1250 const BYTE LfnOfs[] = {1, 3, 5, 7, 9, 14, 16, 18, 20, 22, 24, 28, 30};	/* Offset of LFN chars in the directory entry */
LfnOfs:
        DATA
        DC8 1, 3, 5, 7, 9, 14, 16, 18, 20, 22, 24, 28, 30, 0, 0, 0
// 1251 
// 1252 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1253 static
// 1254 int cmp_lfn (			/* 1:Matched, 0:Not matched */
// 1255     WCHAR *lfnbuf,		/* Pointer to the LFN to be compared */
// 1256     BYTE *dir			/* Pointer to the directory entry containing a part of LFN */
// 1257 )
// 1258 {
cmp_lfn:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 1259     UINT i, s;
// 1260     WCHAR wc, uc;
// 1261 
// 1262 
// 1263     i = ((dir[LDIR_Ord] & ~LLE) - 1) * 13;	/* Get offset in the LFN buffer */
        LDRB     R0,[R5, #+0]
        BICS     R0,R0,#0x40
        SUBS     R0,R0,#+1
        MOVS     R1,#+13
        MUL      R6,R1,R0
// 1264     s = 0;
        MOVS     R7,#+0
// 1265     wc = 1;
        MOVS     R8,#+1
// 1266     do
// 1267     {
// 1268         uc = LD_WORD(dir + LfnOfs[s]);	/* Pick an LFN character from the entry */
??cmp_lfn_0:
        LDR.W    R0,??DataTable9
        LDRB     R0,[R7, R0]
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable9
        LDRB     R1,[R7, R1]
        LDRB     R1,[R1, R5]
        ORRS     R0,R1,R0, LSL #+8
// 1269         if (wc)  	/* Last char has not been processed */
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BEQ.N    ??cmp_lfn_1
// 1270         {
// 1271             wc = ff_wtoupper(uc);		/* Convert it to upper case */
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       ff_wtoupper
        MOV      R8,R0
// 1272             if (i >= _MAX_LFN || wc != ff_wtoupper(lfnbuf[i++]))	/* Compare it */
        CMP      R6,#+64
        BCS.N    ??cmp_lfn_2
        LDRH     R0,[R4, R6, LSL #+1]
        BL       ff_wtoupper
        ADDS     R6,R6,#+1
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R8,R0
        BEQ.N    ??cmp_lfn_3
// 1273                 return 0;				/* Not matched */
??cmp_lfn_2:
        MOVS     R0,#+0
        B.N      ??cmp_lfn_4
// 1274         }
// 1275         else
// 1276         {
// 1277             if (uc != 0xFFFF) return 0;	/* Check filler */
??cmp_lfn_1:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+65535
        CMP      R0,R1
        BEQ.N    ??cmp_lfn_3
        MOVS     R0,#+0
        B.N      ??cmp_lfn_4
// 1278         }
// 1279     }
// 1280     while (++s < 13);				/* Repeat until all chars in the entry are checked */
??cmp_lfn_3:
        ADDS     R7,R7,#+1
        CMP      R7,#+13
        BCC.N    ??cmp_lfn_0
// 1281 
// 1282     if ((dir[LDIR_Ord] & LLE) && wc && lfnbuf[i])	/* Last segment matched but different length */
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??cmp_lfn_5
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BEQ.N    ??cmp_lfn_5
        LDRH     R0,[R4, R6, LSL #+1]
        CMP      R0,#+0
        BEQ.N    ??cmp_lfn_5
// 1283         return 0;
        MOVS     R0,#+0
        B.N      ??cmp_lfn_4
// 1284 
// 1285     return 1;						/* The part of LFN matched */
??cmp_lfn_5:
        MOVS     R0,#+1
??cmp_lfn_4:
        POP      {R4-R8,PC}       ;; return
// 1286 }
// 1287 
// 1288 
// 1289 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1290 static
// 1291 int pick_lfn (			/* 1:Succeeded, 0:Buffer overflow */
// 1292     WCHAR *lfnbuf,		/* Pointer to the Unicode-LFN buffer */
// 1293     BYTE *dir			/* Pointer to the directory entry */
// 1294 )
// 1295 {
pick_lfn:
        PUSH     {R4-R6}
// 1296     UINT i, s;
// 1297     WCHAR wc, uc;
// 1298 
// 1299 
// 1300     i = ((dir[LDIR_Ord] & 0x3F) - 1) * 13;	/* Offset in the LFN buffer */
        LDRB     R2,[R1, #+0]
        ANDS     R2,R2,#0x3F
        SUBS     R2,R2,#+1
        MOVS     R3,#+13
        MULS     R2,R3,R2
// 1301 
// 1302     s = 0;
        MOVS     R3,#+0
// 1303     wc = 1;
        MOVS     R4,#+1
// 1304     do
// 1305     {
// 1306         uc = LD_WORD(dir + LfnOfs[s]);		/* Pick an LFN character from the entry */
??pick_lfn_0:
        LDR.W    R5,??DataTable9
        LDRB     R5,[R3, R5]
        ADDS     R5,R5,R1
        LDRB     R5,[R5, #+1]
        LDR.W    R6,??DataTable9
        LDRB     R6,[R3, R6]
        LDRB     R6,[R6, R1]
        ORRS     R5,R6,R5, LSL #+8
// 1307         if (wc)  	/* Last char has not been processed */
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??pick_lfn_1
// 1308         {
// 1309             if (i >= _MAX_LFN) return 0;	/* Buffer overflow? */
        CMP      R2,#+64
        BCC.N    ??pick_lfn_2
        MOVS     R0,#+0
        B.N      ??pick_lfn_3
// 1310             lfnbuf[i++] = wc = uc;			/* Store it */
??pick_lfn_2:
        MOVS     R4,R5
        STRH     R4,[R0, R2, LSL #+1]
        ADDS     R2,R2,#+1
// 1311         }
// 1312         else
// 1313         {
// 1314             if (uc != 0xFFFF) return 0;		/* Check filler */
// 1315         }
// 1316     }
// 1317     while (++s < 13);						/* Read all character in the entry */
??pick_lfn_4:
        ADDS     R3,R3,#+1
        CMP      R3,#+13
        BCC.N    ??pick_lfn_0
// 1318 
// 1319     if (dir[LDIR_Ord] & LLE)  				/* Put terminator if it is the last LFN part */
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+25
        BPL.N    ??pick_lfn_5
// 1320     {
// 1321         if (i >= _MAX_LFN) return 0;		/* Buffer overflow? */
        CMP      R2,#+64
        BCC.N    ??pick_lfn_6
        MOVS     R0,#+0
        B.N      ??pick_lfn_3
??pick_lfn_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVW     R6,#+65535
        CMP      R5,R6
        BEQ.N    ??pick_lfn_4
        MOVS     R0,#+0
        B.N      ??pick_lfn_3
// 1322         lfnbuf[i] = 0;
??pick_lfn_6:
        MOVS     R1,#+0
        STRH     R1,[R0, R2, LSL #+1]
// 1323     }
// 1324 
// 1325     return 1;
??pick_lfn_5:
        MOVS     R0,#+1
??pick_lfn_3:
        POP      {R4-R6}
        BX       LR               ;; return
// 1326 }
// 1327 
// 1328 
// 1329 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1330 static
// 1331 void fit_lfn (
// 1332     const WCHAR *lfnbuf,	/* Pointer to the LFN buffer */
// 1333     BYTE *dir,				/* Pointer to the directory entry */
// 1334     BYTE ord,				/* LFN order (1-20) */
// 1335     BYTE sum				/* SFN sum */
// 1336 )
// 1337 {
fit_lfn:
        PUSH     {R4-R7}
// 1338     UINT i, s;
// 1339     WCHAR wc;
// 1340 
// 1341 
// 1342     dir[LDIR_Chksum] = sum;			/* Set check sum */
        STRB     R3,[R1, #+13]
// 1343     dir[LDIR_Attr] = AM_LFN;		/* Set attribute. LFN entry */
        MOVS     R3,#+15
        STRB     R3,[R1, #+11]
// 1344     dir[LDIR_Type] = 0;
        MOVS     R3,#+0
        STRB     R3,[R1, #+12]
// 1345     ST_WORD(dir + LDIR_FstClusLO, 0);
        MOVS     R3,#+0
        STRB     R3,[R1, #+26]
        MOVS     R3,#+0
        STRB     R3,[R1, #+27]
// 1346 
// 1347     i = (ord - 1) * 13;				/* Get offset in the LFN buffer */
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R3,R2,#+1
        MOVS     R4,#+13
        MULS     R3,R4,R3
// 1348     s = wc = 0;
        MOVS     R4,#+0
        MOVS     R5,R4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
// 1349     do
// 1350     {
// 1351         if (wc != 0xFFFF) wc = lfnbuf[i++];	/* Get an effective char */
??fit_lfn_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVW     R6,#+65535
        CMP      R5,R6
        BEQ.N    ??fit_lfn_1
        LDRH     R5,[R0, R3, LSL #+1]
        ADDS     R3,R3,#+1
// 1352         ST_WORD(dir + LfnOfs[s], wc);	/* Put it */
??fit_lfn_1:
        LDR.W    R6,??DataTable9
        LDRB     R6,[R4, R6]
        STRB     R5,[R6, R1]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R6,R5,#+8
        LDR.W    R7,??DataTable9
        LDRB     R7,[R4, R7]
        ADDS     R7,R7,R1
        STRB     R6,[R7, #+1]
// 1353         if (!wc) wc = 0xFFFF;		/* Padding chars following last char */
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??fit_lfn_2
        MOVW     R5,#+65535
// 1354     }
// 1355     while (++s < 13);
??fit_lfn_2:
        ADDS     R4,R4,#+1
        CMP      R4,#+13
        BCC.N    ??fit_lfn_0
// 1356     if (wc == 0xFFFF || !lfnbuf[i]) ord |= LLE;	/* Bottom LFN part is the start of LFN sequence */
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVW     R4,#+65535
        CMP      R5,R4
        BEQ.N    ??fit_lfn_3
        LDRH     R0,[R0, R3, LSL #+1]
        CMP      R0,#+0
        BNE.N    ??fit_lfn_4
??fit_lfn_3:
        ORRS     R2,R2,#0x40
// 1357     dir[LDIR_Ord] = ord;			/* Set the LFN order */
??fit_lfn_4:
        STRB     R2,[R1, #+0]
// 1358 }
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     Files
// 1359 
// 1360 #endif
// 1361 #endif
// 1362 
// 1363 
// 1364 
// 1365 /*-----------------------------------------------------------------------*/
// 1366 /* Create numbered name                                                  */
// 1367 /*-----------------------------------------------------------------------*/
// 1368 #if _USE_LFN

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1369 void gen_numname (
// 1370     BYTE *dst,			/* Pointer to generated SFN */
// 1371     const BYTE *src,	/* Pointer to source SFN to be modified */
// 1372     const WCHAR *lfn,	/* Pointer to LFN */
// 1373     WORD seq			/* Sequence number */
// 1374 )
// 1375 {
gen_numname:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R6,R2
        MOVS     R5,R3
// 1376     BYTE ns[8], c;
// 1377     UINT i, j;
// 1378 
// 1379 
// 1380     mem_cpy(dst, src, 11);
        MOVS     R2,#+11
        MOVS     R0,R4
        BL       mem_cpy
// 1381 
// 1382     if (seq > 5)  	/* On many collisions, generate a hash number instead of sequential number */
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+6
        BLT.N    ??gen_numname_0
// 1383     {
// 1384         do seq = (seq >> 1) + (seq << 15) + (WORD) * lfn++;
??gen_numname_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+15
        ADDS     R0,R0,R5, LSR #+1
        LDRH     R1,[R6, #+0]
        ADDS     R5,R1,R0
        ADDS     R6,R6,#+2
// 1385         while (*lfn);
        LDRH     R0,[R6, #+0]
        CMP      R0,#+0
        BNE.N    ??gen_numname_1
// 1386     }
// 1387 
// 1388     /* itoa (hexdecimal) */
// 1389     i = 7;
??gen_numname_0:
        MOVS     R0,#+7
// 1390     do
// 1391     {
// 1392         c = (seq % 16) + '0';
??gen_numname_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R1,#+16
        SDIV     R2,R5,R1
        MLS      R2,R2,R1,R5
        ADDS     R1,R2,#+48
// 1393         if (c > '9') c += 7;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+58
        BLT.N    ??gen_numname_3
        ADDS     R1,R1,#+7
// 1394         ns[i--] = c;
??gen_numname_3:
        ADD      R2,SP,#+0
        STRB     R1,[R0, R2]
        SUBS     R0,R0,#+1
// 1395         seq /= 16;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R1,#+16
        SDIV     R5,R5,R1
// 1396     }
// 1397     while (seq);
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??gen_numname_2
// 1398     ns[i] = '~';
        MOVS     R1,#+126
        ADD      R2,SP,#+0
        STRB     R1,[R0, R2]
// 1399 
// 1400     /* Append the number */
// 1401     for (j = 0; j < i && dst[j] != ' '; j++)
        MOVS     R1,#+0
        B.N      ??gen_numname_4
// 1402     {
// 1403         if (IsDBCS1(dst[j]))
??gen_numname_5:
        ADDS     R1,R1,#+1
??gen_numname_4:
        CMP      R1,R0
        BCS.N    ??gen_numname_6
        LDRB     R2,[R1, R4]
        CMP      R2,#+32
        BNE.N    ??gen_numname_5
// 1404         {
// 1405             if (j == i - 1) break;
// 1406             j++;
// 1407         }
// 1408     }
// 1409     do
// 1410     {
// 1411         dst[j++] = (i < 8) ? ns[i++] : ' ';
??gen_numname_6:
        MOVS     R2,R1
        ADDS     R1,R2,#+1
        CMP      R0,#+8
        BCS.N    ??gen_numname_7
        ADD      R3,SP,#+0
        LDRB     R3,[R0, R3]
        ADDS     R0,R0,#+1
        B.N      ??gen_numname_8
??gen_numname_7:
        MOVS     R3,#+32
??gen_numname_8:
        STRB     R3,[R2, R4]
// 1412     }
// 1413     while (j < 8);
        CMP      R1,#+8
        BCC.N    ??gen_numname_6
// 1414 }
        POP      {R0,R1,R4-R6,PC}  ;; return
// 1415 #endif
// 1416 
// 1417 
// 1418 
// 1419 
// 1420 /*-----------------------------------------------------------------------*/
// 1421 /* Calculate sum of an SFN                                               */
// 1422 /*-----------------------------------------------------------------------*/
// 1423 #if _USE_LFN

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1424 static
// 1425 BYTE sum_sfn (
// 1426     const BYTE *dir		/* Ptr to directory entry */
// 1427 )
// 1428 {
// 1429     BYTE sum = 0;
sum_sfn:
        MOVS     R1,#+0
// 1430     UINT n = 11;
        MOVS     R2,#+11
// 1431 
// 1432     do sum = (sum >> 1) + (sum << 7) + *dir++;
??sum_sfn_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+7
        ADDS     R1,R3,R1, LSR #+1
        LDRB     R3,[R0, #+0]
        ADDS     R1,R3,R1
        ADDS     R0,R0,#+1
// 1433     while (--n);
        SUBS     R2,R2,#+1
        CMP      R2,#+0
        BNE.N    ??sum_sfn_0
// 1434     return sum;
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
// 1435 }
// 1436 #endif
// 1437 
// 1438 
// 1439 
// 1440 
// 1441 /*-----------------------------------------------------------------------*/
// 1442 /* Directory handling - Find an object in the directory                  */
// 1443 /*-----------------------------------------------------------------------*/
// 1444 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1445 static
// 1446 FRESULT dir_find (
// 1447     DIR *dj			/* Pointer to the directory object linked to the file name */
// 1448 )
// 1449 {
dir_find:
        PUSH     {R4-R8,LR}
        MOVS     R5,R0
// 1450     FRESULT res;
// 1451     BYTE c, *dir;
// 1452 #if _USE_LFN
// 1453     BYTE a, ord, sum;
// 1454 #endif
// 1455 
// 1456     res = dir_sdi(dj, 0);			/* Rewind directory object */
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       dir_sdi
        MOVS     R4,R0
// 1457     if (res != FR_OK) return res;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??dir_find_0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??dir_find_1
// 1458 
// 1459 #if _USE_LFN
// 1460     ord = sum = 0xFF;
??dir_find_0:
        MOVS     R7,#+255
        MOV      R8,R7
// 1461 #endif
// 1462     do
// 1463     {
// 1464         res = move_window(dj->fs, dj->sect);
??dir_find_2:
        LDR      R1,[R5, #+16]
        LDR      R0,[R5, #+0]
        BL       move_window
        MOVS     R4,R0
// 1465         if (res != FR_OK) break;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??dir_find_3
// 1466         dir = dj->dir;					/* Ptr to the directory entry of current index */
??dir_find_4:
        LDR      R6,[R5, #+20]
// 1467         c = dir[DIR_Name];
        LDRB     R0,[R6, #+0]
// 1468         if (c == 0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??dir_find_5
// 1469         {
// 1470             res = FR_NO_FILE;    /* Reached to end of table */
        MOVS     R4,#+4
// 1471             break;
        B.N      ??dir_find_3
// 1472         }
// 1473 #if _USE_LFN	/* LFN configuration */
// 1474         a = dir[DIR_Attr] & AM_MASK;
??dir_find_5:
        LDRB     R1,[R6, #+11]
        ANDS     R1,R1,#0x3F
// 1475         if (c == DDE || ((a & AM_VOL) && a != AM_LFN))  	/* An entry without valid data */
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+229
        BEQ.N    ??dir_find_6
        LSLS     R2,R1,#+28
        BPL.N    ??dir_find_7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+15
        BEQ.N    ??dir_find_7
// 1476         {
// 1477             ord = 0xFF;
??dir_find_6:
        MOVS     R7,#+255
// 1478         }
// 1479         else
// 1480         {
// 1481             if (a == AM_LFN)  			/* An LFN entry is found */
// 1482             {
// 1483                 if (dj->lfn)
// 1484                 {
// 1485                     if (c & LLE)  		/* Is it start of LFN sequence? */
// 1486                     {
// 1487                         sum = dir[LDIR_Chksum];
// 1488                         c &= ~LLE;
// 1489                         ord = c;	/* LFN start order */
// 1490                         dj->lfn_idx = dj->index;
// 1491                     }
// 1492                     /* Check validity of the LFN entry and compare it with given name */
// 1493                     ord = (c == ord && sum == dir[LDIR_Chksum] && cmp_lfn(dj->lfn, dir)) ? ord - 1 : 0xFF;
// 1494                 }
// 1495             }
// 1496             else  					/* An SFN entry is found */
// 1497             {
// 1498                 if (!ord && sum == sum_sfn(dir)) break;	/* LFN matched? */
// 1499                 ord = 0xFF;
// 1500                 dj->lfn_idx = 0xFFFF;	/* Reset LFN sequence */
// 1501                 if (!(dj->fn[NS] & NS_LOSS) && !mem_cmp(dir, dj->fn, 11)) break;	/* SFN matched? */
// 1502             }
// 1503         }
// 1504 #else		/* Non LFN configuration */
// 1505         if (!(dir[DIR_Attr] & AM_VOL) && !mem_cmp(dir, dj->fn, 11)) /* Is it a valid entry? */
// 1506             break;
// 1507 #endif
// 1508         res = dir_next(dj, 0);		/* Next entry */
??dir_find_8:
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       dir_next
        MOVS     R4,R0
// 1509     }
// 1510     while (res == FR_OK);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??dir_find_2
// 1511 
// 1512     return res;
??dir_find_3:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??dir_find_1:
        POP      {R4-R8,PC}       ;; return
??dir_find_7:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+15
        BNE.N    ??dir_find_9
        LDR      R1,[R5, #+28]
        CMP      R1,#+0
        BEQ.N    ??dir_find_8
        LSLS     R1,R0,#+25
        BPL.N    ??dir_find_10
        LDRB     R8,[R6, #+13]
        ANDS     R0,R0,#0xBF
        MOVS     R7,R0
        LDRH     R1,[R5, #+6]
        STRH     R1,[R5, #+32]
??dir_find_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R0,R7
        BNE.N    ??dir_find_11
        LDRB     R0,[R6, #+13]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,R0
        BNE.N    ??dir_find_11
        MOVS     R1,R6
        LDR      R0,[R5, #+28]
        BL       cmp_lfn
        CMP      R0,#+0
        BEQ.N    ??dir_find_11
        SUBS     R7,R7,#+1
        B.N      ??dir_find_12
??dir_find_11:
        MOVS     R7,#+255
??dir_find_12:
        B.N      ??dir_find_8
??dir_find_9:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??dir_find_13
        MOVS     R0,R6
        BL       sum_sfn
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,R0
        BEQ.N    ??dir_find_3
??dir_find_13:
        MOVS     R7,#+255
        MOVW     R0,#+65535
        STRH     R0,[R5, #+32]
        LDR      R0,[R5, #+24]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+31
        BMI.N    ??dir_find_8
        MOVS     R2,#+11
        LDR      R1,[R5, #+24]
        MOVS     R0,R6
        BL       mem_cmp
        CMP      R0,#+0
        BNE.N    ??dir_find_8
        B.N      ??dir_find_3
// 1513 }
// 1514 
// 1515 
// 1516 
// 1517 
// 1518 /*-----------------------------------------------------------------------*/
// 1519 /* Read an object from the directory                                     */
// 1520 /*-----------------------------------------------------------------------*/
// 1521 #if _FS_MINIMIZE <= 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1522 static
// 1523 FRESULT dir_read (
// 1524     DIR *dj			/* Pointer to the directory object that pointing the entry to be read */
// 1525 )
// 1526 {
dir_read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
// 1527     FRESULT res;
// 1528     BYTE c, *dir;
// 1529 #if _USE_LFN
// 1530     BYTE a, ord = 0xFF, sum = 0xFF;
        MOVS     R6,#+255
        MOVS     R7,#+255
// 1531 #endif
// 1532 
// 1533     res = FR_NO_FILE;
        MOVS     R5,#+4
// 1534     while (dj->sect)
??dir_read_0:
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??dir_read_1
// 1535     {
// 1536         res = move_window(dj->fs, dj->sect);
        LDR      R1,[R4, #+16]
        LDR      R0,[R4, #+0]
        BL       move_window
        MOVS     R5,R0
// 1537         if (res != FR_OK) break;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??dir_read_1
// 1538         dir = dj->dir;					/* Ptr to the directory entry of current index */
??dir_read_2:
        LDR      R0,[R4, #+20]
// 1539         c = dir[DIR_Name];
        LDRB     R1,[R0, #+0]
// 1540         if (c == 0)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??dir_read_3
// 1541         {
// 1542             res = FR_NO_FILE;    /* Reached to end of table */
        MOVS     R5,#+4
// 1543             break;
        B.N      ??dir_read_1
// 1544         }
// 1545 #if _USE_LFN	/* LFN configuration */
// 1546         a = dir[DIR_Attr] & AM_MASK;
??dir_read_3:
        LDRB     R2,[R0, #+11]
        ANDS     R2,R2,#0x3F
// 1547         if (c == DDE || (!_FS_RPATH && c == '.') || ((a & AM_VOL) && a != AM_LFN))  	/* An entry without valid data */
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+229
        BEQ.N    ??dir_read_4
        LSLS     R3,R2,#+28
        BPL.N    ??dir_read_5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+15
        BEQ.N    ??dir_read_5
// 1548         {
// 1549             ord = 0xFF;
??dir_read_4:
        MOVS     R6,#+255
// 1550         }
// 1551         else
// 1552         {
// 1553             if (a == AM_LFN)  			/* An LFN entry is found */
// 1554             {
// 1555                 if (c & LLE)  			/* Is it start of LFN sequence? */
// 1556                 {
// 1557                     sum = dir[LDIR_Chksum];
// 1558                     c &= ~LLE;
// 1559                     ord = c;
// 1560                     dj->lfn_idx = dj->index;
// 1561                 }
// 1562                 /* Check LFN validity and capture it */
// 1563                 ord = (c == ord && sum == dir[LDIR_Chksum] && pick_lfn(dj->lfn, dir)) ? ord - 1 : 0xFF;
// 1564             }
// 1565             else  					/* An SFN entry is found */
// 1566             {
// 1567                 if (ord || sum != sum_sfn(dir))	/* Is there a valid LFN? */
// 1568                     dj->lfn_idx = 0xFFFF;		/* It has no LFN. */
// 1569                 break;
// 1570             }
// 1571         }
// 1572 #else		/* Non LFN configuration */
// 1573         if (c != DDE && (_FS_RPATH || c != '.') && !(dir[DIR_Attr] & AM_VOL))	/* Is it a valid entry? */
// 1574             break;
// 1575 #endif
// 1576         res = dir_next(dj, 0);				/* Next entry */
??dir_read_6:
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       dir_next
        MOVS     R5,R0
// 1577         if (res != FR_OK) break;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??dir_read_0
// 1578     }
// 1579 
// 1580     if (res != FR_OK) dj->sect = 0;
??dir_read_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??dir_read_7
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
// 1581 
// 1582     return res;
??dir_read_7:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
??dir_read_5:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+15
        BNE.N    ??dir_read_8
        LSLS     R2,R1,#+25
        BPL.N    ??dir_read_9
        LDRB     R7,[R0, #+13]
        ANDS     R1,R1,#0xBF
        MOVS     R6,R1
        LDRH     R2,[R4, #+6]
        STRH     R2,[R4, #+32]
??dir_read_9:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R1,R6
        BNE.N    ??dir_read_10
        LDRB     R1,[R0, #+13]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R1
        BNE.N    ??dir_read_10
        MOVS     R1,R0
        LDR      R0,[R4, #+28]
        BL       pick_lfn
        CMP      R0,#+0
        BEQ.N    ??dir_read_10
        SUBS     R6,R6,#+1
        B.N      ??dir_read_11
??dir_read_10:
        MOVS     R6,#+255
??dir_read_11:
        B.N      ??dir_read_6
??dir_read_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??dir_read_12
        BL       sum_sfn
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R0
        BEQ.N    ??dir_read_13
??dir_read_12:
        MOVW     R0,#+65535
        STRH     R0,[R4, #+32]
??dir_read_13:
        B.N      ??dir_read_1
// 1583 }
// 1584 #endif
// 1585 
// 1586 
// 1587 
// 1588 /*-----------------------------------------------------------------------*/
// 1589 /* Register an object to the directory                                   */
// 1590 /*-----------------------------------------------------------------------*/
// 1591 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1592 static
// 1593 FRESULT dir_register (	/* FR_OK:Successful, FR_DENIED:No free entry or too many SFN collision, FR_DISK_ERR:Disk error */
// 1594     DIR *dj				/* Target directory with object name to be created */
// 1595 )
// 1596 {
dir_register:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
// 1597     FRESULT res;
// 1598     BYTE c, *dir;
// 1599 #if _USE_LFN	/* LFN configuration */
// 1600     WORD n, ne, is;
// 1601     BYTE sn[12], *fn, sum;
// 1602     WCHAR *lfn;
// 1603 
// 1604 
// 1605     fn = dj->fn;
        LDR      R7,[R4, #+24]
// 1606     lfn = dj->lfn;
        LDR      R6,[R4, #+28]
// 1607     mem_cpy(sn, fn, 12);
        MOVS     R2,#+12
        MOVS     R1,R7
        ADD      R0,SP,#+0
        BL       mem_cpy
// 1608 
// 1609     if (_FS_RPATH && (sn[NS] & NS_DOT))		/* Cannot create dot entry */
        LDRB     R0,[SP, #+11]
        LSLS     R0,R0,#+26
        BPL.N    ??dir_register_0
// 1610         return FR_INVALID_NAME;
        MOVS     R0,#+6
        B.N      ??dir_register_1
// 1611 
// 1612     if (sn[NS] & NS_LOSS)  			/* When LFN is out of 8.3 format, generate a numbered name */
??dir_register_0:
        LDRB     R0,[SP, #+11]
        LSLS     R0,R0,#+31
        BPL.N    ??dir_register_2
// 1613     {
// 1614         fn[NS] = 0;
        MOVS     R0,#+0
        STRB     R0,[R7, #+11]
// 1615         dj->lfn = 0;			/* Find only SFN */
        MOVS     R0,#+0
        STR      R0,[R4, #+28]
// 1616         for (n = 1; n < 100; n++)
        MOVS     R8,#+1
        B.N      ??dir_register_3
??dir_register_4:
        ADDS     R8,R8,#+1
??dir_register_3:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+100
        BGE.N    ??dir_register_5
// 1617         {
// 1618             gen_numname(fn, sn, lfn, n);	/* Generate a numbered name */
        MOV      R3,R8
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R6
        ADD      R1,SP,#+0
        MOVS     R0,R7
        BL       gen_numname
// 1619             res = dir_find(dj);				/* Check if the name collides with existing SFN */
        MOVS     R0,R4
        BL       dir_find
        MOVS     R5,R0
// 1620             if (res != FR_OK) break;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??dir_register_4
// 1621         }
// 1622         if (n == 100) return FR_DENIED;		/* Abort if too many collisions */
??dir_register_5:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+100
        BNE.N    ??dir_register_6
        MOVS     R0,#+7
        B.N      ??dir_register_1
// 1623         if (res != FR_NO_FILE) return res;	/* Abort if the result is other than 'not collided' */
??dir_register_6:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??dir_register_7
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??dir_register_1
// 1624         fn[NS] = sn[NS];
??dir_register_7:
        LDRB     R0,[SP, #+11]
        STRB     R0,[R7, #+11]
// 1625         dj->lfn = lfn;
        STR      R6,[R4, #+28]
// 1626     }
// 1627 
// 1628     if (sn[NS] & NS_LFN)  			/* When LFN is to be created, reserve an SFN + LFN entries. */
??dir_register_2:
        LDRB     R0,[SP, #+11]
        LSLS     R0,R0,#+30
        BPL.N    ??dir_register_8
// 1629     {
// 1630         for (ne = 0; lfn[ne]; ne++) ;
        MOVS     R7,#+0
        B.N      ??dir_register_9
??dir_register_10:
        ADDS     R7,R7,#+1
??dir_register_9:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRH     R0,[R6, R7, LSL #+1]
        CMP      R0,#+0
        BNE.N    ??dir_register_10
// 1631         ne = (ne + 25) / 13;
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        ADDS     R0,R7,#+25
        MOVS     R1,#+13
        SDIV     R7,R0,R1
        B.N      ??dir_register_11
// 1632     }
// 1633     else  						/* Otherwise reserve only an SFN entry. */
// 1634     {
// 1635         ne = 1;
??dir_register_8:
        MOVS     R7,#+1
// 1636     }
// 1637 
// 1638     /* Reserve contiguous entries */
// 1639     res = dir_sdi(dj, 0);
??dir_register_11:
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       dir_sdi
        MOVS     R5,R0
// 1640     if (res != FR_OK) return res;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??dir_register_12
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??dir_register_1
// 1641     n = is = 0;
??dir_register_12:
        MOVS     R8,#+0
        MOV      R6,R8
// 1642     do
// 1643     {
// 1644         res = move_window(dj->fs, dj->sect);
??dir_register_13:
        LDR      R1,[R4, #+16]
        LDR      R0,[R4, #+0]
        BL       move_window
        MOVS     R5,R0
// 1645         if (res != FR_OK) break;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??dir_register_14
// 1646         c = *dj->dir;				/* Check the entry status */
??dir_register_15:
        LDR      R0,[R4, #+20]
        LDRB     R0,[R0, #+0]
// 1647         if (c == DDE || c == 0)  	/* Is it a blank entry? */
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+229
        BEQ.N    ??dir_register_16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??dir_register_17
// 1648         {
// 1649             if (n == 0) is = dj->index;	/* First index of the contiguous entry */
??dir_register_16:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BNE.N    ??dir_register_18
        LDRH     R6,[R4, #+6]
// 1650             if (++n == ne) break;	/* A contiguous entry that required count is found */
??dir_register_18:
        ADDS     R8,R8,#+1
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R0,R7
        BNE.N    ??dir_register_19
        B.N      ??dir_register_14
// 1651         }
// 1652         else
// 1653         {
// 1654             n = 0;					/* Not a blank entry. Restart to search */
??dir_register_17:
        MOVS     R8,#+0
// 1655         }
// 1656         res = dir_next(dj, 1);		/* Next entry with table stretch */
??dir_register_19:
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       dir_next
        MOVS     R5,R0
// 1657     }
// 1658     while (res == FR_OK);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??dir_register_13
// 1659 
// 1660     if (res == FR_OK && ne > 1)  	/* Initialize LFN entry if needed */
??dir_register_14:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??dir_register_20
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+2
        BLT.N    ??dir_register_20
// 1661     {
// 1662         res = dir_sdi(dj, is);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       dir_sdi
        MOVS     R5,R0
// 1663         if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??dir_register_20
// 1664         {
// 1665             sum = sum_sfn(dj->fn);	/* Sum of the SFN tied to the LFN */
        LDR      R0,[R4, #+24]
        BL       sum_sfn
        MOVS     R6,R0
// 1666             ne--;
        SUBS     R7,R7,#+1
// 1667             do  					/* Store LFN entries in bottom first */
// 1668             {
// 1669                 res = move_window(dj->fs, dj->sect);
??dir_register_21:
        LDR      R1,[R4, #+16]
        LDR      R0,[R4, #+0]
        BL       move_window
        MOVS     R5,R0
// 1670                 if (res != FR_OK) break;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??dir_register_20
// 1671                 fit_lfn(dj->lfn, dj->dir, (BYTE)ne, sum);
??dir_register_22:
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R1,[R4, #+20]
        LDR      R0,[R4, #+28]
        BL       fit_lfn
// 1672                 dj->fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+4]
// 1673                 res = dir_next(dj, 0);	/* Next entry */
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       dir_next
        MOVS     R5,R0
// 1674             }
// 1675             while (res == FR_OK && --ne);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??dir_register_20
        SUBS     R7,R7,#+1
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??dir_register_21
// 1676         }
// 1677     }
// 1678 
// 1679 #else	/* Non LFN configuration */
// 1680     res = dir_sdi(dj, 0);
// 1681     if (res == FR_OK)
// 1682     {
// 1683         do  	/* Find a blank entry for the SFN */
// 1684         {
// 1685             res = move_window(dj->fs, dj->sect);
// 1686             if (res != FR_OK) break;
// 1687             c = *dj->dir;
// 1688             if (c == DDE || c == 0) break;	/* Is it a blank entry? */
// 1689             res = dir_next(dj, 1);			/* Next entry with table stretch */
// 1690         }
// 1691         while (res == FR_OK);
// 1692     }
// 1693 #endif
// 1694 
// 1695     if (res == FR_OK)  		/* Initialize the SFN entry */
??dir_register_20:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??dir_register_23
// 1696     {
// 1697         res = move_window(dj->fs, dj->sect);
        LDR      R1,[R4, #+16]
        LDR      R0,[R4, #+0]
        BL       move_window
        MOVS     R5,R0
// 1698         if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??dir_register_23
// 1699         {
// 1700             dir = dj->dir;
        LDR      R6,[R4, #+20]
// 1701             mem_set(dir, 0, SZ_DIR);	/* Clean the entry */
        MOVS     R2,#+32
        MOVS     R1,#+0
        MOVS     R0,R6
        BL       mem_set
// 1702             mem_cpy(dir, dj->fn, 11);	/* Put SFN */
        MOVS     R2,#+11
        LDR      R1,[R4, #+24]
        MOVS     R0,R6
        BL       mem_cpy
// 1703 #if _USE_LFN
// 1704             dir[DIR_NTres] = *(dj->fn + NS) & (NS_BODY | NS_EXT);	/* Put NT flag */
        LDR      R0,[R4, #+24]
        LDRB     R0,[R0, #+11]
        ANDS     R0,R0,#0x18
        STRB     R0,[R6, #+12]
// 1705 #endif
// 1706             dj->fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+4]
// 1707         }
// 1708     }
// 1709 
// 1710     return res;
??dir_register_23:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??dir_register_1:
        ADD      SP,SP,#+16
        POP      {R4-R8,PC}       ;; return
// 1711 }
// 1712 #endif /* !_FS_READONLY */
// 1713 
// 1714 
// 1715 
// 1716 
// 1717 /*-----------------------------------------------------------------------*/
// 1718 /* Remove an object from the directory                                   */
// 1719 /*-----------------------------------------------------------------------*/
// 1720 #if !_FS_READONLY && !_FS_MINIMIZE

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1721 static
// 1722 FRESULT dir_remove (	/* FR_OK: Successful, FR_DISK_ERR: A disk error */
// 1723     DIR *dj				/* Directory object pointing the entry to be removed */
// 1724 )
// 1725 {
dir_remove:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
// 1726     FRESULT res;
// 1727 #if _USE_LFN	/* LFN configuration */
// 1728     WORD i;
// 1729 
// 1730     i = dj->index;	/* SFN index */
        LDRH     R5,[R4, #+6]
// 1731     res = dir_sdi(dj, (WORD)((dj->lfn_idx == 0xFFFF) ? i : dj->lfn_idx));	/* Goto the SFN or top of the LFN entries */
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.N    ??dir_remove_0
        MOVS     R1,R5
        B.N      ??dir_remove_1
??dir_remove_0:
        LDRH     R1,[R4, #+32]
??dir_remove_1:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       dir_sdi
// 1732     if (res == FR_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??dir_remove_2
// 1733     {
// 1734         do
// 1735         {
// 1736             res = move_window(dj->fs, dj->sect);
??dir_remove_3:
        LDR      R1,[R4, #+16]
        LDR      R0,[R4, #+0]
        BL       move_window
// 1737             if (res != FR_OK) break;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??dir_remove_4
// 1738             *dj->dir = DDE;			/* Mark the entry "deleted" */
??dir_remove_5:
        MOVS     R1,#+229
        LDR      R2,[R4, #+20]
        STRB     R1,[R2, #+0]
// 1739             dj->fs->wflag = 1;
        MOVS     R1,#+1
        LDR      R2,[R4, #+0]
        STRB     R1,[R2, #+4]
// 1740             if (dj->index >= i) break;	/* When reached SFN, all entries of the object has been deleted. */
        LDRH     R1,[R4, #+6]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R1,R5
        BCS.N    ??dir_remove_4
// 1741             res = dir_next(dj, 0);		/* Next entry */
??dir_remove_6:
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       dir_next
// 1742         }
// 1743         while (res == FR_OK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??dir_remove_3
// 1744         if (res == FR_NO_FILE) res = FR_INT_ERR;
??dir_remove_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BNE.N    ??dir_remove_2
        MOVS     R0,#+2
// 1745     }
// 1746 
// 1747 #else			/* Non LFN configuration */
// 1748     res = dir_sdi(dj, dj->index);
// 1749     if (res == FR_OK)
// 1750     {
// 1751         res = move_window(dj->fs, dj->sect);
// 1752         if (res == FR_OK)
// 1753         {
// 1754             *dj->dir = DDE;			/* Mark the entry "deleted" */
// 1755             dj->fs->wflag = 1;
// 1756         }
// 1757     }
// 1758 #endif
// 1759 
// 1760     return res;
??dir_remove_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 1761 }
// 1762 #endif /* !_FS_READONLY */
// 1763 
// 1764 
// 1765 
// 1766 
// 1767 /*-----------------------------------------------------------------------*/
// 1768 /* Pick a segment and create the object name in directory form           */
// 1769 /*-----------------------------------------------------------------------*/
// 1770 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1771 static
// 1772 FRESULT create_name (
// 1773     DIR *dj,			/* Pointer to the directory object */
// 1774     const TCHAR **path	/* Pointer to pointer to the segment in the path string */
// 1775 )
// 1776 {
create_name:
        PUSH     {R0,R4-R11,LR}
        MOV      R8,R1
// 1777 #ifdef _EXCVT
// 1778     static const BYTE excvt[] = _EXCVT;	/* Upper conversion table for extended chars */
// 1779 #endif
// 1780 
// 1781 #if _USE_LFN	/* LFN configuration */
// 1782     BYTE b, cf;
// 1783     WCHAR w, *lfn;
// 1784     UINT i, ni, si, di;
// 1785     const TCHAR *p;
// 1786 
// 1787     /* Create LFN in Unicode */
// 1788     for (p = *path; *p == '/' || *p == '\\'; p++) ;	/* Strip duplicated separator */
        LDR      R9,[R8, #+0]
        B.N      ??create_name_0
??create_name_1:
        ADDS     R9,R9,#+1
??create_name_0:
        LDRB     R0,[R9, #+0]
        CMP      R0,#+47
        BEQ.N    ??create_name_1
        LDRB     R0,[R9, #+0]
        CMP      R0,#+92
        BEQ.N    ??create_name_1
// 1789     lfn = dj->lfn;
        LDR      R0,[SP, #+0]
        LDR      R6,[R0, #+28]
// 1790     si = di = 0;
        MOVS     R4,#+0
        MOVS     R5,R4
        B.N      ??create_name_2
// 1791     for (;;)
// 1792     {
// 1793         w = p[si++];					/* Get a character */
// 1794         if (w < ' ' || w == '/' || w == '\\') break;	/* Break on end of segment */
// 1795         if (di >= _MAX_LFN)				/* Reject too long name */
// 1796             return FR_INVALID_NAME;
// 1797 #if !_LFN_UNICODE
// 1798         w &= 0xFF;
// 1799         if (IsDBCS1(w))  				/* Check if it is a DBC 1st byte (always false on SBCS cfg) */
// 1800         {
// 1801             b = (BYTE)p[si++];			/* Get 2nd byte */
// 1802             if (!IsDBCS2(b))
// 1803                 return FR_INVALID_NAME;	/* Reject invalid sequence */
// 1804             w = (w << 8) + b;			/* Create a DBC */
// 1805         }
// 1806         w = ff_convert(w, 1);			/* Convert ANSI/OEM to Unicode */
// 1807         if (!w) return FR_INVALID_NAME;	/* Reject invalid code */
// 1808 #endif
// 1809         if (w < 0x80 && chk_chr("\"*:<>\?|\x7F", w)) /* Reject illegal chars for LFN */
// 1810             return FR_INVALID_NAME;
// 1811         lfn[di++] = w;					/* Store the Unicode char */
??create_name_3:
        STRH     R7,[R6, R5, LSL #+1]
        ADDS     R5,R5,#+1
??create_name_2:
        LDRB     R7,[R4, R9]
        ADDS     R4,R4,#+1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+32
        BLT.N    ??create_name_4
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+47
        BEQ.N    ??create_name_4
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+92
        BNE.N    ??create_name_5
// 1812     }
// 1813     *path = &p[si];						/* Return pointer to the next segment */
??create_name_4:
        ADDS     R0,R4,R9
        STR      R0,[R8, #+0]
// 1814     cf = (w < ' ') ? NS_LAST : 0;		/* Set last segment flag if end of path */
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+32
        BGE.N    ??create_name_6
        MOVS     R8,#+4
        B.N      ??create_name_7
??create_name_5:
        CMP      R5,#+64
        BCC.N    ??create_name_8
        MOVS     R0,#+6
        B.N      ??create_name_9
??create_name_8:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R1,#+1
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       ff_convert
        MOVS     R7,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BNE.N    ??create_name_10
        MOVS     R0,#+6
        B.N      ??create_name_9
??create_name_10:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+128
        BGE.N    ??create_name_3
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R1,R7
        LDR.W    R0,??DataTable11
        BL       chk_chr
        CMP      R0,#+0
        BEQ.N    ??create_name_3
        MOVS     R0,#+6
        B.N      ??create_name_9
??create_name_6:
        MOVS     R8,#+0
// 1815 #if _FS_RPATH
// 1816     if ((di == 1 && lfn[di-1] == '.') || /* Is this a dot entry? */
// 1817             (di == 2 && lfn[di-1] == '.' && lfn[di-2] == '.'))
??create_name_7:
        CMP      R5,#+1
        BNE.N    ??create_name_11
        ADDS     R0,R6,R5, LSL #+1
        LDRH     R0,[R0, #-2]
        CMP      R0,#+46
        BEQ.N    ??create_name_12
??create_name_11:
        CMP      R5,#+2
        BNE.N    ??create_name_13
        ADDS     R0,R6,R5, LSL #+1
        LDRH     R0,[R0, #-2]
        CMP      R0,#+46
        BNE.N    ??create_name_13
        ADDS     R0,R6,R5, LSL #+1
        LDRH     R0,[R0, #-4]
        CMP      R0,#+46
        BNE.N    ??create_name_13
// 1818     {
// 1819         lfn[di] = 0;
??create_name_12:
        MOVS     R0,#+0
        STRH     R0,[R6, R5, LSL #+1]
// 1820         for (i = 0; i < 11; i++)
        MOVS     R9,#+0
        B.N      ??create_name_14
// 1821             dj->fn[i] = (i < di) ? '.' : ' ';
??create_name_15:
        MOVS     R0,#+32
??create_name_16:
        LDR      R1,[SP, #+0]
        LDR      R1,[R1, #+24]
        STRB     R0,[R9, R1]
        ADDS     R9,R9,#+1
??create_name_14:
        CMP      R9,#+11
        BCS.N    ??create_name_17
        CMP      R9,R5
        BCS.N    ??create_name_15
        MOVS     R0,#+46
        B.N      ??create_name_16
// 1822         dj->fn[i] = cf | NS_DOT;		/* This is a dot entry */
??create_name_17:
        ORRS     R0,R8,#0x20
        LDR      R1,[SP, #+0]
        LDR      R1,[R1, #+24]
        STRB     R0,[R9, R1]
// 1823         return FR_OK;
        MOVS     R0,#+0
        B.N      ??create_name_9
// 1824     }
// 1825 #endif
// 1826     while (di)  						/* Strip trailing spaces and dots */
// 1827     {
// 1828         w = lfn[di-1];
// 1829         if (w != ' ' && w != '.') break;
// 1830         di--;
??create_name_18:
        SUBS     R5,R5,#+1
??create_name_13:
        CMP      R5,#+0
        BEQ.N    ??create_name_19
        ADDS     R0,R6,R5, LSL #+1
        LDRH     R7,[R0, #-2]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+32
        BEQ.N    ??create_name_18
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+46
        BEQ.N    ??create_name_18
// 1831     }
// 1832     if (!di) return FR_INVALID_NAME;	/* Reject nul string */
??create_name_19:
        CMP      R5,#+0
        BNE.N    ??create_name_20
        MOVS     R0,#+6
        B.N      ??create_name_9
// 1833 
// 1834     lfn[di] = 0;						/* LFN is created */
??create_name_20:
        MOVS     R0,#+0
        STRH     R0,[R6, R5, LSL #+1]
// 1835 
// 1836     /* Create SFN in directory form */
// 1837     mem_set(dj->fn, ' ', 11);
        MOVS     R2,#+11
        MOVS     R1,#+32
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+24]
        BL       mem_set
// 1838     for (si = 0; lfn[si] == ' ' || lfn[si] == '.'; si++) ;	/* Strip leading spaces and dots */
        MOVS     R4,#+0
        B.N      ??create_name_21
??create_name_22:
        ADDS     R4,R4,#+1
??create_name_21:
        LDRH     R0,[R6, R4, LSL #+1]
        CMP      R0,#+32
        BEQ.N    ??create_name_22
        LDRH     R0,[R6, R4, LSL #+1]
        CMP      R0,#+46
        BEQ.N    ??create_name_22
// 1839     if (si) cf |= NS_LOSS | NS_LFN;
        CMP      R4,#+0
        BEQ.N    ??create_name_23
        ORRS     R8,R8,#0x3
        B.N      ??create_name_23
// 1840     while (di && lfn[di - 1] != '.') di--;	/* Find extension (di<=si: no extension) */
??create_name_24:
        SUBS     R5,R5,#+1
??create_name_23:
        CMP      R5,#+0
        BEQ.N    ??create_name_25
        ADDS     R0,R6,R5, LSL #+1
        LDRH     R0,[R0, #-2]
        CMP      R0,#+46
        BNE.N    ??create_name_24
// 1841 
// 1842     b = i = 0;
??create_name_25:
        MOVS     R10,#+0
        MOV      R9,R10
// 1843     ni = 8;
        MOVS     R11,#+8
        B.N      ??create_name_26
// 1844     for (;;)
// 1845     {
// 1846         w = lfn[si++];					/* Get an LFN char */
// 1847         if (!w) break;					/* Break on end of the LFN */
// 1848         if (w == ' ' || (w == '.' && si != di))  	/* Remove spaces and dots */
// 1849         {
// 1850             cf |= NS_LOSS | NS_LFN;
??create_name_27:
        ORRS     R8,R8,#0x3
// 1851             continue;
// 1852         }
??create_name_26:
        LDRH     R7,[R6, R4, LSL #+1]
        ADDS     R4,R4,#+1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BNE.N    ??create_name_28
// 1853 
// 1854         if (i >= ni || si == di)  		/* Extension or end of SFN */
// 1855         {
// 1856             if (ni == 11)  				/* Long extension */
// 1857             {
// 1858                 cf |= NS_LOSS | NS_LFN;
// 1859                 break;
// 1860             }
// 1861             if (si != di) cf |= NS_LOSS | NS_LFN;	/* Out of 8.3 format */
// 1862             if (si > di) break;			/* No extension */
// 1863             si = di;
// 1864             i = 8;
// 1865             ni = 11;	/* Enter extension section */
// 1866             b <<= 2;
// 1867             continue;
// 1868         }
// 1869 
// 1870         if (w >= 0x80)  				/* Non ASCII char */
// 1871         {
// 1872 #ifdef _EXCVT
// 1873             w = ff_convert(w, 0);		/* Unicode -> OEM code */
// 1874             if (w) w = excvt[w - 0x80];	/* Convert extended char to upper (SBCS) */
// 1875 #else
// 1876             w = ff_convert(ff_wtoupper(w), 0);	/* Upper converted Unicode -> OEM code */
// 1877 #endif
// 1878             cf |= NS_LFN;				/* Force create LFN entry */
// 1879         }
// 1880 
// 1881         if (_DF1S && w >= 0x100)  		/* Double byte char (always false on SBCS cfg) */
// 1882         {
// 1883             if (i >= ni - 1)
// 1884             {
// 1885                 cf |= NS_LOSS | NS_LFN;
// 1886                 i = ni;
// 1887                 continue;
// 1888             }
// 1889             dj->fn[i++] = (BYTE)(w >> 8);
// 1890         }
// 1891         else  						/* Single byte char */
// 1892         {
// 1893             if (!w || chk_chr("+,;=[]", w))  	/* Replace illegal chars for SFN */
// 1894             {
// 1895                 w = '_';
// 1896                 cf |= NS_LOSS | NS_LFN;/* Lossy conversion */
// 1897             }
// 1898             else
// 1899             {
// 1900                 if (IsUpper(w))  		/* ASCII large capital */
// 1901                 {
// 1902                     b |= 2;
// 1903                 }
// 1904                 else
// 1905                 {
// 1906                     if (IsLower(w))  	/* ASCII small capital */
// 1907                     {
// 1908                         b |= 1;
// 1909                         w -= 0x20;
// 1910                     }
// 1911                 }
// 1912             }
// 1913         }
// 1914         dj->fn[i++] = (BYTE)w;
// 1915     }
// 1916 
// 1917     if (dj->fn[0] == DDE) dj->fn[0] = NDDE;	/* If the first char collides with deleted mark, replace it with 0x05 */
??create_name_29:
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+24]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+229
        BNE.N    ??create_name_30
        MOVS     R0,#+5
        LDR      R1,[SP, #+0]
        LDR      R1,[R1, #+24]
        STRB     R0,[R1, #+0]
// 1918 
// 1919     if (ni == 8) b <<= 2;
??create_name_30:
        CMP      R11,#+8
        BNE.N    ??create_name_31
        LSLS     R10,R10,#+2
// 1920     if ((b & 0x0C) == 0x0C || (b & 0x03) == 0x03)	/* Create LFN entry when there are composite capitals */
??create_name_31:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R0,R10,#0xC
        CMP      R0,#+12
        BEQ.N    ??create_name_32
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R0,R10,#0x3
        CMP      R0,#+3
        BNE.N    ??create_name_33
// 1921         cf |= NS_LFN;
??create_name_32:
        ORRS     R8,R8,#0x2
// 1922     if (!(cf & NS_LFN))  						/* When LFN is in 8.3 format without extended char, NT flags are created */
??create_name_33:
        LSLS     R0,R8,#+30
        BMI.N    ??create_name_34
// 1923     {
// 1924         if ((b & 0x03) == 0x01) cf |= NS_EXT;	/* NT flag (Extension has only small capital) */
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R0,R10,#0x3
        CMP      R0,#+1
        BNE.N    ??create_name_35
        ORRS     R8,R8,#0x10
// 1925         if ((b & 0x0C) == 0x04) cf |= NS_BODY;	/* NT flag (Filename has only small capital) */
??create_name_35:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R0,R10,#0xC
        CMP      R0,#+4
        BNE.N    ??create_name_34
        ORRS     R8,R8,#0x8
// 1926     }
// 1927 
// 1928     dj->fn[NS] = cf;	/* SFN is created */
??create_name_34:
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+24]
        STRB     R8,[R0, #+11]
// 1929 
// 1930     return FR_OK;
        MOVS     R0,#+0
??create_name_9:
        POP      {R1,R4-R11,PC}   ;; return
??create_name_28:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+32
        BEQ.N    ??create_name_27
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+46
        BNE.N    ??create_name_36
        CMP      R4,R5
        BNE.N    ??create_name_27
??create_name_36:
        CMP      R9,R11
        BCS.N    ??create_name_37
        CMP      R4,R5
        BNE.N    ??create_name_38
??create_name_37:
        CMP      R11,#+11
        BNE.N    ??create_name_39
        ORRS     R8,R8,#0x3
        B.N      ??create_name_29
??create_name_39:
        CMP      R4,R5
        BEQ.N    ??create_name_40
        ORRS     R8,R8,#0x3
??create_name_40:
        CMP      R5,R4
        BCC.N    ??create_name_29
??create_name_41:
        MOVS     R4,R5
        MOVS     R9,#+8
        MOVS     R11,#+11
        LSLS     R10,R10,#+2
        B.N      ??create_name_26
??create_name_38:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+128
        BLT.N    ??create_name_42
        MOVS     R1,#+0
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       ff_convert
        MOVS     R7,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BEQ.N    ??create_name_43
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.W    R0,??DataTable11_1
        ADDS     R0,R7,R0
        LDRB     R7,[R0, #-128]
??create_name_43:
        ORRS     R8,R8,#0x2
??create_name_42:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BEQ.N    ??create_name_44
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R1,R7
        LDR.W    R0,??DataTable12
        BL       chk_chr
        CMP      R0,#+0
        BEQ.N    ??create_name_45
??create_name_44:
        MOVS     R7,#+95
        ORRS     R8,R8,#0x3
        B.N      ??create_name_46
??create_name_45:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        SUBS     R0,R7,#+65
        CMP      R0,#+26
        BCS.N    ??create_name_47
        ORRS     R10,R10,#0x2
        B.N      ??create_name_46
??create_name_47:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        SUBS     R0,R7,#+97
        CMP      R0,#+26
        BCS.N    ??create_name_46
        ORRS     R10,R10,#0x1
        SUBS     R7,R7,#+32
??create_name_46:
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+24]
        STRB     R7,[R9, R0]
        ADDS     R9,R9,#+1
        B.N      ??create_name_26
// 1931 
// 1932 
// 1933 #else	/* Non-LFN configuration */
// 1934     BYTE b, c, d, *sfn;
// 1935     UINT ni, si, i;
// 1936     const char *p;
// 1937 
// 1938     /* Create file name in directory form */
// 1939     for (p = *path; *p == '/' || *p == '\\'; p++) ;	/* Strip duplicated separator */
// 1940     sfn = dj->fn;
// 1941     mem_set(sfn, ' ', 11);
// 1942     si = i = b = 0;
// 1943     ni = 8;
// 1944 #if _FS_RPATH
// 1945     if (p[si] == '.')   /* Is this a dot entry? */
// 1946     {
// 1947         for (;;)
// 1948         {
// 1949             c = (BYTE)p[si++];
// 1950             if (c != '.' || si >= 3) break;
// 1951             sfn[i++] = c;
// 1952         }
// 1953         if (c != '/' && c != '\\' && c > ' ') return FR_INVALID_NAME;
// 1954         *path = &p[si];									/* Return pointer to the next segment */
// 1955         sfn[NS] = (c <= ' ') ? NS_LAST | NS_DOT : NS_DOT;	/* Set last segment flag if end of path */
// 1956         return FR_OK;
// 1957     }
// 1958 #endif
// 1959     for (;;)
// 1960     {
// 1961         c = (BYTE)p[si++];
// 1962         if (c <= ' ' || c == '/' || c == '\\') break;	/* Break on end of segment */
// 1963         if (c == '.' || i >= ni)
// 1964         {
// 1965             if (ni != 8 || c != '.') return FR_INVALID_NAME;
// 1966             i = 8;
// 1967             ni = 11;
// 1968             b <<= 2;
// 1969             continue;
// 1970         }
// 1971         if (c >= 0x80)  				/* Extended char? */
// 1972         {
// 1973             b |= 3;						/* Eliminate NT flag */
// 1974 #ifdef _EXCVT
// 1975             c = excvt[c-0x80];			/* Upper conversion (SBCS) */
// 1976 #else
// 1977 #if !_DF1S	/* ASCII only cfg */
// 1978     return FR_INVALID_NAME;
// 1979 #endif
// 1980 #endif
// 1981         }
// 1982         if (IsDBCS1(c))  				/* Check if it is a DBC 1st byte (always false on SBCS cfg) */
// 1983         {
// 1984             d = (BYTE)p[si++];			/* Get 2nd byte */
// 1985             if (!IsDBCS2(d) || i >= ni - 1)	/* Reject invalid DBC */
// 1986                 return FR_INVALID_NAME;
// 1987             sfn[i++] = c;
// 1988             sfn[i++] = d;
// 1989         }
// 1990         else  						/* Single byte code */
// 1991         {
// 1992             if (chk_chr("\"*+,:;<=>\?[]|\x7F", c))	/* Reject illegal chrs for SFN */
// 1993                 return FR_INVALID_NAME;
// 1994             if (IsUpper(c))  			/* ASCII large capital? */
// 1995             {
// 1996                 b |= 2;
// 1997             }
// 1998             else
// 1999             {
// 2000                 if (IsLower(c))  		/* ASCII small capital? */
// 2001                 {
// 2002                     b |= 1;
// 2003                     c -= 0x20;
// 2004                 }
// 2005             }
// 2006             sfn[i++] = c;
// 2007         }
// 2008     }
// 2009     *path = &p[si];						/* Return pointer to the next segment */
// 2010     c = (c <= ' ') ? NS_LAST : 0;		/* Set last segment flag if end of path */
// 2011 
// 2012     if (!i) return FR_INVALID_NAME;		/* Reject nul string */
// 2013     if (sfn[0] == DDE) sfn[0] = NDDE;	/* When first char collides with DDE, replace it with 0x05 */
// 2014 
// 2015     if (ni == 8) b <<= 2;
// 2016     if ((b & 0x03) == 0x01) c |= NS_EXT;	/* NT flag (Name extension has only small capital) */
// 2017     if ((b & 0x0C) == 0x04) c |= NS_BODY;	/* NT flag (Name body has only small capital) */
// 2018 
// 2019     sfn[NS] = c;		/* Store NT flag, File name is created */
// 2020 
// 2021     return FR_OK;
// 2022 #endif
// 2023 }

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
??excvt:
        DATA
        DC8 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140
        DC8 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153
        DC8 138, 155, 140, 141, 142, 143, 160, 161, 162, 163, 164, 165, 166
        DC8 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 163
        DC8 180, 181, 182, 183, 184, 165, 170, 187, 188, 189, 188, 175, 192
        DC8 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205
        DC8 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218
        DC8 219, 220, 221, 222, 223, 192, 193, 194, 195, 196, 197, 198, 199
        DC8 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212
        DC8 213, 214, 247, 216, 217, 218, 219, 220, 221, 222, 255
// 2024 
// 2025 
// 2026 
// 2027 
// 2028 /*-----------------------------------------------------------------------*/
// 2029 /* Get file information from directory entry                             */
// 2030 /*-----------------------------------------------------------------------*/
// 2031 #if _FS_MINIMIZE <= 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2032 static
// 2033 void get_fileinfo (		/* No return code */
// 2034     DIR *dj,			/* Pointer to the directory object */
// 2035     FILINFO *fno	 	/* Pointer to the file information to be filled */
// 2036 )
// 2037 {
get_fileinfo:
        PUSH     {R3-R7,LR}
        MOVS     R4,R1
// 2038     UINT i;
// 2039     BYTE nt, *dir;
// 2040     TCHAR *p, c;
// 2041 
// 2042 
// 2043     p = fno->fname;
        ADDW     R1,R4,#+9
// 2044     if (dj->sect)
        LDR      R2,[R0, #+16]
        CMP      R2,#+0
        BEQ.N    ??get_fileinfo_0
// 2045     {
// 2046         dir = dj->dir;
        LDR      R2,[R0, #+20]
// 2047         nt = dir[DIR_NTres];		/* NT flag */
        LDRB     R3,[R2, #+12]
// 2048         for (i = 0; i < 8; i++)  	/* Copy name body */
        MOVS     R5,#+0
        B.N      ??get_fileinfo_1
// 2049         {
// 2050             c = dir[i];
// 2051             if (c == ' ') break;
// 2052             if (c == NDDE) c = (TCHAR)DDE;
??get_fileinfo_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+5
        BNE.N    ??get_fileinfo_3
        MOVS     R6,#+229
// 2053             if (_USE_LFN && (nt & NS_BODY) && IsUpper(c)) c += 0x20;
??get_fileinfo_3:
        LSLS     R7,R3,#+28
        BPL.N    ??get_fileinfo_4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R7,R6,#+65
        CMP      R7,#+26
        BCS.N    ??get_fileinfo_4
        ADDS     R6,R6,#+32
// 2054 #if _LFN_UNICODE
// 2055             if (IsDBCS1(c) && i < 7 && IsDBCS2(dir[i+1]))
// 2056                 c = (c << 8) | dir[++i];
// 2057             c = ff_convert(c, 1);
// 2058             if (!c) c = '?';
// 2059 #endif
// 2060             *p++ = c;
??get_fileinfo_4:
        STRB     R6,[R1, #+0]
        ADDS     R1,R1,#+1
        ADDS     R5,R5,#+1
??get_fileinfo_1:
        CMP      R5,#+8
        BCS.N    ??get_fileinfo_5
        LDRB     R6,[R5, R2]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+32
        BNE.N    ??get_fileinfo_2
// 2061         }
// 2062         if (dir[8] != ' ')  		/* Copy name extension */
??get_fileinfo_5:
        LDRB     R5,[R2, #+8]
        CMP      R5,#+32
        BEQ.N    ??get_fileinfo_6
// 2063         {
// 2064             *p++ = '.';
        MOVS     R5,#+46
        STRB     R5,[R1, #+0]
        ADDS     R1,R1,#+1
// 2065             for (i = 8; i < 11; i++)
        MOVS     R5,#+8
        B.N      ??get_fileinfo_7
// 2066             {
// 2067                 c = dir[i];
// 2068                 if (c == ' ') break;
// 2069                 if (_USE_LFN && (nt & NS_EXT) && IsUpper(c)) c += 0x20;
??get_fileinfo_8:
        LSLS     R7,R3,#+27
        BPL.N    ??get_fileinfo_9
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R7,R6,#+65
        CMP      R7,#+26
        BCS.N    ??get_fileinfo_9
        ADDS     R6,R6,#+32
// 2070 #if _LFN_UNICODE
// 2071                 if (IsDBCS1(c) && i < 10 && IsDBCS2(dir[i+1]))
// 2072                     c = (c << 8) | dir[++i];
// 2073                 c = ff_convert(c, 1);
// 2074                 if (!c) c = '?';
// 2075 #endif
// 2076                 *p++ = c;
??get_fileinfo_9:
        STRB     R6,[R1, #+0]
        ADDS     R1,R1,#+1
        ADDS     R5,R5,#+1
??get_fileinfo_7:
        CMP      R5,#+11
        BCS.N    ??get_fileinfo_6
        LDRB     R6,[R5, R2]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+32
        BNE.N    ??get_fileinfo_8
// 2077             }
// 2078         }
// 2079         fno->fattrib = dir[DIR_Attr];				/* Attribute */
??get_fileinfo_6:
        LDRB     R3,[R2, #+11]
        STRB     R3,[R4, #+8]
// 2080         fno->fsize = LD_DWORD(dir + DIR_FileSize);	/* Size */
        LDRB     R3,[R2, #+31]
        LDRB     R5,[R2, #+30]
        LSLS     R5,R5,#+16
        ORRS     R3,R5,R3, LSL #+24
        LDRB     R5,[R2, #+29]
        ORRS     R3,R3,R5, LSL #+8
        LDRB     R5,[R2, #+28]
        ORRS     R3,R5,R3
        STR      R3,[R4, #+0]
// 2081         fno->fdate = LD_WORD(dir + DIR_WrtDate);		/* Date */
        LDRB     R3,[R2, #+25]
        LDRB     R5,[R2, #+24]
        ORRS     R3,R5,R3, LSL #+8
        STRH     R3,[R4, #+4]
// 2082         fno->ftime = LD_WORD(dir + DIR_WrtTime);		/* Time */
        LDRB     R3,[R2, #+23]
        LDRB     R2,[R2, #+22]
        ORRS     R2,R2,R3, LSL #+8
        STRH     R2,[R4, #+6]
// 2083     }
// 2084     *p = 0;		/* Terminate SFN str by a \0 */
??get_fileinfo_0:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
// 2085 
// 2086 #if _USE_LFN
// 2087     if (fno->lfname && fno->lfsize)
        LDR      R1,[R4, #+24]
        CMP      R1,#+0
        BEQ.N    ??get_fileinfo_10
        LDR      R1,[R4, #+28]
        CMP      R1,#+0
        BEQ.N    ??get_fileinfo_10
// 2088     {
// 2089         TCHAR *tp = fno->lfname;
        LDR      R6,[R4, #+24]
// 2090         WCHAR w, *lfn;
// 2091 
// 2092         i = 0;
        MOVS     R5,#+0
// 2093         if (dj->sect && dj->lfn_idx != 0xFFFF)  /* Get LFN if available */
        LDR      R1,[R0, #+16]
        CMP      R1,#+0
        BEQ.N    ??get_fileinfo_11
        LDRH     R1,[R0, #+32]
        MOVW     R2,#+65535
        CMP      R1,R2
        BEQ.N    ??get_fileinfo_11
// 2094         {
// 2095             lfn = dj->lfn;
        LDR      R7,[R0, #+28]
        B.N      ??get_fileinfo_12
// 2096             while ((w = *lfn++) != 0)  			/* Get an LFN char */
// 2097             {
// 2098 #if !_LFN_UNICODE
// 2099                 w = ff_convert(w, 0);			/* Unicode -> OEM conversion */
// 2100                 if (!w)
// 2101                 {
// 2102                     i = 0;    /* Could not convert, no LFN */
// 2103                     break;
// 2104                 }
// 2105                 if (_DF1S && w >= 0x100)		/* Put 1st byte if it is a DBC (always false on SBCS cfg) */
// 2106                     tp[i++] = (TCHAR)(w >> 8);
// 2107 #endif
// 2108                 if (i >= fno->lfsize - 1)
// 2109                 {
// 2110                     i = 0;    /* Buffer overflow, no LFN */
// 2111                     break;
// 2112                 }
// 2113                 tp[i++] = (TCHAR)w;
??get_fileinfo_13:
        STRB     R0,[R5, R6]
        ADDS     R5,R5,#+1
??get_fileinfo_12:
        LDRH     R0,[R7, #+0]
        ADDS     R7,R7,#+2
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BEQ.N    ??get_fileinfo_11
        MOVS     R1,#+0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       ff_convert
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??get_fileinfo_14
        MOVS     R5,#+0
        B.N      ??get_fileinfo_11
??get_fileinfo_14:
        LDR      R1,[R4, #+28]
        SUBS     R1,R1,#+1
        CMP      R5,R1
        BCC.N    ??get_fileinfo_13
        MOVS     R5,#+0
// 2114             }
// 2115         }
// 2116         tp[i] = 0;	/* Terminate the LFN str by a \0 */
??get_fileinfo_11:
        MOVS     R0,#+0
        STRB     R0,[R5, R6]
// 2117     }
// 2118 #endif
// 2119 }
??get_fileinfo_10:
        POP      {R0,R4-R7,PC}    ;; return
// 2120 #endif /* _FS_MINIMIZE <= 1 */
// 2121 
// 2122 
// 2123 
// 2124 
// 2125 /*-----------------------------------------------------------------------*/
// 2126 /* Follow a file path                                                    */
// 2127 /*-----------------------------------------------------------------------*/
// 2128 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2129 static
// 2130 FRESULT follow_path (	/* FR_OK(0): successful, !=0: error code */
// 2131     DIR *dj,			/* Directory object to return last directory and found object */
// 2132     const TCHAR *path	/* Full-path string to find a file or directory */
// 2133 )
// 2134 {
follow_path:
        PUSH     {R0,R1,R4,LR}
        MOVS     R4,R0
// 2135     FRESULT res;
// 2136     BYTE *dir, ns;
// 2137 
// 2138 
// 2139 #if _FS_RPATH
// 2140     if (*path == '/' || *path == '\\')   /* There is a heading separator */
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+47
        BEQ.N    ??follow_path_0
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+92
        BNE.N    ??follow_path_1
// 2141     {
// 2142         path++;
??follow_path_0:
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+4]
// 2143         dj->sclust = 0;		/* Strip it and start from the root dir */
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
        B.N      ??follow_path_2
// 2144     }
// 2145     else  							/* No heading separator */
// 2146     {
// 2147         dj->sclust = dj->fs->cdir;	/* Start from the current dir */
??follow_path_1:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[R4, #+8]
// 2148     }
// 2149 #else
// 2150     if (*path == '/' || *path == '\\')	/* Strip heading separator if exist */
// 2151         path++;
// 2152     dj->sclust = 0;						/* Start from the root dir */
// 2153 #endif
// 2154 
// 2155     if ((UINT)*path < ' ')  			/* Nul path means the start directory itself */
??follow_path_2:
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+32
        BCS.N    ??follow_path_3
// 2156     {
// 2157         res = dir_sdi(dj, 0);
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       dir_sdi
// 2158         dj->dir = 0;
        MOVS     R1,#+0
        STR      R1,[R4, #+20]
// 2159 
// 2160     }
// 2161     else  							/* Follow path */
// 2162     {
// 2163         for (;;)
// 2164         {
// 2165             res = create_name(dj, &path);	/* Get a segment */
// 2166             if (res != FR_OK) break;
// 2167             res = dir_find(dj);				/* Find it */
// 2168             ns = *(dj->fn + NS);
// 2169             if (res != FR_OK)  				/* Failed to find the object */
// 2170             {
// 2171                 if (res != FR_NO_FILE) break;	/* Abort if any hard error occured */
// 2172                 /* Object not found */
// 2173                 if (_FS_RPATH && (ns & NS_DOT))  	/* If dot entry is not exit */
// 2174                 {
// 2175                     dj->sclust = 0;
// 2176                     dj->dir = 0;	/* It is the root dir */
// 2177                     res = FR_OK;
// 2178                     if (!(ns & NS_LAST)) continue;
// 2179                 }
// 2180                 else  							/* Could not find the object */
// 2181                 {
// 2182                     if (!(ns & NS_LAST)) res = FR_NO_PATH;
// 2183                 }
// 2184                 break;
// 2185             }
// 2186             if (ns & NS_LAST) break;			/* Last segment match. Function completed. */
// 2187             dir = dj->dir;						/* There is next segment. Follow the sub directory */
// 2188             if (!(dir[DIR_Attr] & AM_DIR))  	/* Cannot follow because it is a file */
// 2189             {
// 2190                 res = FR_NO_PATH;
// 2191                 break;
// 2192             }
// 2193             dj->sclust = LD_CLUST(dir);
// 2194         }
// 2195     }
// 2196 
// 2197     return res;
??follow_path_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return
??follow_path_5:
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
        MOVS     R0,#+0
        STR      R0,[R4, #+20]
        MOVS     R0,#+0
        LSLS     R1,R1,#+29
        BMI.N    ??follow_path_6
??follow_path_3:
        ADD      R1,SP,#+4
        MOVS     R0,R4
        BL       create_name
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??follow_path_4
??follow_path_7:
        MOVS     R0,R4
        BL       dir_find
        LDR      R1,[R4, #+24]
        LDRB     R1,[R1, #+11]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??follow_path_8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BNE.N    ??follow_path_4
??follow_path_9:
        LSLS     R2,R1,#+26
        BMI.N    ??follow_path_5
        LSLS     R1,R1,#+29
        BMI.N    ??follow_path_6
        MOVS     R0,#+5
??follow_path_6:
        B.N      ??follow_path_4
??follow_path_8:
        LSLS     R1,R1,#+29
        BMI.N    ??follow_path_4
??follow_path_10:
        LDR      R0,[R4, #+20]
        LDRB     R1,[R0, #+11]
        LSLS     R1,R1,#+27
        BMI.N    ??follow_path_11
        MOVS     R0,#+5
        B.N      ??follow_path_4
??follow_path_11:
        LDRB     R1,[R0, #+21]
        LDRB     R2,[R0, #+20]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRB     R2,[R0, #+27]
        LDRB     R0,[R0, #+26]
        ORRS     R0,R0,R2, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1, LSL #+16
        STR      R0,[R4, #+8]
        B.N      ??follow_path_3
// 2198 }
// 2199 
// 2200 
// 2201 
// 2202 
// 2203 /*-----------------------------------------------------------------------*/
// 2204 /* Load a sector and check if it is an FAT Volume Boot Record            */
// 2205 /*-----------------------------------------------------------------------*/
// 2206 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2207 static
// 2208 BYTE check_fs (	/* 0:FAT-VBR, 1:Valid BR but not FAT, 2:Not a BR, 3:Disk error */
// 2209     FATFS *fs,	/* File system object */
// 2210     DWORD sect	/* Sector# (lba) to check if it is an FAT boot record or not */
// 2211 )
// 2212 {
check_fs:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 2213     if (disk_read(fs->drv, fs->win, sect, 1) != RES_OK)	/* Load boot record */
        MOVS     R3,#+1
        MOVS     R2,R1
        ADDS     R1,R4,#+52
        LDRB     R0,[R4, #+1]
        BL       disk_read
        CMP      R0,#+0
        BEQ.N    ??check_fs_0
// 2214         return 3;
        MOVS     R0,#+3
        B.N      ??check_fs_1
// 2215     if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)		/* Check record signature (always placed at offset 510 even if the sector size is >512) */
??check_fs_0:
        LDRB     R0,[R4, #+563]
        LDRB     R1,[R4, #+562]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+43605
        CMP      R0,R1
        BEQ.N    ??check_fs_2
// 2216         return 2;
        MOVS     R0,#+2
        B.N      ??check_fs_1
// 2217 
// 2218     if ((LD_DWORD(&fs->win[BS_FilSysType]) & 0xFFFFFF) == 0x544146)	/* Check "FAT" string */
??check_fs_2:
        LDRB     R0,[R4, #+108]
        LDRB     R1,[R4, #+107]
        LSLS     R1,R1,#+8
        ORRS     R0,R1,R0, LSL #+16
        LDRB     R1,[R4, #+106]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable13  ;; 0x544146
        CMP      R0,R1
        BNE.N    ??check_fs_3
// 2219         return 0;
        MOVS     R0,#+0
        B.N      ??check_fs_1
// 2220     if ((LD_DWORD(&fs->win[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
??check_fs_3:
        LDRB     R0,[R4, #+136]
        LDRB     R1,[R4, #+135]
        LSLS     R1,R1,#+8
        ORRS     R0,R1,R0, LSL #+16
        LDRB     R1,[R4, #+134]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable13  ;; 0x544146
        CMP      R0,R1
        BNE.N    ??check_fs_4
// 2221         return 0;
        MOVS     R0,#+0
        B.N      ??check_fs_1
// 2222 
// 2223     return 1;
??check_fs_4:
        MOVS     R0,#+1
??check_fs_1:
        POP      {R4,PC}          ;; return
// 2224 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     LfnOfs
// 2225 
// 2226 
// 2227 
// 2228 
// 2229 /*-----------------------------------------------------------------------*/
// 2230 /* Check if the file system object is valid or not                       */
// 2231 /*-----------------------------------------------------------------------*/
// 2232 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2233 static
// 2234 FRESULT chk_mounted (	/* FR_OK(0): successful, !=0: any error occurred */
// 2235     const TCHAR **path,	/* Pointer to pointer to the path name (drive number) */
// 2236     FATFS **rfs,		/* Pointer to pointer to the found file system object */
// 2237     BYTE chk_wp			/* !=0: Check media write protection for write access */
// 2238 )
// 2239 {
chk_mounted:
        PUSH     {R3-R7,LR}
        MOVS     R5,R2
// 2240     BYTE fmt, b, pi, *tbl;
// 2241     UINT vol;
// 2242     DSTATUS stat;
// 2243     DWORD bsect, fasize, tsect, sysect, nclst, szbfat;
// 2244     WORD nrsv;
// 2245     const TCHAR *p = *path;
        LDR      R2,[R0, #+0]
// 2246     FATFS *fs;
// 2247 
// 2248     /* Get logical drive number from the path name */
// 2249     vol = p[0] - '0';					/* Is there a drive number? */
        LDRB     R3,[R2, #+0]
        SUBS     R6,R3,#+48
// 2250     if (vol <= 9 && p[1] == ':')  		/* Found a drive number, get and strip it */
        CMP      R6,#+10
        BCS.N    ??chk_mounted_0
        LDRB     R3,[R2, #+1]
        CMP      R3,#+58
        BNE.N    ??chk_mounted_0
// 2251     {
// 2252         p += 2;
        ADDS     R2,R2,#+2
// 2253         *path = p;				/* Return pointer to the path name */
        STR      R2,[R0, #+0]
        B.N      ??chk_mounted_1
// 2254     }
// 2255     else  							/* No drive number is given */
// 2256     {
// 2257 #if _FS_RPATH
// 2258         vol = CurrVol;					/* Use current drive */
??chk_mounted_0:
        LDR.W    R0,??DataTable13_1
        LDRB     R6,[R0, #+0]
// 2259 #else
// 2260         vol = 0;						/* Use drive 0 */
// 2261 #endif
// 2262     }
// 2263 
// 2264     /* Check if the file system object is valid or not */
// 2265     if (vol >= _VOLUMES) 				/* Is the drive number valid? */
??chk_mounted_1:
        CMP      R6,#+0
        BEQ.N    ??chk_mounted_2
// 2266         return FR_INVALID_DRIVE;
        MOVS     R0,#+11
        B.N      ??chk_mounted_3
// 2267     *rfs = fs = FatFs[vol];				/* Return pointer to the corresponding file system object */
??chk_mounted_2:
        LDR.W    R0,??DataTable13_2
        LDR      R4,[R0, R6, LSL #+2]
        STR      R4,[R1, #+0]
// 2268     if (!fs) return FR_NOT_ENABLED;		/* Is the file system object available? */
        CMP      R4,#+0
        BNE.N    ??chk_mounted_4
        MOVS     R0,#+12
        B.N      ??chk_mounted_3
// 2269 
// 2270     ENTER_FF(fs);						/* Lock file system */
// 2271 
// 2272     if (fs->fs_type)  					/* If the logical drive has been mounted */
??chk_mounted_4:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??chk_mounted_5
// 2273     {
// 2274         stat = disk_status(fs->drv);
        LDRB     R0,[R4, #+1]
        BL       disk_status
// 2275         if (!(stat & STA_NOINIT))  		/* and the physical drive is kept initialized (has not been changed), */
        LSLS     R1,R0,#+31
        BMI.N    ??chk_mounted_5
// 2276         {
// 2277             if (!_FS_READONLY && chk_wp && (stat & STA_PROTECT))	/* Check write protection if needed */
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??chk_mounted_6
        LSLS     R0,R0,#+29
        BPL.N    ??chk_mounted_6
// 2278                 return FR_WRITE_PROTECTED;
        MOVS     R0,#+10
        B.N      ??chk_mounted_3
// 2279             return FR_OK;				/* The file system object is valid */
??chk_mounted_6:
        MOVS     R0,#+0
        B.N      ??chk_mounted_3
// 2280         }
// 2281     }
// 2282 
// 2283     /* The file system object is not valid. */
// 2284     /* Following code attempts to mount the volume. (analyze BPB and initialize the fs object) */
// 2285 
// 2286     fs->fs_type = 0;					/* Clear the file system object */
??chk_mounted_5:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
// 2287     fs->drv = LD2PD(vol);				/* Bind the logical drive and a physical drive */
        STRB     R6,[R4, #+1]
// 2288     stat = disk_initialize(fs->drv);	/* Initialize low level disk I/O layer */
        LDRB     R0,[R4, #+1]
        BL       disk_initialize
// 2289     if (stat & STA_NOINIT)				/* Check if the initialization succeeded */
        LSLS     R1,R0,#+31
        BPL.N    ??chk_mounted_7
// 2290         return FR_NOT_READY;			/* Failed to initialize due to no media or hard error */
        MOVS     R0,#+3
        B.N      ??chk_mounted_3
// 2291     if (!_FS_READONLY && chk_wp && (stat & STA_PROTECT))	/* Check disk write protection if needed */
??chk_mounted_7:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??chk_mounted_8
        LSLS     R0,R0,#+29
        BPL.N    ??chk_mounted_8
// 2292         return FR_WRITE_PROTECTED;
        MOVS     R0,#+10
        B.N      ??chk_mounted_3
// 2293 #if _MAX_SS != 512						/* Get disk sector size (variable sector size cfg only) */
// 2294     if (disk_ioctl(fs->drv, GET_SECTOR_SIZE, &fs->ssize) != RES_OK)
// 2295         return FR_DISK_ERR;
// 2296 #endif
// 2297     /* Search FAT partition on the drive. Supports only generic partitionings, FDISK and SFD. */
// 2298     fmt = check_fs(fs, bsect = 0);		/* Load sector 0 and check if it is an FAT-VBR (in SFD) */
??chk_mounted_8:
        MOVS     R5,#+0
        MOVS     R1,R5
        MOVS     R0,R4
        BL       check_fs
        MOVS     R6,R0
// 2299     if (LD2PT(vol) && !fmt) fmt = 1;	/* Force non-SFD if the volume is forced partition */
// 2300     if (fmt == 1)  						/* Not an FAT-VBR, the physical drive can be partitioned */
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??chk_mounted_9
// 2301     {
// 2302         /* Check the partition listed in the partition table */
// 2303         pi = LD2PT(vol);
        MOVS     R0,#+0
// 2304         if (pi) pi--;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??chk_mounted_10
        SUBS     R0,R0,#+1
// 2305         tbl = &fs->win[MBR_Table + pi * SZ_PTE];/* Partition table */
??chk_mounted_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R4,R0, LSL #+4
        ADDW     R0,R0,#+498
// 2306         if (tbl[4])  						/* Is the partition existing? */
        LDRB     R1,[R0, #+4]
        CMP      R1,#+0
        BEQ.N    ??chk_mounted_9
// 2307         {
// 2308             bsect = LD_DWORD(&tbl[8]);		/* Partition offset in LBA */
        LDRB     R1,[R0, #+11]
        LDRB     R2,[R0, #+10]
        LSLS     R2,R2,#+16
        ORRS     R1,R2,R1, LSL #+24
        LDRB     R2,[R0, #+9]
        ORRS     R1,R1,R2, LSL #+8
        LDRB     R0,[R0, #+8]
        ORRS     R5,R0,R1
// 2309             fmt = check_fs(fs, bsect);		/* Check the partition */
        MOVS     R1,R5
        MOVS     R0,R4
        BL       check_fs
        MOVS     R6,R0
// 2310         }
// 2311     }
// 2312     if (fmt == 3) return FR_DISK_ERR;
??chk_mounted_9:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BNE.N    ??chk_mounted_11
        MOVS     R0,#+1
        B.N      ??chk_mounted_3
// 2313     if (fmt) return FR_NO_FILESYSTEM;		/* No FAT volume is found */
??chk_mounted_11:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??chk_mounted_12
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2314 
// 2315     /* An FAT volume is found. Following code initializes the file system object */
// 2316 
// 2317     if (LD_WORD(fs->win + BPB_BytsPerSec) != SS(fs))		/* (BPB_BytsPerSec must be equal to the physical sector size) */
??chk_mounted_12:
        LDRB     R0,[R4, #+64]
        LDRB     R1,[R4, #+63]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+512
        BEQ.N    ??chk_mounted_13
// 2318         return FR_NO_FILESYSTEM;
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2319 
// 2320     fasize = LD_WORD(fs->win + BPB_FATSz16);				/* Number of sectors per FAT */
??chk_mounted_13:
        LDRB     R0,[R4, #+75]
        LDRB     R1,[R4, #+74]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
// 2321     if (!fasize) fasize = LD_DWORD(fs->win + BPB_FATSz32);
        CMP      R0,#+0
        BNE.N    ??chk_mounted_14
        LDRB     R0,[R4, #+91]
        LDRB     R1,[R4, #+90]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R4, #+89]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+88]
        ORRS     R0,R1,R0
// 2322     fs->fsize = fasize;
??chk_mounted_14:
        STR      R0,[R4, #+32]
// 2323 
// 2324     fs->n_fats = b = fs->win[BPB_NumFATs];				/* Number of FAT copies */
        LDRB     R1,[R4, #+68]
        STRB     R1,[R4, #+3]
// 2325     if (b != 1 && b != 2) return FR_NO_FILESYSTEM;		/* (Must be 1 or 2) */
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BEQ.N    ??chk_mounted_15
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BEQ.N    ??chk_mounted_15
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2326     fasize *= b;										/* Number of sectors for FAT area */
??chk_mounted_15:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MULS     R0,R1,R0
// 2327 
// 2328     fs->csize = b = fs->win[BPB_SecPerClus];			/* Number of sectors per cluster */
        LDRB     R1,[R4, #+65]
        STRB     R1,[R4, #+2]
// 2329     if (!b || (b & (b - 1))) return FR_NO_FILESYSTEM;	/* (Must be power of 2) */
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??chk_mounted_16
        SUBS     R2,R1,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        TST      R1,R2
        BEQ.N    ??chk_mounted_17
??chk_mounted_16:
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2330 
// 2331     fs->n_rootdir = LD_WORD(fs->win + BPB_RootEntCnt);	/* Number of root directory entries */
??chk_mounted_17:
        LDRB     R1,[R4, #+70]
        LDRB     R2,[R4, #+69]
        ORRS     R1,R2,R1, LSL #+8
        STRH     R1,[R4, #+8]
// 2332     if (fs->n_rootdir % (SS(fs) / SZ_DIR)) return FR_NO_FILESYSTEM;	/* (BPB_RootEntCnt must be sector aligned) */
        LDRH     R1,[R4, #+8]
        MOVS     R2,#+16
        UDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        CMP      R3,#+0
        BEQ.N    ??chk_mounted_18
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2333 
// 2334     tsect = LD_WORD(fs->win + BPB_TotSec16);				/* Number of sectors on the volume */
??chk_mounted_18:
        LDRB     R1,[R4, #+72]
        LDRB     R2,[R4, #+71]
        ORRS     R2,R2,R1, LSL #+8
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
// 2335     if (!tsect) tsect = LD_DWORD(fs->win + BPB_TotSec32);
        CMP      R2,#+0
        BNE.N    ??chk_mounted_19
        LDRB     R1,[R4, #+87]
        LDRB     R2,[R4, #+86]
        LSLS     R2,R2,#+16
        ORRS     R1,R2,R1, LSL #+24
        LDRB     R2,[R4, #+85]
        ORRS     R1,R1,R2, LSL #+8
        LDRB     R2,[R4, #+84]
        ORRS     R2,R2,R1
// 2336 
// 2337     nrsv = LD_WORD(fs->win + BPB_RsvdSecCnt);				/* Number of reserved sectors */
??chk_mounted_19:
        LDRB     R1,[R4, #+67]
        LDRB     R3,[R4, #+66]
        ORRS     R1,R3,R1, LSL #+8
// 2338     if (!nrsv) return FR_NO_FILESYSTEM;					/* (BPB_RsvdSecCnt must not be 0) */
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??chk_mounted_20
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2339 
// 2340     /* Determine the FAT sub type */
// 2341     sysect = nrsv + fasize + fs->n_rootdir / (SS(fs) / SZ_DIR);	/* RSV+FAT+DIR */
??chk_mounted_20:
        UXTAH    R3,R0,R1
        LDRH     R6,[R4, #+8]
        ADDS     R3,R3,R6, LSR #+4
// 2342     if (tsect < sysect) return FR_NO_FILESYSTEM;		/* (Invalid volume size) */
        CMP      R2,R3
        BCS.N    ??chk_mounted_21
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2343     nclst = (tsect - sysect) / fs->csize;				/* Number of clusters */
??chk_mounted_21:
        SUBS     R2,R2,R3
        LDRB     R6,[R4, #+2]
        UDIV     R2,R2,R6
// 2344     if (!nclst) return FR_NO_FILESYSTEM;				/* (Invalid volume size) */
        CMP      R2,#+0
        BNE.N    ??chk_mounted_22
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2345     fmt = FS_FAT12;
??chk_mounted_22:
        MOVS     R6,#+1
// 2346     if (nclst >= MIN_FAT16) fmt = FS_FAT16;
        MOVW     R7,#+4086
        CMP      R2,R7
        BCC.N    ??chk_mounted_23
        MOVS     R6,#+2
// 2347     if (nclst >= MIN_FAT32) fmt = FS_FAT32;
??chk_mounted_23:
        MOVW     R7,#+65526
        CMP      R2,R7
        BCC.N    ??chk_mounted_24
        MOVS     R6,#+3
// 2348 
// 2349     /* Boundaries and Limits */
// 2350     fs->n_fatent = nclst + 2;							/* Number of FAT entries */
??chk_mounted_24:
        ADDS     R2,R2,#+2
        STR      R2,[R4, #+28]
// 2351     fs->database = bsect + sysect;						/* Data start sector */
        ADDS     R2,R3,R5
        STR      R2,[R4, #+44]
// 2352     fs->fatbase = bsect + nrsv; 						/* FAT start sector */
        UXTAH    R1,R5,R1
        STR      R1,[R4, #+36]
// 2353     if (fmt == FS_FAT32)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BNE.N    ??chk_mounted_25
// 2354     {
// 2355         if (fs->n_rootdir) return FR_NO_FILESYSTEM;		/* (BPB_RootEntCnt must be 0) */
        LDRH     R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??chk_mounted_26
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2356         fs->dirbase = LD_DWORD(fs->win + BPB_RootClus);	/* Root directory start cluster */
??chk_mounted_26:
        LDRB     R0,[R4, #+99]
        LDRB     R1,[R4, #+98]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R4, #+97]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+96]
        ORRS     R0,R1,R0
        STR      R0,[R4, #+40]
// 2357         szbfat = fs->n_fatent * 4;						/* (Required FAT size) */
        LDR      R0,[R4, #+28]
        LSLS     R0,R0,#+2
        B.N      ??chk_mounted_27
// 2358     }
// 2359     else
// 2360     {
// 2361         if (!fs->n_rootdir)	return FR_NO_FILESYSTEM;	/* (BPB_RootEntCnt must not be 0) */
??chk_mounted_25:
        LDRH     R1,[R4, #+8]
        CMP      R1,#+0
        BNE.N    ??chk_mounted_28
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2362         fs->dirbase = fs->fatbase + fasize;				/* Root directory start sector */
??chk_mounted_28:
        LDR      R1,[R4, #+36]
        ADDS     R0,R0,R1
        STR      R0,[R4, #+40]
// 2363         szbfat = (fmt == FS_FAT16) ?					/* (Required FAT size) */
// 2364                  fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BNE.N    ??chk_mounted_29
        LDR      R0,[R4, #+28]
        LSLS     R0,R0,#+1
        B.N      ??chk_mounted_27
??chk_mounted_29:
        LDR      R0,[R4, #+28]
        MOVS     R1,#+3
        MULS     R0,R1,R0
        LDRB     R1,[R4, #+28]
        ANDS     R1,R1,#0x1
        ADDS     R0,R1,R0, LSR #+1
// 2365     }
// 2366     if (fs->fsize < (szbfat + (SS(fs) - 1)) / SS(fs))	/* (BPB_FATSz must not be less than required) */
??chk_mounted_27:
        LDR      R1,[R4, #+32]
        ADDW     R0,R0,#+511
        CMP      R1,R0, LSR #+9
        BCS.N    ??chk_mounted_30
// 2367         return FR_NO_FILESYSTEM;
        MOVS     R0,#+13
        B.N      ??chk_mounted_3
// 2368 
// 2369 #if !_FS_READONLY
// 2370     /* Initialize cluster allocation information */
// 2371     fs->free_clust = 0xFFFFFFFF;
??chk_mounted_30:
        MOVS     R0,#-1
        STR      R0,[R4, #+16]
// 2372     fs->last_clust = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+12]
// 2373 
// 2374     /* Get fsinfo if available */
// 2375     if (fmt == FS_FAT32)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BNE.N    ??chk_mounted_31
// 2376     {
// 2377         fs->fsi_flag = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+5]
// 2378         fs->fsi_sector = bsect + LD_WORD(fs->win + BPB_FSInfo);
        LDRB     R0,[R4, #+101]
        LDRB     R1,[R4, #+100]
        ORRS     R0,R1,R0, LSL #+8
        UXTAH    R0,R5,R0
        STR      R0,[R4, #+20]
// 2379         if (disk_read(fs->drv, fs->win, fs->fsi_sector, 1) == RES_OK &&
// 2380                 LD_WORD(fs->win + BS_55AA) == 0xAA55 &&
// 2381                 LD_DWORD(fs->win + FSI_LeadSig) == 0x41615252 &&
// 2382                 LD_DWORD(fs->win + FSI_StrucSig) == 0x61417272)
        MOVS     R3,#+1
        LDR      R2,[R4, #+20]
        ADDS     R1,R4,#+52
        LDRB     R0,[R4, #+1]
        BL       disk_read
        CMP      R0,#+0
        BNE.N    ??chk_mounted_31
        LDRB     R0,[R4, #+563]
        LDRB     R1,[R4, #+562]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+43605
        CMP      R0,R1
        BNE.N    ??chk_mounted_31
        LDRB     R0,[R4, #+55]
        LDRB     R1,[R4, #+54]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R4, #+53]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+52]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable13_3  ;; 0x41615252
        CMP      R0,R1
        BNE.N    ??chk_mounted_31
        LDRB     R0,[R4, #+539]
        LDRB     R1,[R4, #+538]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R4, #+537]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+536]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable13_4  ;; 0x61417272
        CMP      R0,R1
        BNE.N    ??chk_mounted_31
// 2383         {
// 2384             fs->last_clust = LD_DWORD(fs->win + FSI_Nxt_Free);
        LDRB     R0,[R4, #+547]
        LDRB     R1,[R4, #+546]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R4, #+545]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+544]
        ORRS     R0,R1,R0
        STR      R0,[R4, #+12]
// 2385             fs->free_clust = LD_DWORD(fs->win + FSI_Free_Count);
        LDRB     R0,[R4, #+543]
        LDRB     R1,[R4, #+542]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R4, #+541]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+540]
        ORRS     R0,R1,R0
        STR      R0,[R4, #+16]
// 2386         }
// 2387     }
// 2388 #endif
// 2389     fs->fs_type = fmt;		/* FAT sub-type */
??chk_mounted_31:
        STRB     R6,[R4, #+0]
// 2390     fs->id = ++Fsid;		/* File system mount ID */
        LDR.W    R0,??DataTable13_5
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_5
        STRH     R0,[R1, #+0]
        STRH     R0,[R4, #+6]
// 2391     fs->winsect = 0;		/* Invalidate sector cache */
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 2392     fs->wflag = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
// 2393 #if _FS_RPATH
// 2394     fs->cdir = 0;			/* Current directory (root dir) */
        MOVS     R0,#+0
        STR      R0,[R4, #+24]
// 2395 #endif
// 2396 #if _FS_SHARE				/* Clear file lock semaphores */
// 2397     clear_lock(fs);
        MOVS     R0,R4
        BL       clear_lock
// 2398 #endif
// 2399 
// 2400     return FR_OK;
        MOVS     R0,#+0
??chk_mounted_3:
        POP      {R1,R4-R7,PC}    ;; return
// 2401 }
// 2402 
// 2403 
// 2404 
// 2405 
// 2406 /*-----------------------------------------------------------------------*/
// 2407 /* Check if the file/dir object is valid or not                          */
// 2408 /*-----------------------------------------------------------------------*/
// 2409 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2410 static
// 2411 FRESULT validate (	/* FR_OK(0): The object is valid, !=0: Invalid */
// 2412     FATFS *fs,		/* Pointer to the file system object */
// 2413     WORD id			/* Member id of the target object to be checked */
// 2414 )
// 2415 {
validate:
        PUSH     {R7,LR}
// 2416     if (!fs || !fs->fs_type || fs->id != id)
        CMP      R0,#+0
        BEQ.N    ??validate_0
        LDRB     R2,[R0, #+0]
        CMP      R2,#+0
        BEQ.N    ??validate_0
        LDRH     R2,[R0, #+6]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R2,R1
        BEQ.N    ??validate_1
// 2417         return FR_INVALID_OBJECT;
??validate_0:
        MOVS     R0,#+9
        B.N      ??validate_2
// 2418 
// 2419     ENTER_FF(fs);		/* Lock file system */
// 2420 
// 2421     if (disk_status(fs->drv) & STA_NOINIT)
??validate_1:
        LDRB     R0,[R0, #+1]
        BL       disk_status
        LSLS     R0,R0,#+31
        BPL.N    ??validate_3
// 2422         return FR_NOT_READY;
        MOVS     R0,#+3
        B.N      ??validate_2
// 2423 
// 2424     return FR_OK;
??validate_3:
        MOVS     R0,#+0
??validate_2:
        POP      {R1,PC}          ;; return
// 2425 }
// 2426 
// 2427 
// 2428 
// 2429 
// 2430 /*--------------------------------------------------------------------------
// 2431 
// 2432    Public Functions
// 2433 
// 2434 --------------------------------------------------------------------------*/
// 2435 
// 2436 
// 2437 
// 2438 /*-----------------------------------------------------------------------*/
// 2439 /* Mount/Unmount a Logical Drive                                         */
// 2440 /*-----------------------------------------------------------------------*/
// 2441 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2442 FRESULT f_mount (
// 2443     BYTE vol,		/* Logical drive number to be mounted/unmounted */
// 2444     FATFS *fs		/* Pointer to new file system object (NULL for unmount)*/
// 2445 )
// 2446 {
f_mount:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 2447     FATFS *rfs;
// 2448 
// 2449 
// 2450     if (vol >= _VOLUMES)		/* Check if the drive number is valid */
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??f_mount_0
// 2451         return FR_INVALID_DRIVE;
        MOVS     R0,#+11
        B.N      ??f_mount_1
// 2452     rfs = FatFs[vol];			/* Get current fs object */
??f_mount_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable13_2
        LDR      R6,[R0, R4, LSL #+2]
// 2453 
// 2454     if (rfs)
        CMP      R6,#+0
        BEQ.N    ??f_mount_2
// 2455     {
// 2456 #if _FS_SHARE
// 2457         clear_lock(rfs);
        MOVS     R0,R6
        BL       clear_lock
// 2458 #endif
// 2459 #if _FS_REENTRANT				/* Discard sync object of the current volume */
// 2460         if (!ff_del_syncobj(rfs->sobj)) return FR_INT_ERR;
// 2461 #endif
// 2462         rfs->fs_type = 0;		/* Clear old fs object */
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
// 2463     }
// 2464 
// 2465     if (fs)
??f_mount_2:
        CMP      R5,#+0
        BEQ.N    ??f_mount_3
// 2466     {
// 2467         fs->fs_type = 0;		/* Clear new fs object */
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
// 2468 #if _FS_REENTRANT				/* Create sync object for the new volume */
// 2469         if (!ff_cre_syncobj(vol, &fs->sobj)) return FR_INT_ERR;
// 2470 #endif
// 2471     }
// 2472     FatFs[vol] = fs;			/* Register new fs object */
??f_mount_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable13_2
        STR      R5,[R0, R4, LSL #+2]
// 2473 
// 2474     return FR_OK;
        MOVS     R0,#+0
??f_mount_1:
        POP      {R4-R6,PC}       ;; return
// 2475 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     `?<Constant "\\"*:<>?|\\177">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     ??excvt
// 2476 
// 2477 
// 2478 
// 2479 
// 2480 /*-----------------------------------------------------------------------*/
// 2481 /* Open or Create a File                                                 */
// 2482 /*-----------------------------------------------------------------------*/
// 2483 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2484 FRESULT f_open (
// 2485     FIL *fp,			/* Pointer to the blank file object */
// 2486     const TCHAR *path,	/* Pointer to the file name */
// 2487     BYTE mode			/* Access mode and file open mode flags */
// 2488 )
// 2489 {
f_open:
        PUSH     {R1,R4-R10,LR}
        SUB      SP,SP,#+52
        MOVS     R4,R0
        MOVS     R6,R2
// 2490     FRESULT res;
// 2491     DIR dj;
// 2492     BYTE *dir;
// 2493     DEF_NAMEBUF;
// 2494 
// 2495 
// 2496     fp->fs = 0;			/* Clear file object */
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
// 2497 
// 2498 #if !_FS_READONLY
// 2499     mode &= FA_READ | FA_WRITE | FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW;
        ANDS     R6,R6,#0x1F
// 2500     res = chk_mounted(&path, &dj.fs, (BYTE)(mode & ~FA_READ));
        ANDS     R2,R6,#0xFE
        ADD      R1,SP,#+0
        ADD      R0,SP,#+52
        BL       chk_mounted
        MOVS     R7,R0
// 2501 #else
// 2502     mode &= FA_READ;
// 2503     res = chk_mounted(&path, &dj.fs, 0);
// 2504 #endif
// 2505     INIT_BUF(dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R5,R0
        CMP      R5,#+0
        BNE.N    ??f_open_0
        MOVS     R0,#+17
        B.N      ??f_open_1
??f_open_0:
        STR      R5,[SP, #+28]
        ADD      R0,SP,#+36
        STR      R0,[SP, #+24]
// 2506     if (res == FR_OK)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??f_open_2
// 2507         res = follow_path(&dj, path);	/* Follow the file path */
        LDR      R1,[SP, #+52]
        ADD      R0,SP,#+0
        BL       follow_path
        MOVS     R7,R0
// 2508     dir = dj.dir;
??f_open_2:
        LDR      R8,[SP, #+20]
// 2509 
// 2510 #if !_FS_READONLY	/* R/W configuration */
// 2511     if (res == FR_OK)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??f_open_3
// 2512     {
// 2513         if (!dir)	/* Current dir itself */
        CMP      R8,#+0
        BNE.N    ??f_open_4
// 2514             res = FR_INVALID_NAME;
        MOVS     R7,#+6
        B.N      ??f_open_3
// 2515 #if _FS_SHARE
// 2516         else
// 2517             res = chk_lock(&dj, (mode & ~FA_READ) ? 1 : 0);
??f_open_4:
        MOVS     R0,#+254
        TST      R6,R0
        BEQ.N    ??f_open_5
        MOVS     R1,#+1
        B.N      ??f_open_6
??f_open_5:
        MOVS     R1,#+0
??f_open_6:
        ADD      R0,SP,#+0
        BL       chk_lock
        MOVS     R7,R0
// 2518 #endif
// 2519     }
// 2520     /* Create or Open a file */
// 2521     if (mode & (FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW))
??f_open_3:
        MOVS     R0,#+28
        TST      R6,R0
        BEQ.N    ??f_open_7
// 2522     {
// 2523         DWORD dw, cl;
// 2524 
// 2525         if (res != FR_OK)  					/* 没有文件，需要创建新的 No file, create new */
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??f_open_8
// 2526         {
// 2527             if (res == FR_NO_FILE)			/* There is no file to open, create a new entry */
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+4
        BNE.N    ??f_open_9
// 2528 #if _FS_SHARE
// 2529                 res = enq_lock() ? dir_register(&dj) : FR_TOO_MANY_OPEN_FILES;
        BL       enq_lock
        CMP      R0,#+0
        BEQ.N    ??f_open_10
        ADD      R0,SP,#+0
        BL       dir_register
        MOVS     R7,R0
        B.N      ??f_open_11
??f_open_10:
        MOVS     R7,#+18
// 2530 #else
// 2531                 res = dir_register(&dj);
// 2532 #endif
// 2533             mode |= FA_CREATE_ALWAYS;		/* File is created */
??f_open_11:
??f_open_9:
        ORRS     R6,R6,#0x8
// 2534             dir = dj.dir;					/* New entry */
        LDR      R8,[SP, #+20]
        B.N      ??f_open_12
// 2535         }
// 2536         else  								/* Any object is already existing */
// 2537         {
// 2538             if (dir[DIR_Attr] & (AM_RDO | AM_DIR))  	/* Cannot overwrite it (R/O or DIR) */
??f_open_8:
        LDRB     R0,[R8, #+11]
        MOVS     R1,#+17
        TST      R0,R1
        BEQ.N    ??f_open_13
// 2539             {
// 2540                 res = FR_DENIED;
        MOVS     R7,#+7
        B.N      ??f_open_12
// 2541             }
// 2542             else
// 2543             {
// 2544                 if (mode & FA_CREATE_NEW)	/* 已经有了，不能创建新的 Cannot create as new file */
??f_open_13:
        LSLS     R0,R6,#+29
        BPL.N    ??f_open_12
// 2545                     res = FR_EXIST;
        MOVS     R7,#+8
// 2546             }
// 2547         }
// 2548         if (res == FR_OK && (mode & FA_CREATE_ALWAYS))  	/* Truncate it if overwrite mode */
??f_open_12:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??f_open_14
        LSLS     R0,R6,#+28
        BPL.N    ??f_open_14
// 2549         {
// 2550             dw = get_fattime();					/* Created time */
        BL       get_fattime
        MOV      R9,R0
// 2551             ST_DWORD(dir + DIR_CrtTime, dw);
        STRB     R9,[R8, #+14]
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R8, #+15]
        LSRS     R0,R9,#+16
        STRB     R0,[R8, #+16]
        LSRS     R0,R9,#+24
        STRB     R0,[R8, #+17]
// 2552             dir[DIR_Attr] = 0;					/* Reset attribute */
        MOVS     R0,#+0
        STRB     R0,[R8, #+11]
// 2553             ST_DWORD(dir + DIR_FileSize, 0);		/* size = 0 */
        MOVS     R0,#+0
        STRB     R0,[R8, #+28]
        MOVS     R0,#+0
        STRB     R0,[R8, #+29]
        MOVS     R0,#+0
        STRB     R0,[R8, #+30]
        MOVS     R0,#+0
        STRB     R0,[R8, #+31]
// 2554             cl = LD_CLUST(dir);					/* Get start cluster */
        LDRB     R0,[R8, #+21]
        LDRB     R1,[R8, #+20]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDRB     R1,[R8, #+27]
        LDRB     R2,[R8, #+26]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R10,R1,R0, LSL #+16
// 2555             ST_CLUST(dir, 0);					/* cluster = 0 */
        MOVS     R0,#+0
        STRB     R0,[R8, #+26]
        MOVS     R0,#+0
        STRB     R0,[R8, #+27]
        MOVS     R0,#+0
        STRB     R0,[R8, #+20]
        MOVS     R0,#+0
        STRB     R0,[R8, #+21]
// 2556             dj.fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[SP, #+0]
        STRB     R0,[R1, #+4]
// 2557             if (cl)  							/* Remove the cluster chain if exist */
        CMP      R10,#+0
        BEQ.N    ??f_open_14
// 2558             {
// 2559                 dw = dj.fs->winsect;
        LDR      R0,[SP, #+0]
        LDR      R9,[R0, #+48]
// 2560                 res = remove_chain(dj.fs, cl);
        MOV      R1,R10
        LDR      R0,[SP, #+0]
        BL       remove_chain
        MOVS     R7,R0
// 2561                 if (res == FR_OK)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??f_open_14
// 2562                 {
// 2563                     dj.fs->last_clust = cl - 1;	/* Reuse the cluster hole */
        SUBS     R0,R10,#+1
        LDR      R1,[SP, #+0]
        STR      R0,[R1, #+12]
// 2564                     res = move_window(dj.fs, dw);
        MOV      R1,R9
        LDR      R0,[SP, #+0]
        BL       move_window
        MOVS     R7,R0
        B.N      ??f_open_14
// 2565                 }
// 2566             }
// 2567         }
// 2568     }
// 2569     else  	/* Open an existing file */
// 2570     {
// 2571         if (res == FR_OK)  						/* Follow succeeded */
??f_open_7:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??f_open_14
// 2572         {
// 2573             if (dir[DIR_Attr] & AM_DIR)  		/* It is a directory */
        LDRB     R0,[R8, #+11]
        LSLS     R0,R0,#+27
        BPL.N    ??f_open_15
// 2574             {
// 2575                 res = FR_NO_FILE;
        MOVS     R7,#+4
        B.N      ??f_open_14
// 2576             }
// 2577             else
// 2578             {
// 2579                 if ((mode & FA_WRITE) && (dir[DIR_Attr] & AM_RDO)) /* R/O violation */
??f_open_15:
        LSLS     R0,R6,#+30
        BPL.N    ??f_open_14
        LDRB     R0,[R8, #+11]
        LSLS     R0,R0,#+31
        BPL.N    ??f_open_14
// 2580                     res = FR_DENIED;
        MOVS     R7,#+7
// 2581             }
// 2582         }
// 2583     }
// 2584     if (res == FR_OK)
??f_open_14:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??f_open_16
// 2585     {
// 2586         if (mode & FA_CREATE_ALWAYS)			/* Set file change flag if created or overwritten */
        LSLS     R0,R6,#+28
        BPL.N    ??f_open_17
// 2587             mode |= FA__WRITTEN;
        ORRS     R6,R6,#0x20
// 2588         fp->dir_sect = dj.fs->winsect;			/* Pointer to the directory entry */
??f_open_17:
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+48]
        STR      R0,[R4, #+28]
// 2589         fp->dir_ptr = dir;
        STR      R8,[R4, #+32]
// 2590 #if _FS_SHARE
// 2591         fp->lockid = inc_lock(&dj, (mode & ~FA_READ) ? 1 : 0);
        MOVS     R0,#+254
        TST      R6,R0
        BEQ.N    ??f_open_18
        MOVS     R1,#+1
        B.N      ??f_open_19
??f_open_18:
        MOVS     R1,#+0
??f_open_19:
        ADD      R0,SP,#+0
        BL       inc_lock
        STR      R0,[R4, #+40]
// 2592         if (!fp->lockid) res = FR_INT_ERR;
        LDR      R0,[R4, #+40]
        CMP      R0,#+0
        BNE.N    ??f_open_16
        MOVS     R7,#+2
// 2593 #endif
// 2594     }
// 2595 
// 2596 #else				/* R/O configuration */
// 2597     if (res == FR_OK)  					/* Follow succeeded */
// 2598     {
// 2599         if (!dir)  						/* Current dir itself */
// 2600         {
// 2601             res = FR_INVALID_NAME;
// 2602         }
// 2603         else
// 2604         {
// 2605             if (dir[DIR_Attr] & AM_DIR)	/* It is a directory */
// 2606                 res = FR_NO_FILE;
// 2607         }
// 2608     }
// 2609 #endif
// 2610     FREE_BUF();
??f_open_16:
        MOVS     R0,R5
        BL       ff_memfree
// 2611 
// 2612     if (res == FR_OK)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??f_open_20
// 2613     {
// 2614         fp->flag = mode;					/* File access mode */
        STRB     R6,[R4, #+6]
// 2615         fp->sclust = LD_CLUST(dir);			/* File start cluster */
        LDRB     R0,[R8, #+21]
        LDRB     R1,[R8, #+20]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDRB     R1,[R8, #+27]
        LDRB     R2,[R8, #+26]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0, LSL #+16
        STR      R0,[R4, #+16]
// 2616         fp->fsize = LD_DWORD(dir + DIR_FileSize);	/* File size */
        LDRB     R0,[R8, #+31]
        LDRB     R1,[R8, #+30]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R8, #+29]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R8, #+28]
        ORRS     R0,R1,R0
        STR      R0,[R4, #+12]
// 2617         fp->fptr = 0;						/* File pointer */
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
// 2618         fp->dsect = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+24]
// 2619 #if _USE_FASTSEEK
// 2620         fp->cltbl = 0;						/* Normal seek mode */
        MOVS     R0,#+0
        STR      R0,[R4, #+36]
// 2621 #endif
// 2622         fp->fs = dj.fs;
        LDR      R0,[SP, #+0]
        STR      R0,[R4, #+0]
// 2623         fp->id = dj.fs->id;	/* Validate file object */
        LDR      R0,[SP, #+0]
        LDRH     R0,[R0, #+6]
        STRH     R0,[R4, #+4]
// 2624     }
// 2625 
// 2626     LEAVE_FF(dj.fs, res);
??f_open_20:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_open_1:
        ADD      SP,SP,#+56
        POP      {R4-R10,PC}      ;; return
// 2627 }
// 2628 
// 2629 
// 2630 
// 2631 
// 2632 /*-----------------------------------------------------------------------*/
// 2633 /* Read File                                                             */
// 2634 /*-----------------------------------------------------------------------*/
// 2635 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2636 FRESULT f_read (
// 2637     FIL *fp, 		/* Pointer to the file object */
// 2638     void *buff,		/* Pointer to data buffer */
// 2639     UINT btr,		/* Number of bytes to read */
// 2640     UINT *br		/* Pointer to number of bytes read */
// 2641 )
// 2642 {
f_read:
        PUSH     {R4-R10,LR}
        MOVS     R5,R0
        MOVS     R6,R2
        MOVS     R7,R3
// 2643     FRESULT res;
// 2644     DWORD clst, sect, remain;
// 2645     UINT rcnt, cc;
// 2646     BYTE csect, *rbuff = buff;
        MOVS     R4,R1
// 2647 
// 2648 
// 2649     *br = 0;	/* Initialize byte counter */
        MOVS     R0,#+0
        STR      R0,[R7, #+0]
// 2650 
// 2651     res = validate(fp->fs, fp->id);				/* Check validity */
        LDRH     R1,[R5, #+4]
        LDR      R0,[R5, #+0]
        BL       validate
// 2652     if (res != FR_OK) LEAVE_FF(fp->fs, res);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??f_read_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??f_read_1
// 2653     if (fp->flag & FA__ERROR)					/* Aborted file? */
??f_read_0:
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+24
        BPL.N    ??f_read_2
// 2654         LEAVE_FF(fp->fs, FR_INT_ERR);
        MOVS     R0,#+2
        B.N      ??f_read_1
// 2655     if (!(fp->flag & FA_READ)) 					/* Check access mode */
??f_read_2:
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+31
        BMI.N    ??f_read_3
// 2656         LEAVE_FF(fp->fs, FR_DENIED);
        MOVS     R0,#+7
        B.N      ??f_read_1
// 2657     remain = fp->fsize - fp->fptr;
??f_read_3:
        LDR      R0,[R5, #+12]
        LDR      R1,[R5, #+8]
        SUBS     R0,R0,R1
// 2658     if (btr > remain) btr = (UINT)remain;		/* Truncate btr by remaining bytes */
        CMP      R0,R6
        BCS.N    ??f_read_4
        MOVS     R6,R0
        B.N      ??f_read_4
// 2659 
// 2660     for ( ;  btr;								/* Repeat until all data read */
// 2661             rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt)
// 2662     {
// 2663         if ((fp->fptr % SS(fp->fs)) == 0)  		/* On the sector boundary? */
// 2664         {
// 2665             csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));	/* Sector offset in the cluster */
// 2666             if (!csect)  						/* On the cluster boundary? */
// 2667             {
// 2668                 if (fp->fptr == 0)  			/* On the top of the file? */
// 2669                 {
// 2670                     clst = fp->sclust;			/* Follow from the origin */
// 2671                 }
// 2672                 else  						/* Middle or end of the file */
// 2673                 {
// 2674 #if _USE_FASTSEEK
// 2675                     if (fp->cltbl)
// 2676                         clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
// 2677                     else
// 2678 #endif
// 2679                         clst = get_fat(fp->fs, fp->clust);	/* Follow cluster chain on the FAT */
// 2680                 }
// 2681                 if (clst < 2) ABORT(fp->fs, FR_INT_ERR);
// 2682                 if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
// 2683                 fp->clust = clst;				/* Update current cluster */
// 2684             }
// 2685             sect = clust2sect(fp->fs, fp->clust);	/* Get current sector */
// 2686             if (!sect) ABORT(fp->fs, FR_INT_ERR);
// 2687             sect += csect;
// 2688             cc = btr / SS(fp->fs);				/* When remaining bytes >= sector size, */
// 2689             if (cc)  							/* Read maximum contiguous sectors directly */
// 2690             {
// 2691                 if (csect + cc > fp->fs->csize)	/* Clip at cluster boundary */
// 2692                     cc = fp->fs->csize - csect;
// 2693                 if (disk_read(fp->fs->drv, rbuff, sect, (BYTE)cc) != RES_OK)
// 2694                     ABORT(fp->fs, FR_DISK_ERR);
// 2695 #if !_FS_READONLY && _FS_MINIMIZE <= 2			/* Replace one of the read sectors with cached data if it contains a dirty sector */
// 2696 #if _FS_TINY
// 2697                 if (fp->fs->wflag && fp->fs->winsect - sect < cc)
// 2698                     mem_cpy(rbuff + ((fp->fs->winsect - sect) * SS(fp->fs)), fp->fs->win, SS(fp->fs));
// 2699 #else
// 2700                 if ((fp->flag & FA__DIRTY) && fp->dsect - sect < cc)
// 2701                     mem_cpy(rbuff + ((fp->dsect - sect) * SS(fp->fs)), fp->buf, SS(fp->fs));
// 2702 #endif
// 2703 #endif
// 2704                 rcnt = SS(fp->fs) * cc;			/* Number of bytes transferred */
// 2705                 continue;
// 2706             }
// 2707 #if !_FS_TINY
// 2708             if (fp->dsect != sect)  			/* Load data sector if not in cache */
// 2709             {
// 2710 #if !_FS_READONLY
// 2711                 if (fp->flag & FA__DIRTY)  		/* Write-back dirty sector cache */
// 2712                 {
// 2713                     if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
// 2714                         ABORT(fp->fs, FR_DISK_ERR);
// 2715                     fp->flag &= ~FA__DIRTY;
// 2716                 }
// 2717 #endif
// 2718                 if (disk_read(fp->fs->drv, fp->buf, sect, 1) != RES_OK)	/* Fill sector cache */
// 2719                     ABORT(fp->fs, FR_DISK_ERR);
// 2720             }
// 2721 #endif
// 2722             fp->dsect = sect;
??f_read_5:
        STR      R9,[R5, #+24]
// 2723         }
// 2724         rcnt = SS(fp->fs) - (fp->fptr % SS(fp->fs));	/* Get partial sector data from sector buffer */
??f_read_6:
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        RSBS     R8,R2,#+512
// 2725         if (rcnt > btr) rcnt = btr;
        CMP      R6,R8
        BCS.N    ??f_read_7
        MOV      R8,R6
// 2726 #if _FS_TINY
// 2727         if (move_window(fp->fs, fp->dsect))		/* Move sector window */
// 2728             ABORT(fp->fs, FR_DISK_ERR);
// 2729         mem_cpy(rbuff, &fp->fs->win[fp->fptr % SS(fp->fs)], rcnt);	/* Pick partial sector */
// 2730 #else
// 2731         mem_cpy(rbuff, &fp->buf[fp->fptr % SS(fp->fs)], rcnt);	/* Pick partial sector */
??f_read_7:
        MOV      R2,R8
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        UDIV     R3,R0,R1
        MLS      R3,R3,R1,R0
        ADDS     R0,R3,R5
        ADDS     R1,R0,#+44
        MOVS     R0,R4
        BL       mem_cpy
??f_read_8:
        ADDS     R4,R8,R4
        LDR      R0,[R5, #+8]
        ADDS     R0,R8,R0
        STR      R0,[R5, #+8]
        LDR      R0,[R7, #+0]
        ADDS     R0,R8,R0
        STR      R0,[R7, #+0]
        SUBS     R6,R6,R8
??f_read_4:
        CMP      R6,#+0
        BEQ.W    ??f_read_9
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??f_read_6
        LDR      R0,[R5, #+8]
        LSRS     R0,R0,#+9
        LDR      R1,[R5, #+0]
        LDRB     R1,[R1, #+2]
        SUBS     R1,R1,#+1
        ANDS     R8,R1,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??f_read_10
        LDR      R0,[R5, #+8]
        CMP      R0,#+0
        BNE.N    ??f_read_11
        LDR      R0,[R5, #+16]
        B.N      ??f_read_12
??f_read_11:
        LDR      R0,[R5, #+36]
        CMP      R0,#+0
        BEQ.N    ??f_read_13
        LDR      R1,[R5, #+8]
        MOVS     R0,R5
        BL       clmt_clust
        B.N      ??f_read_12
??f_read_13:
        LDR      R1,[R5, #+20]
        LDR      R0,[R5, #+0]
        BL       get_fat
??f_read_12:
        CMP      R0,#+2
        BCS.N    ??f_read_14
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_read_1
??f_read_14:
        CMN      R0,#+1
        BNE.N    ??f_read_15
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_read_1
??f_read_15:
        STR      R0,[R5, #+20]
??f_read_10:
        LDR      R1,[R5, #+20]
        LDR      R0,[R5, #+0]
        BL       clust2sect
        MOV      R9,R0
        CMP      R9,#+0
        BNE.N    ??f_read_16
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_read_1
??f_read_16:
        UXTAB    R9,R9,R8
        LSRS     R10,R6,#+9
        CMP      R10,#+0
        BEQ.N    ??f_read_17
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+2]
        UXTAB    R1,R10,R8
        CMP      R0,R1
        BCS.N    ??f_read_18
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+2]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        SUBS     R10,R0,R8
??f_read_18:
        MOV      R3,R10
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R2,R9
        MOVS     R1,R4
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_read
        CMP      R0,#+0
        BEQ.N    ??f_read_19
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_read_1
??f_read_19:
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_read_20
        LDR      R0,[R5, #+24]
        SUBS     R0,R0,R9
        CMP      R0,R10
        BCS.N    ??f_read_20
        MOV      R2,#+512
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+24]
        SUBS     R0,R0,R9
        MOV      R3,#+512
        MLA      R0,R3,R0,R4
        BL       mem_cpy
??f_read_20:
        MOV      R0,#+512
        MUL      R8,R0,R10
        B.N      ??f_read_8
??f_read_17:
        LDR      R0,[R5, #+24]
        CMP      R0,R9
        BEQ.W    ??f_read_5
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_read_21
        MOVS     R3,#+1
        LDR      R2,[R5, #+24]
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??f_read_22
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_read_1
??f_read_22:
        LDRB     R0,[R5, #+6]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R5, #+6]
??f_read_21:
        MOVS     R3,#+1
        MOV      R2,R9
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_read
        CMP      R0,#+0
        BEQ.W    ??f_read_5
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_read_1
// 2732 #endif
// 2733     }
// 2734 
// 2735     LEAVE_FF(fp->fs, FR_OK);
??f_read_9:
        MOVS     R0,#+0
??f_read_1:
        POP      {R4-R10,PC}      ;; return
// 2736 }
// 2737 
// 2738 
// 2739 
// 2740 
// 2741 #if !_FS_READONLY
// 2742 /*-----------------------------------------------------------------------*/
// 2743 /* Write File                                                            */
// 2744 /*-----------------------------------------------------------------------*/
// 2745 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2746 FRESULT f_write (
// 2747     FIL *fp,			/* Pointer to the file object */
// 2748     const void *buff,	/* Pointer to the data to be written */
// 2749     UINT btw,			/* Number of bytes to write */
// 2750     UINT *bw			/* Pointer to number of bytes written */
// 2751 )
// 2752 {
f_write:
        PUSH     {R4-R10,LR}
        MOVS     R5,R0
        MOVS     R6,R2
        MOVS     R7,R3
// 2753     FRESULT res;
// 2754     DWORD clst, sect;
// 2755     UINT wcnt, cc;
// 2756     const BYTE *wbuff = buff;
        MOVS     R4,R1
// 2757     BYTE csect;
// 2758 
// 2759 
// 2760     *bw = 0;	/* Initialize byte counter */
        MOVS     R0,#+0
        STR      R0,[R7, #+0]
// 2761 
// 2762     res = validate(fp->fs, fp->id);			/* Check validity */
        LDRH     R1,[R5, #+4]
        LDR      R0,[R5, #+0]
        BL       validate
// 2763     if (res != FR_OK) LEAVE_FF(fp->fs, res);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??f_write_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??f_write_1
// 2764     if (fp->flag & FA__ERROR)				/* Aborted file? */
??f_write_0:
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+24
        BPL.N    ??f_write_2
// 2765         LEAVE_FF(fp->fs, FR_INT_ERR);
        MOVS     R0,#+2
        B.N      ??f_write_1
// 2766     if (!(fp->flag & FA_WRITE))				/* Check access mode */
??f_write_2:
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+30
        BMI.N    ??f_write_3
// 2767         LEAVE_FF(fp->fs, FR_DENIED);
        MOVS     R0,#+7
        B.N      ??f_write_1
// 2768     if ((DWORD)(fp->fsize + btw) < fp->fsize) btw = 0;	/* File size cannot reach 4GB */
??f_write_3:
        LDR      R0,[R5, #+12]
        ADDS     R0,R6,R0
        LDR      R1,[R5, #+12]
        CMP      R0,R1
        BCS.N    ??f_write_4
        MOVS     R6,#+0
        B.N      ??f_write_4
// 2769 
// 2770     for ( ;  btw;							/* Repeat until all data written */
// 2771             wbuff += wcnt, fp->fptr += wcnt, *bw += wcnt, btw -= wcnt)
// 2772     {
// 2773         if ((fp->fptr % SS(fp->fs)) == 0)  	/* On the sector boundary? */
// 2774         {
// 2775             csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));	/* Sector offset in the cluster */
// 2776             if (!csect)  					/* On the cluster boundary? */
// 2777             {
// 2778                 if (fp->fptr == 0)  		/* On the top of the file? */
// 2779                 {
// 2780                     clst = fp->sclust;		/* Follow from the origin */
// 2781                     if (clst == 0)			/* When no cluster is allocated, */
// 2782                         fp->sclust = clst = create_chain(fp->fs, 0);	/* Create a new cluster chain */
// 2783                 }
// 2784                 else  					/* Middle or end of the file */
// 2785                 {
// 2786 #if _USE_FASTSEEK
// 2787                     if (fp->cltbl)
// 2788                         clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
// 2789                     else
// 2790 #endif
// 2791                         clst = create_chain(fp->fs, fp->clust);	/* Follow or stretch cluster chain on the FAT */
// 2792                 }
// 2793                 if (clst == 0) break;		/* Could not allocate a new cluster (disk full) */
// 2794                 if (clst == 1) ABORT(fp->fs, FR_INT_ERR);
// 2795                 if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
// 2796                 fp->clust = clst;			/* Update current cluster */
// 2797             }
// 2798 #if _FS_TINY
// 2799             if (fp->fs->winsect == fp->dsect && move_window(fp->fs, 0))	/* Write-back sector cache */
// 2800                 ABORT(fp->fs, FR_DISK_ERR);
// 2801 #else
// 2802             if (fp->flag & FA__DIRTY)  		/* Write-back sector cache */
// 2803             {
// 2804                 if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
// 2805                     ABORT(fp->fs, FR_DISK_ERR);
// 2806                 fp->flag &= ~FA__DIRTY;
// 2807             }
// 2808 #endif
// 2809             sect = clust2sect(fp->fs, fp->clust);	/* Get current sector */
// 2810             if (!sect) ABORT(fp->fs, FR_INT_ERR);
// 2811             sect += csect;
// 2812             cc = btw / SS(fp->fs);			/* When remaining bytes >= sector size, */
// 2813             if (cc)  						/* Write maximum contiguous sectors directly */
// 2814             {
// 2815                 if (csect + cc > fp->fs->csize)	/* Clip at cluster boundary */
// 2816                     cc = fp->fs->csize - csect;
// 2817                 if (disk_write(fp->fs->drv, wbuff, sect, (BYTE)cc) != RES_OK)
// 2818                     ABORT(fp->fs, FR_DISK_ERR);
// 2819 #if _FS_TINY
// 2820                 if (fp->fs->winsect - sect < cc)  	/* Refill sector cache if it gets invalidated by the direct write */
// 2821                 {
// 2822                     mem_cpy(fp->fs->win, wbuff + ((fp->fs->winsect - sect) * SS(fp->fs)), SS(fp->fs));
// 2823                     fp->fs->wflag = 0;
// 2824                 }
// 2825 #else
// 2826                 if (fp->dsect - sect < cc)   /* Refill sector cache if it gets invalidated by the direct write */
// 2827                 {
// 2828                     mem_cpy(fp->buf, wbuff + ((fp->dsect - sect) * SS(fp->fs)), SS(fp->fs));
// 2829                     fp->flag &= ~FA__DIRTY;
// 2830                 }
// 2831 #endif
// 2832                 wcnt = SS(fp->fs) * cc;		/* Number of bytes transferred */
// 2833                 continue;
// 2834             }
// 2835 #if _FS_TINY
// 2836             if (fp->fptr >= fp->fsize)  	/* Avoid silly cache filling at growing edge */
// 2837             {
// 2838                 if (move_window(fp->fs, 0)) ABORT(fp->fs, FR_DISK_ERR);
// 2839                 fp->fs->winsect = sect;
// 2840             }
// 2841 #else
// 2842             if (fp->dsect != sect)  		/* Fill sector cache with file data */
// 2843             {
// 2844                 if (fp->fptr < fp->fsize &&
// 2845                         disk_read(fp->fs->drv, fp->buf, sect, 1) != RES_OK)
// 2846                     ABORT(fp->fs, FR_DISK_ERR);
// 2847             }
// 2848 #endif
// 2849             fp->dsect = sect;
??f_write_5:
        STR      R9,[R5, #+24]
// 2850         }
// 2851         wcnt = SS(fp->fs) - (fp->fptr % SS(fp->fs));/* Put partial sector into file I/O buffer */
??f_write_6:
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        RSBS     R8,R2,#+512
// 2852         if (wcnt > btw) wcnt = btw;
        CMP      R6,R8
        BCS.N    ??f_write_7
        MOV      R8,R6
// 2853 #if _FS_TINY
// 2854         if (move_window(fp->fs, fp->dsect))	/* Move sector window */
// 2855             ABORT(fp->fs, FR_DISK_ERR);
// 2856         mem_cpy(&fp->fs->win[fp->fptr % SS(fp->fs)], wbuff, wcnt);	/* Fit partial sector */
// 2857         fp->fs->wflag = 1;
// 2858 #else
// 2859         mem_cpy(&fp->buf[fp->fptr % SS(fp->fs)], wbuff, wcnt);	/* Fit partial sector */
??f_write_7:
        MOV      R2,R8
        MOVS     R1,R4
        LDR      R0,[R5, #+8]
        MOV      R3,#+512
        UDIV     R12,R0,R3
        MLS      R12,R12,R3,R0
        ADDS     R0,R12,R5
        ADDS     R0,R0,#+44
        BL       mem_cpy
// 2860         fp->flag |= FA__DIRTY;
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x40
        STRB     R0,[R5, #+6]
??f_write_8:
        ADDS     R4,R8,R4
        LDR      R0,[R5, #+8]
        ADDS     R0,R8,R0
        STR      R0,[R5, #+8]
        LDR      R0,[R7, #+0]
        ADDS     R0,R8,R0
        STR      R0,[R7, #+0]
        SUBS     R6,R6,R8
??f_write_4:
        CMP      R6,#+0
        BEQ.N    ??f_write_9
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??f_write_6
        LDR      R0,[R5, #+8]
        LSRS     R0,R0,#+9
        LDR      R1,[R5, #+0]
        LDRB     R1,[R1, #+2]
        SUBS     R1,R1,#+1
        ANDS     R8,R1,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??f_write_10
        LDR      R0,[R5, #+8]
        CMP      R0,#+0
        BNE.N    ??f_write_11
        LDR      R0,[R5, #+16]
        CMP      R0,#+0
        BNE.N    ??f_write_12
        MOVS     R1,#+0
        LDR      R0,[R5, #+0]
        BL       create_chain
        STR      R0,[R5, #+16]
        B.N      ??f_write_12
??f_write_11:
        LDR      R0,[R5, #+36]
        CMP      R0,#+0
        BEQ.N    ??f_write_13
        LDR      R1,[R5, #+8]
        MOVS     R0,R5
        BL       clmt_clust
        B.N      ??f_write_12
??f_write_13:
        LDR      R1,[R5, #+20]
        LDR      R0,[R5, #+0]
        BL       create_chain
??f_write_12:
        CMP      R0,#+0
        BNE.N    ??f_write_14
// 2861 #endif
// 2862     }
// 2863 
// 2864     if (fp->fptr > fp->fsize) fp->fsize = fp->fptr;	/* Update file size if needed */
??f_write_9:
        LDR      R0,[R5, #+12]
        LDR      R1,[R5, #+8]
        CMP      R0,R1
        BCS.N    ??f_write_15
        LDR      R0,[R5, #+8]
        STR      R0,[R5, #+12]
// 2865     fp->flag |= FA__WRITTEN;						/* Set file change flag */
??f_write_15:
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x20
        STRB     R0,[R5, #+6]
// 2866 
// 2867     LEAVE_FF(fp->fs, FR_OK);
        MOVS     R0,#+0
??f_write_1:
        POP      {R4-R10,PC}      ;; return
??f_write_14:
        CMP      R0,#+1
        BNE.N    ??f_write_16
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_write_1
??f_write_16:
        CMN      R0,#+1
        BNE.N    ??f_write_17
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_write_1
??f_write_17:
        STR      R0,[R5, #+20]
??f_write_10:
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_write_18
        MOVS     R3,#+1
        LDR      R2,[R5, #+24]
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??f_write_19
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_write_1
??f_write_19:
        LDRB     R0,[R5, #+6]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R5, #+6]
??f_write_18:
        LDR      R1,[R5, #+20]
        LDR      R0,[R5, #+0]
        BL       clust2sect
        MOV      R9,R0
        CMP      R9,#+0
        BNE.N    ??f_write_20
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_write_1
??f_write_20:
        UXTAB    R9,R9,R8
        LSRS     R10,R6,#+9
        CMP      R10,#+0
        BEQ.N    ??f_write_21
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+2]
        UXTAB    R1,R10,R8
        CMP      R0,R1
        BCS.N    ??f_write_22
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+2]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        SUBS     R10,R0,R8
??f_write_22:
        MOV      R3,R10
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R2,R9
        MOVS     R1,R4
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??f_write_23
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_write_1
??f_write_23:
        LDR      R0,[R5, #+24]
        SUBS     R0,R0,R9
        CMP      R0,R10
        BCS.N    ??f_write_24
        MOV      R2,#+512
        LDR      R0,[R5, #+24]
        SUBS     R0,R0,R9
        MOV      R1,#+512
        MLA      R1,R1,R0,R4
        ADDS     R0,R5,#+44
        BL       mem_cpy
        LDRB     R0,[R5, #+6]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R5, #+6]
??f_write_24:
        MOV      R0,#+512
        MUL      R8,R0,R10
        B.N      ??f_write_8
??f_write_21:
        LDR      R0,[R5, #+24]
        CMP      R0,R9
        BEQ.W    ??f_write_5
        LDR      R0,[R5, #+8]
        LDR      R1,[R5, #+12]
        CMP      R0,R1
        BCS.W    ??f_write_5
        MOVS     R3,#+1
        MOV      R2,R9
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_read
        CMP      R0,#+0
        BEQ.W    ??f_write_5
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_write_1
// 2868 }
// 2869 
// 2870 
// 2871 
// 2872 
// 2873 /*-----------------------------------------------------------------------*/
// 2874 /* Synchronize the File Object                                           */
// 2875 /*-----------------------------------------------------------------------*/
// 2876 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2877 FRESULT f_sync (
// 2878     FIL *fp		/* Pointer to the file object */
// 2879 )
// 2880 {
f_sync:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
// 2881     FRESULT res;
// 2882     DWORD tim;
// 2883     BYTE *dir;
// 2884 
// 2885 
// 2886     res = validate(fp->fs, fp->id);		/* Check validity of the object */
        LDRH     R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       validate
// 2887     if (res == FR_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??f_sync_0
// 2888     {
// 2889         if (fp->flag & FA__WRITTEN)  	/* Has the file been written? */
        LDRB     R1,[R4, #+6]
        LSLS     R1,R1,#+26
        BPL.N    ??f_sync_0
// 2890         {
// 2891 #if !_FS_TINY	/* Write-back dirty buffer */
// 2892             if (fp->flag & FA__DIRTY)
        LDRB     R0,[R4, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_sync_1
// 2893             {
// 2894                 if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
        MOVS     R3,#+1
        LDR      R2,[R4, #+24]
        ADDS     R1,R4,#+44
        LDR      R0,[R4, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??f_sync_2
// 2895                     LEAVE_FF(fp->fs, FR_DISK_ERR);
        MOVS     R0,#+1
        B.N      ??f_sync_3
// 2896                 fp->flag &= ~FA__DIRTY;
??f_sync_2:
        LDRB     R0,[R4, #+6]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R4, #+6]
// 2897             }
// 2898 #endif
// 2899             /* Update the directory entry */
// 2900             res = move_window(fp->fs, fp->dir_sect);
??f_sync_1:
        LDR      R1,[R4, #+28]
        LDR      R0,[R4, #+0]
        BL       move_window
// 2901             if (res == FR_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??f_sync_0
// 2902             {
// 2903                 dir = fp->dir_ptr;
        LDR      R5,[R4, #+32]
// 2904                 dir[DIR_Attr] |= AM_ARC;					/* Set archive bit */
        LDRB     R0,[R5, #+11]
        ORRS     R0,R0,#0x20
        STRB     R0,[R5, #+11]
// 2905                 ST_DWORD(dir + DIR_FileSize, fp->fsize);		/* Update file size */
        LDR      R0,[R4, #+12]
        STRB     R0,[R5, #+28]
        LDR      R0,[R4, #+12]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R5, #+29]
        LDR      R0,[R4, #+12]
        LSRS     R0,R0,#+16
        STRB     R0,[R5, #+30]
        LDR      R0,[R4, #+12]
        LSRS     R0,R0,#+24
        STRB     R0,[R5, #+31]
// 2906                 ST_CLUST(dir, fp->sclust);					/* Update start cluster */
        LDR      R0,[R4, #+16]
        STRB     R0,[R5, #+26]
        LDR      R0,[R4, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R5, #+27]
        LDR      R0,[R4, #+16]
        LSRS     R0,R0,#+16
        STRB     R0,[R5, #+20]
        LDR      R0,[R4, #+16]
        LSRS     R0,R0,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R5, #+21]
// 2907                 tim = get_fattime();						/* Update updated time */
        BL       get_fattime
// 2908                 ST_DWORD(dir + DIR_WrtTime, tim);
        STRB     R0,[R5, #+22]
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R1,R1,#+8
        STRB     R1,[R5, #+23]
        LSRS     R1,R0,#+16
        STRB     R1,[R5, #+24]
        LSRS     R0,R0,#+24
        STRB     R0,[R5, #+25]
// 2909                 fp->flag &= ~FA__WRITTEN;
        LDRB     R0,[R4, #+6]
        ANDS     R0,R0,#0xDF
        STRB     R0,[R4, #+6]
// 2910                 fp->fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+4]
// 2911                 res = sync(fp->fs);
        LDR      R0,[R4, #+0]
        BL       sync
// 2912             }
// 2913         }
// 2914     }
// 2915 
// 2916     LEAVE_FF(fp->fs, res);
??f_sync_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_sync_3:
        POP      {R1,R4,R5,PC}    ;; return
// 2917 }
// 2918 
// 2919 #endif /* !_FS_READONLY */
// 2920 
// 2921 
// 2922 
// 2923 
// 2924 /*-----------------------------------------------------------------------*/
// 2925 /* Close File                                                            */
// 2926 /*-----------------------------------------------------------------------*/
// 2927 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2928 FRESULT f_close (
// 2929     FIL *fp		/* Pointer to the file object to be closed */
// 2930 )
// 2931 {
f_close:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 2932     FRESULT res;
// 2933 
// 2934 #if _FS_READONLY
// 2935     FATFS *fs = fp->fs;
// 2936     res = validate(fs, fp->id);
// 2937     if (res == FR_OK) fp->fs = 0;	/* Discard file object */
// 2938     LEAVE_FF(fs, res);
// 2939 
// 2940 #else
// 2941     res = f_sync(fp);		/* Flush cached data */
        MOVS     R0,R4
        BL       f_sync
// 2942 #if _FS_SHARE
// 2943     if (res == FR_OK)  		/* Decrement open counter */
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??f_close_0
// 2944     {
// 2945 #if _FS_REENTRANT
// 2946         res = validate(fp->fs, fp->id);
// 2947         if (res == FR_OK)
// 2948         {
// 2949             res = dec_lock(fp->lockid);
// 2950             unlock_fs(fp->fs, FR_OK);
// 2951         }
// 2952 #else
// 2953     res = dec_lock(fp->lockid);
        LDR      R0,[R4, #+40]
        BL       dec_lock
// 2954 #endif
// 2955     }
// 2956 #endif
// 2957     if (res == FR_OK) fp->fs = 0;	/* Discard file object */
??f_close_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??f_close_1
        MOVS     R1,#+0
        STR      R1,[R4, #+0]
// 2958     return res;
??f_close_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
// 2959 #endif
// 2960 }
// 2961 
// 2962 
// 2963 
// 2964 
// 2965 /*-----------------------------------------------------------------------*/
// 2966 /* Current Drive/Directory Handlings                                     */
// 2967 /*-----------------------------------------------------------------------*/
// 2968 
// 2969 #if _FS_RPATH >= 1
// 2970 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2971 FRESULT f_chdrive (
// 2972     BYTE drv		/* Drive number */
// 2973 )
// 2974 {
// 2975     if (drv >= _VOLUMES) return FR_INVALID_DRIVE;
f_chdrive:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??f_chdrive_0
        MOVS     R0,#+11
        B.N      ??f_chdrive_1
// 2976 
// 2977     CurrVol = drv;
??f_chdrive_0:
        LDR.N    R1,??DataTable13_1
        STRB     R0,[R1, #+0]
// 2978 
// 2979     return FR_OK;
        MOVS     R0,#+0
??f_chdrive_1:
        BX       LR               ;; return
// 2980 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     `?<Constant "+,;=[]">`
// 2981 
// 2982 
// 2983 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2984 FRESULT f_chdir (
// 2985     const TCHAR *path	/* Pointer to the directory path */
// 2986 )
// 2987 {
f_chdir:
        PUSH     {R0,R4,R5,LR}
        SUB      SP,SP,#+48
// 2988     FRESULT res;
// 2989     DIR dj;
// 2990     DEF_NAMEBUF;
// 2991 
// 2992 
// 2993     res = chk_mounted(&path, &dj.fs, 0);
        MOVS     R2,#+0
        ADD      R1,SP,#+0
        ADD      R0,SP,#+48
        BL       chk_mounted
        MOVS     R4,R0
// 2994     if (res == FR_OK)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??f_chdir_0
// 2995     {
// 2996         INIT_BUF(dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R5,R0
        CMP      R5,#+0
        BNE.N    ??f_chdir_1
        MOVS     R0,#+17
        B.N      ??f_chdir_2
??f_chdir_1:
        STR      R5,[SP, #+28]
        ADD      R0,SP,#+36
        STR      R0,[SP, #+24]
// 2997         res = follow_path(&dj, path);		/* Follow the path */
        LDR      R1,[SP, #+48]
        ADD      R0,SP,#+0
        BL       follow_path
        MOVS     R4,R0
// 2998         FREE_BUF();
        MOVS     R0,R5
        BL       ff_memfree
// 2999         if (res == FR_OK)  					/* Follow completed */
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??f_chdir_3
// 3000         {
// 3001             if (!dj.dir)
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BNE.N    ??f_chdir_4
// 3002             {
// 3003                 dj.fs->cdir = dj.sclust;	/* Start directory itself */
        LDR      R0,[SP, #+8]
        LDR      R1,[SP, #+0]
        STR      R0,[R1, #+24]
        B.N      ??f_chdir_3
// 3004             }
// 3005             else
// 3006             {
// 3007                 if (dj.dir[DIR_Attr] & AM_DIR)	/* Reached to the directory */
??f_chdir_4:
        LDR      R0,[SP, #+20]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+27
        BPL.N    ??f_chdir_5
// 3008                     dj.fs->cdir = LD_CLUST(dj.dir);
        LDR      R0,[SP, #+20]
        LDRB     R0,[R0, #+21]
        LDR      R1,[SP, #+20]
        LDRB     R1,[R1, #+20]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[SP, #+20]
        LDRB     R1,[R1, #+27]
        LDR      R2,[SP, #+20]
        LDRB     R2,[R2, #+26]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0, LSL #+16
        LDR      R1,[SP, #+0]
        STR      R0,[R1, #+24]
        B.N      ??f_chdir_3
// 3009                 else
// 3010                     res = FR_NO_PATH;		/* Reached but a file */
??f_chdir_5:
        MOVS     R4,#+5
// 3011             }
// 3012         }
// 3013         if (res == FR_NO_FILE) res = FR_NO_PATH;
??f_chdir_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??f_chdir_0
        MOVS     R4,#+5
// 3014     }
// 3015 
// 3016     LEAVE_FF(dj.fs, res);
??f_chdir_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_chdir_2:
        ADD      SP,SP,#+52
        POP      {R4,R5,PC}       ;; return
// 3017 }
// 3018 
// 3019 
// 3020 #if _FS_RPATH >= 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3021 FRESULT f_getcwd (
// 3022     TCHAR *path,	/* Pointer to the directory path */
// 3023     UINT sz_path	/* Size of path */
// 3024 )
// 3025 {
f_getcwd:
        PUSH     {R0,R4-R8,LR}
        SUB      SP,SP,#+84
        MOVS     R4,R1
// 3026     FRESULT res;
// 3027     DIR dj;
// 3028     UINT i, n;
// 3029     DWORD ccl;
// 3030     TCHAR *tp;
// 3031     FILINFO fno;
// 3032     DEF_NAMEBUF;
// 3033 
// 3034 
// 3035     *path = 0;
        MOVS     R0,#+0
        LDR      R1,[SP, #+84]
        STRB     R0,[R1, #+0]
// 3036     res = chk_mounted((const TCHAR **)&path, &dj.fs, 0);	/* Get current volume */
        MOVS     R2,#+0
        ADD      R1,SP,#+0
        ADD      R0,SP,#+84
        BL       chk_mounted
        MOVS     R6,R0
// 3037     if (res == FR_OK)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.W    ??f_getcwd_0
// 3038     {
// 3039         INIT_BUF(dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R5,R0
        CMP      R5,#+0
        BNE.N    ??f_getcwd_1
        MOVS     R0,#+17
        B.N      ??f_getcwd_2
??f_getcwd_1:
        STR      R5,[SP, #+28]
        ADD      R0,SP,#+36
        STR      R0,[SP, #+24]
// 3040         i = sz_path;		/* Bottom of buffer (dir stack base) */
        MOVS     R7,R4
// 3041         dj.sclust = dj.fs->cdir;			/* Start to follow upper dir from current dir */
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+8]
        B.N      ??f_getcwd_3
// 3042         while ((ccl = dj.sclust) != 0)  	/* Repeat while current dir is a sub-dir */
// 3043         {
// 3044             res = dir_sdi(&dj, 1);			/* Get parent dir */
// 3045             if (res != FR_OK) break;
// 3046             res = dir_read(&dj);
// 3047             if (res != FR_OK) break;
// 3048             dj.sclust = LD_CLUST(dj.dir);	/* Goto parent dir */
// 3049             res = dir_sdi(&dj, 0);
// 3050             if (res != FR_OK) break;
// 3051             do  							/* Find the entry links to the child dir */
// 3052             {
// 3053                 res = dir_read(&dj);
// 3054                 if (res != FR_OK) break;
// 3055                 if (ccl == LD_CLUST(dj.dir)) break;	/* Found the entry */
// 3056                 res = dir_next(&dj, 0);
// 3057             }
// 3058             while (res == FR_OK);
// 3059             if (res == FR_NO_FILE) res = FR_INT_ERR;/* It cannot be 'not found'. */
// 3060             if (res != FR_OK) break;
// 3061 #if _USE_LFN
// 3062             fno.lfname = path;
// 3063             fno.lfsize = i;
// 3064 #endif
// 3065             get_fileinfo(&dj, &fno);		/* Get the dir name and push it to the buffer */
// 3066             tp = fno.fname;
// 3067             if (_USE_LFN && *path) tp = path;
// 3068             for (n = 0; tp[n]; n++) ;
// 3069             if (i < n + 3)
// 3070             {
// 3071                 res = FR_NOT_ENOUGH_CORE;
// 3072                 break;
// 3073             }
// 3074             while (n) path[--i] = tp[--n];
??f_getcwd_4:
        SUBS     R7,R7,#+1
        SUBS     R1,R1,#+1
        LDRB     R2,[R1, R0]
        LDR      R3,[SP, #+84]
        STRB     R2,[R7, R3]
??f_getcwd_5:
        CMP      R1,#+0
        BNE.N    ??f_getcwd_4
// 3075             path[--i] = '/';
        SUBS     R7,R7,#+1
        MOVS     R0,#+47
        LDR      R1,[SP, #+84]
        STRB     R0,[R7, R1]
??f_getcwd_3:
        LDR      R8,[SP, #+8]
        CMP      R8,#+0
        BEQ.N    ??f_getcwd_6
        MOVS     R1,#+1
        ADD      R0,SP,#+0
        BL       dir_sdi
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_getcwd_6
??f_getcwd_7:
        ADD      R0,SP,#+0
        BL       dir_read
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_getcwd_6
??f_getcwd_8:
        LDR      R0,[SP, #+20]
        LDRB     R0,[R0, #+21]
        LDR      R1,[SP, #+20]
        LDRB     R1,[R1, #+20]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[SP, #+20]
        LDRB     R1,[R1, #+27]
        LDR      R2,[SP, #+20]
        LDRB     R2,[R2, #+26]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0, LSL #+16
        STR      R0,[SP, #+8]
        MOVS     R1,#+0
        ADD      R0,SP,#+0
        BL       dir_sdi
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_getcwd_6
??f_getcwd_9:
        ADD      R0,SP,#+0
        BL       dir_read
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_getcwd_10
??f_getcwd_11:
        LDR      R0,[SP, #+20]
        LDRB     R0,[R0, #+21]
        LDR      R1,[SP, #+20]
        LDRB     R1,[R1, #+20]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[SP, #+20]
        LDRB     R1,[R1, #+27]
        LDR      R2,[SP, #+20]
        LDRB     R2,[R2, #+26]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0, LSL #+16
        CMP      R8,R0
        BEQ.N    ??f_getcwd_10
??f_getcwd_12:
        MOVS     R1,#+0
        ADD      R0,SP,#+0
        BL       dir_next
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??f_getcwd_9
??f_getcwd_10:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??f_getcwd_13
        MOVS     R6,#+2
??f_getcwd_13:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_getcwd_6
??f_getcwd_14:
        LDR      R0,[SP, #+84]
        STR      R0,[SP, #+72]
        STR      R7,[SP, #+76]
        ADD      R1,SP,#+48
        ADD      R0,SP,#+0
        BL       get_fileinfo
        ADD      R0,SP,#+57
        LDR      R1,[SP, #+84]
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??f_getcwd_15
        LDR      R0,[SP, #+84]
??f_getcwd_15:
        MOVS     R1,#+0
        B.N      ??f_getcwd_16
??f_getcwd_17:
        ADDS     R1,R1,#+1
??f_getcwd_16:
        LDRB     R2,[R1, R0]
        CMP      R2,#+0
        BNE.N    ??f_getcwd_17
        ADDS     R2,R1,#+3
        CMP      R7,R2
        BCS.N    ??f_getcwd_5
        MOVS     R6,#+17
// 3076         }
// 3077         tp = path;
??f_getcwd_6:
        LDR      R0,[SP, #+84]
// 3078         if (res == FR_OK)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_getcwd_18
// 3079         {
// 3080             *tp++ = '0' + CurrVol;			/* Put drive number */
        LDR.N    R1,??DataTable13_1
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+48
        STRB     R1,[R0, #+0]
        ADDS     R0,R0,#+1
// 3081             *tp++ = ':';
        MOVS     R1,#+58
        STRB     R1,[R0, #+0]
        ADDS     R0,R0,#+1
// 3082             if (i == sz_path)  				/* Root-dir */
        CMP      R7,R4
        BNE.N    ??f_getcwd_19
// 3083             {
// 3084                 *tp++ = '/';
        MOVS     R1,#+47
        STRB     R1,[R0, #+0]
        ADDS     R0,R0,#+1
        B.N      ??f_getcwd_18
// 3085             }
// 3086             else  						/* Sub-dir */
// 3087             {
// 3088                 do		/* Add stacked path str */
// 3089                     *tp++ = path[i++];
??f_getcwd_19:
        LDR      R1,[SP, #+84]
        LDRB     R1,[R7, R1]
        STRB     R1,[R0, #+0]
        ADDS     R7,R7,#+1
        ADDS     R0,R0,#+1
// 3090                 while (i < sz_path);
        CMP      R7,R4
        BCC.N    ??f_getcwd_19
// 3091             }
// 3092         }
// 3093         *tp = 0;
??f_getcwd_18:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 3094         FREE_BUF();
        MOVS     R0,R5
        BL       ff_memfree
// 3095     }
// 3096 
// 3097     LEAVE_FF(dj.fs, res);
??f_getcwd_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_getcwd_2:
        ADD      SP,SP,#+88
        POP      {R4-R8,PC}       ;; return
// 3098 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x544146

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     CurrVol

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     FatFs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0x41615252

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0x61417272

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     Fsid
// 3099 #endif /* _FS_RPATH >= 2 */
// 3100 #endif /* _FS_RPATH >= 1 */
// 3101 
// 3102 
// 3103 
// 3104 #if _FS_MINIMIZE <= 2
// 3105 /*-----------------------------------------------------------------------*/
// 3106 /* Seek File R/W Pointer                                                 */
// 3107 /*-----------------------------------------------------------------------*/
// 3108 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3109 FRESULT f_lseek (
// 3110     FIL *fp,		/* Pointer to the file object */
// 3111     DWORD ofs		/* File pointer from top of file */
// 3112 )
// 3113 {
f_lseek:
        PUSH     {R3-R11,LR}
        MOVS     R5,R0
        MOVS     R6,R1
// 3114     FRESULT res;
// 3115 
// 3116 
// 3117     res = validate(fp->fs, fp->id);		/* Check validity of the object */
        LDRH     R1,[R5, #+4]
        LDR      R0,[R5, #+0]
        BL       validate
        MOVS     R4,R0
// 3118     if (res != FR_OK) LEAVE_FF(fp->fs, res);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??f_lseek_0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??f_lseek_1
// 3119     if (fp->flag & FA__ERROR)			/* Check abort flag */
??f_lseek_0:
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+24
        BPL.N    ??f_lseek_2
// 3120         LEAVE_FF(fp->fs, FR_INT_ERR);
        MOVS     R0,#+2
        B.N      ??f_lseek_1
// 3121 
// 3122 #if _USE_FASTSEEK
// 3123     if (fp->cltbl)  	/* Fast seek */
??f_lseek_2:
        LDR      R0,[R5, #+36]
        CMP      R0,#+0
        BEQ.W    ??f_lseek_3
// 3124     {
// 3125         DWORD cl, pcl, ncl, tcl, dsc, tlen, ulen, *tbl;
// 3126 
// 3127         if (ofs == CREATE_LINKMAP)  	/* Create CLMT */
        CMN      R6,#+1
        BNE.N    ??f_lseek_4
// 3128         {
// 3129             tbl = fp->cltbl;
        LDR      R10,[R5, #+36]
// 3130             tlen = *tbl++;
        LDR      R8,[R10, #+0]
        ADDS     R10,R10,#+4
// 3131             ulen = 2;	/* Given table size and required table size */
        MOVS     R9,#+2
// 3132             cl = fp->sclust;			/* Top of the chain */
        LDR      R0,[R5, #+16]
// 3133             if (cl)
        CMP      R0,#+0
        BEQ.N    ??f_lseek_5
// 3134             {
// 3135                 do
// 3136                 {
// 3137                     /* Get a fragment */
// 3138                     tcl = cl;
??f_lseek_6:
        MOVS     R7,R0
// 3139                     ncl = 0;
        MOVS     R6,#+0
// 3140                     ulen += 2;	/* Top, length and used items */
        ADDS     R9,R9,#+2
// 3141                     do
// 3142                     {
// 3143                         pcl = cl;
??f_lseek_7:
        MOV      R11,R0
// 3144                         ncl++;
        ADDS     R6,R6,#+1
// 3145                         cl = get_fat(fp->fs, cl);
        MOVS     R1,R0
        LDR      R0,[R5, #+0]
        BL       get_fat
// 3146                         if (cl <= 1) ABORT(fp->fs, FR_INT_ERR);
        CMP      R0,#+2
        BCS.N    ??f_lseek_8
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_lseek_1
// 3147                         if (cl == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
??f_lseek_8:
        CMN      R0,#+1
        BNE.N    ??f_lseek_9
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_lseek_1
// 3148                     }
// 3149                     while (cl == pcl + 1);
??f_lseek_9:
        ADDS     R1,R11,#+1
        CMP      R0,R1
        BEQ.N    ??f_lseek_7
// 3150                     if (ulen <= tlen)  		/* Store the length and top of the fragment */
        CMP      R8,R9
        BCC.N    ??f_lseek_10
// 3151                     {
// 3152                         *tbl++ = ncl;
        STR      R6,[R10, #+0]
        ADDS     R10,R10,#+4
// 3153                         *tbl++ = tcl;
        STR      R7,[R10, #+0]
        ADDS     R10,R10,#+4
// 3154                     }
// 3155                 }
// 3156                 while (cl < fp->fs->n_fatent);	/* Repeat until end of chain */
??f_lseek_10:
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+28]
        CMP      R0,R1
        BCC.N    ??f_lseek_6
// 3157             }
// 3158             *fp->cltbl = ulen;	/* Number of items used */
??f_lseek_5:
        LDR      R0,[R5, #+36]
        STR      R9,[R0, #+0]
// 3159             if (ulen <= tlen)
        CMP      R8,R9
        BCC.N    ??f_lseek_11
// 3160                 *tbl = 0;		/* Terminate table */
        MOVS     R0,#+0
        STR      R0,[R10, #+0]
        B.N      ??f_lseek_12
// 3161             else
// 3162                 res = FR_NOT_ENOUGH_CORE;	/* Given table size is smaller than required */
??f_lseek_11:
        MOVS     R4,#+17
        B.N      ??f_lseek_12
// 3163 
// 3164         }
// 3165         else  						/* Fast seek */
// 3166         {
// 3167             if (ofs > fp->fsize)		/* Clip offset at the file size */
??f_lseek_4:
        LDR      R0,[R5, #+12]
        CMP      R0,R6
        BCS.N    ??f_lseek_13
// 3168                 ofs = fp->fsize;
        LDR      R6,[R5, #+12]
// 3169             fp->fptr = ofs;				/* Set file pointer */
??f_lseek_13:
        STR      R6,[R5, #+8]
// 3170             if (ofs)
        CMP      R6,#+0
        BEQ.W    ??f_lseek_12
// 3171             {
// 3172                 fp->clust = clmt_clust(fp, ofs - 1);
        SUBS     R1,R6,#+1
        MOVS     R0,R5
        BL       clmt_clust
        STR      R0,[R5, #+20]
// 3173                 dsc = clust2sect(fp->fs, fp->clust);
        LDR      R1,[R5, #+20]
        LDR      R0,[R5, #+0]
        BL       clust2sect
        MOVS     R7,R0
// 3174                 if (!dsc) ABORT(fp->fs, FR_INT_ERR);
        CMP      R7,#+0
        BNE.N    ??f_lseek_14
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_lseek_1
// 3175                 dsc += (ofs - 1) / SS(fp->fs) & (fp->fs->csize - 1);
??f_lseek_14:
        SUBS     R0,R6,#+1
        LDR      R1,[R5, #+0]
        LDRB     R1,[R1, #+2]
        SUBS     R1,R1,#+1
        ANDS     R0,R1,R0, LSR #+9
        ADDS     R7,R0,R7
// 3176                 if (fp->fptr % SS(fp->fs) && dsc != fp->dsect)  	/* Refill sector cache if needed */
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BEQ.W    ??f_lseek_12
        LDR      R0,[R5, #+24]
        CMP      R7,R0
        BEQ.W    ??f_lseek_12
// 3177                 {
// 3178 #if !_FS_TINY
// 3179 #if !_FS_READONLY
// 3180                     if (fp->flag & FA__DIRTY)  		/* Write-back dirty sector cache */
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_lseek_15
// 3181                     {
// 3182                         if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
        MOVS     R3,#+1
        LDR      R2,[R5, #+24]
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??f_lseek_16
// 3183                             ABORT(fp->fs, FR_DISK_ERR);
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_lseek_1
// 3184                         fp->flag &= ~FA__DIRTY;
??f_lseek_16:
        LDRB     R0,[R5, #+6]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R5, #+6]
// 3185                     }
// 3186 #endif
// 3187                     if (disk_read(fp->fs->drv, fp->buf, dsc, 1) != RES_OK)	/* Load current sector */
??f_lseek_15:
        MOVS     R3,#+1
        MOVS     R2,R7
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_read
        CMP      R0,#+0
        BEQ.N    ??f_lseek_17
// 3188                         ABORT(fp->fs, FR_DISK_ERR);
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_lseek_1
// 3189 #endif
// 3190                     fp->dsect = dsc;
??f_lseek_17:
        STR      R7,[R5, #+24]
        B.N      ??f_lseek_12
// 3191                 }
// 3192             }
// 3193         }
// 3194     }
// 3195     else
// 3196 #endif
// 3197 
// 3198         /* Normal Seek */
// 3199     {
// 3200         DWORD clst, bcs, nsect, ifptr;
// 3201 
// 3202         if (ofs > fp->fsize					/* In read-only mode, clip offset with the file size */
// 3203 #if !_FS_READONLY
// 3204                 && !(fp->flag & FA_WRITE)
// 3205 #endif
// 3206            ) ofs = fp->fsize;
??f_lseek_3:
        LDR      R0,[R5, #+12]
        CMP      R0,R6
        BCS.N    ??f_lseek_18
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+30
        BMI.N    ??f_lseek_18
        LDR      R6,[R5, #+12]
// 3207 
// 3208         ifptr = fp->fptr;
??f_lseek_18:
        LDR      R0,[R5, #+8]
// 3209         fp->fptr = nsect = 0;
        MOVS     R7,#+0
        STR      R7,[R5, #+8]
// 3210         if (ofs)
        CMP      R6,#+0
        BEQ.N    ??f_lseek_19
// 3211         {
// 3212             bcs = (DWORD)fp->fs->csize * SS(fp->fs);	/* Cluster size (byte) */
        LDR      R1,[R5, #+0]
        LDRB     R1,[R1, #+2]
        MOV      R2,#+512
        MUL      R8,R2,R1
// 3213             if (ifptr > 0 &&
// 3214                     (ofs - 1) / bcs >= (ifptr - 1) / bcs)  	/* When seek to same or following cluster, */
        CMP      R0,#+0
        BEQ.N    ??f_lseek_20
        SUBS     R1,R0,#+1
        UDIV     R1,R1,R8
        SUBS     R2,R6,#+1
        UDIV     R2,R2,R8
        CMP      R2,R1
        BCC.N    ??f_lseek_20
// 3215             {
// 3216                 fp->fptr = (ifptr - 1) & ~(bcs - 1);	/* start from the current cluster */
        SUBS     R0,R0,#+1
        SUBS     R1,R8,#+1
        BICS     R0,R0,R1
        STR      R0,[R5, #+8]
// 3217                 ofs -= fp->fptr;
        LDR      R0,[R5, #+8]
        SUBS     R6,R6,R0
// 3218                 clst = fp->clust;
        LDR      R1,[R5, #+20]
        B.N      ??f_lseek_21
// 3219             }
// 3220             else  									/* When seek to back cluster, */
// 3221             {
// 3222                 clst = fp->sclust;						/* start from the first cluster */
??f_lseek_20:
        LDR      R1,[R5, #+16]
// 3223 #if !_FS_READONLY
// 3224                 if (clst == 0)  						/* If no cluster chain, create a new chain */
        CMP      R1,#+0
        BNE.N    ??f_lseek_22
// 3225                 {
// 3226                     clst = create_chain(fp->fs, 0);
        MOVS     R1,#+0
        LDR      R0,[R5, #+0]
        BL       create_chain
        MOVS     R1,R0
// 3227                     if (clst == 1) ABORT(fp->fs, FR_INT_ERR);
        CMP      R1,#+1
        BNE.N    ??f_lseek_23
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_lseek_1
// 3228                     if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
??f_lseek_23:
        CMN      R1,#+1
        BNE.N    ??f_lseek_24
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_lseek_1
// 3229                     fp->sclust = clst;
??f_lseek_24:
        STR      R1,[R5, #+16]
// 3230                 }
// 3231 #endif
// 3232                 fp->clust = clst;
??f_lseek_22:
        STR      R1,[R5, #+20]
// 3233             }
// 3234             if (clst != 0)
??f_lseek_21:
        CMP      R1,#+0
        BNE.N    ??f_lseek_25
        B.N      ??f_lseek_19
// 3235             {
// 3236                 while (ofs > bcs)  						/* Cluster following loop */
// 3237                 {
// 3238 #if !_FS_READONLY
// 3239                     if (fp->flag & FA_WRITE)  			/* Check if in write mode or not */
// 3240                     {
// 3241                         clst = create_chain(fp->fs, clst);	/* Force stretch if in write mode */
// 3242                         if (clst == 0)  				/* When disk gets full, clip file size */
// 3243                         {
// 3244                             ofs = bcs;
// 3245                             break;
// 3246                         }
// 3247                     }
// 3248                     else
// 3249 #endif
// 3250                         clst = get_fat(fp->fs, clst);	/* Follow cluster chain if not in write mode */
// 3251                     if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
// 3252                     if (clst <= 1 || clst >= fp->fs->n_fatent) ABORT(fp->fs, FR_INT_ERR);
// 3253                     fp->clust = clst;
??f_lseek_26:
        STR      R1,[R5, #+20]
// 3254                     fp->fptr += bcs;
        LDR      R0,[R5, #+8]
        ADDS     R0,R8,R0
        STR      R0,[R5, #+8]
// 3255                     ofs -= bcs;
        SUBS     R6,R6,R8
??f_lseek_25:
        CMP      R8,R6
        BCS.N    ??f_lseek_27
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+30
        BPL.N    ??f_lseek_28
        LDR      R0,[R5, #+0]
        BL       create_chain
        MOVS     R1,R0
        CMP      R1,#+0
        BNE.N    ??f_lseek_29
        MOV      R6,R8
// 3256                 }
// 3257                 fp->fptr += ofs;
??f_lseek_27:
        LDR      R0,[R5, #+8]
        ADDS     R0,R6,R0
        STR      R0,[R5, #+8]
// 3258                 if (ofs % SS(fp->fs))
        MOV      R0,#+512
        UDIV     R2,R6,R0
        MLS      R2,R2,R0,R6
        CMP      R2,#+0
        BEQ.N    ??f_lseek_19
// 3259                 {
// 3260                     nsect = clust2sect(fp->fs, clst);	/* Current sector */
        LDR      R0,[R5, #+0]
        BL       clust2sect
        MOVS     R7,R0
// 3261                     if (!nsect) ABORT(fp->fs, FR_INT_ERR);
        CMP      R7,#+0
        BNE.N    ??f_lseek_30
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_lseek_1
??f_lseek_28:
        LDR      R0,[R5, #+0]
        BL       get_fat
        MOVS     R1,R0
??f_lseek_29:
        CMN      R1,#+1
        BNE.N    ??f_lseek_31
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_lseek_1
??f_lseek_31:
        CMP      R1,#+2
        BCC.N    ??f_lseek_32
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+28]
        CMP      R1,R0
        BCC.N    ??f_lseek_26
??f_lseek_32:
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+2
        B.N      ??f_lseek_1
// 3262                     nsect += ofs / SS(fp->fs);
??f_lseek_30:
        ADDS     R7,R7,R6, LSR #+9
// 3263                 }
// 3264             }
// 3265         }
// 3266         if (fp->fptr % SS(fp->fs) && nsect != fp->dsect)  	/* Fill sector cache if needed */
??f_lseek_19:
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BEQ.N    ??f_lseek_33
        LDR      R0,[R5, #+24]
        CMP      R7,R0
        BEQ.N    ??f_lseek_33
// 3267         {
// 3268 #if !_FS_TINY
// 3269 #if !_FS_READONLY
// 3270             if (fp->flag & FA__DIRTY)  			/* Write-back dirty sector cache */
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_lseek_34
// 3271             {
// 3272                 if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
        MOVS     R3,#+1
        LDR      R2,[R5, #+24]
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??f_lseek_35
// 3273                     ABORT(fp->fs, FR_DISK_ERR);
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_lseek_1
// 3274                 fp->flag &= ~FA__DIRTY;
??f_lseek_35:
        LDRB     R0,[R5, #+6]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R5, #+6]
// 3275             }
// 3276 #endif
// 3277             if (disk_read(fp->fs->drv, fp->buf, nsect, 1) != RES_OK)	/* Fill sector cache */
??f_lseek_34:
        MOVS     R3,#+1
        MOVS     R2,R7
        ADDS     R1,R5,#+44
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_read
        CMP      R0,#+0
        BEQ.N    ??f_lseek_36
// 3278                 ABORT(fp->fs, FR_DISK_ERR);
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_lseek_1
// 3279 #endif
// 3280             fp->dsect = nsect;
??f_lseek_36:
        STR      R7,[R5, #+24]
// 3281         }
// 3282 #if !_FS_READONLY
// 3283         if (fp->fptr > fp->fsize)  			/* Set file change flag if the file size is extended */
??f_lseek_33:
        LDR      R0,[R5, #+12]
        LDR      R1,[R5, #+8]
        CMP      R0,R1
        BCS.N    ??f_lseek_12
// 3284         {
// 3285             fp->fsize = fp->fptr;
        LDR      R0,[R5, #+8]
        STR      R0,[R5, #+12]
// 3286             fp->flag |= FA__WRITTEN;
        LDRB     R0,[R5, #+6]
        ORRS     R0,R0,#0x20
        STRB     R0,[R5, #+6]
// 3287         }
// 3288 #endif
// 3289     }
// 3290 
// 3291     LEAVE_FF(fp->fs, res);
??f_lseek_12:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_lseek_1:
        POP      {R1,R4-R11,PC}   ;; return
// 3292 }
// 3293 
// 3294 
// 3295 
// 3296 #if _FS_MINIMIZE <= 1
// 3297 /*-----------------------------------------------------------------------*/
// 3298 /* Create a Directroy Object                                             */
// 3299 /*-----------------------------------------------------------------------*/
// 3300 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3301 FRESULT f_opendir (
// 3302     DIR *dj,			/* Pointer to directory object to create */
// 3303     const TCHAR *path	/* Pointer to the directory path */
// 3304 )
// 3305 {
f_opendir:
        PUSH     {R1,R4-R6,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
// 3306     FRESULT res;
// 3307     DEF_NAMEBUF;
// 3308 
// 3309 
// 3310     res = chk_mounted(&path, &dj->fs, 0);
        MOVS     R2,#+0
        MOVS     R1,R4
        ADD      R0,SP,#+12
        BL       chk_mounted
        MOVS     R5,R0
// 3311     if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_opendir_0
// 3312     {
// 3313         INIT_BUF(*dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R6,R0
        CMP      R6,#+0
        BNE.N    ??f_opendir_1
        MOVS     R0,#+17
        B.N      ??f_opendir_2
??f_opendir_1:
        STR      R6,[R4, #+28]
        ADD      R0,SP,#+0
        STR      R0,[R4, #+24]
// 3314         res = follow_path(dj, path);			/* Follow the path to the directory */
        LDR      R1,[SP, #+12]
        MOVS     R0,R4
        BL       follow_path
        MOVS     R5,R0
// 3315         FREE_BUF();
        MOVS     R0,R6
        BL       ff_memfree
// 3316         if (res == FR_OK)  						/* Follow completed */
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_opendir_3
// 3317         {
// 3318             if (dj->dir)  						/* It is not the root dir */
        LDR      R0,[R4, #+20]
        CMP      R0,#+0
        BEQ.N    ??f_opendir_4
// 3319             {
// 3320                 if (dj->dir[DIR_Attr] & AM_DIR)  	/* The object is a directory */
        LDR      R0,[R4, #+20]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+27
        BPL.N    ??f_opendir_5
// 3321                 {
// 3322                     dj->sclust = LD_CLUST(dj->dir);
        LDR      R0,[R4, #+20]
        LDRB     R0,[R0, #+21]
        LDR      R1,[R4, #+20]
        LDRB     R1,[R1, #+20]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[R4, #+20]
        LDRB     R1,[R1, #+27]
        LDR      R2,[R4, #+20]
        LDRB     R2,[R2, #+26]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0, LSL #+16
        STR      R0,[R4, #+8]
        B.N      ??f_opendir_4
// 3323                 }
// 3324                 else  						/* The object is not a directory */
// 3325                 {
// 3326                     res = FR_NO_PATH;
??f_opendir_5:
        MOVS     R5,#+5
// 3327                 }
// 3328             }
// 3329             if (res == FR_OK)
??f_opendir_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_opendir_3
// 3330             {
// 3331                 dj->id = dj->fs->id;
        LDR      R0,[R4, #+0]
        LDRH     R0,[R0, #+6]
        STRH     R0,[R4, #+4]
// 3332                 res = dir_sdi(dj, 0);			/* Rewind dir */
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       dir_sdi
        MOVS     R5,R0
// 3333             }
// 3334         }
// 3335         if (res == FR_NO_FILE) res = FR_NO_PATH;
??f_opendir_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BNE.N    ??f_opendir_0
        MOVS     R5,#+5
// 3336     }
// 3337 
// 3338     LEAVE_FF(dj->fs, res);
??f_opendir_0:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_opendir_2:
        ADD      SP,SP,#+16
        POP      {R4-R6,PC}       ;; return
// 3339 }
// 3340 
// 3341 
// 3342 
// 3343 
// 3344 /*-----------------------------------------------------------------------*/
// 3345 /* Read Directory Entry in Sequense                                      */
// 3346 /*-----------------------------------------------------------------------*/
// 3347 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3348 FRESULT f_readdir (
// 3349     DIR *dj,			/* Pointer to the open directory object */
// 3350     FILINFO *fno		/* Pointer to file information to return */
// 3351 )
// 3352 {
f_readdir:
        PUSH     {R1-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 3353     FRESULT res;
// 3354     DEF_NAMEBUF;
// 3355 
// 3356 
// 3357     res = validate(dj->fs, dj->id);			/* Check validity of the object */
        LDRH     R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       validate
        MOVS     R6,R0
// 3358     if (res == FR_OK)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_readdir_0
// 3359     {
// 3360         if (!fno)
        CMP      R5,#+0
        BNE.N    ??f_readdir_1
// 3361         {
// 3362             res = dir_sdi(dj, 0);			/* Rewind the directory object */
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       dir_sdi
        MOVS     R6,R0
        B.N      ??f_readdir_0
// 3363         }
// 3364         else
// 3365         {
// 3366             INIT_BUF(*dj);
??f_readdir_1:
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R7,R0
        CMP      R7,#+0
        BNE.N    ??f_readdir_2
        MOVS     R0,#+17
        B.N      ??f_readdir_3
??f_readdir_2:
        STR      R7,[R4, #+28]
        ADD      R0,SP,#+0
        STR      R0,[R4, #+24]
// 3367             res = dir_read(dj);				/* Read an directory item */
        MOVS     R0,R4
        BL       dir_read
        MOVS     R6,R0
// 3368             if (res == FR_NO_FILE)  		/* Reached end of dir */
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??f_readdir_4
// 3369             {
// 3370                 dj->sect = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
// 3371                 res = FR_OK;
        MOVS     R6,#+0
// 3372             }
// 3373             if (res == FR_OK)  				/* A valid entry is found */
??f_readdir_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_readdir_5
// 3374             {
// 3375                 get_fileinfo(dj, fno);		/* Get the object information */
        MOVS     R1,R5
        MOVS     R0,R4
        BL       get_fileinfo
// 3376                 res = dir_next(dj, 0);		/* Increment index for next */
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       dir_next
        MOVS     R6,R0
// 3377                 if (res == FR_NO_FILE)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??f_readdir_5
// 3378                 {
// 3379                     dj->sect = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
// 3380                     res = FR_OK;
        MOVS     R6,#+0
// 3381                 }
// 3382             }
// 3383             FREE_BUF();
??f_readdir_5:
        MOVS     R0,R7
        BL       ff_memfree
// 3384         }
// 3385     }
// 3386 
// 3387     LEAVE_FF(dj->fs, res);
??f_readdir_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_readdir_3:
        POP      {R1-R7,PC}       ;; return
// 3388 }
// 3389 
// 3390 
// 3391 
// 3392 #if _FS_MINIMIZE == 0
// 3393 /*-----------------------------------------------------------------------*/
// 3394 /* Get File Status                                                       */
// 3395 /*-----------------------------------------------------------------------*/
// 3396 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3397 FRESULT f_stat (
// 3398     const TCHAR *path,	/* Pointer to the file path */
// 3399     FILINFO *fno		/* Pointer to file information to return */
// 3400 )
// 3401 {
f_stat:
        PUSH     {R0,R4-R6,LR}
        SUB      SP,SP,#+52
        MOVS     R4,R1
// 3402     FRESULT res;
// 3403     DIR dj;
// 3404     DEF_NAMEBUF;
// 3405 
// 3406 
// 3407     res = chk_mounted(&path, &dj.fs, 0);
        MOVS     R2,#+0
        ADD      R1,SP,#+12
        ADD      R0,SP,#+52
        BL       chk_mounted
        MOVS     R5,R0
// 3408     if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_stat_0
// 3409     {
// 3410         INIT_BUF(dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R6,R0
        CMP      R6,#+0
        BNE.N    ??f_stat_1
        MOVS     R0,#+17
        B.N      ??f_stat_2
??f_stat_1:
        STR      R6,[SP, #+40]
        ADD      R0,SP,#+0
        STR      R0,[SP, #+36]
// 3411         res = follow_path(&dj, path);	/* Follow the file path */
        LDR      R1,[SP, #+52]
        ADD      R0,SP,#+12
        BL       follow_path
        MOVS     R5,R0
// 3412         if (res == FR_OK)  				/* Follow completed */
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_stat_3
// 3413         {
// 3414             if (dj.dir)		/* Found an object */
        LDR      R0,[SP, #+32]
        CMP      R0,#+0
        BEQ.N    ??f_stat_4
// 3415                 get_fileinfo(&dj, fno);
        MOVS     R1,R4
        ADD      R0,SP,#+12
        BL       get_fileinfo
        B.N      ??f_stat_3
// 3416             else			/* It is root dir */
// 3417                 res = FR_INVALID_NAME;
??f_stat_4:
        MOVS     R5,#+6
// 3418         }
// 3419         FREE_BUF();
??f_stat_3:
        MOVS     R0,R6
        BL       ff_memfree
// 3420     }
// 3421 
// 3422     LEAVE_FF(dj.fs, res);
??f_stat_0:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_stat_2:
        ADD      SP,SP,#+56
        POP      {R4-R6,PC}       ;; return
// 3423 }
// 3424 
// 3425 
// 3426 
// 3427 #if !_FS_READONLY
// 3428 /*-----------------------------------------------------------------------*/
// 3429 /* Get Number of Free Clusters                                           */
// 3430 /*-----------------------------------------------------------------------*/
// 3431 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3432 FRESULT f_getfree (
// 3433     const TCHAR *path,	/* Pointer to the logical drive number (root dir) */
// 3434     DWORD *nclst,		/* Pointer to the variable to return number of free clusters */
// 3435     FATFS **fatfs		/* Pointer to pointer to corresponding file system object to return */
// 3436 )
// 3437 {
f_getfree:
        PUSH     {R0,R4-R10,LR}
        SUB      SP,SP,#+4
        MOVS     R5,R1
        MOVS     R6,R2
// 3438     FRESULT res;
// 3439     DWORD n, clst, sect, stat;
// 3440     UINT i;
// 3441     BYTE fat, *p;
// 3442 
// 3443 
// 3444     /* Get drive number */
// 3445     res = chk_mounted(&path, fatfs, 0);
        MOVS     R2,#+0
        MOVS     R1,R6
        ADD      R0,SP,#+4
        BL       chk_mounted
        MOV      R8,R0
// 3446     if (res == FR_OK)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??f_getfree_0
// 3447     {
// 3448         /* If free_clust is valid, return it without full cluster scan */
// 3449         if ((*fatfs)->free_clust <= (*fatfs)->n_fatent - 2)
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+28]
        SUBS     R0,R0,#+2
        LDR      R1,[R6, #+0]
        LDR      R1,[R1, #+16]
        CMP      R0,R1
        BCC.N    ??f_getfree_1
// 3450         {
// 3451             *nclst = (*fatfs)->free_clust;
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+16]
        STR      R0,[R5, #+0]
        B.N      ??f_getfree_0
// 3452         }
// 3453         else
// 3454         {
// 3455             /* Get number of free clusters */
// 3456             fat = (*fatfs)->fs_type;
??f_getfree_1:
        LDR      R0,[R6, #+0]
        LDRB     R7,[R0, #+0]
// 3457             n = 0;
        MOVS     R9,#+0
// 3458             if (fat == FS_FAT12)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??f_getfree_2
// 3459             {
// 3460                 clst = 2;
        MOVS     R4,#+2
// 3461                 do
// 3462                 {
// 3463                     stat = get_fat(*fatfs, clst);
??f_getfree_3:
        MOVS     R1,R4
        LDR      R0,[R6, #+0]
        BL       get_fat
// 3464                     if (stat == 0xFFFFFFFF)
        CMN      R0,#+1
        BNE.N    ??f_getfree_4
// 3465                     {
// 3466                         res = FR_DISK_ERR;
        MOVS     R8,#+1
// 3467                         break;
        B.N      ??f_getfree_5
// 3468                     }
// 3469                     if (stat == 1)
??f_getfree_4:
        CMP      R0,#+1
        BNE.N    ??f_getfree_6
// 3470                     {
// 3471                         res = FR_INT_ERR;
        MOVS     R8,#+2
// 3472                         break;
        B.N      ??f_getfree_5
// 3473                     }
// 3474                     if (stat == 0) n++;
??f_getfree_6:
        CMP      R0,#+0
        BNE.N    ??f_getfree_7
        ADDS     R9,R9,#+1
// 3475                 }
// 3476                 while (++clst < (*fatfs)->n_fatent);
??f_getfree_7:
        ADDS     R4,R4,#+1
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+28]
        CMP      R4,R0
        BCC.N    ??f_getfree_3
        B.N      ??f_getfree_5
// 3477             }
// 3478             else
// 3479             {
// 3480                 clst = (*fatfs)->n_fatent;
??f_getfree_2:
        LDR      R0,[R6, #+0]
        LDR      R4,[R0, #+28]
// 3481                 sect = (*fatfs)->fatbase;
        LDR      R0,[R6, #+0]
        LDR      R10,[R0, #+36]
// 3482                 i = 0;
        MOVS     R1,#+0
// 3483                 p = 0;
        MOVS     R0,#+0
// 3484                 do
// 3485                 {
// 3486                     if (!i)
??f_getfree_8:
        CMP      R1,#+0
        BNE.N    ??f_getfree_9
// 3487                     {
// 3488                         res = move_window(*fatfs, sect++);
        MOV      R1,R10
        LDR      R0,[R6, #+0]
        BL       move_window
        MOV      R8,R0
        ADDS     R10,R10,#+1
// 3489                         if (res != FR_OK) break;
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??f_getfree_5
// 3490                         p = (*fatfs)->win;
??f_getfree_10:
        LDR      R0,[R6, #+0]
        ADDS     R0,R0,#+52
// 3491                         i = SS(*fatfs);
        MOV      R1,#+512
// 3492                     }
// 3493                     if (fat == FS_FAT16)
??f_getfree_9:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BNE.N    ??f_getfree_11
// 3494                     {
// 3495                         if (LD_WORD(p) == 0) n++;
        LDRB     R2,[R0, #+1]
        LDRB     R3,[R0, #+0]
        ORRS     R2,R3,R2, LSL #+8
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??f_getfree_12
        ADDS     R9,R9,#+1
// 3496                         p += 2;
??f_getfree_12:
        ADDS     R0,R0,#+2
// 3497                         i -= 2;
        SUBS     R1,R1,#+2
        B.N      ??f_getfree_13
// 3498                     }
// 3499                     else
// 3500                     {
// 3501                         if ((LD_DWORD(p) & 0x0FFFFFFF) == 0) n++;
??f_getfree_11:
        LDRB     R2,[R0, #+3]
        LDRB     R3,[R0, #+2]
        LSLS     R3,R3,#+16
        ORRS     R2,R3,R2, LSL #+24
        LDRB     R3,[R0, #+1]
        ORRS     R2,R2,R3, LSL #+8
        LDRB     R3,[R0, #+0]
        ORRS     R2,R3,R2
        LSLS     R2,R2,#+4
        BNE.N    ??f_getfree_14
        ADDS     R9,R9,#+1
// 3502                         p += 4;
??f_getfree_14:
        ADDS     R0,R0,#+4
// 3503                         i -= 4;
        SUBS     R1,R1,#+4
// 3504                     }
// 3505                 }
// 3506                 while (--clst);
??f_getfree_13:
        SUBS     R4,R4,#+1
        CMP      R4,#+0
        BNE.N    ??f_getfree_8
// 3507             }
// 3508             (*fatfs)->free_clust = n;
??f_getfree_5:
        LDR      R0,[R6, #+0]
        STR      R9,[R0, #+16]
// 3509             if (fat == FS_FAT32) (*fatfs)->fsi_flag = 1;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+3
        BNE.N    ??f_getfree_15
        MOVS     R0,#+1
        LDR      R1,[R6, #+0]
        STRB     R0,[R1, #+5]
// 3510             *nclst = n;
??f_getfree_15:
        STR      R9,[R5, #+0]
// 3511         }
// 3512     }
// 3513     LEAVE_FF(*fatfs, res);
??f_getfree_0:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R10,PC}  ;; return
// 3514 }
// 3515 
// 3516 
// 3517 
// 3518 
// 3519 /*-----------------------------------------------------------------------*/
// 3520 /* Truncate File                                                         */
// 3521 /*-----------------------------------------------------------------------*/
// 3522 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3523 FRESULT f_truncate (
// 3524     FIL *fp		/* Pointer to the file object */
// 3525 )
// 3526 {
f_truncate:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
// 3527     FRESULT res;
// 3528     DWORD ncl;
// 3529 
// 3530 
// 3531     res = validate(fp->fs, fp->id);		/* Check validity of the object */
        LDRH     R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       validate
// 3532     if (res == FR_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??f_truncate_0
// 3533     {
// 3534         if (fp->flag & FA__ERROR)  			/* Check abort flag */
        LDRB     R1,[R4, #+6]
        LSLS     R1,R1,#+24
        BPL.N    ??f_truncate_1
// 3535         {
// 3536             res = FR_INT_ERR;
        MOVS     R0,#+2
        B.N      ??f_truncate_0
// 3537         }
// 3538         else
// 3539         {
// 3540             if (!(fp->flag & FA_WRITE))		/* Check access mode */
??f_truncate_1:
        LDRB     R1,[R4, #+6]
        LSLS     R1,R1,#+30
        BMI.N    ??f_truncate_0
// 3541                 res = FR_DENIED;
        MOVS     R0,#+7
// 3542         }
// 3543     }
// 3544     if (res == FR_OK)
??f_truncate_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??f_truncate_2
// 3545     {
// 3546         if (fp->fsize > fp->fptr)
        LDR      R1,[R4, #+8]
        LDR      R2,[R4, #+12]
        CMP      R1,R2
        BCS.N    ??f_truncate_3
// 3547         {
// 3548             fp->fsize = fp->fptr;	/* Set file size to current R/W point */
        LDR      R0,[R4, #+8]
        STR      R0,[R4, #+12]
// 3549             fp->flag |= FA__WRITTEN;
        LDRB     R0,[R4, #+6]
        ORRS     R0,R0,#0x20
        STRB     R0,[R4, #+6]
// 3550             if (fp->fptr == 0)  	/* When set file size to zero, remove entire cluster chain */
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??f_truncate_4
// 3551             {
// 3552                 res = remove_chain(fp->fs, fp->sclust);
        LDR      R1,[R4, #+16]
        LDR      R0,[R4, #+0]
        BL       remove_chain
// 3553                 fp->sclust = 0;
        MOVS     R1,#+0
        STR      R1,[R4, #+16]
        B.N      ??f_truncate_3
// 3554             }
// 3555             else  				/* When truncate a part of the file, remove remaining clusters */
// 3556             {
// 3557                 ncl = get_fat(fp->fs, fp->clust);
??f_truncate_4:
        LDR      R1,[R4, #+20]
        LDR      R0,[R4, #+0]
        BL       get_fat
        MOVS     R5,R0
// 3558                 res = FR_OK;
        MOVS     R0,#+0
// 3559                 if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
        CMN      R5,#+1
        BNE.N    ??f_truncate_5
        MOVS     R0,#+1
// 3560                 if (ncl == 1) res = FR_INT_ERR;
??f_truncate_5:
        CMP      R5,#+1
        BNE.N    ??f_truncate_6
        MOVS     R0,#+2
// 3561                 if (res == FR_OK && ncl < fp->fs->n_fatent)
??f_truncate_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??f_truncate_3
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+28]
        CMP      R5,R1
        BCS.N    ??f_truncate_3
// 3562                 {
// 3563                     res = put_fat(fp->fs, fp->clust, 0x0FFFFFFF);
        MVNS     R2,#-268435456
        LDR      R1,[R4, #+20]
        LDR      R0,[R4, #+0]
        BL       put_fat
// 3564                     if (res == FR_OK) res = remove_chain(fp->fs, ncl);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??f_truncate_3
        MOVS     R1,R5
        LDR      R0,[R4, #+0]
        BL       remove_chain
// 3565                 }
// 3566             }
// 3567         }
// 3568         if (res != FR_OK) fp->flag |= FA__ERROR;
??f_truncate_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??f_truncate_2
        LDRB     R1,[R4, #+6]
        ORRS     R1,R1,#0x80
        STRB     R1,[R4, #+6]
// 3569     }
// 3570 
// 3571     LEAVE_FF(fp->fs, res);
??f_truncate_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 3572 }
// 3573 
// 3574 
// 3575 
// 3576 
// 3577 /*-----------------------------------------------------------------------*/
// 3578 /* Delete a File or Directory                                            */
// 3579 /*-----------------------------------------------------------------------*/
// 3580 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3581 FRESULT f_unlink (
// 3582     const TCHAR *path		/* Pointer to the file or directory path */
// 3583 )
// 3584 {
f_unlink:
        PUSH     {R0,R4-R6,LR}
        SUB      SP,SP,#+84
// 3585     FRESULT res;
// 3586     DIR dj, sdj;
// 3587     BYTE *dir;
// 3588     DWORD dclst;
// 3589     DEF_NAMEBUF;
// 3590 
// 3591 
// 3592     res = chk_mounted(&path, &dj.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+0
        ADD      R0,SP,#+84
        BL       chk_mounted
        MOVS     R5,R0
// 3593     if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_0
// 3594     {
// 3595         INIT_BUF(dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R4,R0
        CMP      R4,#+0
        BNE.N    ??f_unlink_1
        MOVS     R0,#+17
        B.N      ??f_unlink_2
??f_unlink_1:
        STR      R4,[SP, #+28]
        ADD      R0,SP,#+36
        STR      R0,[SP, #+24]
// 3596         res = follow_path(&dj, path);		/* Follow the file path */
        LDR      R1,[SP, #+84]
        ADD      R0,SP,#+0
        BL       follow_path
        MOVS     R5,R0
// 3597         if (_FS_RPATH && res == FR_OK && (dj.fn[NS] & NS_DOT))
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_3
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        BPL.N    ??f_unlink_3
// 3598             res = FR_INVALID_NAME;			/* Cannot remove dot entry */
        MOVS     R5,#+6
// 3599 #if _FS_SHARE
// 3600         if (res == FR_OK) res = chk_lock(&dj, 2);	/* Cannot remove open file */
??f_unlink_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_4
        MOVS     R1,#+2
        ADD      R0,SP,#+0
        BL       chk_lock
        MOVS     R5,R0
// 3601 #endif
// 3602         if (res == FR_OK)  					/* The object is accessible */
??f_unlink_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_5
// 3603         {
// 3604             dir = dj.dir;
        LDR      R0,[SP, #+20]
// 3605             if (!dir)
        CMP      R0,#+0
        BNE.N    ??f_unlink_6
// 3606             {
// 3607                 res = FR_INVALID_NAME;		/* Cannot remove the start directory */
        MOVS     R5,#+6
        B.N      ??f_unlink_7
// 3608             }
// 3609             else
// 3610             {
// 3611                 if (dir[DIR_Attr] & AM_RDO)
??f_unlink_6:
        LDRB     R1,[R0, #+11]
        LSLS     R1,R1,#+31
        BPL.N    ??f_unlink_7
// 3612                     res = FR_DENIED;		/* Cannot remove R/O object */
        MOVS     R5,#+7
// 3613             }
// 3614             dclst = LD_CLUST(dir);
??f_unlink_7:
        LDRB     R1,[R0, #+21]
        LDRB     R2,[R0, #+20]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDRB     R2,[R0, #+27]
        LDRB     R3,[R0, #+26]
        ORRS     R2,R3,R2, LSL #+8
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ORRS     R6,R2,R1, LSL #+16
// 3615             if (res == FR_OK && (dir[DIR_Attr] & AM_DIR))  	/* Is it a sub-dir? */
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_8
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+27
        BPL.N    ??f_unlink_8
// 3616             {
// 3617                 if (dclst < 2)
        CMP      R6,#+2
        BCS.N    ??f_unlink_9
// 3618                 {
// 3619                     res = FR_INT_ERR;
        MOVS     R5,#+2
        B.N      ??f_unlink_8
// 3620                 }
// 3621                 else
// 3622                 {
// 3623                     mem_cpy(&sdj, &dj, sizeof(DIR));	/* Check if the sub-dir is empty or not */
??f_unlink_9:
        MOVS     R2,#+36
        ADD      R1,SP,#+0
        ADD      R0,SP,#+48
        BL       mem_cpy
// 3624                     sdj.sclust = dclst;
        STR      R6,[SP, #+56]
// 3625                     res = dir_sdi(&sdj, 2);		/* Exclude dot entries */
        MOVS     R1,#+2
        ADD      R0,SP,#+48
        BL       dir_sdi
        MOVS     R5,R0
// 3626                     if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_8
// 3627                     {
// 3628                         res = dir_read(&sdj);
        ADD      R0,SP,#+48
        BL       dir_read
        MOVS     R5,R0
// 3629                         if (res == FR_OK			/* Not empty dir */
// 3630 #if _FS_RPATH
// 3631                                 || dclst == sdj.fs->cdir	/* Current dir */
// 3632 #endif
// 3633                            ) res = FR_DENIED;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??f_unlink_10
        LDR      R0,[SP, #+48]
        LDR      R0,[R0, #+24]
        CMP      R6,R0
        BNE.N    ??f_unlink_11
??f_unlink_10:
        MOVS     R5,#+7
// 3634                         if (res == FR_NO_FILE) res = FR_OK;	/* Empty */
??f_unlink_11:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BNE.N    ??f_unlink_8
        MOVS     R5,#+0
// 3635                     }
// 3636                 }
// 3637             }
// 3638             if (res == FR_OK)
??f_unlink_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_5
// 3639             {
// 3640                 res = dir_remove(&dj);		/* Remove the directory entry */
        ADD      R0,SP,#+0
        BL       dir_remove
        MOVS     R5,R0
// 3641                 if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_5
// 3642                 {
// 3643                     if (dclst)				/* Remove the cluster chain if exist */
        CMP      R6,#+0
        BEQ.N    ??f_unlink_12
// 3644                         res = remove_chain(dj.fs, dclst);
        MOVS     R1,R6
        LDR      R0,[SP, #+0]
        BL       remove_chain
        MOVS     R5,R0
// 3645                     if (res == FR_OK) res = sync(dj.fs);
??f_unlink_12:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_unlink_5
        LDR      R0,[SP, #+0]
        BL       sync
        MOVS     R5,R0
// 3646                 }
// 3647             }
// 3648         }
// 3649         FREE_BUF();
??f_unlink_5:
        MOVS     R0,R4
        BL       ff_memfree
// 3650     }
// 3651     LEAVE_FF(dj.fs, res);
??f_unlink_0:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_unlink_2:
        ADD      SP,SP,#+88
        POP      {R4-R6,PC}       ;; return
// 3652 }
// 3653 
// 3654 
// 3655 
// 3656 
// 3657 /*-----------------------------------------------------------------------*/
// 3658 /* Create a Directory                                                    */
// 3659 /*-----------------------------------------------------------------------*/
// 3660 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3661 FRESULT f_mkdir (
// 3662     const TCHAR *path		/* Pointer to the directory path */
// 3663 )
// 3664 {
f_mkdir:
        PUSH     {R0,R4-R10,LR}
        SUB      SP,SP,#+52
// 3665     FRESULT res;
// 3666     DIR dj;
// 3667     BYTE *dir, n;
// 3668     DWORD dsc, dcl, pcl, tim = get_fattime();
        BL       get_fattime
        MOVS     R4,R0
// 3669     DEF_NAMEBUF;
// 3670 
// 3671 
// 3672     res = chk_mounted(&path, &dj.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+0
        ADD      R0,SP,#+52
        BL       chk_mounted
        MOVS     R6,R0
// 3673     if (res == FR_OK)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.W    ??f_mkdir_0
// 3674     {
// 3675         INIT_BUF(dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R5,R0
        CMP      R5,#+0
        BNE.N    ??f_mkdir_1
        MOVS     R0,#+17
        B.N      ??f_mkdir_2
??f_mkdir_1:
        STR      R5,[SP, #+28]
        ADD      R0,SP,#+36
        STR      R0,[SP, #+24]
// 3676         res = follow_path(&dj, path);			/* Follow the file path */
        LDR      R1,[SP, #+52]
        ADD      R0,SP,#+0
        BL       follow_path
        MOVS     R6,R0
// 3677         if (res == FR_OK) res = FR_EXIST;		/* Any object with same name is already existing */
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_mkdir_3
        MOVS     R6,#+8
// 3678         if (_FS_RPATH && res == FR_NO_FILE && (dj.fn[NS] & NS_DOT))
??f_mkdir_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??f_mkdir_4
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        BPL.N    ??f_mkdir_4
// 3679             res = FR_INVALID_NAME;
        MOVS     R6,#+6
// 3680         if (res == FR_NO_FILE)  				/* Can create a new directory */
??f_mkdir_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.W    ??f_mkdir_5
// 3681         {
// 3682             dcl = create_chain(dj.fs, 0);		/* Allocate a cluster for the new directory table */
        MOVS     R1,#+0
        LDR      R0,[SP, #+0]
        BL       create_chain
        MOVS     R7,R0
// 3683             res = FR_OK;
        MOVS     R6,#+0
// 3684             if (dcl == 0) res = FR_DENIED;		/* No space to allocate a new cluster */
        CMP      R7,#+0
        BNE.N    ??f_mkdir_6
        MOVS     R6,#+7
// 3685             if (dcl == 1) res = FR_INT_ERR;
??f_mkdir_6:
        CMP      R7,#+1
        BNE.N    ??f_mkdir_7
        MOVS     R6,#+2
// 3686             if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;
??f_mkdir_7:
        CMN      R7,#+1
        BNE.N    ??f_mkdir_8
        MOVS     R6,#+1
// 3687             if (res == FR_OK)					/* Flush FAT */
??f_mkdir_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_mkdir_9
// 3688                 res = move_window(dj.fs, 0);
        MOVS     R1,#+0
        LDR      R0,[SP, #+0]
        BL       move_window
        MOVS     R6,R0
// 3689             if (res == FR_OK)  					/* Initialize the new directory table */
??f_mkdir_9:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_mkdir_10
// 3690             {
// 3691                 dsc = clust2sect(dj.fs, dcl);
        MOVS     R1,R7
        LDR      R0,[SP, #+0]
        BL       clust2sect
        MOV      R8,R0
// 3692                 dir = dj.fs->win;
        LDR      R0,[SP, #+0]
        ADDS     R9,R0,#+52
// 3693                 mem_set(dir, 0, SS(dj.fs));
        MOV      R2,#+512
        MOVS     R1,#+0
        MOV      R0,R9
        BL       mem_set
// 3694                 mem_set(dir + DIR_Name, ' ', 8 + 3);	/* Create "." entry */
        MOVS     R2,#+11
        MOVS     R1,#+32
        MOV      R0,R9
        BL       mem_set
// 3695                 dir[DIR_Name] = '.';
        MOVS     R0,#+46
        STRB     R0,[R9, #+0]
// 3696                 dir[DIR_Attr] = AM_DIR;
        MOVS     R0,#+16
        STRB     R0,[R9, #+11]
// 3697                 ST_DWORD(dir + DIR_WrtTime, tim);
        STRB     R4,[R9, #+22]
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R9, #+23]
        LSRS     R0,R4,#+16
        STRB     R0,[R9, #+24]
        LSRS     R0,R4,#+24
        STRB     R0,[R9, #+25]
// 3698                 ST_CLUST(dir, dcl);
        STRB     R7,[R9, #+26]
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R9, #+27]
        LSRS     R0,R7,#+16
        STRB     R0,[R9, #+20]
        LSRS     R0,R7,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R9, #+21]
// 3699                 mem_cpy(dir + SZ_DIR, dir, SZ_DIR); 	/* Create ".." entry */
        MOVS     R2,#+32
        MOV      R1,R9
        ADDS     R0,R9,#+32
        BL       mem_cpy
// 3700                 dir[33] = '.';
        MOVS     R0,#+46
        STRB     R0,[R9, #+33]
// 3701                 pcl = dj.sclust;
        LDR      R0,[SP, #+8]
// 3702                 if (dj.fs->fs_type == FS_FAT32 && pcl == dj.fs->dirbase)
        LDR      R1,[SP, #+0]
        LDRB     R1,[R1, #+0]
        CMP      R1,#+3
        BNE.N    ??f_mkdir_11
        LDR      R1,[SP, #+0]
        LDR      R1,[R1, #+40]
        CMP      R0,R1
        BNE.N    ??f_mkdir_11
// 3703                     pcl = 0;
        MOVS     R0,#+0
// 3704                 ST_CLUST(dir + SZ_DIR, pcl);
??f_mkdir_11:
        STRB     R0,[R9, #+58]
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R1,R1,#+8
        STRB     R1,[R9, #+59]
        LSRS     R1,R0,#+16
        STRB     R1,[R9, #+52]
        LSRS     R0,R0,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R9, #+53]
// 3705                 for (n = dj.fs->csize; n; n--)  	/* Write dot entries and clear following sectors */
        LDR      R0,[SP, #+0]
        LDRB     R10,[R0, #+2]
        B.N      ??f_mkdir_12
// 3706                 {
// 3707                     dj.fs->winsect = dsc++;
// 3708                     dj.fs->wflag = 1;
// 3709                     res = move_window(dj.fs, 0);
// 3710                     if (res != FR_OK) break;
// 3711                     mem_set(dir, 0, SS(dj.fs));
??f_mkdir_13:
        MOV      R2,#+512
        MOVS     R1,#+0
        MOV      R0,R9
        BL       mem_set
        SUBS     R10,R10,#+1
??f_mkdir_12:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BEQ.N    ??f_mkdir_10
        LDR      R0,[SP, #+0]
        STR      R8,[R0, #+48]
        ADDS     R8,R8,#+1
        MOVS     R0,#+1
        LDR      R1,[SP, #+0]
        STRB     R0,[R1, #+4]
        MOVS     R1,#+0
        LDR      R0,[SP, #+0]
        BL       move_window
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??f_mkdir_13
// 3712                 }
// 3713             }
// 3714             if (res == FR_OK) res = dir_register(&dj);	/* Register the object to the directoy */
??f_mkdir_10:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_mkdir_14
        ADD      R0,SP,#+0
        BL       dir_register
        MOVS     R6,R0
// 3715             if (res != FR_OK)
??f_mkdir_14:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??f_mkdir_15
// 3716             {
// 3717                 remove_chain(dj.fs, dcl);			/* Could not register, remove cluster chain */
        MOVS     R1,R7
        LDR      R0,[SP, #+0]
        BL       remove_chain
        B.N      ??f_mkdir_5
// 3718             }
// 3719             else
// 3720             {
// 3721                 dir = dj.dir;
??f_mkdir_15:
        LDR      R9,[SP, #+20]
// 3722                 dir[DIR_Attr] = AM_DIR;				/* Attribute */
        MOVS     R0,#+16
        STRB     R0,[R9, #+11]
// 3723                 ST_DWORD(dir + DIR_WrtTime, tim);		/* Created time */
        STRB     R4,[R9, #+22]
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R9, #+23]
        LSRS     R0,R4,#+16
        STRB     R0,[R9, #+24]
        LSRS     R0,R4,#+24
        STRB     R0,[R9, #+25]
// 3724                 ST_CLUST(dir, dcl);					/* Table start cluster */
        STRB     R7,[R9, #+26]
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R9, #+27]
        LSRS     R0,R7,#+16
        STRB     R0,[R9, #+20]
        LSRS     R0,R7,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R9, #+21]
// 3725                 dj.fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[SP, #+0]
        STRB     R0,[R1, #+4]
// 3726                 res = sync(dj.fs);
        LDR      R0,[SP, #+0]
        BL       sync
        MOVS     R6,R0
// 3727             }
// 3728         }
// 3729         FREE_BUF();
??f_mkdir_5:
        MOVS     R0,R5
        BL       ff_memfree
// 3730     }
// 3731 
// 3732     LEAVE_FF(dj.fs, res);
??f_mkdir_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_mkdir_2:
        ADD      SP,SP,#+56
        POP      {R4-R10,PC}      ;; return
// 3733 }
// 3734 
// 3735 
// 3736 
// 3737 
// 3738 /*-----------------------------------------------------------------------*/
// 3739 /* Change Attribute                                                      */
// 3740 /*-----------------------------------------------------------------------*/
// 3741 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3742 FRESULT f_chmod (
// 3743     const TCHAR *path,	/* Pointer to the file path */
// 3744     BYTE value,			/* Attribute bits */
// 3745     BYTE mask			/* Attribute mask to change */
// 3746 )
// 3747 {
f_chmod:
        PUSH     {R0,R4-R7,LR}
        SUB      SP,SP,#+48
        MOVS     R4,R1
        MOVS     R5,R2
// 3748     FRESULT res;
// 3749     DIR dj;
// 3750     BYTE *dir;
// 3751     DEF_NAMEBUF;
// 3752 
// 3753 
// 3754     res = chk_mounted(&path, &dj.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+0
        ADD      R0,SP,#+48
        BL       chk_mounted
        MOVS     R6,R0
// 3755     if (res == FR_OK)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_chmod_0
// 3756     {
// 3757         INIT_BUF(dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R7,R0
        CMP      R7,#+0
        BNE.N    ??f_chmod_1
        MOVS     R0,#+17
        B.N      ??f_chmod_2
??f_chmod_1:
        STR      R7,[SP, #+28]
        ADD      R0,SP,#+36
        STR      R0,[SP, #+24]
// 3758         res = follow_path(&dj, path);		/* Follow the file path */
        LDR      R1,[SP, #+48]
        ADD      R0,SP,#+0
        BL       follow_path
        MOVS     R6,R0
// 3759         FREE_BUF();
        MOVS     R0,R7
        BL       ff_memfree
// 3760         if (_FS_RPATH && res == FR_OK && (dj.fn[NS] & NS_DOT))
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_chmod_3
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        BPL.N    ??f_chmod_3
// 3761             res = FR_INVALID_NAME;
        MOVS     R6,#+6
// 3762         if (res == FR_OK)
??f_chmod_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_chmod_0
// 3763         {
// 3764             dir = dj.dir;
        LDR      R0,[SP, #+20]
// 3765             if (!dir)  						/* Is it a root directory? */
        CMP      R0,#+0
        BNE.N    ??f_chmod_4
// 3766             {
// 3767                 res = FR_INVALID_NAME;
        MOVS     R6,#+6
        B.N      ??f_chmod_0
// 3768             }
// 3769             else  						/* File or sub directory */
// 3770             {
// 3771                 mask &= AM_RDO | AM_HID | AM_SYS | AM_ARC;	/* Valid attribute mask */
??f_chmod_4:
        ANDS     R5,R5,#0x27
// 3772                 dir[DIR_Attr] = (value & mask) | (dir[DIR_Attr] & (BYTE)~mask);	/* Apply attribute change */
        ANDS     R1,R5,R4
        LDRB     R2,[R0, #+11]
        BICS     R2,R2,R5
        ORRS     R1,R2,R1
        STRB     R1,[R0, #+11]
// 3773                 dj.fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[SP, #+0]
        STRB     R0,[R1, #+4]
// 3774                 res = sync(dj.fs);
        LDR      R0,[SP, #+0]
        BL       sync
        MOVS     R6,R0
// 3775             }
// 3776         }
// 3777     }
// 3778 
// 3779     LEAVE_FF(dj.fs, res);
??f_chmod_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_chmod_2:
        ADD      SP,SP,#+52
        POP      {R4-R7,PC}       ;; return
// 3780 }
// 3781 
// 3782 
// 3783 
// 3784 
// 3785 /*-----------------------------------------------------------------------*/
// 3786 /* Change Timestamp                                                      */
// 3787 /*-----------------------------------------------------------------------*/
// 3788 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3789 FRESULT f_utime (
// 3790     const TCHAR *path,	/* Pointer to the file/directory name */
// 3791     const FILINFO *fno	/* Pointer to the time stamp to be set */
// 3792 )
// 3793 {
f_utime:
        PUSH     {R0,R4-R6,LR}
        SUB      SP,SP,#+52
        MOVS     R4,R1
// 3794     FRESULT res;
// 3795     DIR dj;
// 3796     BYTE *dir;
// 3797     DEF_NAMEBUF;
// 3798 
// 3799 
// 3800     res = chk_mounted(&path, &dj.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+0
        ADD      R0,SP,#+52
        BL       chk_mounted
        MOVS     R5,R0
// 3801     if (res == FR_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_utime_0
// 3802     {
// 3803         INIT_BUF(dj);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R6,R0
        CMP      R6,#+0
        BNE.N    ??f_utime_1
        MOVS     R0,#+17
        B.N      ??f_utime_2
??f_utime_1:
        STR      R6,[SP, #+28]
        ADD      R0,SP,#+36
        STR      R0,[SP, #+24]
// 3804         res = follow_path(&dj, path);	/* Follow the file path */
        LDR      R1,[SP, #+52]
        ADD      R0,SP,#+0
        BL       follow_path
        MOVS     R5,R0
// 3805         FREE_BUF();
        MOVS     R0,R6
        BL       ff_memfree
// 3806         if (_FS_RPATH && res == FR_OK && (dj.fn[NS] & NS_DOT))
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_utime_3
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        BPL.N    ??f_utime_3
// 3807             res = FR_INVALID_NAME;
        MOVS     R5,#+6
// 3808         if (res == FR_OK)
??f_utime_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??f_utime_0
// 3809         {
// 3810             dir = dj.dir;
        LDR      R0,[SP, #+20]
// 3811             if (!dir)  					/* Root directory */
        CMP      R0,#+0
        BNE.N    ??f_utime_4
// 3812             {
// 3813                 res = FR_INVALID_NAME;
        MOVS     R5,#+6
        B.N      ??f_utime_0
// 3814             }
// 3815             else  					/* File or sub-directory */
// 3816             {
// 3817                 ST_WORD(dir + DIR_WrtTime, fno->ftime);
??f_utime_4:
        LDRH     R1,[R4, #+6]
        STRB     R1,[R0, #+22]
        LDRH     R1,[R4, #+6]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R1,R1,#+8
        STRB     R1,[R0, #+23]
// 3818                 ST_WORD(dir + DIR_WrtDate, fno->fdate);
        LDRH     R1,[R4, #+4]
        STRB     R1,[R0, #+24]
        LDRH     R1,[R4, #+4]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R1,R1,#+8
        STRB     R1,[R0, #+25]
// 3819                 dj.fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[SP, #+0]
        STRB     R0,[R1, #+4]
// 3820                 res = sync(dj.fs);
        LDR      R0,[SP, #+0]
        BL       sync
        MOVS     R5,R0
// 3821             }
// 3822         }
// 3823     }
// 3824 
// 3825     LEAVE_FF(dj.fs, res);
??f_utime_0:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_utime_2:
        ADD      SP,SP,#+56
        POP      {R4-R6,PC}       ;; return
// 3826 }
// 3827 
// 3828 
// 3829 
// 3830 
// 3831 /*-----------------------------------------------------------------------*/
// 3832 /* Rename File/Directory                                                 */
// 3833 /*-----------------------------------------------------------------------*/
// 3834 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3835 FRESULT f_rename (
// 3836     const TCHAR *path_old,	/* Pointer to the old name */
// 3837     const TCHAR *path_new	/* Pointer to the new name */
// 3838 )
// 3839 {
f_rename:
        PUSH     {R0,R4-R6,LR}
        SUB      SP,SP,#+108
        MOVS     R4,R1
// 3840     FRESULT res;
// 3841     DIR djo, djn;
// 3842     BYTE buf[21], *dir;
// 3843     DWORD dw;
// 3844     DEF_NAMEBUF;
// 3845 
// 3846 
// 3847     res = chk_mounted(&path_old, &djo.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+36
        ADD      R0,SP,#+108
        BL       chk_mounted
        MOVS     R6,R0
// 3848     if (res == FR_OK)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.W    ??f_rename_0
// 3849     {
// 3850         djn.fs = djo.fs;
        LDR      R0,[SP, #+36]
        STR      R0,[SP, #+0]
// 3851         INIT_BUF(djo);
        MOVS     R0,#+130
        BL       ff_memalloc
        MOVS     R5,R0
        CMP      R5,#+0
        BNE.N    ??f_rename_1
        MOVS     R0,#+17
        B.N      ??f_rename_2
??f_rename_1:
        STR      R5,[SP, #+64]
        ADD      R0,SP,#+72
        STR      R0,[SP, #+60]
// 3852         res = follow_path(&djo, path_old);		/* Check old object */
        LDR      R1,[SP, #+108]
        ADD      R0,SP,#+36
        BL       follow_path
        MOVS     R6,R0
// 3853         if (_FS_RPATH && res == FR_OK && (djo.fn[NS] & NS_DOT))
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_rename_3
        LDR      R0,[SP, #+60]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        BPL.N    ??f_rename_3
// 3854             res = FR_INVALID_NAME;
        MOVS     R6,#+6
// 3855 #if _FS_SHARE
// 3856         if (res == FR_OK) res = chk_lock(&djo, 2);
??f_rename_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_rename_4
        MOVS     R1,#+2
        ADD      R0,SP,#+36
        BL       chk_lock
        MOVS     R6,R0
// 3857 #endif
// 3858         if (res == FR_OK)  						/* Old object is found */
??f_rename_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.W    ??f_rename_5
// 3859         {
// 3860             if (!djo.dir)  						/* Is root dir? */
        LDR      R0,[SP, #+56]
        CMP      R0,#+0
        BNE.N    ??f_rename_6
// 3861             {
// 3862                 res = FR_NO_FILE;
        MOVS     R6,#+4
        B.N      ??f_rename_5
// 3863             }
// 3864             else
// 3865             {
// 3866                 mem_cpy(buf, djo.dir + DIR_Attr, 21);		/* Save the object information except for name */
??f_rename_6:
        MOVS     R2,#+21
        LDR      R0,[SP, #+56]
        ADDS     R1,R0,#+11
        ADD      R0,SP,#+84
        BL       mem_cpy
// 3867                 mem_cpy(&djn, &djo, sizeof(DIR));		/* Check new object */
        MOVS     R2,#+36
        ADD      R1,SP,#+36
        ADD      R0,SP,#+0
        BL       mem_cpy
// 3868                 res = follow_path(&djn, path_new);
        MOVS     R1,R4
        ADD      R0,SP,#+0
        BL       follow_path
        MOVS     R6,R0
// 3869                 if (res == FR_OK) res = FR_EXIST;		/* The new object name is already existing */
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_rename_7
        MOVS     R6,#+8
// 3870                 if (res == FR_NO_FILE)   				/* Is it a valid path and no name collision? */
??f_rename_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??f_rename_5
// 3871                 {
// 3872                     /* Start critical section that any interruption or error can cause cross-link */
// 3873                     res = dir_register(&djn);			/* Register the new entry */
        ADD      R0,SP,#+0
        BL       dir_register
        MOVS     R6,R0
// 3874                     if (res == FR_OK)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_rename_5
// 3875                     {
// 3876                         dir = djn.dir;					/* Copy object information except for name */
        LDR      R4,[SP, #+20]
// 3877                         mem_cpy(dir + 13, buf + 2, 19);
        MOVS     R2,#+19
        ADD      R1,SP,#+86
        ADDS     R0,R4,#+13
        BL       mem_cpy
// 3878                         dir[DIR_Attr] = buf[0] | AM_ARC;
        LDRB     R0,[SP, #+84]
        ORRS     R0,R0,#0x20
        STRB     R0,[R4, #+11]
// 3879                         djo.fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[SP, #+36]
        STRB     R0,[R1, #+4]
// 3880                         if (djo.sclust != djn.sclust && (dir[DIR_Attr] & AM_DIR))  		/* Update .. entry in the directory if needed */
        LDR      R0,[SP, #+44]
        LDR      R1,[SP, #+8]
        CMP      R0,R1
        BEQ.N    ??f_rename_8
        LDRB     R0,[R4, #+11]
        LSLS     R0,R0,#+27
        BPL.N    ??f_rename_8
// 3881                         {
// 3882                             dw = clust2sect(djn.fs, LD_CLUST(dir));
        LDRB     R0,[R4, #+21]
        LDRB     R1,[R4, #+20]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDRB     R1,[R4, #+27]
        LDRB     R2,[R4, #+26]
        ORRS     R1,R2,R1, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R1,R1,R0, LSL #+16
        LDR      R0,[SP, #+0]
        BL       clust2sect
// 3883                             if (!dw)
        CMP      R0,#+0
        BNE.N    ??f_rename_9
// 3884                             {
// 3885                                 res = FR_INT_ERR;
        MOVS     R6,#+2
        B.N      ??f_rename_8
// 3886                             }
// 3887                             else
// 3888                             {
// 3889                                 res = move_window(djn.fs, dw);
??f_rename_9:
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       move_window
        MOVS     R6,R0
// 3890                                 dir = djn.fs->win + SZ_DIR;	/* .. entry */
        LDR      R0,[SP, #+0]
        ADDS     R4,R0,#+84
// 3891                                 if (res == FR_OK && dir[1] == '.')
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_rename_8
        LDRB     R0,[R4, #+1]
        CMP      R0,#+46
        BNE.N    ??f_rename_8
// 3892                                 {
// 3893                                     dw = (djn.fs->fs_type == FS_FAT32 && djn.sclust == djn.fs->dirbase) ? 0 : djn.sclust;
        LDR      R0,[SP, #+0]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??f_rename_10
        LDR      R0,[SP, #+8]
        LDR      R1,[SP, #+0]
        LDR      R1,[R1, #+40]
        CMP      R0,R1
        BNE.N    ??f_rename_10
        MOVS     R0,#+0
        B.N      ??f_rename_11
??f_rename_10:
        LDR      R0,[SP, #+8]
// 3894                                     ST_CLUST(dir, dw);
??f_rename_11:
        STRB     R0,[R4, #+26]
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R1,R1,#+8
        STRB     R1,[R4, #+27]
        LSRS     R1,R0,#+16
        STRB     R1,[R4, #+20]
        LSRS     R0,R0,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R4, #+21]
// 3895                                     djn.fs->wflag = 1;
        MOVS     R0,#+1
        LDR      R1,[SP, #+0]
        STRB     R0,[R1, #+4]
// 3896                                 }
// 3897                             }
// 3898                         }
// 3899                         if (res == FR_OK)
??f_rename_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_rename_5
// 3900                         {
// 3901                             res = dir_remove(&djo);		/* Remove old entry */
        ADD      R0,SP,#+36
        BL       dir_remove
        MOVS     R6,R0
// 3902                             if (res == FR_OK)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??f_rename_5
// 3903                                 res = sync(djo.fs);
        LDR      R0,[SP, #+36]
        BL       sync
        MOVS     R6,R0
// 3904                         }
// 3905                     }
// 3906                     /* End critical section */
// 3907                 }
// 3908             }
// 3909         }
// 3910         FREE_BUF();
??f_rename_5:
        MOVS     R0,R5
        BL       ff_memfree
// 3911     }
// 3912     LEAVE_FF(djo.fs, res);
??f_rename_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_rename_2:
        ADD      SP,SP,#+112
        POP      {R4-R6,PC}       ;; return
// 3913 }
// 3914 
// 3915 #endif /* !_FS_READONLY */
// 3916 #endif /* _FS_MINIMIZE == 0 */
// 3917 #endif /* _FS_MINIMIZE <= 1 */
// 3918 #endif /* _FS_MINIMIZE <= 2 */
// 3919 
// 3920 
// 3921 
// 3922 /*-----------------------------------------------------------------------*/
// 3923 /* Forward data to the stream directly (available on only tiny cfg)      */
// 3924 /*-----------------------------------------------------------------------*/
// 3925 #if _USE_FORWARD && _FS_TINY
// 3926 
// 3927 FRESULT f_forward (
// 3928     FIL *fp, 						/* Pointer to the file object */
// 3929     UINT (*func)(const BYTE *, UINT),	/* Pointer to the streaming function */
// 3930     UINT btr,						/* Number of bytes to forward */
// 3931     UINT *bf						/* Pointer to number of bytes forwarded */
// 3932 )
// 3933 {
// 3934     FRESULT res;
// 3935     DWORD remain, clst, sect;
// 3936     UINT rcnt;
// 3937     BYTE csect;
// 3938 
// 3939 
// 3940     *bf = 0;	/* Initialize byte counter */
// 3941 
// 3942     res = validate(fp->fs, fp->id);					/* Check validity of the object */
// 3943     if (res != FR_OK) LEAVE_FF(fp->fs, res);
// 3944     if (fp->flag & FA__ERROR)						/* Check error flag */
// 3945         LEAVE_FF(fp->fs, FR_INT_ERR);
// 3946     if (!(fp->flag & FA_READ))						/* Check access mode */
// 3947         LEAVE_FF(fp->fs, FR_DENIED);
// 3948 
// 3949     remain = fp->fsize - fp->fptr;
// 3950     if (btr > remain) btr = (UINT)remain;			/* Truncate btr by remaining bytes */
// 3951 
// 3952     for ( ;  btr && (*func)(0, 0);					/* Repeat until all data transferred or stream becomes busy */
// 3953             fp->fptr += rcnt, *bf += rcnt, btr -= rcnt)
// 3954     {
// 3955         csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));	/* Sector offset in the cluster */
// 3956         if ((fp->fptr % SS(fp->fs)) == 0)  			/* On the sector boundary? */
// 3957         {
// 3958             if (!csect)  							/* On the cluster boundary? */
// 3959             {
// 3960                 clst = (fp->fptr == 0) ?			/* On the top of the file? */
// 3961                        fp->sclust : get_fat(fp->fs, fp->clust);
// 3962                 if (clst <= 1) ABORT(fp->fs, FR_INT_ERR);
// 3963                 if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
// 3964                 fp->clust = clst;					/* Update current cluster */
// 3965             }
// 3966         }
// 3967         sect = clust2sect(fp->fs, fp->clust);		/* Get current data sector */
// 3968         if (!sect) ABORT(fp->fs, FR_INT_ERR);
// 3969         sect += csect;
// 3970         if (move_window(fp->fs, sect))				/* Move sector window */
// 3971             ABORT(fp->fs, FR_DISK_ERR);
// 3972         fp->dsect = sect;
// 3973         rcnt = SS(fp->fs) - (WORD)(fp->fptr % SS(fp->fs));	/* Forward data from sector window */
// 3974         if (rcnt > btr) rcnt = btr;
// 3975         rcnt = (*func)(&fp->fs->win[(WORD)fp->fptr % SS(fp->fs)], rcnt);
// 3976         if (!rcnt) ABORT(fp->fs, FR_INT_ERR);
// 3977     }
// 3978 
// 3979     LEAVE_FF(fp->fs, FR_OK);
// 3980 }
// 3981 #endif /* _USE_FORWARD */
// 3982 
// 3983 
// 3984 
// 3985 #if _USE_MKFS && !_FS_READONLY
// 3986 /*-----------------------------------------------------------------------*/
// 3987 /* Create File System on the Drive                                       */
// 3988 /*-----------------------------------------------------------------------*/
// 3989 #define N_ROOTDIR	512		/* Number of root dir entries for FAT12/16 */
// 3990 #define N_FATS		1		/* Number of FAT copies (1 or 2) */
// 3991 
// 3992 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3993 FRESULT f_mkfs (
// 3994     BYTE drv,		/* Logical drive number */
// 3995     BYTE sfd,		/* Partitioning rule 0:FDISK, 1:SFD */
// 3996     UINT au			/* Allocation unit size [bytes] */
// 3997 )
// 3998 {
f_mkfs:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+28
        MOV      R10,R1
        MOVS     R4,R2
// 3999     static const WORD vst[] = { 1024,   512,  256,  128,   64,    32,   16,    8,    4,    2,   0};
// 4000     static const WORD cst[] = {32768, 16384, 8192, 4096, 2048, 16384, 8192, 4096, 2048, 1024, 512};
// 4001     BYTE fmt, md, sys, *tbl, pdrv, part;
// 4002     DWORD n_clst, vs, n, wsect;
// 4003     DSTATUS stat;
// 4004     UINT i;
// 4005     DWORD b_vol, b_fat, b_dir, b_data;	/* LBA */
// 4006     DWORD n_vol, n_rsv, n_fat, n_dir;	/* Size */
// 4007     FATFS *fs;
// 4008    
// 4009 
// 4010 
// 4011     /* Check mounted drive and clear work area */
// 4012     if (drv >= _VOLUMES) return FR_INVALID_DRIVE;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??f_mkfs_0
        MOVS     R0,#+11
        B.N      ??f_mkfs_1
// 4013     if (sfd > 1) return FR_INVALID_PARAMETER;
??f_mkfs_0:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+2
        BLT.N    ??f_mkfs_2
        MOVS     R0,#+19
        B.N      ??f_mkfs_1
// 4014     if (au & (au - 1)) return FR_INVALID_PARAMETER;
??f_mkfs_2:
        SUBS     R1,R4,#+1
        TST      R4,R1
        BEQ.N    ??f_mkfs_3
        MOVS     R0,#+19
        B.N      ??f_mkfs_1
// 4015     fs = FatFs[drv];
??f_mkfs_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable14
        LDR      R1,[R1, R0, LSL #+2]
        STR      R1,[SP, #+12]
// 4016     if (!fs) return FR_NOT_ENABLED;
        LDR      R1,[SP, #+12]
        CMP      R1,#+0
        BNE.N    ??f_mkfs_4
        MOVS     R0,#+12
        B.N      ??f_mkfs_1
// 4017     fs->fs_type = 0;
??f_mkfs_4:
        MOVS     R1,#+0
        LDR      R2,[SP, #+12]
        STRB     R1,[R2, #+0]
// 4018     pdrv = LD2PD(drv);	/* Physical drive */
        STRB     R0,[SP, #+8]
// 4019     part = LD2PT(drv);	/* Partition (0:auto detect, 1-4:get from partition table)*/
        MOVS     R5,#+0
// 4020 
// 4021     /* Get disk statics */
// 4022     stat = disk_initialize(pdrv);
        LDRB     R0,[SP, #+8]
        BL       disk_initialize
// 4023     if (stat & STA_NOINIT) return FR_NOT_READY;
        LSLS     R1,R0,#+31
        BPL.N    ??f_mkfs_5
        MOVS     R0,#+3
        B.N      ??f_mkfs_1
// 4024     if (stat & STA_PROTECT) return FR_WRITE_PROTECTED;
??f_mkfs_5:
        LSLS     R0,R0,#+29
        BPL.N    ??f_mkfs_6
        MOVS     R0,#+10
        B.N      ??f_mkfs_1
// 4025 #if _MAX_SS != 512					/* Get disk sector size */
// 4026     if (disk_ioctl(pdrv, GET_SECTOR_SIZE, &SS(fs)) != RES_OK || SS(fs) > _MAX_SS)
// 4027         return FR_DISK_ERR;
// 4028 #endif
// 4029     if (_MULTI_PARTITION && part)
// 4030     {
// 4031         /* Get partition information from partition table in the MBR */
// 4032         if (disk_read(pdrv, fs->win, 0, 1) != RES_OK) return FR_DISK_ERR;
// 4033         if (LD_WORD(fs->win + BS_55AA) != 0xAA55) return FR_MKFS_ABORTED;
// 4034         tbl = &fs->win[MBR_Table + (part - 1) * SZ_PTE];
// 4035         if (!tbl[4]) return FR_MKFS_ABORTED;	/* No partition? */
// 4036         b_vol = LD_DWORD(tbl + 8);	/* Volume start sector */
// 4037         n_vol = LD_DWORD(tbl + 12);	/* Volume size */
// 4038     }
// 4039     else
// 4040     {
// 4041         /* Create a partition in this function */
// 4042         if (disk_ioctl(pdrv, GET_SECTOR_COUNT, &n_vol) != RES_OK || n_vol < 128)
??f_mkfs_6:
        ADD      R2,SP,#+4
        MOVS     R1,#+1
        LDRB     R0,[SP, #+8]
        BL       disk_ioctl
        CMP      R0,#+0
        BNE.N    ??f_mkfs_7
        LDR      R0,[SP, #+4]
        CMP      R0,#+128
        BCS.N    ??f_mkfs_8
// 4043             return FR_DISK_ERR;
??f_mkfs_7:
        MOVS     R0,#+1
        B.N      ??f_mkfs_1
// 4044         b_vol = (sfd) ? 0 : 63;		/* Volume start sector */
??f_mkfs_8:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BEQ.N    ??f_mkfs_9
        MOVS     R7,#+0
        B.N      ??f_mkfs_10
??f_mkfs_9:
        MOVS     R7,#+63
// 4045         n_vol -= b_vol;				/* Volume size */
??f_mkfs_10:
        LDR      R0,[SP, #+4]
        SUBS     R0,R0,R7
        STR      R0,[SP, #+4]
// 4046     }
// 4047 
// 4048     if (!au)  				/* AU auto selection */
        CMP      R4,#+0
        BNE.N    ??f_mkfs_11
// 4049     {
// 4050         vs = n_vol / (2000 / (SS(fs) / 512));
        LDR      R0,[SP, #+4]
        MOV      R1,#+2000
        UDIV     R0,R0,R1
// 4051         for (i = 0; vs < vst[i]; i++) ;
        MOVS     R11,#+0
        B.N      ??f_mkfs_12
??f_mkfs_13:
        ADDS     R11,R11,#+1
??f_mkfs_12:
        LDR.W    R1,??DataTable14_1
        LDRH     R1,[R1, R11, LSL #+1]
        CMP      R0,R1
        BCC.N    ??f_mkfs_13
// 4052         au = cst[i];
        LDR.W    R0,??DataTable14_2
        LDRH     R4,[R0, R11, LSL #+1]
// 4053     }
// 4054     au /= SS(fs);		/* Number of sectors per cluster */
??f_mkfs_11:
        LSRS     R4,R4,#+9
// 4055     if (au == 0) au = 1;
        CMP      R4,#+0
        BNE.N    ??f_mkfs_14
        MOVS     R4,#+1
// 4056     if (au > 128) au = 128;
??f_mkfs_14:
        CMP      R4,#+129
        BCC.N    ??f_mkfs_15
        MOVS     R4,#+128
// 4057 
// 4058     /* Pre-compute number of clusters and FAT syb-type */
// 4059     n_clst = n_vol / au;
??f_mkfs_15:
        LDR      R0,[SP, #+4]
        UDIV     R6,R0,R4
// 4060     fmt = FS_FAT12;
        MOVS     R5,#+1
// 4061     if (n_clst >= MIN_FAT16) fmt = FS_FAT16;
        MOVW     R0,#+4086
        CMP      R6,R0
        BCC.N    ??f_mkfs_16
        MOVS     R5,#+2
// 4062     if (n_clst >= MIN_FAT32) fmt = FS_FAT32;
??f_mkfs_16:
        MOVW     R0,#+65526
        CMP      R6,R0
        BCC.N    ??f_mkfs_17
        MOVS     R5,#+3
// 4063 
// 4064     /* Determine offset and size of FAT structure */
// 4065     if (fmt == FS_FAT32)
??f_mkfs_17:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??f_mkfs_18
// 4066     {
// 4067         n_fat = ((n_clst * 4) + 8 + SS(fs) - 1) / SS(fs);
        LSLS     R0,R6,#+2
        ADDW     R0,R0,#+519
        LSRS     R9,R0,#+9
// 4068         n_rsv = 32;
        MOVS     R8,#+32
// 4069         n_dir = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        B.N      ??f_mkfs_19
// 4070     }
// 4071     else
// 4072     {
// 4073         n_fat = (fmt == FS_FAT12) ? (n_clst * 3 + 1) / 2 + 3 : (n_clst * 2) + 4;
??f_mkfs_18:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??f_mkfs_20
        MOVS     R0,#+3
        MUL      R0,R0,R6
        ADDS     R0,R0,#+1
        LSRS     R0,R0,#+1
        ADDS     R9,R0,#+3
        B.N      ??f_mkfs_21
??f_mkfs_20:
        LSLS     R0,R6,#+1
        ADDS     R9,R0,#+4
// 4074         n_fat = (n_fat + SS(fs) - 1) / SS(fs);
??f_mkfs_21:
        ADDW     R0,R9,#+511
        LSRS     R9,R0,#+9
// 4075         n_rsv = 1;
        MOVS     R8,#+1
// 4076         n_dir = (DWORD)N_ROOTDIR * SZ_DIR / SS(fs);
        MOVS     R0,#+32
        STR      R0,[SP, #+16]
// 4077     }
// 4078     b_fat = b_vol + n_rsv;				/* FAT area start sector */
??f_mkfs_19:
        ADDS     R0,R8,R7
        STR      R0,[SP, #+20]
// 4079     b_dir = b_fat + n_fat * N_FATS;		/* Directory area start sector */
        LDR      R0,[SP, #+20]
        ADDS     R0,R9,R0
// 4080     b_data = b_dir + n_dir;				/* Data area start sector */
        LDR      R1,[SP, #+16]
        ADDS     R6,R1,R0
// 4081     if (n_vol < b_data + au - b_vol) return FR_MKFS_ABORTED;	/* Too small volume */
        LDR      R0,[SP, #+4]
        ADDS     R1,R4,R6
        SUBS     R1,R1,R7
        CMP      R0,R1
        BCS.N    ??f_mkfs_22
        MOVS     R0,#+14
        B.N      ??f_mkfs_1
// 4082 
// 4083     /* Align data start sector to erase block boundary (for flash memory media) */
// 4084     if (disk_ioctl(pdrv, GET_BLOCK_SIZE, &n) != RES_OK || !n || n > 32768) n = 1;
??f_mkfs_22:
        ADD      R2,SP,#+0
        MOVS     R1,#+3
        LDRB     R0,[SP, #+8]
        BL       disk_ioctl
        CMP      R0,#+0
        BNE.N    ??f_mkfs_23
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??f_mkfs_23
        LDR      R0,[SP, #+0]
        CMP      R0,#+32768
        BLS.N    ??f_mkfs_24
??f_mkfs_23:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
// 4085     n = (b_data + n - 1) & ~(n - 1);	/* Next nearest erase block from current data start */
??f_mkfs_24:
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,R6
        SUBS     R0,R0,#+1
        LDR      R1,[SP, #+0]
        SUBS     R1,R1,#+1
        BICS     R0,R0,R1
        STR      R0,[SP, #+0]
// 4086     n = (n - b_data) / N_FATS;
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,R6
        MOVS     R1,#+1
        UDIV     R0,R0,R1
        STR      R0,[SP, #+0]
// 4087     if (fmt == FS_FAT32)  		/* FAT32: Move FAT offset */
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??f_mkfs_25
// 4088     {
// 4089         n_rsv += n;
        LDR      R0,[SP, #+0]
        ADDS     R8,R0,R8
// 4090         b_fat += n;
        LDR      R0,[SP, #+20]
        LDR      R1,[SP, #+0]
        ADDS     R0,R1,R0
        STR      R0,[SP, #+20]
        B.N      ??f_mkfs_26
// 4091     }
// 4092     else  					/* FAT12/16: Expand FAT size */
// 4093     {
// 4094         n_fat += n;
??f_mkfs_25:
        LDR      R0,[SP, #+0]
        ADDS     R9,R0,R9
// 4095     }
// 4096 
// 4097     /* Determine number of clusters and final check of validity of the FAT sub-type */
// 4098     n_clst = (n_vol - n_rsv - n_fat * N_FATS - n_dir) / au;
??f_mkfs_26:
        LDR      R0,[SP, #+4]
        SUBS     R0,R0,R8
        SUBS     R0,R0,R9
        LDR      R1,[SP, #+16]
        SUBS     R0,R0,R1
        UDIV     R6,R0,R4
// 4099     if (   (fmt == FS_FAT16 && n_clst < MIN_FAT16)
// 4100             || (fmt == FS_FAT32 && n_clst < MIN_FAT32))
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??f_mkfs_27
        MOVW     R0,#+4086
        CMP      R6,R0
        BCC.N    ??f_mkfs_28
??f_mkfs_27:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??f_mkfs_29
        MOVW     R0,#+65526
        CMP      R6,R0
        BCS.N    ??f_mkfs_29
// 4101         return FR_MKFS_ABORTED;
??f_mkfs_28:
        MOVS     R0,#+14
        B.N      ??f_mkfs_1
// 4102 
// 4103     switch (fmt)  	/* Determine system ID for partition table */
??f_mkfs_29:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        CMP      R0,#+1
        BEQ.N    ??f_mkfs_30
        CMP      R0,#+2
        BEQ.N    ??f_mkfs_31
        B.N      ??f_mkfs_32
// 4104     {
// 4105     case FS_FAT12:
// 4106         sys = 0x01;
??f_mkfs_30:
        MOVS     R11,#+1
// 4107         break;
        B.N      ??f_mkfs_33
// 4108     case FS_FAT16:
// 4109         sys = (n_vol < 0x10000) ? 0x04 : 0x06;
??f_mkfs_31:
        LDR      R0,[SP, #+4]
        CMP      R0,#+65536
        BCS.N    ??f_mkfs_34
        MOVS     R11,#+4
        B.N      ??f_mkfs_35
??f_mkfs_34:
        MOVS     R11,#+6
// 4110         break;
??f_mkfs_35:
        B.N      ??f_mkfs_33
// 4111     default:
// 4112         sys = 0x0C;
??f_mkfs_32:
        MOVS     R11,#+12
// 4113     }
// 4114 
// 4115     if (_MULTI_PARTITION && part)
// 4116     {
// 4117         /* Update system ID in the partition table */
// 4118         tbl = &fs->win[MBR_Table + (part - 1) * SZ_PTE];
// 4119         tbl[4] = sys;
// 4120         if (disk_write(pdrv, fs->win, 0, 1) != RES_OK) return FR_DISK_ERR;
// 4121         md = 0xF8;
// 4122     }
// 4123     else
// 4124     {
// 4125         if (sfd)  	/* No patition table (SFD) */
??f_mkfs_33:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BEQ.N    ??f_mkfs_36
// 4126         {
// 4127             md = 0xF0;
        MOVS     R0,#+240
        STRB     R0,[SP, #+9]
        B.N      ??f_mkfs_37
// 4128         }
// 4129         else  	/* Create partition table (FDISK) */
// 4130         {
// 4131             mem_set(fs->win, 0, SS(fs));
??f_mkfs_36:
        MOV      R2,#+512
        MOVS     R1,#+0
        LDR      R0,[SP, #+12]
        ADDS     R0,R0,#+52
        BL       mem_set
// 4132             tbl = fs->win + MBR_Table;	/* Create partiton table for single partition in the drive */
        LDR      R0,[SP, #+12]
        ADDW     R10,R0,#+498
// 4133             tbl[1] = 1;						/* Partition start head */
        MOVS     R0,#+1
        STRB     R0,[R10, #+1]
// 4134             tbl[2] = 1;						/* Partition start sector */
        MOVS     R0,#+1
        STRB     R0,[R10, #+2]
// 4135             tbl[3] = 0;						/* Partition start cylinder */
        MOVS     R0,#+0
        STRB     R0,[R10, #+3]
// 4136             tbl[4] = sys;					/* System type */
        STRB     R11,[R10, #+4]
// 4137             tbl[5] = 254;					/* Partition end head */
        MOVS     R0,#+254
        STRB     R0,[R10, #+5]
// 4138             n = (b_vol + n_vol) / 63 / 255;
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,R7
        MOVS     R1,#+63
        UDIV     R0,R0,R1
        MOVS     R1,#+255
        UDIV     R0,R0,R1
        STR      R0,[SP, #+0]
// 4139             tbl[6] = (BYTE)((n >> 2) | 63);	/* Partiiton end sector */
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+2
        ORRS     R0,R0,#0x3F
        STRB     R0,[R10, #+6]
// 4140             tbl[7] = (BYTE)n;				/* End cylinder */
        LDR      R0,[SP, #+0]
        STRB     R0,[R10, #+7]
// 4141             ST_DWORD(tbl + 8, 63);			/* Partition start in LBA */
        MOVS     R0,#+63
        STRB     R0,[R10, #+8]
        MOVS     R0,#+0
        STRB     R0,[R10, #+9]
        MOVS     R0,#+0
        STRB     R0,[R10, #+10]
        MOVS     R0,#+0
        STRB     R0,[R10, #+11]
// 4142             ST_DWORD(tbl + 12, n_vol);		/* Partition size in LBA */
        LDR      R0,[SP, #+4]
        STRB     R0,[R10, #+12]
        LDR      R0,[SP, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+13]
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+16
        STRB     R0,[R10, #+14]
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+24
        STRB     R0,[R10, #+15]
// 4143             ST_WORD(fs->win + BS_55AA, 0xAA55);	/* MBR signature */
        MOVS     R0,#+85
        LDR      R1,[SP, #+12]
        STRB     R0,[R1, #+562]
        MOVS     R0,#+170
        LDR      R1,[SP, #+12]
        STRB     R0,[R1, #+563]
// 4144             if (disk_write(pdrv, fs->win, 0, 1) != RES_OK)	/* Write it to the MBR sector */
        MOVS     R3,#+1
        MOVS     R2,#+0
        LDR      R0,[SP, #+12]
        ADDS     R1,R0,#+52
        LDRB     R0,[SP, #+8]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??f_mkfs_38
// 4145                 return FR_DISK_ERR;
        MOVS     R0,#+1
        B.N      ??f_mkfs_1
// 4146             md = 0xF8;
??f_mkfs_38:
        MOVS     R0,#+248
        STRB     R0,[SP, #+9]
// 4147         }
// 4148     }
// 4149 
// 4150     /* Create BPB in the VBR */
// 4151     tbl = fs->win;							/* Clear sector */
??f_mkfs_37:
        LDR      R0,[SP, #+12]
        ADDS     R10,R0,#+52
// 4152     mem_set(tbl, 0, SS(fs));
        MOV      R2,#+512
        MOVS     R1,#+0
        MOV      R0,R10
        BL       mem_set
// 4153     mem_cpy(tbl, "\xEB\xFE\x90" "MSDOS5.0", 11);/* Boot jump code, OEM name */
        MOVS     R2,#+11
        LDR.W    R1,??DataTable14_3
        MOV      R0,R10
        BL       mem_cpy
// 4154     i = SS(fs);								/* Sector size */
        MOV      R11,#+512
// 4155     ST_WORD(tbl + BPB_BytsPerSec, i);
        STRB     R11,[R10, #+11]
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        LSRS     R0,R11,#+8
        STRB     R0,[R10, #+12]
// 4156     tbl[BPB_SecPerClus] = (BYTE)au;			/* Sectors per cluster */
        STRB     R4,[R10, #+13]
// 4157     ST_WORD(tbl + BPB_RsvdSecCnt, n_rsv);		/* Reserved sectors */
        STRB     R8,[R10, #+14]
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        LSRS     R0,R8,#+8
        STRB     R0,[R10, #+15]
// 4158     tbl[BPB_NumFATs] = N_FATS;				/* Number of FATs */
        MOVS     R0,#+1
        STRB     R0,[R10, #+16]
// 4159     i = (fmt == FS_FAT32) ? 0 : N_ROOTDIR;	/* Number of rootdir entries */
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??f_mkfs_39
        MOVS     R11,#+0
        B.N      ??f_mkfs_40
??f_mkfs_39:
        MOV      R11,#+512
// 4160     ST_WORD(tbl + BPB_RootEntCnt, i);
??f_mkfs_40:
        STRB     R11,[R10, #+17]
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        LSRS     R0,R11,#+8
        STRB     R0,[R10, #+18]
// 4161     if (n_vol < 0x10000)  					/* Number of total sectors */
        LDR      R0,[SP, #+4]
        CMP      R0,#+65536
        BCS.N    ??f_mkfs_41
// 4162     {
// 4163         ST_WORD(tbl + BPB_TotSec16, n_vol);
        LDR      R0,[SP, #+4]
        STRB     R0,[R10, #+19]
        LDR      R0,[SP, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+20]
        B.N      ??f_mkfs_42
// 4164     }
// 4165     else
// 4166     {
// 4167         ST_DWORD(tbl + BPB_TotSec32, n_vol);
??f_mkfs_41:
        LDR      R0,[SP, #+4]
        STRB     R0,[R10, #+32]
        LDR      R0,[SP, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+33]
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+16
        STRB     R0,[R10, #+34]
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+24
        STRB     R0,[R10, #+35]
// 4168     }
// 4169     tbl[BPB_Media] = md;					/* Media descriptor */
??f_mkfs_42:
        LDRB     R0,[SP, #+9]
        STRB     R0,[R10, #+21]
// 4170     ST_WORD(tbl + BPB_SecPerTrk, 63);			/* Number of sectors per track */
        MOVS     R0,#+63
        STRB     R0,[R10, #+24]
        MOVS     R0,#+0
        STRB     R0,[R10, #+25]
// 4171     ST_WORD(tbl + BPB_NumHeads, 255);			/* Number of heads */
        MOVS     R0,#+255
        STRB     R0,[R10, #+26]
        MOVS     R0,#+0
        STRB     R0,[R10, #+27]
// 4172     ST_DWORD(tbl + BPB_HiddSec, b_vol);		/* Hidden sectors */
        STRB     R7,[R10, #+28]
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+29]
        LSRS     R0,R7,#+16
        STRB     R0,[R10, #+30]
        LSRS     R0,R7,#+24
        STRB     R0,[R10, #+31]
// 4173     n = get_fattime();						/* Use current time as VSN */
        BL       get_fattime
        STR      R0,[SP, #+0]
// 4174     if (fmt == FS_FAT32)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??f_mkfs_43
// 4175     {
// 4176         ST_DWORD(tbl + BS_VolID32, n);		/* VSN */
        LDR      R0,[SP, #+0]
        STRB     R0,[R10, #+67]
        LDR      R0,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+68]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+16
        STRB     R0,[R10, #+69]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+24
        STRB     R0,[R10, #+70]
// 4177         ST_DWORD(tbl + BPB_FATSz32, n_fat);	/* Number of sectors per FAT */
        STRB     R9,[R10, #+36]
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+37]
        LSRS     R0,R9,#+16
        STRB     R0,[R10, #+38]
        LSRS     R0,R9,#+24
        STRB     R0,[R10, #+39]
// 4178         ST_DWORD(tbl + BPB_RootClus, 2);		/* Root directory start cluster (2) */
        MOVS     R0,#+2
        STRB     R0,[R10, #+44]
        MOVS     R0,#+0
        STRB     R0,[R10, #+45]
        MOVS     R0,#+0
        STRB     R0,[R10, #+46]
        MOVS     R0,#+0
        STRB     R0,[R10, #+47]
// 4179         ST_WORD(tbl + BPB_FSInfo, 1);			/* FSInfo record offset (VBR+1) */
        MOVS     R0,#+1
        STRB     R0,[R10, #+48]
        MOVS     R0,#+0
        STRB     R0,[R10, #+49]
// 4180         ST_WORD(tbl + BPB_BkBootSec, 6);		/* Backup boot record offset (VBR+6) */
        MOVS     R0,#+6
        STRB     R0,[R10, #+50]
        MOVS     R0,#+0
        STRB     R0,[R10, #+51]
// 4181         tbl[BS_DrvNum32] = 0x80;			/* Drive number */
        MOVS     R0,#+128
        STRB     R0,[R10, #+64]
// 4182         tbl[BS_BootSig32] = 0x29;			/* Extended boot signature */
        MOVS     R0,#+41
        STRB     R0,[R10, #+66]
// 4183         mem_cpy(tbl + BS_VolLab32, "NO NAME    " "FAT32   ", 19);	/* Volume label, FAT signature */
        MOVS     R2,#+19
        LDR.N    R1,??DataTable14_4
        ADDS     R0,R10,#+71
        BL       mem_cpy
        B.N      ??f_mkfs_44
// 4184     }
// 4185     else
// 4186     {
// 4187         ST_DWORD(tbl + BS_VolID, n);			/* VSN */
??f_mkfs_43:
        LDR      R0,[SP, #+0]
        STRB     R0,[R10, #+39]
        LDR      R0,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+40]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+16
        STRB     R0,[R10, #+41]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+24
        STRB     R0,[R10, #+42]
// 4188         ST_WORD(tbl + BPB_FATSz16, n_fat);	/* Number of sectors per FAT */
        STRB     R9,[R10, #+22]
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+23]
// 4189         tbl[BS_DrvNum] = 0x80;				/* Drive number */
        MOVS     R0,#+128
        STRB     R0,[R10, #+36]
// 4190         tbl[BS_BootSig] = 0x29;				/* Extended boot signature */
        MOVS     R0,#+41
        STRB     R0,[R10, #+38]
// 4191         mem_cpy(tbl + BS_VolLab, "NO NAME    " "FAT     ", 19);	/* Volume label, FAT signature */
        MOVS     R2,#+19
        LDR.N    R1,??DataTable14_5
        ADDS     R0,R10,#+43
        BL       mem_cpy
// 4192     }
// 4193     ST_WORD(tbl + BS_55AA, 0xAA55);			/* Signature (Offset is fixed here regardless of sector size) */
??f_mkfs_44:
        MOVS     R0,#+85
        STRB     R0,[R10, #+510]
        MOVS     R0,#+170
        STRB     R0,[R10, #+511]
// 4194     if (disk_write(pdrv, tbl, b_vol, 1) != RES_OK)	/* Write it to the VBR sector */
        MOVS     R3,#+1
        MOVS     R2,R7
        MOV      R1,R10
        LDRB     R0,[SP, #+8]
        BL       disk_write
        CMP      R0,#+0
        BEQ.N    ??f_mkfs_45
// 4195         return FR_DISK_ERR;
        MOVS     R0,#+1
        B.N      ??f_mkfs_1
// 4196     if (fmt == FS_FAT32)							/* Write backup VBR if needed (VBR+6) */
??f_mkfs_45:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??f_mkfs_46
// 4197         disk_write(pdrv, tbl, b_vol + 6, 1);
        MOVS     R3,#+1
        ADDS     R2,R7,#+6
        MOV      R1,R10
        LDRB     R0,[SP, #+8]
        BL       disk_write
// 4198 
// 4199     /* Initialize FAT area */
// 4200     wsect = b_fat;
??f_mkfs_46:
        LDR      R8,[SP, #+20]
// 4201     for (i = 0; i < N_FATS; i++)  		/* Initialize each FAT copy */
        MOVS     R11,#+0
        B.N      ??f_mkfs_47
??f_mkfs_48:
        ADDS     R11,R11,#+1
??f_mkfs_47:
        CMP      R11,#+0
        BNE.N    ??f_mkfs_49
// 4202     {
// 4203         mem_set(tbl, 0, SS(fs));			/* 1st sector of the FAT  */
        MOV      R2,#+512
        MOVS     R1,#+0
        MOV      R0,R10
        BL       mem_set
// 4204         n = md;								/* Media descriptor byte */
        LDRB     R0,[SP, #+9]
        STR      R0,[SP, #+0]
// 4205         if (fmt != FS_FAT32)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BEQ.N    ??f_mkfs_50
// 4206         {
// 4207             n |= (fmt == FS_FAT12) ? 0x00FFFF00 : 0xFFFFFF00;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??f_mkfs_51
        LDR.N    R0,??DataTable14_6  ;; 0xffff00
        B.N      ??f_mkfs_52
??f_mkfs_51:
        MVNS     R0,#+255
??f_mkfs_52:
        LDR      R1,[SP, #+0]
        ORRS     R0,R0,R1
        STR      R0,[SP, #+0]
// 4208             ST_DWORD(tbl + 0, n);				/* Reserve cluster #0-1 (FAT12/16) */
        LDR      R0,[SP, #+0]
        STRB     R0,[R10, #+0]
        LDR      R0,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+1]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+16
        STRB     R0,[R10, #+2]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+24
        STRB     R0,[R10, #+3]
        B.N      ??f_mkfs_53
// 4209         }
// 4210         else
// 4211         {
// 4212             n |= 0xFFFFFF00;
??f_mkfs_50:
        LDR      R0,[SP, #+0]
        ORNS     R0,R0,#+255
        STR      R0,[SP, #+0]
// 4213             ST_DWORD(tbl + 0, n);				/* Reserve cluster #0-1 (FAT32) */
        LDR      R0,[SP, #+0]
        STRB     R0,[R10, #+0]
        LDR      R0,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+1]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+16
        STRB     R0,[R10, #+2]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+24
        STRB     R0,[R10, #+3]
// 4214             ST_DWORD(tbl + 4, 0xFFFFFFFF);
        MOVS     R0,#+255
        STRB     R0,[R10, #+4]
        MOVS     R0,#+255
        STRB     R0,[R10, #+5]
        MOVS     R0,#+255
        STRB     R0,[R10, #+6]
        MOVS     R0,#+255
        STRB     R0,[R10, #+7]
// 4215             ST_DWORD(tbl + 8, 0x0FFFFFFF);	/* Reserve cluster #2 for root dir */
        MOVS     R0,#+255
        STRB     R0,[R10, #+8]
        MOVS     R0,#+255
        STRB     R0,[R10, #+9]
        MOVS     R0,#+255
        STRB     R0,[R10, #+10]
        MOVS     R0,#+15
        STRB     R0,[R10, #+11]
// 4216         }
// 4217         if (disk_write(pdrv, tbl, wsect++, 1) != RES_OK)
??f_mkfs_53:
        MOVS     R3,#+1
        MOV      R2,R8
        MOV      R1,R10
        LDRB     R0,[SP, #+8]
        BL       disk_write
        ADDS     R8,R8,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??f_mkfs_54
// 4218             return FR_DISK_ERR;
        MOVS     R0,#+1
        B.N      ??f_mkfs_1
// 4219         mem_set(tbl, 0, SS(fs));			/* Fill following FAT entries with zero */
??f_mkfs_54:
        MOV      R2,#+512
        MOVS     R1,#+0
        MOV      R0,R10
        BL       mem_set
// 4220         for (n = 1; n < n_fat; n++)  		/* This loop may take a time on FAT32 volume due to many single sector writes */
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        B.N      ??f_mkfs_55
??f_mkfs_56:
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
??f_mkfs_55:
        LDR      R0,[SP, #+0]
        CMP      R0,R9
        BCS.N    ??f_mkfs_48
// 4221         {
// 4222             if (disk_write(pdrv, tbl, wsect++, 1) != RES_OK)
        MOVS     R3,#+1
        MOV      R2,R8
        MOV      R1,R10
        LDRB     R0,[SP, #+8]
        BL       disk_write
        ADDS     R8,R8,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??f_mkfs_56
// 4223                 return FR_DISK_ERR;
        MOVS     R0,#+1
        B.N      ??f_mkfs_1
// 4224         }
// 4225     }
// 4226 
// 4227     /* Initialize root directory */
// 4228     i = (fmt == FS_FAT32) ? au : n_dir;
??f_mkfs_49:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??f_mkfs_57
        MOV      R11,R4
        B.N      ??f_mkfs_58
??f_mkfs_57:
        LDR      R11,[SP, #+16]
// 4229     do
// 4230     {
// 4231         if (disk_write(pdrv, tbl, wsect++, 1) != RES_OK)
??f_mkfs_58:
        MOVS     R3,#+1
        MOV      R2,R8
        MOV      R1,R10
        LDRB     R0,[SP, #+8]
        BL       disk_write
        ADDS     R8,R8,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??f_mkfs_59
// 4232             return FR_DISK_ERR;
        MOVS     R0,#+1
        B.N      ??f_mkfs_1
// 4233     }
// 4234     while (--i);
??f_mkfs_59:
        SUBS     R11,R11,#+1
        CMP      R11,#+0
        BNE.N    ??f_mkfs_58
// 4235 
// 4236 #if _USE_ERASE	/* Erase data area if needed */
// 4237     {
// 4238         DWORD eb[2];
// 4239 
// 4240         eb[0] = wsect;
// 4241         eb[1] = wsect + (n_clst - ((fmt == FS_FAT32) ? 1 : 0)) * au - 1;
// 4242         disk_ioctl(pdrv, CTRL_ERASE_SECTOR, eb);
// 4243     }
// 4244 #endif
// 4245 
// 4246     /* Create FSInfo if needed */
// 4247     if (fmt == FS_FAT32)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??f_mkfs_60
// 4248     {
// 4249         ST_DWORD(tbl + FSI_LeadSig, 0x41615252);
        MOVS     R0,#+82
        STRB     R0,[R10, #+0]
        MOVS     R0,#+82
        STRB     R0,[R10, #+1]
        MOVS     R0,#+97
        STRB     R0,[R10, #+2]
        MOVS     R0,#+65
        STRB     R0,[R10, #+3]
// 4250         ST_DWORD(tbl + FSI_StrucSig, 0x61417272);
        MOVS     R0,#+114
        STRB     R0,[R10, #+484]
        MOVS     R0,#+114
        STRB     R0,[R10, #+485]
        MOVS     R0,#+65
        STRB     R0,[R10, #+486]
        MOVS     R0,#+97
        STRB     R0,[R10, #+487]
// 4251         ST_DWORD(tbl + FSI_Free_Count, n_clst - 1);	/* Number of free clusters */
        MOVS     R0,R6
        SUBS     R0,R0,#+1
        STRB     R0,[R10, #+488]
        MOVS     R0,R6
        SUBS     R0,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R10, #+489]
        SUBS     R0,R6,#+1
        LSRS     R0,R0,#+16
        STRB     R0,[R10, #+490]
        SUBS     R0,R6,#+1
        LSRS     R0,R0,#+24
        STRB     R0,[R10, #+491]
// 4252         ST_DWORD(tbl + FSI_Nxt_Free, 2);				/* Last allocated cluster# */
        MOVS     R0,#+2
        STRB     R0,[R10, #+492]
        MOVS     R0,#+0
        STRB     R0,[R10, #+493]
        MOVS     R0,#+0
        STRB     R0,[R10, #+494]
        MOVS     R0,#+0
        STRB     R0,[R10, #+495]
// 4253         ST_WORD(tbl + BS_55AA, 0xAA55);
        MOVS     R0,#+85
        STRB     R0,[R10, #+510]
        MOVS     R0,#+170
        STRB     R0,[R10, #+511]
// 4254         disk_write(pdrv, tbl, b_vol + 1, 1);	/* Write original (VBR+1) */
        MOVS     R3,#+1
        ADDS     R2,R7,#+1
        MOV      R1,R10
        LDRB     R0,[SP, #+8]
        BL       disk_write
// 4255         disk_write(pdrv, tbl, b_vol + 7, 1);	/* Write backup (VBR+7) */
        MOVS     R3,#+1
        ADDS     R2,R7,#+7
        MOV      R1,R10
        LDRB     R0,[SP, #+8]
        BL       disk_write
// 4256     }
// 4257 
// 4258     return (disk_ioctl(pdrv, CTRL_SYNC, 0) == RES_OK) ? FR_OK : FR_DISK_ERR;
??f_mkfs_60:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDRB     R0,[SP, #+8]
        BL       disk_ioctl
        CMP      R0,#+0
        BNE.N    ??f_mkfs_61
        MOVS     R0,#+0
        B.N      ??f_mkfs_62
??f_mkfs_61:
        MOVS     R0,#+1
??f_mkfs_62:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??f_mkfs_1:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return
// 4259 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     FatFs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     ??vst

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     ??cst

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     `?<Constant "\\353\\376\\220MSDOS5.0">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     `?<Constant "NO NAME    FAT32   ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     `?<Constant "NO NAME    FAT     ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     0xffff00

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
??vst:
        DATA
        DC16 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
??cst:
        DATA
        DC16 32768, 16384, 8192, 4096, 2048, 16384, 8192, 4096, 2048, 1024, 512
        DC8 0, 0
// 4260 
// 4261 
// 4262 #if _MULTI_PARTITION == 2
// 4263 /*-----------------------------------------------------------------------*/
// 4264 /* Divide Physical Drive                                                 */
// 4265 /*-----------------------------------------------------------------------*/
// 4266 
// 4267 FRESULT f_fdisk (
// 4268     BYTE pdrv,			/* Physical drive number */
// 4269     const DWORD szt[],	/* Pointer to the size table for each partitions */
// 4270     void *work			/* Pointer to the working buffer */
// 4271 )
// 4272 {
// 4273     UINT i, n, sz_cyl, tot_cyl, b_cyl, e_cyl, p_cyl;
// 4274     BYTE s_hd, e_hd, *p, *buf = (BYTE *)work;
// 4275     DSTATUS stat;
// 4276     DWORD sz_disk, sz_part, s_part;
// 4277 
// 4278 
// 4279     stat = disk_initialize(pdrv);
// 4280     if (stat & STA_NOINIT) return FR_NOT_READY;
// 4281     if (stat & STA_PROTECT) return FR_WRITE_PROTECTED;
// 4282     if (disk_ioctl(pdrv, GET_SECTOR_COUNT, &sz_disk)) return FR_DISK_ERR;
// 4283 
// 4284     /* Determine CHS in the table regardless of the drive geometry */
// 4285     for (n = 16; n < 256 && sz_disk / n / 63 > 1024; n *= 2) ;
// 4286     if (n == 256) n--;
// 4287     e_hd = n - 1;
// 4288     sz_cyl = 63 * n;
// 4289     tot_cyl = sz_disk / sz_cyl;
// 4290 
// 4291     /* Create partition table */
// 4292     mem_set(buf, 0, _MAX_SS);
// 4293     p = buf + MBR_Table;
// 4294     b_cyl = 0;
// 4295     for (i = 0; i < 4; i++, p += SZ_PTE)
// 4296     {
// 4297         p_cyl = (szt[i] <= 100) ? (DWORD)tot_cyl * szt[i] / 100 : szt[i] / sz_cyl;
// 4298         if (!p_cyl) continue;
// 4299         s_part = (DWORD)sz_cyl * b_cyl;
// 4300         sz_part = (DWORD)sz_cyl * p_cyl;
// 4301         if (i == 0)  	/* Exclude first track of cylinder 0 */
// 4302         {
// 4303             s_hd = 1;
// 4304             s_part += 63;
// 4305             sz_part -= 63;
// 4306         }
// 4307         else
// 4308         {
// 4309             s_hd = 0;
// 4310         }
// 4311         e_cyl = b_cyl + p_cyl - 1;
// 4312         if (e_cyl >= tot_cyl) return FR_INVALID_PARAMETER;
// 4313 
// 4314         /* Set partition table */
// 4315         p[1] = s_hd;						/* Start head */
// 4316         p[2] = (BYTE)((b_cyl >> 2) + 1);	/* Start sector */
// 4317         p[3] = (BYTE)b_cyl;					/* Start cylinder */
// 4318         p[4] = 0x06;						/* System type (temporary setting) */
// 4319         p[5] = e_hd;						/* End head */
// 4320         p[6] = (BYTE)((e_cyl >> 2) + 63);	/* End sector */
// 4321         p[7] = (BYTE)e_cyl;					/* End cylinder */
// 4322         ST_DWORD(p + 8, s_part);			/* Start sector in LBA */
// 4323         ST_DWORD(p + 12, sz_part);			/* Partition size */
// 4324 
// 4325         /* Next partition */
// 4326         b_cyl += p_cyl;
// 4327     }
// 4328     ST_WORD(p, 0xAA55);
// 4329 
// 4330     /* Write it to the MBR */
// 4331     return (disk_write(pdrv, buf, 0, 1) || disk_ioctl(pdrv, CTRL_SYNC, 0)) ? FR_DISK_ERR : FR_OK;
// 4332 }
// 4333 
// 4334 
// 4335 #endif /* _MULTI_PARTITION == 2 */
// 4336 #endif /* _USE_MKFS && !_FS_READONLY */
// 4337 
// 4338 
// 4339 
// 4340 
// 4341 #if _USE_STRFUNC
// 4342 /*-----------------------------------------------------------------------*/
// 4343 /* Get a string from the file                                            */
// 4344 /*-----------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 4345 TCHAR *f_gets (
// 4346     TCHAR *buff,	/* Pointer to the string buffer to read */
// 4347     int len,		/* Size of string buffer (characters) */
// 4348     FIL *fil		/* Pointer to the file object */
// 4349 )
// 4350 {
f_gets:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R7,R1
        MOV      R8,R2
// 4351     int n = 0;
        MOVS     R6,#+0
// 4352     TCHAR c, *p = buff;
        MOVS     R5,R4
        B.N      ??f_gets_0
// 4353     BYTE s[2];
// 4354     UINT rc;
// 4355 
// 4356 
// 4357     while (n < len - 1)  			/* Read bytes until buffer gets filled */
// 4358     {
// 4359         f_read(fil, s, 1, &rc);
// 4360         if (rc != 1) break;			/* Break on EOF or error */
// 4361         c = s[0];
// 4362 #if _LFN_UNICODE					/* Read a character in UTF-8 encoding */
// 4363         if (c >= 0x80)
// 4364         {
// 4365             if (c < 0xC0) continue;	/* Skip stray trailer */
// 4366             if (c < 0xE0)  			/* Two-byte sequense */
// 4367             {
// 4368                 f_read(fil, s, 1, &rc);
// 4369                 if (rc != 1) break;
// 4370                 c = ((c & 0x1F) << 6) | (s[0] & 0x3F);
// 4371                 if (c < 0x80) c = '?';
// 4372             }
// 4373             else
// 4374             {
// 4375                 if (c < 0xF0)  		/* Three-byte sequense */
// 4376                 {
// 4377                     f_read(fil, s, 2, &rc);
// 4378                     if (rc != 2) break;
// 4379                     c = (c << 12) | ((s[0] & 0x3F) << 6) | (s[1] & 0x3F);
// 4380                     if (c < 0x800) c = '?';
// 4381                 }
// 4382                 else  			/* Reject four-byte sequense */
// 4383                 {
// 4384                     c = '?';
// 4385                 }
// 4386             }
// 4387         }
// 4388 #endif
// 4389 #if _USE_STRFUNC >= 2
// 4390         if (c == '\r') continue;	/* Strip '\r' */
??f_gets_1:
??f_gets_0:
        SUBS     R0,R7,#+1
        CMP      R6,R0
        BGE.N    ??f_gets_2
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        ADD      R1,SP,#+4
        MOV      R0,R8
        BL       f_read
        LDR      R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??f_gets_2
??f_gets_3:
        LDRB     R0,[SP, #+4]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+13
        BEQ.N    ??f_gets_1
// 4391 #endif
// 4392         *p++ = c;
        STRB     R0,[R5, #+0]
        ADDS     R5,R5,#+1
// 4393         n++;
        ADDS     R6,R6,#+1
// 4394         if (c == '\n') break;		/* Break on EOL */
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BNE.N    ??f_gets_0
// 4395     }
// 4396     *p = 0;
??f_gets_2:
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
// 4397     return n ? buff : 0;			/* When no data read (eof or error), return with error. */
        CMP      R6,#+0
        BNE.N    ??f_gets_4
??f_gets_5:
        MOVS     R4,#+0
??f_gets_4:
        MOVS     R0,R4
        POP      {R1,R2,R4-R8,PC}  ;; return
// 4398 }
// 4399 
// 4400 
// 4401 
// 4402 #if !_FS_READONLY
// 4403 #include <stdarg.h>
// 4404 /*-----------------------------------------------------------------------*/
// 4405 /* Put a character to the file                                           */
// 4406 /*-----------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 4407 int f_putc (
// 4408     TCHAR c,	/* A character to be output */
// 4409     FIL *fil	/* Pointer to the file object */
// 4410 )
// 4411 {
f_putc:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
// 4412     UINT bw, btw;
// 4413     BYTE s[3];
// 4414 
// 4415 
// 4416 #if _USE_STRFUNC >= 2
// 4417     if (c == '\n') f_putc ('\r', fil);	/* LF -> CRLF conversion */
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BNE.N    ??f_putc_0
        MOVS     R1,R5
        MOVS     R0,#+13
        BL       f_putc
// 4418 #endif
// 4419 
// 4420 #if _LFN_UNICODE	/* Write the character in UTF-8 encoding */
// 4421     if (c < 0x80)  			/* 7-bit */
// 4422     {
// 4423         s[0] = (BYTE)c;
// 4424         btw = 1;
// 4425     }
// 4426     else
// 4427     {
// 4428         if (c < 0x800)  	/* 11-bit */
// 4429         {
// 4430             s[0] = (BYTE)(0xC0 | (c >> 6));
// 4431             s[1] = (BYTE)(0x80 | (c & 0x3F));
// 4432             btw = 2;
// 4433         }
// 4434         else  			/* 16-bit */
// 4435         {
// 4436             s[0] = (BYTE)(0xE0 | (c >> 12));
// 4437             s[1] = (BYTE)(0x80 | ((c >> 6) & 0x3F));
// 4438             s[2] = (BYTE)(0x80 | (c & 0x3F));
// 4439             btw = 3;
// 4440         }
// 4441     }
// 4442 #else				/* Write the character without conversion */
// 4443     s[0] = (BYTE)c;
??f_putc_0:
        STRB     R4,[SP, #+0]
// 4444     btw = 1;
        MOVS     R4,#+1
// 4445 #endif
// 4446     f_write(fil, s, btw, &bw);		/* Write the char to the file */
        ADD      R3,SP,#+4
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,R5
        BL       f_write
// 4447     return (bw == btw) ? 1 : EOF;	/* Return the result */
        LDR      R0,[SP, #+4]
        CMP      R0,R4
        BNE.N    ??f_putc_1
        MOVS     R0,#+1
        B.N      ??f_putc_2
??f_putc_1:
        MOVS     R0,#-1
??f_putc_2:
        POP      {R1-R5,PC}       ;; return
// 4448 }
// 4449 
// 4450 
// 4451 
// 4452 
// 4453 /*-----------------------------------------------------------------------*/
// 4454 /* Put a string to the file                                              */
// 4455 /*-----------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 4456 int f_puts (
// 4457     const TCHAR *str,	/* Pointer to the string to be output */
// 4458     FIL *fil			/* Pointer to the file object */
// 4459 )
// 4460 {
f_puts:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 4461     int n;
// 4462 
// 4463 
// 4464     for (n = 0; *str; str++, n++)
        MOVS     R6,#+0
        B.N      ??f_puts_0
??f_puts_1:
        ADDS     R4,R4,#+1
        ADDS     R6,R6,#+1
??f_puts_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??f_puts_2
// 4465     {
// 4466         if (f_putc(*str, fil) == EOF) return EOF;
        MOVS     R1,R5
        LDRB     R0,[R4, #+0]
        BL       f_putc
        CMN      R0,#+1
        BNE.N    ??f_puts_1
        MOVS     R0,#-1
        B.N      ??f_puts_3
// 4467     }
// 4468     return n;
??f_puts_2:
        MOVS     R0,R6
??f_puts_3:
        POP      {R4-R6,PC}       ;; return
// 4469 }
// 4470 
// 4471 
// 4472 
// 4473 
// 4474 /*-----------------------------------------------------------------------*/
// 4475 /* Put a formatted string to the file                                    */
// 4476 /*-----------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 4477 int f_printf (
// 4478     FIL *fil,			/* Pointer to the file object */
// 4479     const TCHAR *str,	/* Pointer to the format string */
// 4480     ...					/* Optional arguments... */
// 4481 )
// 4482 {
f_printf:
        PUSH     {R0,R2,R3}
        PUSH     {R0-R11,LR}
        MOVS     R5,R1
// 4483     va_list arp;
// 4484     BYTE f, r;
// 4485     UINT i, j, w;
// 4486     ULONG v;
// 4487     TCHAR c, d, s[16], *p;
// 4488     int res, chc, cc;
// 4489 
// 4490 
// 4491     va_start(arp, str);
        ADD      R7,SP,#+56
// 4492 
// 4493     for (cc = res = 0; cc != EOF; res += cc)
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??f_printf_0
// 4494     {
// 4495         c = *str++;
// 4496         if (c == 0) break;			/* End of string */
// 4497         if (c != '%')  				/* Non escape character */
// 4498         {
// 4499             cc = f_putc(c, fil);
// 4500             if (cc != EOF) cc = 1;
// 4501             continue;
// 4502         }
// 4503         w = f = 0;
// 4504         c = *str++;
// 4505         if (c == '0')  				/* Flag: '0' padding */
// 4506         {
// 4507             f = 1;
// 4508             c = *str++;
// 4509         }
// 4510         else
// 4511         {
// 4512             if (c == '-')  			/* Flag: left justified */
// 4513             {
// 4514                 f = 2;
// 4515                 c = *str++;
// 4516             }
// 4517         }
// 4518         while (IsDigit(c))  		/* Precision */
// 4519         {
// 4520             w = w * 10 + c - '0';
// 4521             c = *str++;
// 4522         }
// 4523         if (c == 'l' || c == 'L')  	/* Prefix: Size is long int */
// 4524         {
// 4525             f |= 4;
// 4526             c = *str++;
// 4527         }
// 4528         if (!c) break;
// 4529         d = c;
// 4530         if (IsLower(d)) d -= 0x20;
// 4531         switch (d)  				/* Type is... */
// 4532         {
// 4533         case 'S' :					/* String */
// 4534             p = va_arg(arp, TCHAR *);
// 4535             for (j = 0; p[j]; j++) ;
// 4536             chc = 0;
// 4537             if (!(f & 2))
// 4538             {
// 4539                 while (j++ < w) chc += (cc = f_putc(' ', fil));
// 4540             }
// 4541             chc += (cc = f_puts(p, fil));
// 4542             while (j++ < w) chc += (cc = f_putc(' ', fil));
// 4543             if (cc != EOF) cc = chc;
// 4544             continue;
// 4545         case 'C' :					/* Character */
// 4546             cc = f_putc((TCHAR)va_arg(arp, int), fil);
// 4547             continue;
// 4548         case 'B' :					/* Binary */
// 4549             r = 2;
// 4550             break;
// 4551         case 'O' :					/* Octal */
// 4552             r = 8;
// 4553             break;
// 4554         case 'D' :					/* Signed decimal */
// 4555         case 'U' :					/* Unsigned decimal */
// 4556             r = 10;
// 4557             break;
// 4558         case 'X' :					/* Hexdecimal */
// 4559             r = 16;
// 4560             break;
// 4561         default:					/* Unknown type (passthrough) */
// 4562             cc = f_putc(c, fil);
// 4563             continue;
// 4564         }
// 4565 
// 4566         /* Get an argument and put it in numeral */
// 4567         v = (f & 4) ? (ULONG)va_arg(arp, long) : ((d == 'D') ? (ULONG)(long)va_arg(arp, int) : (ULONG)va_arg(arp, unsigned int));
// 4568         if (d == 'D' && (v & 0x80000000))
// 4569         {
// 4570             v = 0 - v;
// 4571             f |= 8;
// 4572         }
// 4573         i = 0;
// 4574         do
// 4575         {
// 4576             d = (TCHAR)(v % r);
// 4577             v /= r;
// 4578             if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
// 4579             s[i++] = d + '0';
// 4580         }
// 4581         while (v && i < sizeof(s) / sizeof(s[0]));
// 4582         if (f & 8) s[i++] = '-';
// 4583         j = i;
// 4584         d = (f & 1) ? '0' : ' ';
// 4585         res = 0;
// 4586         while (!(f & 2) && j++ < w) res += (cc = f_putc(d, fil));
// 4587         do res += (cc = f_putc(s[--i], fil));
// 4588         while(i);
// 4589         while (j++ < w) res += (cc = f_putc(' ', fil));
// 4590         if (cc != EOF) cc = res;
??f_printf_1:
        CMN      R0,#+1
        BEQ.N    ??f_printf_2
        MOVS     R0,R4
??f_printf_2:
        ADDS     R4,R0,R4
??f_printf_0:
        CMN      R0,#+1
        BEQ.N    ??f_printf_3
        LDRB     R2,[R5, #+0]
        ADDS     R5,R5,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??f_printf_4
// 4591     }
// 4592 
// 4593     va_end(arp);
// 4594     return (cc == EOF) ? cc : res;
??f_printf_3:
        CMN      R0,#+1
        BNE.W    ??f_printf_5
        B.N      ??f_printf_6
??f_printf_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+37
        BEQ.N    ??f_printf_7
        LDR      R1,[SP, #+52]
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       f_putc
        CMN      R0,#+1
        BEQ.N    ??f_printf_8
        MOVS     R0,#+1
??f_printf_8:
        B.N      ??f_printf_2
??f_printf_7:
        MOVS     R6,#+0
        MOV      R8,R6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R2,[R5, #+0]
        ADDS     R5,R5,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+48
        BNE.N    ??f_printf_9
        MOVS     R8,#+1
        LDRB     R2,[R5, #+0]
        ADDS     R5,R5,#+1
        B.N      ??f_printf_10
??f_printf_9:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+45
        BNE.N    ??f_printf_10
        MOVS     R8,#+2
        LDRB     R2,[R5, #+0]
        ADDS     R5,R5,#+1
        B.N      ??f_printf_10
??f_printf_11:
        MOVS     R1,#+10
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MLA      R1,R1,R6,R2
        SUBS     R6,R1,#+48
        LDRB     R2,[R5, #+0]
        ADDS     R5,R5,#+1
??f_printf_10:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R1,R2,#+48
        CMP      R1,#+10
        BCC.N    ??f_printf_11
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+108
        BEQ.N    ??f_printf_12
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+76
        BNE.N    ??f_printf_13
??f_printf_12:
        ORRS     R8,R8,#0x4
        LDRB     R2,[R5, #+0]
        ADDS     R5,R5,#+1
??f_printf_13:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??f_printf_3
??f_printf_14:
        MOV      R11,R2
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        SUBS     R0,R11,#+97
        CMP      R0,#+26
        BCS.N    ??f_printf_15
        SUBS     R11,R11,#+32
??f_printf_15:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOV      R0,R11
        CMP      R0,#+66
        BEQ.N    ??f_printf_16
        CMP      R0,#+67
        BEQ.N    ??f_printf_17
        CMP      R0,#+68
        BEQ.N    ??f_printf_18
        CMP      R0,#+79
        BEQ.N    ??f_printf_19
        CMP      R0,#+83
        BEQ.N    ??f_printf_20
        CMP      R0,#+85
        BEQ.N    ??f_printf_18
        CMP      R0,#+88
        BEQ.N    ??f_printf_21
        B.N      ??f_printf_22
??f_printf_20:
        LDR      R10,[R7, #+0]
        ADDS     R7,R7,#+4
        MOVS     R9,#+0
        B.N      ??f_printf_23
??f_printf_24:
        ADDS     R9,R9,#+1
??f_printf_23:
        LDRB     R0,[R9, R10]
        CMP      R0,#+0
        BNE.N    ??f_printf_24
        MOVS     R11,#+0
        LSLS     R0,R8,#+30
        BMI.N    ??f_printf_25
        B.N      ??f_printf_26
??f_printf_27:
        LDR      R1,[SP, #+52]
        MOVS     R0,#+32
        BL       f_putc
        ADDS     R11,R0,R11
??f_printf_26:
        MOV      R0,R9
        ADDS     R9,R0,#+1
        CMP      R0,R6
        BCC.N    ??f_printf_27
??f_printf_25:
        LDR      R1,[SP, #+52]
        MOV      R0,R10
        BL       f_puts
        ADDS     R11,R0,R11
        B.N      ??f_printf_28
??f_printf_29:
        LDR      R1,[SP, #+52]
        MOVS     R0,#+32
        BL       f_putc
        ADDS     R11,R0,R11
??f_printf_28:
        MOV      R1,R9
        ADDS     R9,R1,#+1
        CMP      R1,R6
        BCC.N    ??f_printf_29
        CMN      R0,#+1
        BEQ.N    ??f_printf_30
        MOV      R0,R11
??f_printf_30:
        B.N      ??f_printf_2
??f_printf_17:
        MOVS     R0,R7
        ADDS     R7,R0,#+4
        LDR      R1,[SP, #+52]
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       f_putc
        B.N      ??f_printf_2
??f_printf_16:
        MOVS     R0,#+2
??f_printf_31:
        LSLS     R1,R8,#+29
        BPL.N    ??f_printf_32
        LDR      R1,[R7, #+0]
        ADDS     R7,R7,#+4
        B.N      ??f_printf_33
??f_printf_19:
        MOVS     R0,#+8
        B.N      ??f_printf_31
??f_printf_18:
        MOVS     R0,#+10
        B.N      ??f_printf_31
??f_printf_21:
        MOVS     R0,#+16
        B.N      ??f_printf_31
??f_printf_22:
        LDR      R1,[SP, #+52]
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       f_putc
        B.N      ??f_printf_2
??f_printf_32:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+68
        BNE.N    ??f_printf_34
        LDR      R1,[R7, #+0]
        ADDS     R7,R7,#+4
        B.N      ??f_printf_33
??f_printf_34:
        LDR      R1,[R7, #+0]
        ADDS     R7,R7,#+4
??f_printf_33:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+68
        BNE.N    ??f_printf_35
        CMP      R1,#+0
        BPL.N    ??f_printf_35
        RSBS     R1,R1,#+0
        ORRS     R8,R8,#0x8
??f_printf_35:
        MOVS     R10,#+0
??f_printf_36:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UDIV     R3,R1,R0
        MLS      R11,R0,R3,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UDIV     R1,R1,R0
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+10
        BLT.N    ??f_printf_37
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+120
        BNE.N    ??f_printf_38
        MOVS     R3,#+39
        B.N      ??f_printf_39
??f_printf_38:
        MOVS     R3,#+7
??f_printf_39:
        ADDS     R11,R3,R11
??f_printf_37:
        ADDS     R3,R11,#+48
        ADD      R4,SP,#+0
        STRB     R3,[R10, R4]
        ADDS     R10,R10,#+1
        CMP      R1,#+0
        BEQ.N    ??f_printf_40
        CMP      R10,#+16
        BCC.N    ??f_printf_36
??f_printf_40:
        LSLS     R0,R8,#+28
        BPL.N    ??f_printf_41
        MOVS     R0,#+45
        ADD      R1,SP,#+0
        STRB     R0,[R10, R1]
        ADDS     R10,R10,#+1
??f_printf_41:
        MOV      R9,R10
        LSLS     R0,R8,#+31
        BPL.N    ??f_printf_42
        MOVS     R11,#+48
        B.N      ??f_printf_43
??f_printf_42:
        MOVS     R11,#+32
??f_printf_43:
        MOVS     R4,#+0
        B.N      ??f_printf_44
??f_printf_45:
        LDR      R1,[SP, #+52]
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       f_putc
        ADDS     R4,R0,R4
??f_printf_44:
        LSLS     R0,R8,#+30
        BMI.N    ??f_printf_46
        MOV      R0,R9
        ADDS     R9,R0,#+1
        CMP      R0,R6
        BCC.N    ??f_printf_45
??f_printf_46:
        SUBS     R10,R10,#+1
        LDR      R1,[SP, #+52]
        ADD      R0,SP,#+0
        LDRB     R0,[R10, R0]
        BL       f_putc
        ADDS     R4,R0,R4
        CMP      R10,#+0
        BNE.N    ??f_printf_46
??f_printf_47:
        MOV      R1,R9
        ADDS     R9,R1,#+1
        CMP      R1,R6
        BCS.W    ??f_printf_1
        LDR      R1,[SP, #+52]
        MOVS     R0,#+32
        BL       f_putc
        ADDS     R4,R0,R4
        B.N      ??f_printf_47
??f_printf_5:
        MOVS     R0,R4
??f_printf_6:
        ADD      SP,SP,#+16
        POP      {R4-R11}
        LDR      PC,[SP], #+16    ;; return
// 4595 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 4596 
// 4597 #endif /* !_FS_READONLY */
// 4598 #endif /* _USE_STRFUNC */
// 
//    103 bytes in section .bss
//    264 bytes in section .rodata
// 14 026 bytes in section .text
// 
// 14 026 bytes of CODE  memory
//    264 bytes of CONST memory
//    103 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
