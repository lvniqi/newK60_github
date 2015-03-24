#include "dianji.h"

/**
 * @brief   封装FTM库函数实现PTD4 PTD5 PTD6 PTD7输出PWM波控制电机 频率为10kHz
 * @code    //电机初始化
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
 * @brief   封装FTM库函数实现PTD4 PTD5 PTD6 PTD7输出PWM波控制电机 频率为10kHz
 * @code    //停车
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
 * @brief   封装FTM库函数实现PTD4 PTD5输出PWM波控制左电机正转 left positive turn
 * @code    //左电机正转
 *          dianji_LPTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 转速
 * @retval None
 */
void dianji_LPTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH4, duty);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH5, 0);
}

/**
 * @brief   封装FTM库函数实现PTD6 PTD7输出PWM波控制右电机正转 right positive turn
 * @code    //右电机正转
 *          dianji_RPTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 转速
 * @retval None
 */
void dianji_RPTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, duty);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

/**
 * @brief   封装FTM库函数实现PTD4 PTD5输出PWM波控制左电机反转 left negative turn
 * @code    //左电机反转
 *          dianji_LNTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 转速
 * @retval None
 */
void dianji_LNTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH4, 0);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH5, duty);
}

/**
 * @brief   封装FTM库函数实现PTD6 PTD7输出PWM波控制右电机反转 right negative turn
 * @code    //右电机反转
 *          dianji_RNTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 转速
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
