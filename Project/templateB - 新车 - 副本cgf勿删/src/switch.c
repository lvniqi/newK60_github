#include "switch.h"

/**
 * @brief   拨码开关初始化函数 PTC2-PTC9
 * @code    拨码开关内部输入下拉
 *
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void switch_Init(void)
{
  //上拉输入
  GPIO_QuickInit(HW_GPIOC, 2, kGPIO_Mode_IPU);
  GPIO_QuickInit(HW_GPIOC, 3, kGPIO_Mode_IPU);
  GPIO_QuickInit(HW_GPIOC, 4, kGPIO_Mode_IPU);
  GPIO_QuickInit(HW_GPIOC, 5, kGPIO_Mode_IPU);
  /*
  GPIO_QuickInit(HW_GPIOC, 6, kGPIO_Mode_IPU);
  GPIO_QuickInit(HW_GPIOC, 7, kGPIO_Mode_IPU);
  GPIO_QuickInit(HW_GPIOC, 8, kGPIO_Mode_IPU);
  GPIO_QuickInit(HW_GPIOC, 9, kGPIO_Mode_IPU);
  */
  
  GPIO_CallbackInstall(HW_GPIOC, GPIOC_ISR);
  
  GPIO_QuickInit(HW_GPIOC, 6, kGPIO_Mode_IPU);
  GPIO_ITDMAConfig(HW_GPIOC, 6, kGPIO_IT_FallingEdge, true);
  
  GPIO_QuickInit(HW_GPIOC, 7, kGPIO_Mode_IPU);
  GPIO_ITDMAConfig(HW_GPIOC, 7, kGPIO_IT_FallingEdge, true);
  
  GPIO_QuickInit(HW_GPIOC, 8, kGPIO_Mode_IPU);
  GPIO_ITDMAConfig(HW_GPIOC, 8, kGPIO_IT_FallingEdge, true);
  
  GPIO_QuickInit(HW_GPIOC, 9, kGPIO_Mode_IPU);
  GPIO_ITDMAConfig(HW_GPIOC, 9, kGPIO_IT_FallingEdge, true);
}

void GPIOC_ISR(u32 array)
{
  
  GPIO_ITDMAConfig(HW_GPIOC, 6, kGPIO_IT_FallingEdge, false);
  GPIO_ITDMAConfig(HW_GPIOC, 7, kGPIO_IT_FallingEdge, false);
  GPIO_ITDMAConfig(HW_GPIOC, 8, kGPIO_IT_FallingEdge, false);
  GPIO_ITDMAConfig(HW_GPIOC, 9, kGPIO_IT_FallingEdge, false);
  
  if(get_Switch(2) == 1)
  {
    if(array & (1 << 6))
    {
      up(); 
    }
    if(array & (1 << 7))
    {
      down();
    }
    if(array & (1 << 8))
    {
      plus();
    }
    if(array & (1 << 9))
    {
      minus();
    }
  }
  
  GPIO_ITDMAConfig(HW_GPIOC, 6, kGPIO_IT_FallingEdge, true);
  GPIO_ITDMAConfig(HW_GPIOC, 7, kGPIO_IT_FallingEdge, true);
  GPIO_ITDMAConfig(HW_GPIOC, 8, kGPIO_IT_FallingEdge, true);
  GPIO_ITDMAConfig(HW_GPIOC, 9, kGPIO_IT_FallingEdge, true);
  
}

void up(void)
{
  operation = UP;
}

void down(void)
{
  operation = DOWN;
}

void plus(void)
{
 operation = PLUS; 
}

void minus(void)
{
  operation = MINUS;
}
