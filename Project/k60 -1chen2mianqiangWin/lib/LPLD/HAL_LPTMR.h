/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_LPTMR.h
 * ��;: LPTMR�ײ�ģ����غ���
 * ����޸�����: 20120326
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#ifndef __HAL_LPTMR_H__
#define __HAL_LPTMR_H__
/********************************************************************/

#define LPTMR_ALT1    1
#define LPTMR_ALT2    2

#define MODE_LPTMR    0 
#define MODE_PLACC    1

#define IRQ_DISABLE   0
#define IRQ_ENABLE    1

typedef void (*LPTMR_ISR_CALLBACK)(void);

uint8 LPLD_LPTMR_Init(uint8 mode, uint16 period_ms, uint8 channel, uint8 irqc, LPTMR_ISR_CALLBACK func);
uint16 LPLD_LPTMR_GetPulseAcc(void);
void LPLD_LPTMR_DelayMs(uint16 period_ms);
void LPLD_LPTMR_Reset(void);
void LPLD_LPTMR_Isr(void);

#endif /* __HAL_LPTMR_H__ */
