/******************************************************************************

          ��Ȩ���� (C), 2011-2012, ������ӿƼ�(http://xydz123.taobao.com/)

 ******************************************************************************
  �� �� ��   : oled.h
  �� �� ��   : v1.0
  ��    ��   : Guokaiyi
  ��������   : 2012-11-12
  ����޸�   : 
  ��������   : oled.c ��ͷ�ļ�
  �޸���ʷ   :
  1.��    ��   : 2012-11-12
    ��    ��   : Guokaiyi
    �޸�����   : �����ļ�

******************************************************************************/
#ifndef __OLED_H__
#define __OLED_H__

/*----------------------------------------------------------------------------*
 * �궨��                                                                     *
 *----------------------------------------------------------------------------*/
 
//#define OLED_PORT				PBout(24) //PD6��� Ƭѡ�ź�
#define OLED_DC  				PBout(23) //PD3��� ����/�����ź�
#define OLED_RST 				PBout(22) //PG15��� ��λ�ź� ���︴λ�źŶ˿��Լ����ü���~~
#define OLED_SDA 				PBout(21) //PC1��� ��������ź�
#define OLED_SCL 				PBout(20) //PC0��� ����ʱ���ź�

#define OLED_IMAGE_WHITE       1
#define OLED_IMAGE_BLACK       0

#define OLED_MAX_ROW_NUM      64
#define OLED_MAX_COLUMN_NUM  128

/*----------------------------------------------------------------------------*
 * ȫ�ֱ���                                                                   *
 *----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*
 * �ڲ�����ԭ��                                                               *
 *----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------*
 * �ⲿ����ԭ��                                                               *
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
 *�޸��Ŷӣ�׷����
 *�޸����ݣ���ʾadֵ���޸�adֵ
*/
extern void PrintParemeter(void);
extern void ChangeParemeter(void);
extern void OLED_CLS_ROW(unsigned char ucPage);

#endif

