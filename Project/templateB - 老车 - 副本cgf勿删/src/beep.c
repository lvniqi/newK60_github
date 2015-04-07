#include "beep.h"

/**
 * @brief ��������ʼ������PTC10
 * @code  //��������ʼ��
 *        beep_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void beep_Init(void)
{ 
  GPIO_QuickInit(BEEP_PORT, BEEP_PIN, kGPIO_Mode_OPP);
  GPIO_WriteBit(BEEP_PORT, BEEP_PIN, 0); //��������ʼ�����Ϊ1
}
