/*
 * --------------"拉普兰德K60底层库"-----------------
 *
 * 测试硬件平台:LPLD_K60 Card
 * 版权所有:北京拉普兰德电子技术有限公司
 * 网络销售:http://laplenden.taobao.com
 * 公司门户:http://www.lpld.cn
 *
 * 文件名: HAL_FLASH.c
 * 用途: 用于配置K60 FLASH
 * 最后修改日期: 20120730
 *
 * 开发者使用协议:
 *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
 *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
 *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
 */

#include "HAL_FLASH.h"


//Flash命令宏定义，内部使用
#define   RD1BLK    0x00   // 读整块Flash
#define   RD1SEC    0x01   // 读整个扇区
#define   PGMCHK    0x02   // 写入检查
#define   RDRSRC    0x03   // 读目标数据
#define   PGM4      0x06   // 写入长字
#define   ERSBLK    0x08   // 擦除整块Flash
#define   ERSSCR    0x09   // 擦除Flash扇区
#define   PGMSEC    0x0B   // 写入扇区
#define   RD1ALL    0x40   // 读所有的块
#define   RDONCE    0x41   // 只读一次
#define   PGMONCE   0x43   // 只写一次
#define   ERSALL    0x44   // 擦除所有块
#define   VFYKEY    0x45   // 验证后门访问钥匙
#define   PGMPART   0x80   // 写入分区
#define   SETRAM    0x81   // 设定FlexRAM功能


//=================内部函数实现=============================================

//==========================================================================
//函数名称：flash_cmd_launch
//函数返回：0-成功 1-失败
//参数说明：无
//功能概要：启动Flash命令
//==========================================================================
__ramfunc static uint32 flash_cmd_launch(void)
{
    
    FTFL_FSTAT = 	(0
				  	|	FTFL_FSTAT_CCIF_MASK 		// 启动命令
					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
					);	
    									
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成

    // 检查错误标志
    if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        return 1 ; 				//执行命令出错
  
    return 0; 					//执行命令成功
}

//===========================================================================

//=================外部接口函数==============================================
//==========================================================================
//函数名称：flash_init
//函数返回：无
//参数说明：无
//功能概要：初始化flash模块
//==========================================================================
__ramfunc void flash_init(void)
{
	// 清除Flash预读取缓冲区
    FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
    FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
    
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
    
	FTFL_FSTAT = 	(0
					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
					);	
}

//==========================================================================
//函数名称：flash_erase_sector
//函数返回：函数执行执行状态：0=正常；非0=异常。
//参数说明：sectorNo：扇区号（K60N512实际使用0~255）
//功能概要：擦除指定flash扇区
//==========================================================================
__ramfunc uint8 flash_erase_sector(uint16 sectorNo)
{
    Dtype	addr;	
	addr.DW = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
    
    //dest.word    = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 

    // 设置擦除命令
    FTFL_FCCOB0 = ERSSCR; // 擦除扇区命令
    
    // 设置目标地址
    FTFL_FCCOB1 = addr.B[2];
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];
    
    // 执行命令序列
    if(1 == flash_cmd_launch())    //若执行命令出现错误
        return 1;     //擦除命令错误
   
    // 若擦除sector0时，则解锁设备
    if(sectorNo ==0)
    {
        // 写入4字节
        FTFL_FCCOB0 = PGM4; 
        // 设置目标地址
        FTFL_FCCOB1 = 0x00;
        FTFL_FCCOB2 = 0x04;
        FTFL_FCCOB3 = 0x0C;
        // 数据
        FTFL_FCCOB4 = 0xFF;
        FTFL_FCCOB5 = 0xFF;
        FTFL_FCCOB6 = 0xFF;
        FTFL_FCCOB7 = 0xFE;
        // 执行命令序列
        if(1 == flash_cmd_launch())  //若执行命令出现错误
            return 2;   //解锁命令错误
    }  
    
    return 0;  //成功返回
}

//==========================================================================
//函数名称：flash_write
//函数返回：函数执行状态：0=正常；非0=异常。
//参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//         offset:写入扇区内部偏移地址（0~2043）
//         cnt：写入字节数目（0~2043）
//         buf：源数据缓冲区首地址
//功能概要：flash写入操作
//==========================================================================
__ramfunc uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
{
	Dtype	addr;	
    Dtype	Data;
	
	ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
									//此处提示警告，但是安全的……
	ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
									//此处提示警告，但是安全的……
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
	Data.DW	= data;	
	    
    FTFL_FCCOB0 = PGM4;				// 设置写入命令

	FTFL_FCCOB1 = addr.B[2];		// 设置目标地址
	FTFL_FCCOB2 = addr.B[1];
	FTFL_FCCOB3 = addr.B[0];


	FTFL_FCCOB4 = Data.B[3];        // 设置写入数据
	FTFL_FCCOB5 = Data.B[2];
	FTFL_FCCOB6 = Data.B[1];
	FTFL_FCCOB7 = Data.B[0];
	
	if(1 == flash_cmd_launch()) 	return 2;  //写入命令错误

    return 0;  //成功执行
}


//==========================================================================
//函数名称：flash_write
//函数返回：函数执行状态：0=正常；非0=异常。
//参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//         offset:写入扇区内部偏移地址（0~2043）
//         cnt：写入字节数目（0~2043）
//         buf：源数据缓冲区首地址
//功能概要：flash写入操作
//==========================================================================
__ramfunc uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
{
    uint32 size;
 
	Dtype	addr;	
    
	ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
									//此处提示警告，但是安全的……
	ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
									//此处提示警告，但是安全的……
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
	
    // 设置写入命令
    FTFL_FCCOB0 = PGM4;

    for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
    {
        
        FTFL_FCCOB1 = addr.B[2];						// 设置目标地址
        FTFL_FCCOB2 = addr.B[1];
        FTFL_FCCOB3 = addr.B[0];
 
        FTFL_FCCOB4 = buf[3];							// 拷贝数据
        FTFL_FCCOB5 = buf[2];
        FTFL_FCCOB6 = buf[1];
        FTFL_FCCOB7 = buf[0];
        
        if(1 == flash_cmd_launch()) 
            return 2;  									//写入命令错误
    }
    
    return 0;  //成功执行
}




//==========================================================================
