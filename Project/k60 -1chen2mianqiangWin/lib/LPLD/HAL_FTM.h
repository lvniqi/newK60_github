/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_FTM.h
 * ��;: FlexTimer�ײ�ģ����غ���
 * ����޸�����: 20120329
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#ifndef __HAL_FTM_H__
#define __HAL_FTM_H__
/********************************************************************/


typedef void (*FTM_ISR_CALLBACK)(void);

uint8 LPLD_FTM0_PWM_Init(uint32 freq);
uint8 LPLD_FTM0_PWM_Open(uint8 channel, uint32 duty);
uint8 LPLD_FTM0_PWM_ChangeDuty(uint8 channel, uint32 duty);

uint8 LPLD_FTM1_PWM_Init(uint32 freq);
uint8 LPLD_FTM1_PWM_Open(uint8 channel, uint32 duty);
uint8 LPLD_FTM1_PWM_ChangeDuty(uint8 channel, uint32 duty);

uint8 LPLD_FTM2_PWM_Init(uint32 freq);
uint8 LPLD_FTM2_PWM_Open(uint8 channel, uint32 duty);
uint8 LPLD_FTM2_PWM_ChangeDuty(uint8 channel, uint32 duty);

uint8 LPLD_FTM0_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func);
uint8 LPLD_FTM1_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func);
uint8 LPLD_FTM2_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func);

void LPLD_FTM_Isr(void);

#endif /* __HAL_FTM_H__ */