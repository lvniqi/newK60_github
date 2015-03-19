/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_I2C.h
 * ��;: I2C�ײ�ģ����غ���
 * ����޸�����: 20120402
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */

#ifndef __HAL_I2C_H__
#define __HAL_I2C_H__
/********************************************************************/

#define I2C_SCL_50KHZ                   0
#define I2C_SCL_100KHZ                  1
#define I2C_SCL_150KHZ                  2
#define I2C_SCL_200KHZ                  3
#define I2C_SCL_250KHZ                  4
#define I2C_SCL_300KHZ                  5

#define I2C_ACK_OFF                     0
#define I2C_ACK_ON                      1

#define I2C_MWSR                        0x00  //���豸д
#define I2C_MRSW                        0x01  //���豸��

#define LPLD_I2C_MWSR                   I2C_MWSR  
#define LPLD_I2C_MRSW                   I2C_MRSW  

uint8 LPLD_I2C_Init(I2Cx, uint8, uint8);
void LPLD_I2C_Start(I2Cx);
void LPLD_I2C_Stop(I2Cx);
void LPLD_I2C_WaitAck(I2Cx, uint8);
void LPLD_I2C_ReStart(I2Cx);
void LPLD_I2C_Write(I2Cx, uint8);
uint8 LPLD_I2C_Read(I2Cx);
void LPLD_I2C_SetMasterWR(I2Cx, uint8);
void LPLD_I2C_StartTrans(I2Cx, uint8, uint8);

#endif /* __HAL_I2C_H__ */
