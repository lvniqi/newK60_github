#include "head.h"

float ADValue1=0,ADValue2=0,ADValue3=0,ADValue4=0,ADValue5=0,ADValue6=0,ADValue7=0,ADValue8=0,ADValue9=0,ADValue10=0;
float ADValue1_old = 0,ADValue2_old = 0;
float AD1=0,AD2=0,AD3=0,AD4=0,AD5=0,AD6=0,AD7=0,AD8=0,AD9=0,AD10=0;
float pAD1=0,pAD2=0,pAD3=0,pAD4=0,pAD5=0,pAD6=0,pAD7=0,pAD8=0,pAD9=0,pAD10=0;
float preAD3=0,preAD4=0;
float e0=0,e1=0,e2=0,e3=0,e4=0,e5=0,hc=0,hc1=0,hc2=0,hc_total=0,prehc=0;
float Kp=35,Kd=375;
float pred=0,duoji=0;
int right=0,left=0;
int circle_r=0,circle_l=0; 
float quan=0;
int shizi=1;
int shizi_jishu=0;
int chasu_flag=0;


int ad_time=0;
int sd_time=0;
int time=0;
int fmq_time=0;
/***************************************************************/ //舵机参数

float realspeed_r_0=0,realspeed_r_1=0,realspeed_l_0=0,realspeed_l_1=0,h0_r,h1_r=0,h0_l,h1_l=0;
float e2motor_r=0,e1motor_r=0,e0motor_r=0;
float e2motor_l=0,e1motor_l=0,e0motor_l=0;
float kp_r=0.8,ki_r=0.17,kd_r=0;//kp_r=0.53,ki_r=0.043,kd_r=0;
float kp_l=0.8,ki_l=0.17,kd_l=0;//kp_l=0.53,ki_l=0.043,kd_l=0;


float a_r=0.4,b_r=4.6,c_r=4;
float a_l=0.4,b_l=4.6,c_l=4;   
float Motorerr_r=0,Motorpwm_r=0;
float Motorerr_l=0,Motorpwm_l=0;
float pre_Motorpwm_r=0,pre_Motorpwm_l=0;
float pre_Motorpwm_r_final=0,Motorpwm_r_final=0;
float pre_Motorpwm_l_final=0,Motorpwm_l_final=0;
float Expect_speed=0,Expect_speed_l=0,Expect_speed_r=0;
int ting=0;

/***************************************************************/ //电机参数

int podao_jishu_u=0,podao_jishu_d=0;
int podao_u=1,podao_d=1;

/***************************************************************/
/*LPLD_eDMA_Cfg_t User_Def_DMA_Init_a;
LPLD_eDMA_Cfg_t User_Def_DMA_Init_b;
char pData1[1];
char pData2[1];
void dma0_isr(void);
void dma1_isr(void);*/
//DMA采集
/***************************************************************/

float ad1_array[20] = {0.0};
float ad2_array[20] = {0.0};
int ad_count = 0;


uint32 oled_time=0;
unsigned int OutData[4]={0};

int diuxian = 0;

void my_pit0_isr(void);// 1ms 定时器

void bluetooth(void);

/********************************************************************/

