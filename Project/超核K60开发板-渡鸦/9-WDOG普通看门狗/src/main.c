#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "wdog.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�WDOG��ͨ���Ź�
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����оƬ��λ��LED����˸һ�Σ��������KEY2��һ�Σ���ι��һ��
       оƬ������λ�����ʱ�䳬��2s���߲������������Ź�����ʱ��оƬ��
       ��λ�����ڰ�������ɨ��ķ�ʽ���ж���ʶ��
*/

int main(void)
{
    DelayInit();
    
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP); /* LED */
    GPIO_QuickInit(HW_GPIOE, 26, kGPIO_Mode_IPU); /* KEY */
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    /* ��ʼ�����Ź� */
    WDOG_InitTypeDef WDOG_InitStruct1 = {0};
    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;  //���ÿ��Ź�������������ģʽ
    WDOG_InitStruct1.timeOutInMs = 2000; /* ʱ�� 2000MS : 2000MS ��û��ι����λ */
    WDOG_Init(&WDOG_InitStruct1);
    
    printf("WDOG test start!\r\n");
    printf("press KEY1 to feed dog within 2S or system with reset!\r\n");
    
    /* ����LED Ȼ��Ϩ��  ָʾϵͳ���д����ϵ����� */
    GPIO_WriteBit(HW_GPIOE, 6, 0);
    DelayMs(200);
    GPIO_WriteBit(HW_GPIOE, 6, 1);
    while(1)
    {
        if(GPIO_ReadBit(HW_GPIOE, 26) == 0) /* ���������� */
        {
            /* ι�� ��ֹ��λ */
            printf("wdog feed! we have 2s\r\n");
            WDOG_Refresh(); //ι��
            DelayMs(100);
        }
        DelayMs(10);
    }
}


