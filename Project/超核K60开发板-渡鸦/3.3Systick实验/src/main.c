#include "gpio.h"
#include "common.h"
#include "systick.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�Systickʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����LED1�������Ե���˸��ʱ����Ϊ100ms
*/
#define LED1  PEout(6) //����PTE�˿ڵ�6�����������

int main(void)
{

    /* ����Ϊ��� */
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    /*��ʼ������systickģ��*/
    DelayInit();
    
    while(1)
    {
        LED1 = !LED1;
        DelayMs(100); //ʹ��systickʵ����ʱ����
    }
}


