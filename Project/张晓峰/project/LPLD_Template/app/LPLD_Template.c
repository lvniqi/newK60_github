/*
 *程序说明：更换检测板，程序基本没问题，14.35S完成47.5M赛道
 *
 *引脚说明：↓
 *
 *8路电感：PTC8，PTC9，PTC10，PTC11，PTB4，PTB5，PTB6，PTB7
 *
 *电机4路PWM：PTD4，PTD5，PTD6，PTD7
 *
 *舵机1路PWM：PTA8
 *
 *欧姆龙编码器2路IO口：PTA27, PTC5
 *
 *蜂鸣器1路IO口：PTE26
 *
 *OLED4路IO口：PTB20，PTB21，PTB22，PTB23 
 *
 *4LED灯：PTE12，PTE11，PTE10，PTE7
 *
 *独立按键：PTD3，PTD2，PTD1，PTD0
 *
 *无线模块TXD RXD:PTE8 PTE9
 *
 *CCD2路IO 1路AD口：PTE24，PTE25  ADC0_DP3
 *
 *SD模块: PTE0, PTE1, PTE2, PTE3, PTE4, PTE5, PTE6
 *
 *拨码开关：PTD8，PTD9，PTD10，PTD11，PTD12，PTD13，PTD14，PTD15
 *
 *陀螺仪与加速度计：PTB10
 */

#include "includes.h"
/*
 * 
 *  变量定义
 * 
 *
 */
uint16 pit_flag       = 0;
uint16 sz_flag        = 0;//十字
uint16 pd_flag        = 0;//坡道
uint16 lcd_flag       = 0;
uint16 ccd_flag       = 0; 
uint16 pipe_time      = 0;
uint8 ccd_cownum      = 0;
uint8 pipe_flag       = 0;
uint8 ad_flag         = 0;
uint8 isr_flag        = 0;
uint8 speed_flag      = 0;
uint8 ccd_complete    = FALSE;
uint8 Beep_Flag       = FALSE;
uint16 Beep           = 0;
uint16 tempbrick      = 0;
uint8 LCD_Mode        = 0;
uint16 time_limit     = 16000;
uint32 straight_l       =0;
uint32 straight_r       =0;

uint32 bs_up            =0;
uint8 CCD =0;
uint8 CCD_Mode          =1;

uint8 program =1;
uint8 spd =0;
uint8 podao=0;
   
uint8 Brick_Flag      = 0;
uint8 Brick_Dir       = Straight;
uint16 Brick          = 0;
uint16 Straight_Brick = 0;
/*
 * 
 *  主函数
 * 
 *
 */
