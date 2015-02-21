#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "wdog.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�WDOG���ڿ��Ź�
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�����������Ź��Ĵ���ģʽ�������ڹ涨��ʱ�䷶Χ��ι��������оƬ��λ
*/
int main(void)
{
    DelayInit();
    
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP); /* LED */
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    /* ��ʼ�����Ź� */
    WDOG_InitTypeDef WDOG_InitStruct1 = {0};
    WDOG_InitStruct1.mode = kWDOG_Mode_Window;   //���ÿ��Ź�Ϊ����ģʽ
    WDOG_InitStruct1.windowInMs = 1000;   /* ����ʱ�� ����Ϊ����ģʽ�� ι�������� ���Ź���ʼ��ʱ�� 1000 - 2000 MS����� �������˶���λ ����ͨ���Ź��ϸ�*/
    WDOG_InitStruct1.timeOutInMs = 2000; /* ʱ�� 2000MS : 2000MS ��û��ι����λ */
    WDOG_Init(&WDOG_InitStruct1);
    
    printf("\r\nSYSTEM RESET!!!!!!!%d\r\n", WDOG_GetResetCounter());
    printf("press any character to feed dog feed, must be in windows time\r\n");
    
    static uint32_t i;
    uint16_t ch;
    while(1)
    {
        if(UART_ReadByte(HW_UART0, &ch) == 0)
        {
            printf("wdog feed succ!\r\n");
            WDOG_Refresh(); //ι��
            i = 0;
        }
        printf("cnt:i:%d\r", i++);
        DelayMs(100);
        GPIO_ToggleBit(HW_GPIOE, 6);
    }
}


