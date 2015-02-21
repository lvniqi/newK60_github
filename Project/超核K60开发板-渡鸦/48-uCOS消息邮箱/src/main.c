#include "chlib_k.h"
//uCOS
#include "includes.h"


/*
* ����֪ʶ:
* 1- ����uCOS 3������ һ�������ź���������  ����һ�������ź�������ʾ ����һ��������Ϣ���䲢��ʾ�����Ϣ 
*/

#define TASK_STK_SIZE              (128)  //��������ͳһʹ��128�ֽڶ�ջ��ַ
//�����������ȼ�
#define APP_START_TASK_PRIO        (4)  //��ʼ����
#define APP_MBOX_TASK_PRIO         (8)  //���������ʾ����
#define APP_SEM_TASK_PRIO          (9)  //�ź���������ʾ����
#define APP_POST_TASK_PRIO         (10) //���� �ź���Ͷ������
//���������ջ
OS_STK  APP_START_STK[TASK_STK_SIZE];
OS_STK  APP_LED_STK[TASK_STK_SIZE];
OS_STK  APP_MBOX_STK[TASK_STK_SIZE];
OS_STK  APP_SEM_STK[TASK_STK_SIZE];
OS_STK  APP_POST_STK[TASK_STK_SIZE];

OS_EVENT * msg_test;		//���������¼���ָ��
OS_EVENT * sem_test;		//�������ź���ָ��		  	   



//����Ͷ�ݣ��ź���Ͷ������
void AppPostTask(void *pdata)
{
	static uint8_t key='A';
	uint16_t task_counter=0;
	while(1)
	{
		key++;
		task_counter++;
		if(key > 'Z') key='A';            //�ı�����Ͷ�ݵ�����
		OSMboxPost(msg_test, &key);  //������Ϣ
		OSSemPost(sem_test);              //�����ź���

        printf("App Post Message&Sem:%d times\r\n", task_counter);
		OSTimeDlyHMSM(0, 0, 0, 300);
	}
}

//������պ�������
void AppMBOXTask(void *pdata)
{
	uint8_t* key;
	uint8_t err;
	uint16_t TaskCtr=0;
    pdata = pdata; //��ֹ���������� ��ʵ������
	while(1)
	{
        key = OSMboxPend(msg_test,0,&err);  //�ȴ���Ϣ����
        TaskCtr++;
        printf("Received MBox:%d \r\n", *key);
	}
}
//�ź������ԣ���ʾ����
void AppSEMTask(void *pdata)
{
	uint8_t err;
	uint16_t TaskCtr=0;
    pdata=pdata; //��ֹ���������� ��ʵ������
	while(1)
	{
		OSSemPend(sem_test,0,&err); //�ȴ��ź���
		TaskCtr++;
		printf("Received Sem:%d  \r\n", TaskCtr);
	}
}


static void AppStartTask(void *pdata)
{
	pdata = pdata; 		  
	msg_test=OSMboxCreate((void*)0);	//������Ϣ����
	sem_test=OSSemCreate(0);		//�����ź���	
    
    OSTaskCreate(AppMBOXTask,(void *)0,
                &APP_MBOX_STK[TASK_STK_SIZE-1],
                APP_MBOX_TASK_PRIO); //�������������ʾ����
    OSTaskCreate(AppSEMTask,(void *)0,
                &APP_SEM_STK[TASK_STK_SIZE-1],
                APP_SEM_TASK_PRIO); //�����ź���������ʾ����
    OSTaskCreate(AppPostTask,(void *)0,
                &APP_POST_STK[TASK_STK_SIZE-1],
                APP_POST_TASK_PRIO); //�������䣬�ź���Ͷ������
    printf("uCOSII MBox&Sem DemoTest\r\n");
 	OSTaskSuspend(APP_START_TASK_PRIO);	//������ʼ����.
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


