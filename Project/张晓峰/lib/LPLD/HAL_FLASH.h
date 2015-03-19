/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_FLASH.h
 * ��;: ��������K60 FLASH									   a
 * ����޸�����: 20120730
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */


#ifndef _FLASH_H_
#define _FLASH_H_

//k60N512����512K�ĳ���Flash
//512K�ĳ���Flash��Ϊ256��������ÿ������2K��С
//K60X256����256K�ĳ���Flash
//512K�ĳ���Flash��Ϊ128��������ÿ������2K��С
//    sector��2K��Ϊ������С��λ
//    ���֣�32b��Ϊд����С��λ

#include "common.h"


__ramfunc	void 	flash_init();																				//����ָ��flash����

__ramfunc 	uint8 	flash_erase_sector	(uint16 sectorNo);														//����ָ��flash����
__ramfunc 	uint8 	flash_write			(uint16 sectorNo,uint16 offset,uint32 data);							//д��flash����
__ramfunc 	uint8 	flash_write_buf		(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[]);					//�ӻ�����д��flash����

#define		flash_read(sectorNo,offset,type)		(*(type *)((uint32)(((sectorNo)<<11) + (offset))))			//��ȡ����
#endif //_FLASH_H_ 

