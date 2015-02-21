#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "ftm.h"
#include "lptmr.h"
#include "pit.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */


/* LPTMR ��Ϊ�������ʱ ֻ�ܲ���һ·���� */

/*
     ʵ�����ƣ�LPTMR�������ʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ��PTC1���Ų���1KHz�ķ�����ʹ��LTPMR��PTC5���Ŷ�������м���
      ʹ��PIT�ж��ж�ȡLPTMģ��ļ�������
      С����������˸����˸ʱ����500ms  
   ע����Ҫʹ�����߽�PTC1���ź�PTC5������������      
*/
//PIT�ж��ж�ȡ���������ֵ
static void PIT_ISR(void)
{
    uint32_t value;
    value = LPTMR_PC_ReadCounter(); //���LPTMRģ��ļ���ֵ
    LPTMR_ClearCounter();  //����������
    printf("LPTMR:%dHz\r\n", value);
}

int main(void)
{
    DelayInit();
    
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP); /* LED */
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200); /* Ϊ�˴���� ����ֱ�ӵ��ÿ��ٳ�ʼ���� */
    
    printf("lptrm pulse counter test connect PC05&PC01\r\n");
    
    /* ��PC01 �ϲ���һ��Ƶ�ʵķ��� ��������������� */
    FTM_PWM_QuickInit(FTM0_CH0_PC01, kPWM_EdgeAligned, 1000);
    /* ����FTM ��ռ�ձ� */
    FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH0, 5000); // 50%ռ�ձ� 0-10000 ��Ӧ 0-100%
    
    /* ���ٳ�ʼ�� LPTMRģ����������������� */
    LPTMR_PC_QuickInit(LPTMR_ALT2_PC05); /* ������� */
    
    /* ����һ��PIT��ʱ�� ����1S�ж� ���ж��ж�ȡLPTMR�ļ���ֵ */
    PIT_QuickInit(HW_PIT_CH0, 1000 * 1000);
    PIT_CallbackInstall(HW_PIT_CH0, PIT_ISR);
    PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF, true);
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


