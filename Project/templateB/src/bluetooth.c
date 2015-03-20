#include "bluetooth.h"

u32 instance;

/**
 * @brief 蓝牙初始化程序，使用UART3_RX_PC16_TX_PC17
 * @code  //蓝牙初始化程序
 *        BlueTooth_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
 
void BlueTooth_Init(void)
{
  instance = UART_QuickInit(UART3_RX_PC16_TX_PC17, 115200); //初始化串口3，波特率为115200 作为蓝牙串口
}

void OutPut_Data(void)
{
  u8 databuf[8] = {0};
  
  databuf[0] = ad1_avg;
  databuf[1] = ad2_avg;
  databuf[2] = ad3_avg;
  databuf[3] = ad4_avg;
  databuf[4] = ad5_avg;
  databuf[5] = ad6_avg;
  databuf[6] = ad7_avg;
  databuf[7] = ad8_avg;

  for(int i=0;i<8;i++)
    UART_WriteByte(instance,databuf[i]);
}
