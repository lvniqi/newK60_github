#ifndef _GENERAL_H
#define _GENERAL_H
#include  "includes.h"
//无线模块定义
#define Wireless UART5
//CCD模块定义
typedef enum CCD_PIN
{
  SI    =      24,              
  CLK   =      25,
  AO    =      3
}CCD_PIN;
#define TSL1401_SI(x)   LPLD_GPIO_Set_b(PTE, SI, x)
#define TSL1401_CLK(x)  LPLD_GPIO_Set_b(PTE, CLK, x)
//拨码开关定义
#define   SWITCH_PORT        PTD     //蜂鸣器所在的端口
typedef enum SWITCH_PIN
{
  Switch1 =  15,
  Switch2 =  14,
  Switch3 =  13,
  Switch4 =  12,
  Switch5 =  11,
  Switch6 =  10,
  Switch7 =  9,
  Switch8 =  8,
}SWITCH_PIN;
#define Switch_Init() LPLD_GPIO_Init(SWITCH_PORT,Switch1,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(SWITCH_PORT,Switch2,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(SWITCH_PORT,Switch3,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(SWITCH_PORT,Switch4,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(SWITCH_PORT,Switch5,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(SWITCH_PORT,Switch6,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(SWITCH_PORT,Switch7,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(SWITCH_PORT,Switch8,DIR_INPUT,INPUT_PUP,IRQC_DIS)

#define Get_Switch(channel)    LPLD_GPIO_Get_b(SWITCH_PORT,16-channel)
//独立按键定义
#define   BUTTON_PORT        PTD     //蜂鸣器所在的端口
typedef enum BUTTON_PIN
{
  Button1 = 3,
  Button2 = 2,
  Button3 = 1,
  Button4 = 0,
}BUTTON_PIN;
#define Button_Init() LPLD_GPIO_Init(BUTTON_PORT,Button1,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(BUTTON_PORT,Button2,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(BUTTON_PORT,Button3,DIR_INPUT,INPUT_PUP,IRQC_DIS);\
                      LPLD_GPIO_Init(BUTTON_PORT,Button4,DIR_INPUT,INPUT_PUP,IRQC_DIS)

#define Get_Button(channel)    LPLD_GPIO_Get_b(BUTTON_PORT,4-channel)
//LED灯定义
#define   LED_PORT        PTE     //蜂鸣器所在的端口
typedef enum LED_PIN
{
  LED1    =     12,
  LED2    =     11,
  LED3    =     10,
  LED4    =     7,
}LED_PIN;
#define LED_Init()    LPLD_GPIO_Init(LED_PORT,LED1,DIR_OUTPUT,OUTPUT_H,IRQC_DIS);\
                      LPLD_GPIO_Init(LED_PORT,LED2,DIR_OUTPUT,OUTPUT_H,IRQC_DIS);\
                      LPLD_GPIO_Init(LED_PORT,LED3,DIR_OUTPUT,OUTPUT_H,IRQC_DIS);\
                      LPLD_GPIO_Init(LED_PORT,LED4,DIR_OUTPUT,OUTPUT_H,IRQC_DIS)

#define LED1_On()     LPLD_GPIO_Set_b(LED_PORT,LED1,0)
#define LED1_Off()    LPLD_GPIO_Set_b(LED_PORT,LED1,1)
#define LED2_On()     LPLD_GPIO_Set_b(LED_PORT,LED2,0)
#define LED2_Off()    LPLD_GPIO_Set_b(LED_PORT,LED2,1)
#define LED3_On()     LPLD_GPIO_Set_b(LED_PORT,LED3,0)
#define LED3_Off()    LPLD_GPIO_Set_b(LED_PORT,LED3,1)
#define LED4_On()     LPLD_GPIO_Set_b(LED_PORT,LED4,0)
#define LED4_Off()    LPLD_GPIO_Set_b(LED_PORT,LED4,1)

//蜂鸣器模块定义
#define   BEEP_PORT        PTE     //蜂鸣器所在的端口
typedef enum BEEPn
{
  BEEP0    =      26,              //对应的端口号 
}BEEPn;
#define Beep_Init()   LPLD_GPIO_Init(BEEP_PORT,BEEP0,DIR_OUTPUT,OUTPUT_L,IRQC_DIS)
#define Beep_On()     LPLD_GPIO_Set_b(BEEP_PORT,BEEP0,1)
#define Beep_Off()    LPLD_GPIO_Set_b(BEEP_PORT,BEEP0,0)

void pit_isr0();
void IO_Init();
void All_Init();
void Write_Flash();
void Reset_Flash();
#endif