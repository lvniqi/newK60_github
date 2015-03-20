#include "timer.h"

/**
 * @brief   ��ʱ��0 1ms�жϳ�ʼ��
 * @code    //PIT0��ʼ��
 *          PIT0_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void PIT0_Init(void)
{
  //��ʼ��PITģ���0ͨ��������1ms�ж�
  PIT_QuickInit(HW_PIT_CH0, 1000);
  PIT_CallbackInstall(HW_PIT_CH0, PIT0_CallBack); //ע��ص�����
  PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF, ENABLE); //�����ж�
}

/**
 * @brief   ��ʱ��0�жϻص�����
 * @code    //�жϴ���д�뺯����
 *
 *
 * @endcode         
 * @param  None
 * @retval None
 */
//�жϻص����� 1ms��ʱ
void PIT0_CallBack(void)
{
  DisableInterrupts();
  
  time ++;
  duoji_time++;
  startTime ++;
  if(startTime >= dianji_StartTime)
  {
    startTime = dianji_StartTime;
    dianji_time++;
  }
  /**
    *your Interrupt code
  */
  
  ad1 += ADC_GETDATA(1);
  ad2 += ADC_GETDATA(2);
  ad3 += ADC_GETDATA(3);
  ad4 += ADC_GETDATA(4);
  ad5 += ADC_GETDATA(5);
  ad6 += ADC_GETDATA(6);
  ad7 += ADC_GETDATA(7);
  ad8 += ADC_GETDATA(8);
  
  if(duoji_time >= duoji_ControlTime)
  {
    duoji_time = 0;
    ad1_avg=ad1/duoji_ControlTime;ad2_avg=ad2/duoji_ControlTime;
    ad3_avg=ad3/duoji_ControlTime;ad4_avg=ad4/duoji_ControlTime;
    ad5_avg=ad5/duoji_ControlTime;ad6_avg=ad6/duoji_ControlTime;
    ad7_avg=ad7/duoji_ControlTime;ad8_avg=ad8/duoji_ControlTime;
    
    duoji_Control8(); //������Ƴ���8
    OutPut_Data(); //������������
    
    ad1=0;ad2=0;ad3=0;ad4=0;ad5=0;ad6=0;ad7=0;ad8=0;
  }

  if(startTime >= dianji_StartTime)
  { 
    startTime = dianji_StartTime; //�����ӳ�2s
    
    if(dianji_time >= dianji_ControlTime)
    { 
      sp=DMA_count_get(DMAChannel); //10ms����������
      
      dianji_time = 0;
      
      dianji_Control();
    }
  }
  /**
   *��ʱ����
  */
  if(time >= dingshi)
  {
    time = dingshi;
  }
  
  EnableInterrupts();
}