void main (void)
{
  All_Init();
  while(1)
  {
/*
    OutData[0] = ave_error;
    OutData[1] = lasterror;
    
    OutData[2] = temp_pwm-Servomiddle;
    //OutData[3] = Abs(Temp-Servomiddle);
    OutPut_Data();
*/   
   
    if(lcd_flag >= 150)
    {
      lcd_flag = 0;
      if(Get_Switch(2)==0)
      {
         if(LCD_Mode != LCD_Mode3) OLED_Fill(0x00);
         LCD_Mode = LCD_Mode3;
         //OLED_CLS();
         OLED_Fill(0x00);
         for(ccd_cownum=10+CCD_left*Abs(temp_pwm-Servomiddle)/5; ccd_cownum<123-CCD_right*Abs(temp_pwm-Servomiddle)/5; ccd_cownum++)
         {
           //OLED_writenum_1(0,0,CCD_flag);
           if(CCD_Mode == 0) OLED_PutPixel(ccd_cownum,64-(gPixel[ccd_cownum]-64)/6);
           if(CCD_Mode == 1)
           {
            OLED_PutPixel(ccd_cownum,25-gPixel_t[ccd_cownum]/10);
            OLED_PutPixel(ccd_cownum,63-gPixel[ccd_cownum]/10);
           }
         }
      } 
      else if(Get_Switch(8)==0)
      {
         if(LCD_Mode != LCD_Mode2) OLED_Fill(0x00);
         LCD_Mode = LCD_Mode2;
         OLED_Disp_Paremeter();
      }
      else                  //采集数据显示（用时：3.4ms）
      {
         if(LCD_Mode != LCD_Mode1) OLED_Fill(0x00);//拨码开关转换清屏
         LCD_Mode = LCD_Mode1;
         OLED_writenum_4(0,0,need_data0);   //汉字字符串显示E0
         OLED_writenum_4(30,0,need_data1);   //汉字字符串显示E1
         OLED_writenum_4(60,0,need_data2);   //汉字字符串显示E2
         OLED_writenum_4(90,0,need_data3);   //汉字字符串显示
         OLED_writenum_4(0,1,need_data4);//E25
         OLED_writenum_4(30,1,need_data5);//B6
         OLED_writenum_4(60,1,need_data6);//B7
         OLED_writenum_4(90,1,need_data7);//B11
         OLED_writenum_4(0,2,vspeed_l);//B7
         OLED_writenum_4(30,2,vspeed_r);
         OLED_writenum_4(60,2,left);
         OLED_writenum_4(90,2,right);//B7
         OLED_writenum_4(0,3,Expected_Speed_l);
         OLED_writenum_4(30,3,Expected_Speed_r);//B7
         OLED_writenum_4(60,3,tly_init);//B7
         OLED_writenum_4(90,3,brick_flag);
         OLED_writenum_4(0,4,Expected_l);
         OLED_writenum_4(30,4,Expected_r);
         OLED_writenum_4(60,4,straight_speed);
         OLED_writenum_4(60,3,LPLD_ADC_SE_Get(ADC1, 14));
         //OLED_writenum_1(96,4,LPLD_GPIO_Get_b(PTB, 1));
         //OLED_writenum_1(102,4,LPLD_GPIO_Get_b(PTB, 2));
         OLED_writenum_4(96,4,Abs(temp_pwm-Servomiddle));

         OLED_Print(0,5,"CCD: ");
         OLED_writenum_1(50,5,CCD);
         
         OLED_Print(80,5,"SZ: ");
         OLED_writenum_1(102,5,SZ);
         
         OLED_writenum_3(80,6,zhi_Speed);
         OLED_writenum_3(102,6,wan_Speed);
         
         OLED_Print(0,6,"Podao: ");
         OLED_writenum_1(50,6,podao);
         
         OLED_Print(0,7,"Program: ");
         OLED_writenum_1(50,7,program);
         //OLED_writenum_1(60,4,SZ);
         //OLED_writenum_4(0,5,Time/10);
         OLED_writenum_1(80,7,LPLD_GPIO_Get_b(PTD, 15));
         OLED_writenum_1(86,7,LPLD_GPIO_Get_b(PTD, 14));
         OLED_writenum_1(92,7,LPLD_GPIO_Get_b(PTD, 13));
         OLED_writenum_1(98,7,LPLD_GPIO_Get_b(PTD, 12));
         OLED_writenum_1(104,7,LPLD_GPIO_Get_b(PTD, 11));
         OLED_writenum_1(110,7,LPLD_GPIO_Get_b(PTD, 10));
         OLED_writenum_1(116,7,LPLD_GPIO_Get_b(PTD, 9));
         OLED_writenum_1(122,7,LPLD_GPIO_Get_b(PTD, 8));
      }
    }
    if(CCD)
    {
      if(ccd_complete == TRUE) //CCD采集及处理（用时：1.4ms）
      {
         ccd_complete = FALSE;
         CCD_GetResults(gPixel);
         if(CCD_Mode == 1) ScanBrick(gPixel_t);
         if(CCD_Mode == 0) BrickJudge();
      }
    }
  }
}
/*
 * PIT0中断服务子程序
 *
 * 中断最大用时：500us
 *
 */
