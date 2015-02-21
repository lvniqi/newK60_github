#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "cpuidy.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�UART������ѯ��ʽ��������
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�����������巢��ʲô���ݣ������彫���յ�������ת����ȥ
*/
 
int main(void)
{
    uint16_t ch;
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    /* ��ӡ��Ϣ */
    printf(" type any character whitch will echo your input...\r\n");
    
    while(1)
    {
        /* ��ͣ�Ĳ�ѯ ���ڽ��յ�״̬ һ�����ճɹ� ����0 ���ͻؽ��յ������� ʵ�ֻػ�����*/
        if(UART_ReadByte(HW_UART0, &ch) == 0)
        {
            /****************��ӡ��ʾ��Ϣ**************************/
            UART_WriteByte(HW_UART0,'R');
            UART_WriteByte(HW_UART0,'e');
            UART_WriteByte(HW_UART0,'c');
            UART_WriteByte(HW_UART0,'v');
            UART_WriteByte(HW_UART0,':');
            UART_WriteByte(HW_UART0,' ');
            /****************�����յ����ֽڴ�ӡ����****************/
            UART_WriteByte(HW_UART0, ch);
            /***********ÿ�ν��ܵ����ݴ�ӡ��֮����***************/
            UART_WriteByte(HW_UART0,'\r');
            UART_WriteByte(HW_UART0,'\n');				
        }
    }
}


