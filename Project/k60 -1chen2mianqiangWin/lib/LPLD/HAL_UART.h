/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_UART.c
 * ��;: UART�ײ�ģ����غ���
 * ����޸�����: 20120330
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
*/


#ifndef __HAL_UART_H__
#define __HAL_UART_H__

//UARTģ���жϻص���������
typedef void (*UART_ISR_CALLBACK)(void);

//UART��ʼ��
void LPLD_UART_Init(UARTx, int);
//UART��ȡһ���ַ�
char LPLD_UART_GetChar(UARTx);
//UART����һ���ַ�
void LPLD_UART_PutChar(UARTx, char );
//UART�����ַ�����
void LPLD_UART_PutCharArr(UARTx, char*, int);
//UART�����ж�ʹ��
void LPLD_UART_RIE_Enable(UARTx, UART_ISR_CALLBACK);
//UART�����жϽ���
void LPLD_UART_RIE_Disable(UARTx uartx);
//UART�жϷ���
void LPLD_UART_Isr(void);

#endif