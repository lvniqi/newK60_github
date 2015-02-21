#include <rtthread.h>
#include "chlib_k.h"

/* �߳�1 ��� */
void t1_thread_entry(void* parameter)
{
    rt_kprintf("t1\r\n");
    GPIO_QuickInit(HW_GPIOB, 22, kGPIO_Mode_OPP);
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOB, 22);
        DelayMs(500);
    }
}

/* �߳�2 ��� */
void t2_thread_entry(void* parameter)
{
    rt_kprintf("t2\r\n");
    GPIO_QuickInit(HW_GPIOB, 21, kGPIO_Mode_OPP);
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOB, 21);
        DelayMs(500);
    } 
}

void init_thread_entry(void* parameter)
{

    rt_thread_t tid;
    
    rt_kprintf("enter init_thread_entry\r\n");
    
    /* �����߳� t1 ��ջ��С256 ���ȼ�24 ʱ��Ƭ20(û����)*/
    tid = rt_thread_create("t1", t1_thread_entry, RT_NULL, 256, 4, 20);
    if (tid != RT_NULL) rt_thread_startup(tid);
  
    /* �����߳� t2 ��ջ��С256 ���ȼ�24 ʱ��Ƭ20(û����)*/
    tid = rt_thread_create("t2", t2_thread_entry, RT_NULL, 256, 5, 20);
    if (tid != RT_NULL) rt_thread_startup(tid);
   
    /* ɾ��������� */
    tid = rt_thread_self();
    rt_thread_delete(tid);
}

