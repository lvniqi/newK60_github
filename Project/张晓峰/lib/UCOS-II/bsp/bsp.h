
/*
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: bsp.h
 * ��;: ����UCOSϵͳ��BSP���弶֧�ְ�������
 * ����޸�����: 20120715
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#ifndef __BSP_H__
#define __BSP_H__
#include "common.h"

#include "bsp_int.h"

void LPLD_uCOS_bsp_Init(void);
void LPLD_uCOS_Register_K60Int(CPU_FNCT_VOID handler, uint32_t int_id);

#endif