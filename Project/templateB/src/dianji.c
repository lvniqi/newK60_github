#include "dianji.h"

/**
 * @brief   封装FTM库函数实现PTD6 PTD7输出PWM波控制电机 频率为10kHz
 * @code    //电机初始化
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
 * @brief   封装FTM库函数实现PTD6 PTD7输出PWM波控制电机 频率为10kHz
 * @code    //停车
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
 * @brief   封装FTM库函数实现PTD6 PTD7输出PWM波控制电机正转positive turn
 * @code    //电机正转
 *          dianji_PTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 转速
 * @retval None
 */
void dianji_PTurn(u32 duty)
{
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH6, duty);
  FTM_PWM_ChangeDuty(HW_FTM0, HW_FTM_CH7, 0);
}

/**
 * @brief   封装FTM库函数实现PTD6 PTD7输出PWM波控制电机反转negative turn
 * @code    //电机反转
 *          dianji_NTurn(5000);
 *
 * @endcode         
 * @param  duty : 0-10000 转速
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
  //过冲严重防止电机失控
  if(dianji_max_cnt>=10)
  {
    dianji_max_cnt=10;
    dianji_protect=true;
    //beep_time=10;
  }
  //编码器松了
  if(dianji_min_cnt>=200)
  {
    dianji_min_cnt=200;
    dianji_protect=true;
    //beep_time=10;
  }
  */
  
}
