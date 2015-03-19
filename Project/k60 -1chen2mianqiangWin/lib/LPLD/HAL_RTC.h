/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_RTC.h
 * ��;: RTC�ײ�ģ����غ���
 * ����޸�����: 20120621
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#ifndef __HAL_RTC_H__
#define __HAL_RTC_H__


#define RTC_INT_DIS           0
#define RTC_INT_INVALID       1
#define RTC_INT_OVERFLOW      2
#define RTC_INT_ALARM         4


typedef void (*RTC_ISR_CALLBACK)(void);

//RTC��ʼ������
uint8 LPLD_RTC_Init(uint32, uint32,uint8, RTC_ISR_CALLBACK);
//RTC���ʵʱ���������
uint32 LPLD_RTC_GetRealTime(void);
//RTC�رպ���
void LPLD_RTC_Stop(void);
//RTC�������ñ����Ĵ�������
void LPLD_RTC_Alarm(uint32);
//RTC�������������������
void LPLD_RTC_Seconds(uint32);
//RTC�жϷ�����
void LPLD_RTC_Isr(void);

#endif