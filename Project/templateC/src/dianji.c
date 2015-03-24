#include "dianji.h"

/**
 * @brief   ��װFTM�⺯��ʵ��PTD4 PTD5 PTD6 PTD7���PWM�����Ƶ�� Ƶ��Ϊ10kHz
 * @code    //�����ʼ��
 *          dianji_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void dianji_Init(void)
{
  FTM_PWM_QuickInit(FTM0_CH4_PD04, kPWM_EdgeAligned, 10000);
  FTM_PWM_QuickInit(FTM0_CH5_PD05, kPWM_EdgeAligned, 10000);
  FTM_PWM_QuickInit(FTM0_CH6_PD06, kPWM_EdgeAligned, 10000);
  FTM_PWM_QuickInit(FTM0_CH7_PD07, kPWM_EdgeAligned, 10000);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH4, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH5, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

/**
 * @brief   ��װFTM�⺯��ʵ��PTD4 PTD5 PTD6 PTD7���PWM�����Ƶ�� Ƶ��Ϊ10kHz
 * @code    //ͣ��
 *          dianji_Stop();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void dianji_Stop(void)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH4, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH5, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

/**
 * @brief   ��װFTM�⺯��ʵ��PTD4 PTD5���PWM������������ת left positive turn
 * @code    //������ת
 *          dianji_LPTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 ת��
 * @retval None
 */
void dianji_LPTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH4, duty);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH5, 0);
}

/**
 * @brief   ��װFTM�⺯��ʵ��PTD6 PTD7���PWM�������ҵ����ת right positive turn
 * @code    //�ҵ����ת
 *          dianji_RPTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 ת��
 * @retval None
 */
void dianji_RPTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, duty);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

/**
 * @brief   ��װFTM�⺯��ʵ��PTD4 PTD5���PWM������������ת left negative turn
 * @code    //������ת
 *          dianji_LNTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 ת��
 * @retval None
 */
void dianji_LNTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH4, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH5, duty);
}

/**
 * @brief   ��װFTM�⺯��ʵ��PTD6 PTD7���PWM�������ҵ����ת right negative turn
 * @code    //�ҵ����ת
 *          dianji_RNTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 ת��
 * @retval None
 */
void dianji_RNTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, duty);
}

void dianji_Control(void)
{
  if(stop || time >= dingshi)
  {
    dianji_Stop();
  }
  else
  {
    dianji_LPTurn(4000);
    dianji_RPTurn(4000);
  }
}
