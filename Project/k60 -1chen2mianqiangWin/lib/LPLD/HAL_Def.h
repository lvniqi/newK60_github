/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_Def.h
 * ��;: LPLD Kinetis������ͨ�ö�������
 * ����޸�����: 20121112
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#ifndef __HAL_DEF_H__
#define __HAL_DEF_H__

//�ײ��汾����
#define OSKinetis_Version     2.2

/*
 * GPIOģ��
 *
 */
typedef enum PTx
{
  PTA,
  PTB,
  PTC,
  PTD,
  PTE
}PTx;

/*
 * ADCģ��
 *
 */
typedef enum ADCx
{
  ADC0,
  ADC1
}ADCx;



/*
 * DACģ��
 *
 */
typedef enum DACx
{
  DAC0,
  DAC1
}DACx;


/*
 * PITģ��
 *
 */
typedef enum PITx
{
  PIT0,
  PIT1,
  PIT2,
  PIT3
}PITx;


/*
 * FTMģ��
 *
 */
typedef enum FTMx
{
  FTM0,
  FTM1,
  FTM2
}FTMx;


/*
 * UARTģ��
 *
 */
typedef enum UARTx
{
  UART0,
  UART1,
  UART2,
  UART3,
  UART4,
  UART5
}UARTx;


/*
 * CANģ��
 *
 */
typedef enum CANx
{
  CAN0,
  CAN1
}CANx;


/*
 * I2Cģ��
 *
 */
typedef enum I2Cx
{
  I2C0,
  I2C1
}I2Cx;


/*
 * SPIģ��
 *
 */
typedef enum SPIx
{
  SPI0,
  SPI1,
  SPI2
}SPIx;


#endif /* __HAL_DEF_H__ */