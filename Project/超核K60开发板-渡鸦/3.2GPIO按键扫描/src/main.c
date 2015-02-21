#include "gpio.h"
#include "common.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�GPIO����ɨ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ�ð���KEY1����LED1С�Ƶ�״̬���������»�ı�С�Ƶ�����
*/
//���ȶ���λ�����ĺ궨��
#define KEY1  PEin(26)  //����PTE�˿ڵ�26����Ϊ����
#define LED1  PEout(6)  //����PTE�˿ڵ�6�����������

/* ��������״̬ 0δ�� 1���� */
#define NO_KEY          (0x00)
#define KEY_SINGLE      (0x01)
/* ��������ֵ */
static uint8_t gRetValue;

/* ״̬���� */
typedef enum
{
    kKEY_Idle,          /*����̬ */
    kKEY_Debounce,      /*ȷ��������̬ */
    kKEY_Confirm,       /*ȷ�ϰ���״̬*/
}KEY_Status;

/* ����ɨ����� */
static void KEY_Scan(void)
{
    static KEY_Status status = kKEY_Idle;
    switch(status)
    {
        case kKEY_Idle:
            gRetValue = NO_KEY;
            if(KEY1 == 0) /* ������������� ����ȷ��������̬ */
            {
                status = kKEY_Debounce;
            }
            break;
        case kKEY_Debounce: /* ȷ��������̬ */
            if(KEY1 == 0)
            {
                status = kKEY_Confirm;
            }
            else
            {
                status = kKEY_Idle;
                gRetValue = NO_KEY;
            }
            break;
        case kKEY_Confirm: /* ȷ��̬ */
            if(KEY1 == 1) /* �����ɿ� */
            {
                gRetValue = KEY_SINGLE;
                status = kKEY_Idle;
            }
            break;
        default:
            break;
    }
}

int main(void)
{
    /* ��ʼ�� Delay */
    DelayInit();
    /* ��GPIO����Ϊ����ģʽ оƬ�ڲ��Զ������������� */
    GPIO_QuickInit(HW_GPIOE, 26, kGPIO_Mode_IPU);
    /* ����Ϊ��� */
    GPIO_QuickInit(HW_GPIOE,  6, kGPIO_Mode_OPP);
    while(1)
    {
        KEY_Scan(); //���ð���ɨ�����
        DelayMs(10);
        if(gRetValue == KEY_SINGLE) //�������£�С�Ʒ���
        {
            LED1 = !LED1;
        }
    }
}


