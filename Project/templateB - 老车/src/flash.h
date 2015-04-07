#ifndef __FLASH_H
#define __FLASH_H

#include "head.h"

#define		flash_read(sectorNo,offset,type)		(*(type *)((u32)(((sectorNo)<<11) + (offset))))

extern void Flash_init(void); //flash ��ʼ��
extern u8 Flash_erase_sector(u16 sectorNo); //flash ��������

extern u8 Flash_read(u16 sectNo,u16 offset,u16 cnt,u8*bBuf); //flash ��ȡ����
extern u8 MyFlash_read(u16 sectNo,u16 offset); //flash ��ȡ��������

extern u8 Flash_write(u16 sectNo,u16 offset,u16 cnt,u8 buf[]); //flash д������
extern u8 MyFlash_write(u16 sectNo,u16 offset,u32 data); //flash д�뵥������

extern u32 Flash_cmd_launch(void); //flash ����ִ��

#endif //__FLASH_H
