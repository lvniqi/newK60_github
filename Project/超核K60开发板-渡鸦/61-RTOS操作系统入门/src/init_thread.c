#include <rtthread.h>
#include "chlib_k.h"

/* �߳�1 ��� */
void t1_thread_entry(void* parameter)
{
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}

/* �߳�2 ��� */
void t2_thread_entry(void* parameter)
{
    GPIO_QuickInit(HW_GPIOE, 7, kGPIO_Mode_OPP);
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 7);
        DelayMs(500);
    } 
}

void init_thread_entry(void* parameter)
{

    rt_thread_t tid;
    
    /* �����߳� t1 ��ջ��С256 ���ȼ�24 ʱ��Ƭ20(û����)*/
    tid = rt_thread_create("t1", t1_thread_entry, RT_NULL, 256, 0x24, 20);
    if (tid != RT_NULL) rt_thread_startup(tid);
  
    /* �����߳� t2 ��ջ��С256 ���ȼ�24 ʱ��Ƭ20(û����)*/
    tid = rt_thread_create("t2", t2_thread_entry, RT_NULL, 256, 0x24, 20);
    if (tid != RT_NULL) rt_thread_startup(tid);
   
    /* ɾ��������� */
    tid = rt_thread_self();
    rt_thread_delete(tid); 
}

