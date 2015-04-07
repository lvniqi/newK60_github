#ifndef __FLASH_H
#define __FLASH_H

#include "head.h"

#define		flash_read(sectorNo,offset,type)		(*(type *)((u32)(((sectorNo)<<11) + (offset))))

extern void Flash_init(void); //flash 初始化
extern u8 Flash_erase_sector(u16 sectorNo); //flash 擦除扇区

extern u8 Flash_read(u16 sectNo,u16 offset,u16 cnt,u8*bBuf); //flash 读取数据
extern u8 MyFlash_read(u16 sectNo,u16 offset); //flash 读取单个数据

extern u8 Flash_write(u16 sectNo,u16 offset,u16 cnt,u8 buf[]); //flash 写入数据
extern u8 MyFlash_write(u16 sectNo,u16 offset,u32 data); //flash 写入单个数据

extern u32 Flash_cmd_launch(void); //flash 命令执行

#endif //__FLASH_H
