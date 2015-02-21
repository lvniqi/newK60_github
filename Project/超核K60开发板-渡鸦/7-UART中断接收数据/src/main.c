#include "gpio.h"
#include "common.h"
#include "uart.h"

/*
     ʵ�����ƣ�UART�����жϷ�ʽ��������
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�����������巢��ʲô���ݣ������彫���յ�������ת����ȥ
           ͬʱ���������ϵ�С����˸
*/

/* ���ڽ����жϻص����� 
   �ں�����д�ж���Ҫ��������
*/
static void UART_RX_ISR(uint16_t byteReceived)
{
    /* �����յ������ݷ��ͻ�ȥ */
    UART_WriteByte(HW_UART0, byteReceived);
}

 
int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07 , 115200);
    
    printf("type any character which will echo...\r\n");
    
    /*  ����UART �ж����� �򿪽����ж� ��װ�жϻص����� */
    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);
    /* �򿪴��ڽ����жϹ��� IT �����жϵ���˼*/
    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


