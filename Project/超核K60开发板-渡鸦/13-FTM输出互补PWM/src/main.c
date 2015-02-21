#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "ftm.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/* ���õ�FTMͨ����: */
/*
 FTM0_CH4_PB12   // ftm0 ģ�� 4ͨ�� PB12����
 FTM0_CH5_PB13   
 FTM0_CH5_PA00   
 FTM0_CH6_PA01   
 FTM0_CH7_PA02   
 FTM0_CH0_PA03
 FTM0_CH1_PA04   
 FTM0_CH2_PA05   
 FTM0_CH3_PA06   
 FTM0_CH4_PA07   
 FTM0_CH0_PC01   
 FTM0_CH1_PC02   
 FTM0_CH2_PC03   
 FTM0_CH3_PC04   
 FTM0_CH4_PD04   
 FTM0_CH5_PD05   
 FTM0_CH6_PD06   
 FTM0_CH7_PD07   
 FTM1_CH0_PB12   
 FTM1_CH1_PB13   
 FTM1_CH0_PA08   
 FTM1_CH1_PA09   
 FTM1_CH0_PA12   
 FTM1_CH1_PA13   
 FTM1_CH0_PB00   
 FTM1_CH1_PB01   
 FTM2_CH0_PA10   
 FTM2_CH1_PA11   
 FTM2_CH0_PB18   
 FTM2_CH1_PB19   
*/

/*
     ʵ�����ƣ�FTM�������PWM
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ��PTC1��PTC2������������͵�PWM���� 
*/

int main(void)
{
    DelayInit();
    
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP); /* LED */
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("kPWM_Complementary test, pwm will be generated on PC01 and PC02\r\n");
    
    /* ��ʼ������PWM �������2��FTM_PWM_Init Ӳ�����Զ��������ڵ�2��ͨ��*/
    FTM_PWM_QuickInit(FTM0_CH0_PC01, kPWM_Complementary, 3000);
    FTM_PWM_QuickInit(FTM0_CH1_PC02, kPWM_Complementary, 3000);
    
    /* ����FTM ��ռ�ձ� */
    FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH0, 8000); // 50%ռ�ձ� 0-10000 ��Ӧ 0-100% ��������һ��ͨ�����һ��ı�
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


