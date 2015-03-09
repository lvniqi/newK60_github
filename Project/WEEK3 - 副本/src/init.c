#include "init.h"
u32 RunTime = 0;
float abs(float a){
  if (a > 0)
    return a;
  else
    return  - a;
}

/********************************************************************
 * ���� : Pit0Init
 * ���� : 1msʱ�ӵ��ȶ�ʱ��
 * ���� : ��
 * ��� : ��
 ***********************************************************************/
void BaseTimer_Init(void){
  PIT_QuickInit(HW_PIT_CH0, 1000);
  PIT_CallbackInstall(HW_PIT_CH0, BaseTimer);
  PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF, ENABLE);
}

/********************************************************************
 * ���� : BaseTimer
 * ���� : ʱ�ӵ��ȶ�ʱ��
 * ���� : ��
 * ��� : ��
 ***********************************************************************/
void BaseTimer(void){
  u8 i;
  for (i = 0; i < THREAD_NUM; i++){
    if ((thread + i)->count > 0){
      (thread + i)->count -= 1;
    }
    else{
      (thread + i)->ready = 1;
      (thread + i)->count = ((thread + i)->load - 1);
    }
  }
}

/********************************************************************
 * ���� : beep_Init
 * ���� : ��������ʼ��
 * ���� : ��
 * ��� : ��
 ***********************************************************************/
void beep_Init(void){
  GPIO_QuickInit(HW_GPIOD, 10, kGPIO_Mode_OPP);
  GPIO_WriteBit(HW_GPIOD, 10, 0); //��������ʼ�����Ϊ0
}
