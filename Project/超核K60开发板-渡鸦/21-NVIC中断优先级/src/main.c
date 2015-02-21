#include "gpio.h"
#include "common.h"
#include "uart.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�NVIC�ж����ȼ�
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�������� PE26 �� PA4 ʹ���ǵ��ź���ͬ ����KEY1
ʹ�ô��ڹ۲��ĸ��ж� �ȷ��� ���� PORTA PORTE���ж���ռ���ȼ���ͬ
��ռ���ȼ��͵Ĳ��ܴ����ռ���ȼ��ߵ��ж� ���� ��һ���ж���ȫִ�����
���ܳ�������һ���ȴ����ж� 
*/

static void PORTE_ISR(uint32_t array)
{
    printf("PORTE IT enter!\r\n");
    DelayMs(1000);
    printf("PORTE IT exit!\r\n");
}

static void PORTA_ISR(uint32_t array)
{
    printf("PORTA IT enter!\r\n");
    DelayMs(1000);
    printf("PORTA IT exit!\r\n");
}

/* ��E26�� A4 �������� Ȼ������ ���ǵ�NVIC���ȼ� */

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    /* ����PORTE PORTA �ж� */
    GPIO_QuickInit(HW_GPIOE,26, kGPIO_Mode_IPU);
    GPIO_QuickInit(HW_GPIOA, 4, kGPIO_Mode_IPU);
    GPIO_CallbackInstall(HW_GPIOE, PORTE_ISR);
    GPIO_CallbackInstall(HW_GPIOA, PORTA_ISR);
    GPIO_ITDMAConfig(HW_GPIOE, 26, kGPIO_IT_RisingEdge, true);
    GPIO_ITDMAConfig(HW_GPIOA, 4,  kGPIO_IT_RisingEdge, true);
    
    printf("NVIC test connect E26&A04\r\n");
    /* ��ϵͳ �ж����ȼ����� �������� 16�� ��ռ���ȼ� ��16�� �����ȼ� */
    NVIC_SetPriorityGrouping(NVIC_PriorityGroup_2);  //�ж����ȼ��ֳ�2��
    NVIC_SetPriority(PORTE_IRQn, NVIC_EncodePriority(NVIC_PriorityGroup_2, 2, 2)); //����PTE�˿ڵ���ռ���ȼ��������ȼ�
    NVIC_SetPriority(PORTA_IRQn, NVIC_EncodePriority(NVIC_PriorityGroup_2, 2, 2));
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


