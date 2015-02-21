#include "gpio.h"
#include "common.h"
#include "uart.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */
 
/*
     ʵ�����ƣ�485����
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч���������봮�ڣ�ͨ���������ϵ�485ͨ�Žӿ�ͨ��  
        485ͨ�Ų���3.3v��MAX3485��SP3485�����շ���·���
*/
/* ����һ���ַ� */
static void UART_SendString(uint32_t instance, char * str)
{
    while(*str != '\0')
    {
        UART_WriteByte(instance, *str++);
    }
}

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    /* ���Դ��� */
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    /* 485 �� ��ͨ��TTL ���� ֻ�Ǻ�Ӳ����ͬ ����MCU��˵�����Ǵ��� */
    UART_QuickInit(UART5_RX_PE09_TX_PE08, 115200);
    printf("485 test! please connnect other 485 device\r\n");
    
    /* ��485���߷���һ���ַ� */
    UART_SendString(HW_UART5, "485 device test\r\n");
    uint16_t ch;
    while(1)
    {
        /* ��485���ߵ����ݷ���ȥ */
        if(UART_ReadByte(HW_UART5, &ch) == 0)
        {
            UART_WriteByte(HW_UART5, ch);
        }
        GPIO_ToggleBit(HW_GPIOE, 6);
    }
}


