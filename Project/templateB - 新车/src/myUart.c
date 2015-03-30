#include "myUart.h"

void UART4_Init(u32 BaudRate)
{
  u16 ubd, brfa;

  u8 temp;
    
  PORTC->PCR[15] = PORT_PCR_MUX(0x3);   //����ʹ��
  PORTC->PCR[14] = PORT_PCR_MUX(0x3); 
  SIM->SCGC1 |= SIM_SCGC1_UART4_MASK;   //ʱ��ʹ��

  UART4->C2 &= ~((1<<2) | (1<<3)); //��ֹ���ͽ���   ���ƼĴ���C2
  
  UART4->C1 = 0;  //������C1 ȫ��ʹ��Ĭ���䱸

  ubd = (u16)((50000000)/(BaudRate * 16));   //����������

  UART4->BDH = (u8)ubd>>8;  
  UART4->BDL = (u8)(ubd);
  
  
  brfa = (((50000000)/(BaudRate * 16)) - (ubd * 32));  //������΢�� 1/32������

  temp = UART4->C4 & ~(UART_C4_BRFA(0x1F)); 
  UART4->C4 = temp | UART_C4_BRFA(brfa);
  

  UART4->C2 |= ((1<<2) | (1<<3));  //�����ͽ���

  return;
}

void UART4_SendByte(u8 Char)
{

    while(!(UART4->S1) & UART_S1_TDRE_MASK); //UARTx_S1״̬�Ĵ���
      UART4->D = Char;
    return;
}
