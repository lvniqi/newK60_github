#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "tsi.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�TSI���ݴ���
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�����������·���4�����ذ���������ʱ��Ӧ��С�ƾͻ�ı�״̬
        ˵�������ذ���ռ�����������Ľӿڣ���Ҫ���������ε������ٴ�
        ���س���ʱ��Ҫ���Ÿ�λ�����ء�
*/



int main(void)
{
    DelayInit();
    
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200); /* Ϊ�˴���� ����ֱ�ӵ��ÿ��ٳ�ʼ���� */
    
    printf("TSI counter test\r\n");
    
    /* ʹ��1��TSI �������� ע�� TSI�ϵ���ҪУ׼ ���غ� ����ε� JLINK Ȼ�� ��λ */
    TSI_QuickInit(TSI0_CH1_PA00);  //ʹ��PTA0������Ϊ���ص�1ͨ��

    while(1)
    {
        printf("tsi ch[%d]:%06d\r", 0, TSI_GetCounter(HW_TSI_CH1));
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(10);
    }
}


