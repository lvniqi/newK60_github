/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_GPIO.h
 * ��;: GPIO�ײ�ģ����غ���
 * ����޸�����: 20120321
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#ifndef __HAL_GPIO_H__
#define __HAL_GPIO_H__
/********************************************************************/


#define DIR_INPUT       0
#define DIR_OUTPUT      1

#define OUTPUT_L        0
#define OUTPUT_H        1
#define INPUT_PDOWN     0
#define INPUT_PUP       1

#define IRQC_DIS        0x00
#define IRQC_DMARI      0x01
#define IRQC_DMAFA      0x02
#define IRQC_DMAET      0x03
#define IRQC_L          0x08
#define IRQC_RI         0x09
#define IRQC_FA         0x0A
#define IRQC_ET         0x0B
#define IRQC_H          0x0C


typedef void (*GPIO_ISR_CALLBACK)(void);

uint8 LPLD_GPIO_Init(PTx, uint8, uint8, uint8, uint8);
uint8 LPLD_GPIO_SetIsr(PTx, GPIO_ISR_CALLBACK);
uint8 LPLD_GPIO_ClearIsr(PTx);
void LPLD_GPIO_Set(PTx, uint32);
void LPLD_GPIO_Set_b(PTx, uint8, uint8);
void LPLD_GPIO_Toggle(PTx, uint32);
void LPLD_GPIO_Toggle_b(PTx, uint8);
uint32 LPLD_GPIO_Get(PTx);
uint8 LPLD_GPIO_Get_b(PTx, uint8);
void LPLD_GPIO_Isr(void);

#endif /* __HAL_GPIO_H__ */