void pit_isr0()
{
  
  lcd_flag++;
  if(Get_Switch(8)==1)
  {
    Time++;
    isr_flag++;
    ad_flag++;
    
    SampleAD(); //1ms电感采集 5ms均值滤波（用时：68us）
    
    if(Get_Switch(1)==0) CCD=1;
    else CCD=0;
    if((LPLD_GPIO_Get_b(PTB, 1)==0||LPLD_GPIO_Get_b(PTB, 2)==0)&&Time>5000) pipe_flag = 1;
    //////////十字延时//////////
    if(dir==1) sz_flag++;
    if(sz_flag>=100)
    {
      sz_flag=0;
      dir=0;
    }
    //////////坡道延时//////////
    if(pd==1) pd_flag++; 
    if(pd_flag>500) lock_pd=0;
    if(pd_flag>600) {pd_f=0;}
    if(pd_flag>2000)
    { 
      pd=0;
      pd_flag=0;
    }
    //////////CCD曝光延时//////////
    if(CCD)
    {
      ccd_flag++;
      if(ccd_flag>=Integration)
      {
        ccd_flag = 0;
        ccd_complete = TRUE;
      }
    }
   //////////砖头检测//////////
if(CCD_Mode == 0)
{
   if(brick_flag == 1)
   {
      tempbrick++;
      if(tempbrick>500)
      {
        tempbrick = 0;
        brick_flag = 0;
      }
   }
}
   if(isr_flag >= 5)
   {  
     isr_flag = 0;
     speed_flag++;
     if(Get_Switch(7)==1)
     {
      program=1;
      Control_Duoji();    //5ms舵机控制 （用时：180us）
     }
     else
     {
      program=2;
      Control_Duoji_2();   //启动二号程序
     }
     
     if(speed_flag>=2)
     {
        speed_flag=0;
        //////////编码器脉冲计数////////// （用时：10us）
        if(DMA_count_get(DMA_CH0)<550)
           vspeed_l = DMA_count_get(DMA_CH0);
            
        if(Abs(temp_pwm-Servomiddle)<80)
           straight_l+=vspeed_l;
        else
           straight_l=0;
        DMA_count_reset(DMA_CH0);
        DMA_count_reset(DMA_CH0);
            
        if(DMA_count_get(DMA_CH10)<550)
           vspeed_r = DMA_count_get(DMA_CH10);
            
        if(Abs(temp_pwm-Servomiddle)<80)
           straight_r+=vspeed_r;
        else
           straight_l=0;
        DMA_count_reset(DMA_CH10);
        DMA_count_reset(DMA_CH10);

        //////////直道和大S/////////////    
        if(Abs(ave_error)<30&&need_data2>100&&(need_data0>100||need_data1>100)&&Abs(temp_pwm-Servomiddle)<160)
        {
           bs_up+=(vspeed_l+vspeed_r)/2;  
        }
        else
           bs_up=0; 
            
        //////////干簧管停车//////////
        if(pipe_flag == 0)
        {   
           Control_Dianji();   //10ms速度给定（用时：84us）         
           Speed_PID();        //10ms电机控制（用时：100us）
        }
        else if(pipe_flag == 1&&pipe_time<50)
        {
           pipe_time++;
           LPLD_FTM0_PWM_ChangeDuty(4, 0);
           LPLD_FTM0_PWM_ChangeDuty(5, 100);
           LPLD_FTM0_PWM_ChangeDuty(6, 100);
           LPLD_FTM0_PWM_ChangeDuty(7, 0);
        }
        else
        {
           LPLD_FTM0_PWM_ChangeDuty(4, 0);
           LPLD_FTM0_PWM_ChangeDuty(5, 0);
           LPLD_FTM0_PWM_ChangeDuty(6, 0);
           LPLD_FTM0_PWM_ChangeDuty(7, 0);
        }
        
        if(Abs(temp_pwm-Servomiddle)>=50)
        {
           straight_l=0;
           straight_r=0; 
        }
        /* if((straight_l+straight_r)/2>5000)
           {
              Beep_Flag = TRUE;
           } */
            
        //////////蜂鸣器//////////
        if(Beep_Flag == TRUE)
        {
           Beep_On();
           Beep++;
           if(Beep>=40)
           {
              Beep_Off();            
              Beep = 0;
              Beep_Flag = FALSE;
           }
        }       
     }
   }
  }
  else
  {
    OLED_Change_Perameter();
  }
}

