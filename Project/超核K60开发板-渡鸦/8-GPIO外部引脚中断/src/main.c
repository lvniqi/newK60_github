#include "gpio.h"
#include "common.h"
#include "uart.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�GPIO�ⲿ�����ж�
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����һ��LED�ƹ������˸��������KEY2��PTE26��ÿ��һ����һ��С�ƽ���˸һ��
          ͨ����������С�Ƶ����𡣶԰��������Ų��������ش����жϵķ�ʽ��
*/

/* �ص������е� array ��32λÿһλ����һ�����ţ�1Ϊ �ý��жϱ����� 0����ý��ж�δ���� */
static void GPIO_ISR(uint32_t array)
{
    GPIO_ITDMAConfig(HW_GPIOE, 26, kGPIO_IT_FallingEdge, false);
    printf("KEY:0x%X\r\n", array);
    if(array & (1 << 26)) /*��Ӧ�İ����ж� ��ת��Ӧ��LED��ƽ */
    {
        GPIO_ToggleBit(HW_GPIOE, 12);
    }
    GPIO_ITDMAConfig(HW_GPIOE, 26, kGPIO_IT_FallingEdge, true);
}

int main(void)
{
    DelayInit();
    
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP); /* LED */
    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP); /* LED */
    /*����PTE�˿ڵ�26����Ϊ��������ģʽ */
    GPIO_QuickInit(HW_GPIOE, 26, kGPIO_Mode_IPU); /* KEY */
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    /* ����GPIO�ⲿ�����жϻص����� */
    GPIO_CallbackInstall(HW_GPIOE, GPIO_ISR);
    /* ��PTE26���ŵ��ж� �����ش��� */
    GPIO_ITDMAConfig(HW_GPIOE, 26, kGPIO_IT_FallingEdge, true);
    
    printf("press any key1 to let LED toggle\r\n");
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6); //ϵͳ����ָʾ
        DelayMs(500);
    }
}


