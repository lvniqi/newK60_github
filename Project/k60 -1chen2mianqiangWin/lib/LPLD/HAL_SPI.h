/*
 * --------------"拉普兰德K60底层库"-----------------
 *
 * 测试硬件平台:LPLD_K60 Card
 * 版权所有:北京拉普兰德电子技术有限公司
 * 网络销售:http://laplenden.taobao.com
 * 公司门户:http://www.lpld.cn
 *
 * 文件名: HAL_SPI.h
 * 用途: SPI底层模块相关函数
 * 最后修改日期: 20120321
 *
 * 开发者使用协议:
 *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
 *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
 *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
 */
#ifndef __HAL_SPI_H__
#define __HAL_SPI_H__
/********************************************************************/
#include"common.h"

#define SPI_SCK_DIV_2        (0)
#define SPI_SCK_DIV_4        (1)
#define SPI_SCK_DIV_6        (2)
#define SPI_SCK_DIV_8        (3)
#define SPI_SCK_DIV_16       (4)
#define SPI_SCK_DIV_32       (5)
#define SPI_SCK_DIV_64       (6)
#define SPI_SCK_DIV_128      (7)
#define SPI_SCK_DIV_256      (8)
#define SPI_SCK_DIV_512      (9)
#define SPI_SCK_DIV_1024     (10)
#define SPI_SCK_DIV_2048     (11)
#define SPI_SCK_DIV_4096     (12)
#define SPI_SCK_DIV_8192     (13)
#define SPI_SCK_DIV_16384    (14
#define SPI_SCK_DIV_32768    (15)

#define SPI_PCS0             (1)
#define SPI_PCS1             (2)
#define SPI_PCS2             (4)
#define SPI_PCS3             (8)
#define SPI_PCS4             (16)
#define SPI_PCS5             (32)

#define SPI_PCS_ASSERTED     (0x01)
#define SPI_PCS_INACTIVE     (0x00)

//SPI模块中断回调函数类型
typedef void (*SPI_ISR_CALLBACK)(void);
//SPI初始化函数
uint8 LPLD_SPI_Init(SPIx ,uint8 ,uint8 );
//SPI主机读写函数
uint8 LPLD_SPI_Master_WriteRead(SPIx ,uint8 ,uint8 ,uint8);
//SPI主机读函数
uint8 LPLD_SPI_Master_Read(SPIx);
//SPI主机写函数
void LPLD_SPI_Master_Write(SPIx ,uint8 ,uint8 ,uint8);

/********************************************************************/
#endif