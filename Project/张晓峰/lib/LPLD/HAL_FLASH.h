/*
 * --------------"拉普兰德K60底层库"-----------------
 *
 * 测试硬件平台:LPLD_K60 Card
 * 版权所有:北京拉普兰德电子技术有限公司
 * 网络销售:http://laplenden.taobao.com
 * 公司门户:http://www.lpld.cn
 *
 * 文件名: HAL_FLASH.h
 * 用途: 用于配置K60 FLASH									   a
 * 最后修改日期: 20120730
 *
 * 开发者使用协议:
 *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
 *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
 *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
 */


#ifndef _FLASH_H_
#define _FLASH_H_

//k60N512包含512K的程序Flash
//512K的程序Flash分为256个扇区，每个扇区2K大小
//K60X256包含256K的程序Flash
//512K的程序Flash分为128个扇区，每个扇区2K大小
//    sector（2K）为擦除最小单位
//    长字（32b）为写的最小单位

#include "common.h"


__ramfunc	void 	flash_init();																				//擦除指定flash扇区

__ramfunc 	uint8 	flash_erase_sector	(uint16 sectorNo);														//擦除指定flash扇区
__ramfunc 	uint8 	flash_write			(uint16 sectorNo,uint16 offset,uint32 data);							//写入flash操作
__ramfunc 	uint8 	flash_write_buf		(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[]);					//从缓存区写入flash操作

#define		flash_read(sectorNo,offset,type)		(*(type *)((uint32)(((sectorNo)<<11) + (offset))))			//读取扇区
#endif //_FLASH_H_ 

