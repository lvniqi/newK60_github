#ifndef _OLED_H_
#define _OLED_H_
#include "includes.h"

#define byte uint8
#define word uint16
#define GPIO_PIN_MASK      0x1Fu    //0x1f=31,限制位数为0--31有效
#define GPIO_PIN(x)        (((1)<<(x & GPIO_PIN_MASK)))  //把当前位置1

#define   OLED_GPORT      PTB_BASE_PTR       //OLED所在的端口
#define   OLED_PPORT      PORTB_BASE_PTR     //OLED所在的端口

typedef enum OLEDn
{
  OLED0    =      20,              //对应的引脚号
  OLED1    =      21,
  OLED2    =      22,
  OLED3    =      23
}OLEDn;

 void OLED_Init(void);
 void OLED_CLS(void);
 void OLED_P6x8Str(byte x,byte y,byte ch[]);
 void OLED_P8x16Str(byte x,byte y,byte ch[]);
 void OLED_P12x12Str(byte x,byte y,byte ch[]);
 void OLED_P10x10Str(byte x,byte y,byte ch[]);
 void OLED_Print(byte x, byte y, byte ch[]);
 void OLED_Print1(byte x, byte y, byte ch[]);
 void OLED_PutPixel(byte x,byte y);
 void OLED_Rectangle(byte x1,byte y1,byte x2,byte y2,byte gif);
 void OLED_Fill(byte dat);
 void OLED_writenum_1(byte x,byte y,int data_num); 
 void OLED_writenum_2(byte x,byte y,int data_num); 
 void OLED_writenum_3(byte x,byte y,int data_num); 
 void OLED_writenum_4(byte x,byte y,int data_num); 
 void OLED_write_float(byte x,byte y,float data_num); 
 void OLED_Disp_Paremeter();
 void OLED_Change_Perameter();
#endif