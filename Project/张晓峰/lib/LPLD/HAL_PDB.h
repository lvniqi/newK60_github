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
#ifndef __HAL_PDB_H__
#define __HAL_PDB_H__
#include "common.h"


//PDB �õ��ĺ궨��
#define PDB0       (0)
#define PDB1       (1)
//���崥��ģʽ
#define TRIGER_IN0      (0)
#define TRIGER_IN1      (1)
#define TRIGER_IN2      (2)
#define TRIGER_IN3      (3)
#define TRIGER_IN4      (4)
#define TRIGER_IN5      (5)
#define TRIGER_IN6      (6)
#define TRIGER_IN7      (7)
#define TRIGER_IN8      (8)
#define TRIGER_IN9      (9)
#define TRIGER_IN10     (10)
#define TRIGER_IN11     (11)
#define TRIGER_IN12     (12)
#define TRIGER_IN13     (13)
#define TRIGER_IN14     (14)
#define SOFTWARE_TRIGER (15)
//����LDMOD����ģʽ
#define LDMOD0       (0)
#define LDMOD1       (1)
#define LDMOD2       (2)
#define LDMOD3       (3)
//����Work_mode PDB����ģʽ
#define PDB_ONESHOT  (0)
#define PDB_CONTINUE (1)
//����PDB�Ƿ���DMA����
#define PDB_DMA_OFF  (0)
#define PDB_DMA_ON   (1)
//����PDB����״̬
#define PDB_STOP      (0)
#define PDB_OPERATION (1)

#define PDB_PRESC_1       (0)
#define PDB_PRESC_2       (1)
#define PDB_PRESC_4       (2)
#define PDB_PRESC_8       (3)
#define PDB_PRESC_16      (4)
#define PDB_PRESC_32      (5)
#define PDB_PRESC_64      (6)
#define PDB_PRESC_128     (7)

#define PDB_MULT_1        (0)
#define PDB_MULT_10       (1)
#define PDB_MULT_20       (2)
#define PDB_MULT_40       (3)

#define PDB_PRECH_DIS     (0)
#define PDB_PRECH_EN0     (1)
#define PDB_PRECH_EN1     (2)

#define PDB_PREBB_DIS     (0)
#define PDB_PREBB_EN0     (1)
#define PDB_PREBB_EN1     (2)

#define PDB_EXTRG_DIS     (0)
#define PDB_EXTRG_EN      (1)

//PDBģ���жϻص���������
typedef void (*PDB_ISR_CALLBACK)(void);

//PDBģ�鿪����������
void LPLD_PDB_SetUp(uint8 isPDB_Operate);
//PDBģ���ʼ������
uint8 LPLD_PDB_Init(uint8,uint8,uint16 ,uint8,uint8,uint8,uint8);
//PDB DAC���ڴ������ú���
void LPLD_PDB_DAC_Interval_Congfig(DACx,uint16,uint8);
//PDB ADC���ڴ������ú���
void LPLD_PDB_ADC_Trigger_Congfig(ADCx, uint16*, uint8, uint8);
//PDB ��ʱ�жϺ���
void LPLD_PDB_SetDelayIsr(uint16,PDB_ISR_CALLBACK);
//PDB ��ʱ����
void LPLD_PDB_Delay(uint16);
//PDB�жϷ�����
void LPLD_PDB_Isr(void);
#endif