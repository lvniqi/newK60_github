#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "flexbus.h"

#include "sram.h" 
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�Flexbus����ARAM
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����������ҵ�SRAM�������  
       �����SRAMӦ����μ�sram.c�ļ�
*/
int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("Flexbus SRAM test\r\n");
    
    /* ��ʼ���ⲿSRAM */
    SRAM_Init();
    /* SRAM �Բ� */
    if(!SRAM_SelfTest())
    {
        printf("sram test ok!\r\n");
    }
    else
    {
        printf("sram test failed!\r\n");
    }
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


