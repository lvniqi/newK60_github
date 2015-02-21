#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "adc.h"
#include "pit.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�PIT����ADC
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ��PITģ�������ԵĴ���ADCģ��������ݲɼ�
    ͨ�����ڿ������ϵĵ�λ�������Ը���ad�ɼ����
*/
int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("PIT tirgger ADC test\r\n");
    
    /* ����ADC0 Ӳ������Դ */
    SIM->SOPT7 |= SIM_SOPT7_ADC0TRGSEL(4); /* ʹ��PIT0 ���� */
    SIM->SOPT7 &= ~SIM_SOPT7_ADC0PRETRGSEL_MASK; /* ʹ��trigger A */
    SIM->SOPT7 |= SIM_SOPT7_ADC0ALTTRGEN_MASK; /*ʹ�ó�PDB֮���Ӳ������Դ �˴���Դ������оƬ����*/

    /* ��ʼ��ADCģ�� ADC0_SE19_DM0 */
    ADC_InitTypeDef AD_InitStruct1;
    AD_InitStruct1.instance = HW_ADC0;
    AD_InitStruct1.clockDiv = kADC_ClockDiv2; /* ADC����ʱ��2��Ƶ */
    AD_InitStruct1.resolutionMode = kADC_SingleDiff10or11; /*���� 10λ���� ��� 11λ���� */
    AD_InitStruct1.triggerMode = kADC_TriggerHardware; /* Ӳ������ת�� */
    AD_InitStruct1.singleOrDiffMode = kADC_Single; /*����ģʽ */
    AD_InitStruct1.continueMode = kADC_ContinueConversionDisable;
    AD_InitStruct1.hardwareAveMode = kADC_HardwareAverageDisable; /*��ֹ Ӳ��ƽ�� ���� */
    ADC_Init(&AD_InitStruct1);
    
    /* ��ʼ����Ӧ���� */
    /* DM0����Ϊר�ŵ�ģ������ ADCʱ �������ø���  DM0Ҳ�޷�������ͨ���������� */
    
    /* ����һ��ADCת�� ����ͨ��ֵ*/
    ADC_StartConversion(HW_ADC0, 19, kADC_MuxA);
    /* ��ʼ�� PITģ�� */
    PIT_QuickInit(HW_PIT_CH0, 1000*200); /* 200 ms ����һ�� */
    while(1)
    {
        /* ���ADCת����� ��ȡת�����*/
        if(ADC_IsConversionCompleted(HW_ADC0, kADC_MuxA) == 0)
        {
            printf("ADC:%04d\r", ADC_ReadValue(HW_ADC0, kADC_MuxA));
        }
    }
}


