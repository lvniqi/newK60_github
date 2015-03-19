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
#ifndef __HAL_DAC_H__
#define __HAL_DAC_H__
#include "common.h"

typedef void (*DAC_ISR_CALLBACK)(void);

//���� BUFFER ʹ��
#define BUFFER_DISABLE          0x00 //��������ָ�����
#define BUFFER_ENABLE           0x01 //��������ָ��ʹ��
//���� TRIGER MODE ����ģʽ
#define TRIGER_MODE_NONE        0x00 //�޴���ģʽ
#define TRIGER_MODE_SOFTWARE    0x01 //�������ģʽ
#define TRIGER_MODE_HARDWARE    0x02 //Ӳ������ģʽ
//���� Buffer MODE ����ģʽ
#define BUFFER_MODE_NORMAL      0x00 //����������ģʽ
#define BUFFER_MODE_SWING       0x01 //������SWINGģʽ
#define BUFFER_MODE_ONETIMESCAN 0x02 //������ONETIMESCANģʽ
//���� WATER MARK MODE ����ģʽ
#define WATER_MODE_1WORD        0x00 //1����
#define WATER_MODE_2WORD        0x01 //2����
#define WATER_MODE_3WORD        0x02 //3����
#define WATER_MODE_4WORD        0x03 //4����

//���� DAC�ж�ѡ��
#define DAC_IRQ_DISABLE         0x00 //�ر��ж�
#define DAC_IRQ_POINTER_BOTTOM  0x01 //�������ָ��ָ���ʱ�����ж�
#define DAC_IRQ_POINTER_TOP     0x02 //�������ָ��ָ��ʱ�����ж�
#define DAC_IRQ_WATER_MARK      0x03 //�ﵽˮӡ���õ���ʱ�����ж�

typedef struct 
{
  DACx dacx;                  //����DACģ���
  
  uint8 Water_Mark_Mode;      //ѡ��ˮӡģʽ������
  
  uint8 Buffer_Enable;        //����buffer������ʹ��
  
  uint8 Buffer_Mode;          //����buffer��������ģʽ
  
  uint8 Triger_Mode;          //���ô���ģʽ
  
  uint8 Buffer_Init_Pos;      //����buffer����������ʼλ��
  
  uint8 Buffer_Up_Limit;      //����buffer����������󳤶�
  
  uint8 DAC_irqc;             //ѡ��DACģ���ж�
  
  DAC_ISR_CALLBACK isr_func;  //���ûص�����
  
}LPLD_DAC_Cfg_t;


//DAC��ʼ���������ڴ˺���������Ĭ��ֵ
uint8 LPLD_DAC_Init(LPLD_DAC_Cfg_t *);
//DAC��λ�Ĵ�������
void LPLD_DAC_Reset_Reg(DACx);
//DAC���û��������ݺ���
void LPLD_DAC_Set_Buffer(DACx,uint8,uint16);
//DAC�����������
void LPLD_DAC_Soft_Trig(DACx);
//DAC�жϷ�����
void LPLD_DAC_Isr(void);

#endif