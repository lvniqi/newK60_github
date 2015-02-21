#include "chlib_k.h"
//uCOS
#include "includes.h"

/* �����ջ��С */
#define TASK_STK_SIZE              (128)

/* �����������ȼ� */
#define APP_START_TASK_PRIO        (4)
#define APP_LED_TASK_PRIO          (6)
#define APP_WDOG_TASK_PRIO         (20)

/* ���������ջ */
OS_STK  APP_START_STK[TASK_STK_SIZE];
OS_STK  APP_LED_STK[TASK_STK_SIZE];
OS_STK  APP_WDOG_STK[TASK_STK_SIZE];

/* �����ʱ����� */
OS_TMR   * tmr1;

			  	   
void tmr1_callback(OS_TMR *ptmr,void *p_arg) 
{	
    static uint32_t counter;
    UART_printf("Enter tmr1_callback:%d times\r\n", counter);
    counter++;	
}

void AppStartTask(void *pdata)
{
    uint8_t err;
    pdata = pdata;
    
    /* ��ʼ����ʱ�� 1S��ʼ �Ժ�ÿ200MS����һ�� */    
 	tmr1=OSTmrCreate(1000,200,OS_TMR_OPT_PERIODIC,(OS_TMR_CALLBACK)tmr1_callback,0, (INT8U*)"tmr1",&err);
	OSTmrStart(tmr1,&err);	
}

int main(void)
{
    DelayInit();
    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);
    SYSTICK_ITConfig(true);
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("uCOSII test\r\n");

    OSInit();
	OSTaskCreate(AppStartTask,(void *)0,
							&APP_START_STK[TASK_STK_SIZE-1],
							APP_START_TASK_PRIO);
    
    SYSTICK_Cmd(true);
    
    OSStart();
    while(1);
}


