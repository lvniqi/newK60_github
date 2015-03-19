/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_FLASH.h
 * ��;: ��������K60 FLASH
 * ����޸�����: 20120730
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */

#ifndef _HAL_FLASH_H_
#define _HAL_FLASH_H_
#include "common.h"

/* ������붨�� */
#define FLASH_OK                    0x00
#define FLASH_FACCERR               0x01
#define FLASH_FPVIOL                0x02
#define FLASH_MGSTAT0               0x04
#define FLASH_RDCOLERR              0x08
#define FLASH_NOT_ERASED            0x10
#define FLASH_CONTENTERR            0x11

/* flash���� */
#define FLASH_CMD_PGM4              0x06      //��̳�������
#define FLASH_CMD_ERSSCR            0x09      //����Flash��������


void LPLD_Flash_Init(void);
uint8 LPLD_Flash_SectorErase(uint32);
uint8 LPLD_Flash_ByteProgram(uint32, uint32*, uint32);

#endif /*_FLASH_FTFL_H_*/

