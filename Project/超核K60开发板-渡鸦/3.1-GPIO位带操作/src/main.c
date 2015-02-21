#include "gpio.h"
#include "common.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�GPIOλ������
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ͨ��ʹ��λ���������ƿ������ϵ�4��С������ 
*/
//���ȶ���λ�����ĺ궨��
#define LED1  PEout(6)  //����PTE�˿ڵ�6�����������
#define LED2  PEout(7)  //����PTE�˿ڵ�7�����������
#define LED3  PEout(11) //����PTE�˿ڵ�11�����������
#define LED4  PEout(12) //����PTE�˿ڵ�12�����������

int main(void)
{
    /* ��ʼ�� Delay */
    DelayInit();

    /* ����4��С�ƵĿ�������Ϊ��©��� */
    GPIO_QuickInit(HW_GPIOE,  6, kGPIO_Mode_OPP);
    GPIO_QuickInit(HW_GPIOE,  7, kGPIO_Mode_OPP); 
    GPIO_QuickInit(HW_GPIOE, 11, kGPIO_Mode_OPP); 
    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP); 
    while(1)
    {
        /* ��ˮ�� */
        DelayMs(100);
        LED1 = !LED1; //�ı����״̬��ԭ��Ϊ�ߵ�ƽ��������͵�ƽ�������෴��
        DelayMs(100);
        LED2 = !LED2;
        DelayMs(100);
        LED3 = !LED3;
        DelayMs(100);
        LED4 = !LED4;
    }
}


