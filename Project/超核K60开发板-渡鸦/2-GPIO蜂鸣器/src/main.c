#include "gpio.h"
#include "common.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/* GPIO ����ģʽ */
/*
 *         @arg kGPIO_Mode_IFT :��������
 *         @arg kGPIO_Mode_IPD :��������
 *         @arg kGPIO_Mode_IPU :��������
 *         @arg kGPIO_Mode_OOD :��©��� ����������2������������� �ٶ�..
 *         @arg kGPIO_Mode_OPP :�������
 */
 
/*
     ʵ�����ƣ�GPIO������
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч��������PTA�˿ڵ�6���������ģʽ
        �����Ž�����������ߵ͵�ƽ������������������ 
*/

int main(void)
{
    /* ��ʼ��Delay */
    DelayInit();
    /* ʹ�ü��׳�ʼ����ʼ��һ��GPIO ����Ϊ�������ģʽ */
    GPIO_QuickInit(HW_GPIOA, 6, kGPIO_Mode_OPP);
    /* ����һ�ֳ�ʼ����ʽ: �ṹ��ģʽ�ĳ�ʼ�� */
//    GPIO_InitTypeDef GPIO_InitStruct1;
//    GPIO_InitStruct1.instance = HW_GPIOA;
//    GPIO_InitStruct1.mode = kGPIO_Mode_OPP;
//    GPIO_InitStruct1.pinx = 6;
//    GPIO_Init(&GPIO_InitStruct1);
    
    /* ����͵�ƽ */
    GPIO_WriteBit(HW_GPIOA, 6, 0);
    
    while(1)
    {
        /* ��ת���ŵ�ƽ ԭ���ǵͱ�ɸ� ԭ���Ǹ߱�ɵ� */
        GPIO_ToggleBit(HW_GPIOA, 6);
        DelayMs(300); //��ʱ 10ms
    }
}