void main (void)
{ 
  
  DisableInterrupts; 
  
  
  LPLD_ADC_Init(ADC0,MODE_8,CONV_SING);
  LPLD_ADC_Init(ADC1,MODE_8,CONV_SING);
  
  LPLD_FTM0_PWM_Init(20000);//控制电机 20khz
  LPLD_FTM0_PWM_Open(4,0); //ptd4
  LPLD_FTM0_PWM_Open(5,0); //ptd5
  LPLD_FTM0_PWM_Open(6,0); //ptd6
  LPLD_FTM0_PWM_Open(7,0); //ptd7
  
  LPLD_FTM1_PWM_Init(300);//控制舵机 50hz
  LPLD_FTM1_PWM_Open(1,0);//pta9
  

  LPLD_GPIO_Init(PTC,2,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
  LPLD_GPIO_Init(PTC,3,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
  LPLD_GPIO_Init(PTC,4,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
  LPLD_GPIO_Init(PTC,5,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
  LPLD_GPIO_Init(PTC,6,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
  LPLD_GPIO_Init(PTC,7,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
  LPLD_GPIO_Init(PTC,8,DIR_INPUT,INPUT_PDOWN,IRQC_DIS);
  LPLD_GPIO_Init(PTC,9,DIR_INPUT,INPUT_PDOWN,IRQC_DIS); //拨码开关
 
  
  //LPLD_GPIO_Get_b(PTC,2);  返回某个口的值
  
  LPLD_GPIO_Init(PTD,10,DIR_OUTPUT,OUTPUT_H,IRQC_DIS);
  
  LPLD_GPIO_Set_b(PTD,10,OUTPUT_L); //蜂鸣器PTC10
  
  DMA_count_Init(DMA_CH0,PTC0,32767,DMA_rising);
  DMA_count_Init(DMA_CH10,PTD0,32767,DMA_rising);//DMA编码器采集
  

  
  LPLD_PIT_Init(PIT1,1000,my_pit0_isr);//1ms中断
  
  OLED_Init(); //液晶初始化
  
  
  LPLD_UART_Init(UART3, 9600);// 初始化串口
  
  
  EnableInterrupts;
  
  while(1)
  {
   //bluetooth();
   oled_time++;
   if(oled_time>=300000)
   {
       get(ADValue1,ADValue7,ADValue2,172,0);
       get(ADValue5,ADValue6,5,6,1);
       
       get(ADValue3,ADValue4,duoji,34,2);
       get(ADValue8,huanzhiwan,tryleft,tryright,3);
       //get(fabsf(tryKp * tryhc),fabs(tryhc2),fabs(10.0*powf(2.6,-(ADValue7/183-1.93)) * tryhc1),fabs(10.0*powf(2.6,-(ADValue7/183-1.93)) * (180/ADValue7*ADValue5 - ADValue6)/(ADValue5 + ADValue6)*2.5),3);
       //get(ADValue8,expectsp,duoji_left_jiasu,duoji_right_jiasu,3);
       get(ADValue8,expectsp,tryleft,tryright,4);
       //get(Expect_speed_l,Expect_speed_r,realspeed_l_0,realspeed_r_0,3);
       //get(ADValue9,podao_jishu_u,hc_total*1000,LPLD_GPIO_Get_b(PTC,4),4);
       oled_time=0;  
   }
   if(oled_time>=300000)
      oled_time=0;  
  }
}




/********************************************************************/

void my_pit0_isr()
{
   DisableInterrupts;
   time++;
   sd_time++;
   ad_time++;
   AD1+=LPLD_ADC_SE_Get(ADC1,8);//B0
   AD2+=LPLD_ADC_SE_Get(ADC1,9);//B1
   AD3+=LPLD_ADC_SE_Get(ADC1,10);//B4
   AD4+=LPLD_ADC_SE_Get(ADC1,11);//B5
   AD5+=LPLD_ADC_SE_Get(ADC1,12);//B6
   AD6+=LPLD_ADC_SE_Get(ADC1,13);//B7
   AD7+=LPLD_ADC_SE_Get(ADC1,14);//B10
   AD8+=LPLD_ADC_SE_Get(ADC1,15);//B11
   AD9+=LPLD_ADC_SE_Get(ADC0,12);//B2
  
   if(ad_time>=5)
   {
    //bluetooth();
    ad_time=0;
    //ADValue1_old = ADValue1;
    //ADValue2_old = ADValue2;
    /*
    ad1_array[ad_count] = ADValue1;
    ad2_array[ad_count] = ADValue2;
    ad_count ++;
    if(ad_count == 10)
    {
      ad_count = 0;
    }
    */
    
    
    ADValue1=AD1/5;
    ADValue2=AD2/5;
    ADValue3=AD3/5;
    ADValue4=AD4/5;
    ADValue5=AD5/5;
    ADValue6=AD6/5;
    ADValue7=AD7/5;
    ADValue8=AD8/5;
    ADValue9=AD9/5;
    
    AD1=AD2=AD3=AD4=AD5=AD6=AD7=AD8=AD9=0;
    play_servo();
  } 
  
  if(sd_time>=10)
  {
    sd_time=0;
    
    LeftMotorPulse_count=DMA_count_get(DMA_CH0);
    RightMotorPulse_count=DMA_count_get(DMA_CH10);
    
    lastleftrealspeed = leftrealspeed;
    lastrightrealspeed = rightrealspeed;
    
    leftrealspeed = LeftMotorPulse_count;
    rightrealspeed = RightMotorPulse_count;
    
    if(leftrealspeed >= 400)
    {
      leftrealspeed = 400;
    }
    if(rightrealspeed >= 400)
    {
      rightrealspeed = 400;
    }

    //10ms累计一次然后重新计数
    DMA_count_reset(DMA_CH0);
    DMA_count_reset(DMA_CH10); //获得最终的脉冲累加值 
    
    play_motor();
    
    if(ting == 1)
    {
      LPLD_FTM0_PWM_ChangeDuty(4,0);
      LPLD_FTM0_PWM_ChangeDuty(6,0);
    }
    
    if(time>=dingshi)
    {
      time=dingshi;
      LPLD_FTM0_PWM_ChangeDuty(4,0);
      LPLD_FTM0_PWM_ChangeDuty(6,0);
    }
    
  }
  EnableInterrupts;
}

void bluetooth()
{
  OutData[0]=realspeed_r_0;
  OutData[1]=realspeed_l_0;
  //OutData[2]=Expect_speed_r;
  //OutData[3]=Expect_speed_l;
  OutPut_Data();
}