#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "adc.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */
 
/*
     ʵ�����ƣ�ADC�ڲ��¶ȼ�
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�������оƬ���¶ȣ���ͨ�����ڷ��ͳ���  
     оƬ�ڲ���ADC0ģ���26ͨ������оƬ�ڲ��¶ȴ�����
*/

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("ADC temperature sensor test\r\n");
    
    /* ��ʼ��ADCģ�� ͨ��26 оƬ�������ڲ��¶ȴ����� */
    ADC_InitTypeDef AD_InitStruct1;
    AD_InitStruct1.instance = HW_ADC0;  
    AD_InitStruct1.clockDiv = kADC_ClockDiv8;
    AD_InitStruct1.resolutionMode = kADC_SingleDiff12or13;
    AD_InitStruct1.triggerMode = kADC_TriggerSoftware; /* �������ת�� */
    AD_InitStruct1.singleOrDiffMode = kADC_Differential; /*����ģʽ */
    AD_InitStruct1.continueMode = kADC_ContinueConversionDisable; 
    AD_InitStruct1.hardwareAveMode = kADC_HardwareAverage_32;
    ADC_Init(&AD_InitStruct1);
    
    /* ��ʼ����Ӧ���� */
    /* 26ͨ�� оƬ�ڲ����ӵ��� Ƭ���¶ȼ��� �������� */
    
    /* ����һ��ADCת�� */
    ADC_StartConversion(HW_ADC0, 26, kADC_MuxA);
    float vtemp;
    float temp;
    while(1)
    {
        ADC_StartConversion(HW_ADC0, 26, kADC_MuxA);
        while(ADC_IsConversionCompleted(HW_ADC0, kADC_MuxA));
        vtemp = ((float)ADC_ReadValue(HW_ADC0, kADC_MuxA)/4096)*3.3;
        //���³���Ϊ�¶�����ת��
        if(vtemp >= 0.7012)
        {
            temp = (vtemp-0.7012)/.001646;
        }
        else
        {
            temp = (vtemp-0.7012)/.001769;
        }
        temp=25 - temp;
        //����
        printf("tempature:%2.3fC  \r", temp);   
        DelayMs(100);
        GPIO_ToggleBit(HW_GPIOE, 6);
    }
}


