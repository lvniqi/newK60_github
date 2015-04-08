#include "myUart.h"
txd_sequeue TXD_SEQUEUE;
u8 _TXD_DATASPACE[TXD_LENTH];
static void UART_TX_ISR(uint16_t * byteToSend)
{
    Sequeue_Out_Queue(&TXD_SEQUEUE);
    *byteToSend = Sequeue_Get_Front(&TXD_SEQUEUE);
    if(!(TXD_SEQUEUE.len))
    {
        UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, false);  
    }
}
void myUart_Init(){
  UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
  Sequeue_Init(&TXD_SEQUEUE,_TXD_DATASPACE,TXD_LENTH);
  /** print message before mode change*/
  printf("uart will be send on interrupt mode...\r\n");
  /** register callback function*/
  UART_CallbackTxInstall(HW_UART0, UART_TX_ISR);
  /** open TX interrupt */
  UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, true);
}
char MyPutchar(u8 p)
{
   if(TXD_SEQUEUE.len_max < TXD_SEQUEUE.len+1)
   {
     return 0;
   }
   else
   {
      /*if(TXD_SEQUEUE.full)
      {
        TXED_FLAG = 0;
        UART_D_REG(UARTN[UART1]) = p;
        uart_tx_irq_en(UART1);
      }
      else
      {*/
        __disable_irq();
        Sequeue_In_Queue(&TXD_SEQUEUE,p);
        __enable_irq();
      //}
      return 1;
   }
}
char MyPrint(u8* p, int len)
{
   int i;
   if(TXD_SEQUEUE.len_max- TXD_SEQUEUE.len< len+3)
   {
     return 0;
   }
   else
   {
     __disable_irq();
     for(i=0;i<len;i++)
     {
        if(p[i] == 0xff)
        {
          p[i] = 0xfe;
        }
        /*if(TXED_FLAG)
        {
          TXED_FLAG = 0;
          UART_D_REG(UARTN[UART1]) = p[i];
        }
        else*/
        {
          Sequeue_In_Queue(&TXD_SEQUEUE,p[i]);
        }
     }
     Sequeue_In_Queue(&TXD_SEQUEUE,0xff);
     __enable_irq();
     return 1;
   }
}