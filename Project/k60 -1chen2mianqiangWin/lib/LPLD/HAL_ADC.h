/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_ADC.h
 * ��;: ADC�ײ�ģ����غ���
 * ����޸�����: 20120323
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#ifndef __HAL_ADC_H__
#define __HAL_ADC_H__
/********************************************************************/

typedef void (*ADC_ISR_CALLBACK)(void);


#include "adc16.h"     //��Ҫ���ùٷ������е�adc��غ���
#define CONV_SING       0
#define CONV_DIFF       1  

//����ADC�¼�
enum
{
  ADC_INT_DISABLE = 0x01, //ADC�жϽ�ֹ
  ADC_INT_ENABLE  = 0x02,  //ADC�ж�ʹ��
  ADC_DMA_DISABLE = 0x04, //ADC DMA�����ֹ
  ADC_DMA_ENABLE  = 0x08 //ADC DMA����ʹ��
};

uint8 LPLD_ADC_Init(ADCx, uint8, uint8);
uint16 LPLD_ADC_SE_Get(ADCx, uint8);
void LPLD_ADC_SetHWTrg(ADCx);
uint8_t LPLD_ADC_Channel_Init(ADCx,uint8_t,uint8_t,ADC_ISR_CALLBACK);
#endif /* __HAL_ADC_H__ */