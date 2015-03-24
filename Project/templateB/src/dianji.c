#include "dianji.h"

/**
 * @brief   ��װFTM�⺯��ʵ��PTD6 PTD7���PWM�����Ƶ�� Ƶ��Ϊ10kHz
 * @code    //�����ʼ��
 *          dianji_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void dianji_Init(void)
{
  FTM_PWM_QuickInit(FTM0_CH6_PD06, kPWM_EdgeAligned, 10000);
  FTM_PWM_QuickInit(FTM0_CH7_PD07, kPWM_EdgeAligned, 10000);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

/**
 * @brief   ��װFTM�⺯��ʵ��PTD6 PTD7���PWM�����Ƶ�� Ƶ��Ϊ10kHz
 * @code    //ͣ��
 *          dianji_Stop();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void dianji_Stop(void)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

/**
 * @brief   ��װFTM�⺯��ʵ��PTD6 PTD7���PWM�����Ƶ����תpositive turn
 * @code    //�����ת
 *          dianji_PTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 ת��
 * @retval None
 */
void dianji_PTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, duty);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

/**
 * @brief   ��װFTM�⺯��ʵ��PTD6 PTD7���PWM�����Ƶ����תnegative turn
 * @code    //�����ת
 *          dianji_NTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 ת��
 * @retval None
 */
void dianji_NTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, duty);
}

void dianji_Control(void)
{  

  if(stop || time >= dingshi)
  {
    dianji_Stop();
    //beep_time=10;
  }
  else
  {
    //dianji_PTurn(2500); //spexpect=100
    dianji_PID();
    dianji_PTurn(dianji);
  }
}

void dianji_PID(void)
{
  
  dianji_last=dianji;
  sp_e0_last_last=sp_e0_last;
  sp_e0_last=sp_e0;
  
  sp_expect=(u32)(155-ABS((duoji-duoji_mid)/30.0));
  //sp_expect=120;
  
  sp_e0=sp_expect-sp;
  sp_e1=sp_e0-sp_e0_last;
  sp_e2=sp_e0+sp_e0_last_last-2*sp_e0_last;
  
  dianji_Kp=28;
  dianji_Ki=0.09;
  dianji_Kd=0;
  
  dianji=(u32)(dianji_Ki*sp_e0+dianji_Kp*sp_e1+dianji_Kd*sp_e2 + dianji_last);
  
  /*
  if(sp>=200)
    dianji_max_cnt++;
  if(sp<=1)
    dianji_min_cnt++;
  //�������ط�ֹ���ʧ��
  if(dianji_max_cnt>=10)
  {
    dianji_max_cnt=10;
    dianji_protect=true;
    //beep_time=10;
  }
  //����������
  if(dianji_min_cnt>=200)
  {
    dianji_min_cnt=200;
    dianji_protect=true;
    //beep_time=10;
  }
  */
  
}
