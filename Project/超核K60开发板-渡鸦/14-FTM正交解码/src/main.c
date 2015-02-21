#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "ftm.h"
#include "pit.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/* ���õ�FTM �������� ͨ����: */
/*
 FTM1_QD_PHA_PA08_PHB_PA09       
 FTM1_QD_PHA_PA12_PHB_PA13       
 FTM1_QD_PHA_PB00_PHB_PB01       
 FTM2_QD_PHA_PA10_PHB_PA11       
 FTM2_QD_PHA_PB18_PHB_PB19       
*/

/*
     ʵ�����ƣ�FTM��������
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ��FTM1ģ���PTA8��PTA9���Ž�����������
      ͨ�����ڽ�������������ݷ��ͳ�ȥ
      С����������˸����˸ʱ����500ms     
*/

void PIT_ISR(void)
{
    int value; /* ��¼����������� */
    uint8_t dir; /* ��¼��������ת����1 */
    /* ��ȡ������������ */
    FTM_QD_GetData(HW_FTM1, &value, &dir);
    printf("value:%6d dir:%d  \r", value, dir);
    //FTM_QD_ClearCount(HW_FTM1); /* �����Ƶ������Ҫ��ʱ���Countֵ  */
}

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP); /* LED */
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200); /*��ʼ�����Դ��� */

    printf("PWM_QD test, connect encoder for PA08 PA09\r\n");
     
    /* ��ʼ����������ͨ�� */
    FTM_QD_QuickInit(FTM1_QD_PHA_PA08_PHB_PA09, kFTM_QD_NormalPolarity, kQD_PHABEncoding);
    
    /* ����PIT�ж� */
    PIT_QuickInit(HW_PIT_CH0, 1000*10);
    PIT_CallbackInstall(HW_PIT_CH0, PIT_ISR);
    PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF);
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


