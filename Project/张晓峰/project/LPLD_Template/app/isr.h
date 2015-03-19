/*
 * ����Ӳ��ƽ̨:  LPLD_K60 Card
 * ��Ȩ����:      �����������µ��Ӽ������޹�˾
 * ��������:      http://laplenden.taobao.com
 * ��˾�Ż�:      http://www.lpld.cn
 *
 * ˵��:    �����̻���Kintis K60��Դ�ײ㿪����������
 *          ���п�Դ�����������"LPLD"�ļ����£�����˵�����ĵ�[#LPLD-003-N]
 *
 * �ļ���:  isr.h
 * ��;:    �����жϷ����ӳ��򣬸�ͷ�ļ������������жϺ�����Ϊ�ײ��жϺ�����
 *	    �����ż���������ο��ĵ�[#LPLD-003-N]������ײ�ģ��".h"ͷ�ļ���
 * ע��:   ��ͷ�ļ�ֻ�ܱ�"vectors.c"��������
 *
 */


#ifndef __ISR_H
#define __ISR_H 1


/* �����ײ��жϷ����ӳ��� */
#undef  VECTOR_016
#define VECTOR_016 DMA_CH0_Handler
#undef  VECTOR_026
#define VECTOR_026 DMA_CH10_Handler
#undef  VECTOR_084
#define VECTOR_084 LPLD_PIT_Isr
#undef  VECTOR_085
#define VECTOR_085 LPLD_PIT_Isr
#undef  VECTOR_086
#define VECTOR_086 LPLD_PIT_Isr
#undef  VECTOR_087
#define VECTOR_087 LPLD_PIT_Isr

extern void LPLD_PIT_Isr(void);
extern void DMA_CH0_Handler();            //DMA0�����жϷ�����
extern void DMA_CH10_Handler();           //DMA10�����жϷ�����

#endif  //__ISR_H

/* End of "isr.h" */
