#include  "VisualScope.h"
float OutData[4] = { 0 };
const char alf[10] = "0123456789";
unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
{
    unsigned short CRC_Temp;
    unsigned char i,j;
    CRC_Temp = 0xffff;

    for (i=0;i<CRC_CNT; i++){      
        CRC_Temp ^= Buf[i];
        for (j=0;j<8;j++) {
            if (CRC_Temp & 0x01)
                CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
            else
                CRC_Temp = CRC_Temp >> 1;
        }
    }
    return(CRC_Temp);
}

void OutPut_Data(void)
{
  int temp[4] = {0};
  unsigned int temp1[4] = {0};
  unsigned char databuf[10] = {0};
  unsigned char i;
  unsigned short CRC16 = 0;
  for(i=0;i<4;i++)
   {
    
    temp[i]  = (int)OutData[i];
    temp1[i] = (unsigned int)temp[i];
    
   }
   
  for(i=0;i<4;i++) 
  {
    databuf[i*2]   = (unsigned char)(temp1[i]%256);
    databuf[i*2+1] = (unsigned char)(temp1[i]/256);
  }
  
  CRC16 = CRC_CHECK(databuf,8);
  databuf[8] = CRC16%256;
  databuf[9] = CRC16/256;
  
  for(i=0;i<10;i++)
    LPLD_UART_PutChar(UART5,databuf[i]);
}


void Send_Data(uint8 number)
{
  int wan,qian,bai,shi,ge=0;
  wan = (int)(OutData[number])%100000/10000;
  qian = (int)(OutData[number])%10000/1000;
  bai = (int)(OutData[number])%1000/100;
  shi = (int)(OutData[number])%100/10;
  ge = (int)(OutData[number])%10;
  
  if(wan!=0)
  {
    LPLD_UART_PutChar(Wireless,alf[wan]);
    LPLD_UART_PutChar(Wireless,alf[qian]);
    LPLD_UART_PutChar(Wireless,alf[bai]);
    LPLD_UART_PutChar(Wireless,alf[shi]);
    LPLD_UART_PutChar(Wireless,alf[ge]);
  }
  else if(qian!=0)
  {
    LPLD_UART_PutChar(Wireless,alf[qian]);
    LPLD_UART_PutChar(Wireless,alf[bai]);
    LPLD_UART_PutChar(Wireless,alf[shi]);
    LPLD_UART_PutChar(Wireless,alf[ge]);
  }
    else if(bai!=0)
    {
    LPLD_UART_PutChar(Wireless,alf[bai]);
    LPLD_UART_PutChar(Wireless,alf[shi]);
    LPLD_UART_PutChar(Wireless,alf[ge]);
    }
    else if(shi!=0)
    {
    LPLD_UART_PutChar(Wireless,alf[shi]);
    LPLD_UART_PutChar(Wireless,alf[ge]);
    }
    else
    {
    LPLD_UART_PutChar(Wireless,alf[ge]);
    }
}

void OutPut_Sonic(void)
{
  LPLD_UART_PutChar(Wireless,'#');
  Send_Data(0);
  LPLD_UART_PutChar(Wireless,'@');
  Send_Data(1);
  LPLD_UART_PutChar(Wireless,'@');
  Send_Data(2);
  LPLD_UART_PutChar(Wireless,'@');
  Send_Data(3);
}