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
  int           temp[2] = {0};
  unsigned int  temp1[2] = {0};
  unsigned char databuf[8] = {0};
  unsigned char i;
  for(i=0;i<=1;i++)
  { 
    temp[i] = (int)OutData[i];
    temp1[i] = (unsigned int)temp[i]; 
  } 
  for(i=0;i<=1;i++) 
  {
    databuf[i*2] = (unsigned char)(temp1[i]);
    databuf[i*2+1] = (unsigned char)(temp1[i]);
  } 
  databuf[8-1] = 0xff;
  for(i=0;i<=8-1;i++)
    UART_WriteByte(instance,databuf[i]);
}
