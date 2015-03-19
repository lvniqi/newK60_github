#include "General.h"

float P=0,I=0,Dif=0,p=0,d=0,t=0,v=0;
int zhi_speed=0,wan_speed=0,SZ=0;
uint32 Reset[10] = {340,80,10,17,40,11000,32,220,155,150};


void Read_Flash()
{
  P = (flash_read(200,0,uint32));
  I = (flash_read(200,4,uint32));
  Dif = (flash_read(200,8,uint32));
  p = flash_read(200,12,uint32);
  d = flash_read(200,16,uint32);
  t = flash_read(200,20,uint32);
  v = (flash_read(200,24,uint32));
  zhi_speed = flash_read(200,28,uint32);
  wan_speed = flash_read(200,32,uint32);
  pd_speed = flash_read(200,36,uint32);
}
void Write_Flash()
{
  flash_erase_sector(200);
  flash_write(200,0,(uint32)P);
  flash_write(200,4,(uint32)I);
  flash_write(200,8,(uint32)Dif);
  flash_write(200,12,(uint32)p);
  flash_write(200,16,(uint32)d);
  flash_write(200,20,(uint32)t);
  flash_write(200,24,(uint32)v);
  flash_write(200,28,zhi_speed);
  flash_write(200,32,wan_speed);
  flash_write(200,36,pd_speed);
}
void Reset_Flash()
{
  flash_erase_sector(200);
  flash_write(200,0,Reset[0]);
  flash_write(200,4,Reset[1]);
  flash_write(200,8,Reset[2]);
  flash_write(200,12,Reset[3]);
  flash_write(200,16,Reset[4]);
  flash_write(200,20,Reset[5]);
  flash_write(200,24,Reset[6]);
  flash_write(200,28,Reset[7]);
  flash_write(200,32,Reset[8]);
  flash_write(200,36,Reset[9]);
}

void IO_Init()
{
  LPLD_GPIO_Init(PTB,1,DIR_INPUT,INPUT_PUP,IRQC_DIS);
  LPLD_GPIO_Init(PTB,2,DIR_INPUT,INPUT_PUP,IRQC_DIS);
   //LPLD_GPIO_Init(PTB,2,DIR_OUTPUT,OUTPUT_L,IRQC_DIS);
}
void CCD_Init()
{
  LPLD_GPIO_Init(PTE,SI,DIR_OUTPUT,OUTPUT_L,IRQC_DIS);
  LPLD_GPIO_Init(PTE,CLK,DIR_OUTPUT,OUTPUT_L,IRQC_DIS);
  LPLD_ADC_Chn_Enable(ADC0, AO);
  uint8 i;
   //单次采集曝光处理
  TSL1401_SI(1);
  asm("nop");
  TSL1401_CLK(1);
  //delay();
  TSL1401_SI(0);
  //发送第1个CLK
  asm("nop");
  TSL1401_CLK(0);
  
  //发送第2~129个CLK
  for(i=1; i<129; i++)
  {
    asm("nop");
    TSL1401_CLK(1);
    asm("nop"); 
    TSL1401_CLK(0);
  }
}

void All_Init()
{
   Beep_Init();
   Switch_Init();
   Button_Init();
   Read_Flash();
   flash_init();
   LPLD_ADC_Init(ADC0, MODE_8, CONV_SING);
   LPLD_ADC_Init(ADC1, MODE_8, CONV_SING);
   LPLD_ADC_Chn_Enable(ADC1, 4);
   LPLD_ADC_Chn_Enable(ADC1, 5);
   LPLD_ADC_Chn_Enable(ADC1, 6);
   LPLD_ADC_Chn_Enable(ADC1, 7);
   LPLD_ADC_Chn_Enable(ADC1, 10);
   LPLD_ADC_Chn_Enable(ADC1, 11);
   LPLD_ADC_Chn_Enable(ADC1, 12);
   LPLD_ADC_Chn_Enable(ADC1, 13);
   LPLD_ADC_Chn_Enable(ADC1, 14);//陀螺仪 
   //LPLD_ADC_Chn_Enable(ADC1, 20);//电池电压 
   LPLD_PIT_Init(PIT0,1000,pit_isr0);                         				   //初始化PIT0，定时时间为： 1000us
   CCD_Init();
   LPLD_UART_Init(Wireless,115200);
   LPLD_FTM0_PWM_Init(10000);
   LPLD_FTM1_PWM_Init(50);
   LPLD_FTM0_PWM_Open(4,0);
   LPLD_FTM0_PWM_ChangeDuty(4,0);
   LPLD_FTM0_PWM_Open(5,0);
   LPLD_FTM0_PWM_ChangeDuty(5,0);
   LPLD_FTM0_PWM_Open(6,0);
   LPLD_FTM0_PWM_ChangeDuty(6,0);
   LPLD_FTM0_PWM_Open(7,0);
   LPLD_FTM0_PWM_ChangeDuty(7,0);
   LPLD_FTM1_PWM_Open(0,0);
   LPLD_FTM1_PWM_ChangeDuty(0,Servomiddle);
   DMA_count_Init(DMA_CH0, PTC5, 3000, DMA_rising);                                //欧姆龙1  PTC5
   DMA_count_Init(DMA_CH10, PTA27, 3000, DMA_rising);                              //欧姆龙2  PTA27 
   OLED_Init(); 
   zhi_Speed = zhi_speed;
   wan_Speed = wan_speed;
   IO_Init();
}