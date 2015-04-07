#include "myUart.h"

void UART4_Init(u32 BaudRate)
{
  u16 ubd, brfa;

  u8 temp;
    
  PORTC->PCR[15] = PORT_PCR_MUX(0x3);   //引脚使能
  PORTC->PCR[14] = PORT_PCR_MUX(0x3); 
  SIM->SCGC1 |= SIM_SCGC1_UART4_MASK;   //时钟使能

  UART4->C2 &= ~((1<<2) | (1<<3)); //禁止发送接收   控制寄存器C2
  
  UART4->C1 = 0;  //控制器C1 全部使用默认配备

  ubd = (u16)((50000000)/(BaudRate * 16));   //波特率设置

  UART4->BDH = (u8)ubd>>8;  
  UART4->BDL = (u8)(ubd);
  
  
  brfa = (((50000000)/(BaudRate * 16)) - (ubd * 32));  //波特率微调 1/32的增量

  temp = UART4->C4 & ~(UART_C4_BRFA(0x1F)); 
  UART4->C4 = temp | UART_C4_BRFA(brfa);
  

  UART4->C2 |= ((1<<2) | (1<<3));  //允许发送接收

  return;
}

void UART4_SendByte(u8 Char)
{

    while(!(UART4->S1) & UART_S1_TDRE_MASK); //UARTx_S1状态寄存器
      UART4->D = Char;
    return;
}
