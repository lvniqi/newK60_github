#include "beep.h"

/**
 * @brief 蜂鸣器初始化函数PTC10
 * @code  //蜂鸣器初始化
 *        beep_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void beep_Init(void)
{ 
  GPIO_QuickInit(BEEP_PORT, BEEP_PIN, kGPIO_Mode_OPP);
  GPIO_WriteBit(BEEP_PORT, BEEP_PIN, 0); //蜂鸣器初始化输出为1
}
