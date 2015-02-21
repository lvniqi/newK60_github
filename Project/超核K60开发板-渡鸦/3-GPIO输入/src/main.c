#include "gpio.h"
#include "common.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/* GPIO ����ģʽ */
/*
 *         @arg kGPIO_Mode_IFT :��������
 *         @arg kGPIO_Mode_IPD :��������
 *         @arg kGPIO_Mode_IPU :��������
 *         @arg kGPIO_Mode_OOD :��©��� ����������2������������� �ٶ�..
 *         @arg kGPIO_Mode_OPP :�������
 */
 
 /*
     ʵ�����ƣ�GPIO��������
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�������ƿ������ϵ�3����ͨ����������������ʱ
        �����ź�Ϊ�͵�ƽ��������ѯ�ķ�ʽ��ȡ������״̬
        ��ʹ��3��С�Ƶ�����չʾ������Ч��
*/
int main(void)
{
    bool val[3];
    /* ��ʼ��Delay */
    DelayInit();
    /* ��GPIO����Ϊ����ģʽ оƬ�ڲ��Զ������������� */
    GPIO_QuickInit(HW_GPIOE, 26, kGPIO_Mode_IPU);
    GPIO_QuickInit(HW_GPIOE, 27, kGPIO_Mode_IPU);
    GPIO_QuickInit(HW_GPIOA,  4, kGPIO_Mode_IPU);
    /* ����Ϊ��� */
    GPIO_QuickInit(HW_GPIOE,  7, kGPIO_Mode_OPP);
    GPIO_QuickInit(HW_GPIOE,  6, kGPIO_Mode_OPP);
    GPIO_QuickInit(HW_GPIOE,  11, kGPIO_Mode_OPP);
    while(1)
    {
        /* ���϶�ȡ ���ŵ�ƽ״̬ ����0 �� 1*/
        val[0] = GPIO_ReadBit(HW_GPIOE, 26);
        val[1] = GPIO_ReadBit(HW_GPIOE, 27);
        val[2] = GPIO_ReadBit(HW_GPIOA, 4);
        /* �����صĵ�ƽ���õ�����һ�������� */
        GPIO_WriteBit(HW_GPIOE, 11, val[0]);
        GPIO_WriteBit(HW_GPIOE,  7, val[1]);
        GPIO_WriteBit(HW_GPIOE,  6, val[2]);
    }
}


