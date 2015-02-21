#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "lptmr.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�LPTMR��ʱ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ��LPTMRģ��Ϊ��ͨ�Ķ�ʱ�����ܣ���ʱʱ��Ϊ1s
      ��ʱʱ�䵽������жϣ�����С�Ƶ����� 
*/
/* LPTMR �жϻص����� */
static void LPTMR_ISR(void)
{
    static uint32_t i;
    printf("lptmr interrupt:%d\r\n", i++);
    GPIO_ToggleBit(HW_GPIOE, 6);
}

int main(void)
{
    DelayInit();
    
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP); /* LED */
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200); /* Ϊ�˴���� ����ֱ�ӵ��ÿ��ٳ�ʼ���� */
    
    printf("lptrm timer counter test\r\n");
    
    /* ���ٳ�ʼ�� LPTMR ����ʱ����� */
    LPTMR_TC_InitTypeDef LPTMR_TC_InitStruct1; //����ṹ��
    LPTMR_TC_InitStruct1.timeInMs = 1000; /* ��ʱʱ�� 1S */
    LPTMR_TC_Init(&LPTMR_TC_InitStruct1);
    
    LPTMR_CallbackInstall(LPTMR_ISR); /* ע��ص����� */
    LPTMR_ITDMAConfig(kLPTMR_IT_TOF, true); /* ����LPTMR�ж� */
    
    while(1)
    {
        /* �ȴ��ж� */
    }
}


