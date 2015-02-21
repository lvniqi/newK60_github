#include "gpio.h"
#include "common.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/* GPIO ����ģʽ */
/*
 *         @arg kGPIO_Mode_IFT :��������
 *         @arg kGPIO_Mode_IPD :��������
 *         @arg kGPIO_Mode_IPU :��������
 *         @arg kGPIO_Mode_OOD :��©��� ����������2������������� �ٶ�..
 *         @arg kGPIO_Mode_OPP :�������
 */
 
/*
     ʵ�����ƣ�GPIOС��ʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч��������PTE�˿ڵ�6���������ģʽ
      �ڵ͵�ƽʱС�������ڸߵ�ƽʱС��Ϩ��
      С����������˸����˸ʱ����500ms     
*/
 
int main(void)
{
    /* ��ʼ��Delay */
    DelayInit();
    /* ʹ�ü��׳�ʼ����ʼ��PTE�˿ڵ�6������ΪIOʹ�� ����Ϊ�������ģʽ */
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    /* ����һ�ֳ�ʼ����ʽ: �ṹ��ģʽ�ĳ�ʼ�� �е�����STM32�̼���*/
//    GPIO_InitTypeDef GPIO_InitStruct1;
//    GPIO_InitStruct1.instance = HW_GPIOE;
//    GPIO_InitStruct1.mode = kGPIO_Mode_OPP;
//    GPIO_InitStruct1.pinx = 6;
//    GPIO_Init(&GPIO_InitStruct1);
    
    /* ����PTE�˿ڵ�6��������͵�ƽ */
    GPIO_WriteBit(HW_GPIOE, 6, 0);
    
    while(1)
    {
//        /* ��ת���ŵ�ƽ ԭ���ǵͱ�ɸ� ԭ���Ǹ߱�ɵ� */
//        GPIO_ToggleBit(HW_GPIOE, 6);
        /* ����һ�ַ��� ʹ��λ������ */
        PEout(6) = !PEout(6);
        DelayMs(500);
    }
}


