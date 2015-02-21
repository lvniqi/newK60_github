#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "pdb.h"
#include "adc.h"

/* ADC �жϻص� */
void ADC_ISR(void)
{
    uint32_t value;
    value = ADC_ReadValue(HW_ADC0, kADC_MuxA);
    printf("%d\r\n", value);
}

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("PDB test!\r\n");
    
    /* ����ADCģ�� */
    ADC_QuickInit(ADC0_SE17_E24, kADC_SingleDiff12or13);
    
    /* ����ΪӲ������ģʽ */
    ADC_EnableHardwareTrigger(HW_ADC0, true);
    ADC_StartConversion(HW_ADC0, 17, kADC_MuxA);
    
    /* ����ADC�ж� ��װ�ص����� */
    ADC_ITDMAConfig(HW_ADC0, kADC_MuxA, kADC_IT_EOF);
    ADC_CallbackInstall(HW_ADC0, ADC_ISR);
    
    /* ����PDBģ�� ��ʱ10ms */
    PDB_QuickInit(kPDB_SoftwareTrigger, 10*1000);
    
    PDB_SoftwareTrigger();
    
    /* ʱ��PDB����ADC�� ���� ADC0ģ��muxAת������ ��ʱ100���� */
    PDB_SetADCPreTrigger(HW_ADC0, kADC_MuxA, 100, true);
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


