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
//PITģ���жϷ�����
#undef  VECTOR_084
#define VECTOR_084 LPLD_PIT_Isr
#undef  VECTOR_085
#define VECTOR_085 LPLD_PIT_Isr
#undef  VECTOR_086
#define VECTOR_086 LPLD_PIT_Isr
#undef  VECTOR_087
#define VECTOR_087 LPLD_PIT_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_PIT_Isr(void);
//DMAģ���жϷ�����
#undef  VECTOR_016
#define VECTOR_016 LPLD_DMA_Isr
#undef  VECTOR_017
#define VECTOR_017 LPLD_DMA_Isr
#undef  VECTOR_018
#define VECTOR_018 LPLD_DMA_Isr
#undef  VECTOR_019
#define VECTOR_019 LPLD_DMA_Isr
#undef  VECTOR_020
#define VECTOR_020 LPLD_DMA_Isr
#undef  VECTOR_021
#define VECTOR_021 LPLD_DMA_Isr
#undef  VECTOR_022
#define VECTOR_022 LPLD_DMA_Isr
#undef  VECTOR_023
#define VECTOR_023 LPLD_DMA_Isr
#undef  VECTOR_024
#define VECTOR_024 LPLD_DMA_Isr
#undef  VECTOR_025
#define VECTOR_025 LPLD_DMA_Isr
#undef  VECTOR_026
#define VECTOR_026 LPLD_DMA_Isr
#undef  VECTOR_027
#define VECTOR_027 LPLD_DMA_Isr
#undef  VECTOR_028
#define VECTOR_028 LPLD_DMA_Isr
#undef  VECTOR_029
#define VECTOR_029 LPLD_DMA_Isr
#undef  VECTOR_030
#define VECTOR_030 LPLD_DMA_Isr
#undef  VECTOR_031
#define VECTOR_031 LPLD_DMA_Isr
#undef  VECTOR_032
#define VECTOR_032 LPLD_DMA_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_DMA_Isr(void);

#endif  //__ISR_H

/* End of "isr.h" */
