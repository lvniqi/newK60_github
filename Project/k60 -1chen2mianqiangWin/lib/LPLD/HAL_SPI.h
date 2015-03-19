/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_SPI.h
 * ��;: SPI�ײ�ģ����غ���
 * ����޸�����: 20120321
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
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

//SPIģ���жϻص���������
typedef void (*SPI_ISR_CALLBACK)(void);
//SPI��ʼ������
uint8 LPLD_SPI_Init(SPIx ,uint8 ,uint8 );
//SPI������д����
uint8 LPLD_SPI_Master_WriteRead(SPIx ,uint8 ,uint8 ,uint8);
//SPI����������
uint8 LPLD_SPI_Master_Read(SPIx);
//SPI����д����
void LPLD_SPI_Master_Write(SPIx ,uint8 ,uint8 ,uint8);

/********************************************************************/
#endif