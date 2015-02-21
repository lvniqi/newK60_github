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

/* TSI������ֵ�����ƴ��ص������� */
#define TSI_THRESHOLD   (200)
/* TSI �жϻص����� */
/*���ж��д����ذ�������Ӧ�����·���LEDָʾ*/
void TSI_ISR(void)
{
    uint32_t i;
    static bool inital_it = true;
    static int32_t inital_value[16];
    int32_t tsi_value[16];
    uint32_t out_of_rang_flag = 0;
    static uint32_t last_flag = 0;
    uint32_t value;
    TSI_ITDMAConfig(kTSI_IT_Disable); //�رմ����ж�
    if(inital_it)
    {
        /* ��¼�ɼ���һ�εĳ�ʼֵ */
        for(i = 1; i < 5; i++)
        {
            inital_value[i] = TSI_GetCounter(i);
        }
        inital_it = false;        
    }
    for(i = 1; i < 5; i++)
    {
        tsi_value[i] = TSI_GetCounter(i);
    }
    /* �ж��Ƿ񳬳���Χ */
    for(i = 1; i < 5; i++)
    {
        if(ABS(tsi_value[i] - inital_value[i]) > TSI_THRESHOLD)
        {
            out_of_rang_flag |= (1<<i);
        }
        else
        {
            out_of_rang_flag &= ~(1<<i);
        }
    }
    
    value = out_of_rang_flag ^ last_flag;
    if(value & out_of_rang_flag & (1<<1))
    {
        printf("[%d]touch!\r\n", 4);
        GPIO_ToggleBit(HW_GPIOE, 6);
    }
    if(value & out_of_rang_flag & (1<<2))
    {
        printf("[%d]touch!\r\n", 1);
        GPIO_ToggleBit(HW_GPIOE, 12);
    }
    if(value & out_of_rang_flag & (1<<3))
    {
        printf("[%d]touch!\r\n", 2);
        GPIO_ToggleBit(HW_GPIOE, 11);
    }
    if(value & out_of_rang_flag & (1<<4))
    {
        printf("[%d]touch!\r\n", 3);
        GPIO_ToggleBit(HW_GPIOE, 7);
    }
    last_flag = out_of_rang_flag;
    /*���������ж�*/
    TSI_ITDMAConfig(kTSI_IT_EndOfScan);

}

int main(void)
{
    DelayInit();
    
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    GPIO_QuickInit(HW_GPIOE, 7, kGPIO_Mode_OPP);
    GPIO_QuickInit(HW_GPIOE, 11, kGPIO_Mode_OPP);
    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200); /* Ϊ�˴���� ����ֱ�ӵ��ÿ��ٳ�ʼ���� */
    
    printf("TSI test\r\n");
    
    /* ʹ��4��TSI �������� ע�� TSI�ϵ���ҪУ׼ ���غ� ����ε� JLINK Ȼ�� ��λ */
    TSI_QuickInit(TSI0_CH1_PA00);
    TSI_QuickInit(TSI0_CH2_PA01);
    TSI_QuickInit(TSI0_CH3_PA02);
    TSI_QuickInit(TSI0_CH4_PA03);
    /* ��װ TSI�жϻص����� */
    TSI_CallbackInstall(TSI_ISR);
    /* ���� TSI ɨ������ж� */
    TSI_ITDMAConfig(kTSI_IT_EndOfScan);
    
    while(1)
    {
        /* �ȴ��ж� */
    }
}


