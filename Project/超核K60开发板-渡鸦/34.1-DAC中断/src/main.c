#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "dac.h"
#include "adc.h"
#include "pit.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */
 
/*
     ʵ�����ƣ�DACʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ��DACģ��������ǲ�������PIT����ת��
      С����������˸����˸ʱ����500ms     
*/
void PIT_ISR(void)
{
    uint32_t val;
    /* ��ͣ�Ĵ��� DAC ���������� */
    DAC_SoftwareStartConversion(HW_DAC0);
    val = ADC_QuickReadValue(ADC0_SE23);
    printf("ADC:%4d | %0.3fV | pointer:%d\r\n", val, (float)val*3.300/(1<<12), DAC_GetBufferReadPointer(HW_DAC0));
}

void DAC_ISR(void)
{
    printf("DAC INT\r\n");
}

int main(void)
{
    uint32_t i;
    uint16_t value[16];
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("DAC test please measure DAC0_OUT\r\n");
    
    DAC_InitTypeDef DAC_InitStruct = {0};
    DAC_InitStruct.bufferMode = kDAC_Buffer_Swing; /*Bufferҡ��ģʽ �������ǲ� */
    DAC_InitStruct.instance = HW_DAC0;
    DAC_InitStruct.referenceMode = kDAC_Reference_2; /* ʹ��VDDA��Ϊ�ο�Դ */
    DAC_InitStruct.triggerMode = kDAC_TriggerSoftware; /*������� */
    DAC_Init(&DAC_InitStruct);
    /* ����ˮλ */
    DAC_SetWaterMark(HW_DAC0, kDAC_WaterMark_1Word);
    /* ����DAC�ж� */
    DAC_CallbackInstall(HW_DAC0, DAC_ISR);
    DAC_ITDMAConfig(HW_DAC0, kDAC_IT_BufferPointer_WaterMark);
    for(i = 0; i < 16; i++)
    {
        value[i] = i*4096/16; //��ģת��������
    }
    DAC_SetBufferValue(HW_DAC0, value, 16); /*д��DAC buffer ���д��16�� uint16_t ��ת��ֵ */
    
    /* ����PIT�ж� */
    PIT_QuickInit(HW_PIT_CH0, 200*1000);
    PIT_CallbackInstall(HW_PIT_CH0, PIT_ISR);
    PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF);
    
    /* ����һ��ADCģ�����ڲ��� DAC��ֵ */
    ADC_QuickInit(ADC0_SE23, kADC_SingleDiff12or13);
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


