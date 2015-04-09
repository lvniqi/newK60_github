#include "myUart.h"
txd_sequeue TXD_SEQUEUE;
rxd_data RXD_DATA;
u8 _TXD_DATASPACE[TXD_LENTH];
u8 _RXD_DATASPACE[RXD_LENTH];
static void UART_TX_ISR(uint16_t * byteToSend){
  *byteToSend = Sequeue_Get_Front(&TXD_SEQUEUE);
  Sequeue_Out_Queue(&TXD_SEQUEUE);
  if(!(TXD_SEQUEUE.len)){
    UART_ITDMAConfig(HW_UART3, kUART_IT_Tx, false); 
    TXD_SEQUEUE.sending = false;
  }
}
static void UART_RX_ISR(uint16_t byteReceived)
{
    /* 将接收到的数据发送回去 */
    static int i;
    if(byteReceived == '\n'){
      if(i != 0){
          RXD_DATA.isgeted = true;
      }
      else{
        i = 0;
      }
    }
    else{
      (RXD_DATA.dataspace)[i++] = byteReceived;
    }
}
void myUart_Init(){
  UART_QuickInit(UART3_RX_PC16_TX_PC17, 115200);
  Sequeue_Init(&TXD_SEQUEUE,_TXD_DATASPACE,TXD_LENTH);
  (&RXD_DATA)->dataspace = _RXD_DATASPACE;
  (&RXD_DATA)->len_max = RXD_LENTH;
  (&RXD_DATA)->isgeted = false;
  /** print message before mode change*/
  printf("uart will be send on interrupt mode...\r\n");
  /** register callback function*/
  UART_CallbackTxInstall(HW_UART3, UART_TX_ISR);
  /** open TX interrupt */
  TXD_SEQUEUE.sending = true;
  UART_ITDMAConfig(HW_UART3, kUART_IT_Tx, true);
  /*  配置UART 中断配置 打开接收中断 安装中断回调函数 */
  UART_CallbackRxInstall(HW_UART3, UART_RX_ISR);
  /* 打开串口接收中断功能 IT 就是中断的意思*/
  UART_ITDMAConfig(HW_UART3, kUART_IT_Rx, true);
}
char MyPutchar(u8 p){
   __disable_irq();
   u16 len_max = TXD_SEQUEUE.len_max;
   u16 len = TXD_SEQUEUE.len;
   __enable_irq();
   if(len_max < len+1){
     return 0;
   }
   else{
        /** open TX interrupt */
        __disable_irq();
        Sequeue_In_Queue(&TXD_SEQUEUE,p);
        __enable_irq();
        if(TXD_SEQUEUE.sending == false){
          UART_ITDMAConfig(HW_UART3, kUART_IT_Tx, true);
        }
    return 1;
   }
}
char MyPrint(u8* p, int len){
   int i;
   __disable_irq();
   u16 len_max = TXD_SEQUEUE.len_max;
   u16 t_len = TXD_SEQUEUE.len;
   __enable_irq();
   if(len_max - t_len< len+10){
     return 0;
   }
   else{
     for(i=0;i<len;i++){
        if(p[i] == 0xff){
          p[i] = 0xfe;
        }
        MyPutchar(p[i]);
     }
     MyPutchar(0xff);
     return 1;
   }
}