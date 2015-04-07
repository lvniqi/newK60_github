/******************************************************************************

          版权所有 (C), 2011-2012, 信意电子科技(http://xydz123.taobao.com/)

 ******************************************************************************
  文 件 名   : oled.h
  版 本 号   : v1.0
  作    者   : Guokaiyi
  生成日期   : 2012-11-12
  最近修改   : 
  功能描述   : oled.c 的头文件
  修改历史   :
  1.日    期   : 2012-11-12
    作    者   : Guokaiyi
    修改内容   : 创建文件

******************************************************************************/
#ifndef __OLED_H__
#define __OLED_H__

/*----------------------------------------------------------------------------*
 * 宏定义                                                                     *
 *----------------------------------------------------------------------------*/
 
//#define OLED_PORT				PBout(24) //PD6输出 片选信号
#define OLED_DC  				PBout(23) //PD3输出 命令/数据信号
#define OLED_RST 				PBout(22) //PG15输出 复位信号 这里复位信号端口自己配置即可~~
#define OLED_SDA 				PBout(21) //PC1输出 串行输出信号
#define OLED_SCL 				PBout(20) //PC0输出 串行时钟信号

#define OLED_IMAGE_WHITE       1
#define OLED_IMAGE_BLACK       0

#define OLED_MAX_ROW_NUM      64
#define OLED_MAX_COLUMN_NUM  128

/*----------------------------------------------------------------------------*
 * 全局变量                                                                   *
 *----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*
 * 内部函数原型                                                               *
 *----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*
 * 外部函数原型                                                               *
 *----------------------------------------------------------------------------*/
extern void OLED_CLS(void); 
extern void OLED_Init(void);
extern void OLED_SetPos(unsigned char ucIdxX, unsigned char ucIdxY); 
extern void OLED_P6x8Char(unsigned char ucIdxX,unsigned char ucIdxY,unsigned char ucData);
extern void OLED_P6x8Str(unsigned char ucIdxX,unsigned char ucIdxY,unsigned char ucDataStr[]);
//extern void OLED_P8x16Str(unsigned char ucIdxX,unsigned char ucIdxY,unsigned char ucDataStr[]);
//extern void OLED_P14x16Str(unsigned char ucIdxX,unsigned char ucIdxY,unsigned char ucDataStr[]);
//extern void OLED_PXx16MixStr(unsigned char ucIdxX, unsigned char ucIdxY, unsigned char ucDataStr[]);
extern void OLED_Fill(unsigned char ucData);
//extern void OLED_PrintChar(unsigned char ucIdxX, unsigned char ucIdxY, char cData);
extern void OLED_PrintShort(unsigned char ucIdxX, unsigned char ucIdxY, short int sData);
//extern void OLED_PrintImage(unsigned char *pucTable, unsigned short usRowNum, unsigned short int usColumnNum);
extern void get(int x,int y,int z,int z1,int p);

/**
 *修改团队：追魂者
 *修改内容：显示ad值和修改ad值
*/
extern void PrintParemeter(void);
extern void ChangeParemeter(void);
extern void OLED_CLS_ROW(unsigned char ucPage);

#endif

