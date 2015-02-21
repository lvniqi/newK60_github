#include "gpio.h"
#include "common.h"
#include "systick.h"
#include "uart.h"
//uCOS
#include "includes.h"



//�����ջ��С
#define TASK_STK_SIZE              (128)
//�����������ȼ�
#define APP_LED1_TASK_PRIO         (5)
#define APP_LED0_TASK_PRIO         (7)
//���������ջ
OS_STK  APP_LED1_STK[TASK_STK_SIZE];
OS_STK  APP_LED0_STK[TASK_STK_SIZE];
//LEDС������
void AppLED1Task(void *pdata)
{
    pdata = pdata; //��ֹ���������� ��ʵ������
	while(1)
	{
		printf("LED1 Task!\r\n");
		OSTimeDlyHMSM(0, 0, 0, 500);
	}
}

void AppLED0Task(void *pdata)
{
    pdata = pdata; //��ֹ���������� ��ʵ������
	while(1)
	{
		printf("LED2 Task!\r\n");
		OSTimeDlyHMSM(0, 0, 0, 500);
	}
}


int main(void)
{
    DelayInit();
    SYSTICK_Init((1000*1000)/OS_TICKS_PER_SEC);
    SYSTICK_ITConfig(true);
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("uCOSII test\r\n");

    OSInit();  //OS��ʼ��
    OSTaskCreate(AppLED1Task,(void *)0,
                &APP_LED1_STK[TASK_STK_SIZE-1],
                APP_LED1_TASK_PRIO); //����LED1 ����
    OSTaskCreate(AppLED0Task,(void *)0,
                &APP_LED0_STK[TASK_STK_SIZE-1],
                APP_LED0_TASK_PRIO); //����LED0 ����
    
    SYSTICK_Cmd(true);
    
    /* ����Ȩ��������ϵͳ */
    OSStart();
	/* ������Զ�������е��� */
    while(1);
}


