#include  "Sampling.h"

uint8 ad_brik=140;
uint8 PD_flag=0;//坡道
uint8 PDzero_flag=0;//坡道
uint8 DC_flag=0;//电池电压


float CCD_averl=0;
float CCD_averr=0;
uint8 Max_Pixel=0;
uint8 Min_Pixel=255;
uint8 up = 0;
uint8 gPixel_s[128] = {0};
uint8 gPixel_t[128] = {0};

uint8 CCD_left = 0,CCD_right = 0;


uint8 gPixel[128] = {0};
int leftvalue=0;
int rightvalue=0;
uint8 brick_l_flag = 0,brick_r_flag = 0;
uint8 brick_flag=0;
uint8 brick=0;
uint8 brick_l = 0,brick_r = 0;
float value_l = 0,value_r = 0;
uint8 CCD_flag=0;

uint16 need_data0=0;
uint16 need_data1=0;
uint16 need_data2=0;
uint16 need_data3=0;
uint16 need_data4=0;
uint16 need_data5=0;
uint16 need_data6=0;
uint16 need_data7=0;
float need_data9=0;
int need_data8=0;

float lastsum[10]={0};
float lasterror=0;
uint8  Inout=0;
uint16  numberflag=0;

uint16 AD_DATA0=0;
uint16 AD_DATA1=0; 
uint16 AD_DATA2=0;
uint16 AD_DATA3=0;
uint16 AD_DATA4=0;
uint16 AD_DATA5=0;
uint16 AD_DATA6=0;
uint16 AD_DATA7=0;
uint16 AD_DATA9=0;
int AD_DATA8=0;
int tly_ji=0;
int tly_init=0;
int tly_flag=0;

void SampleAD()
{
  AD_DATA0 += LPLD_ADC_SE_Get(ADC1, 4);                                        //PTE0
  AD_DATA1 += LPLD_ADC_SE_Get(ADC1, 5);                                        //PTE1
  AD_DATA2 += LPLD_ADC_SE_Get(ADC1, 6);                                        //PTE2
  AD_DATA3 += LPLD_ADC_SE_Get(ADC1, 7);                                       //PTE24
  AD_DATA4 += LPLD_ADC_SE_Get(ADC1, 10);                                       //PTE25
  AD_DATA5 += LPLD_ADC_SE_Get(ADC1, 11);                                       //PTB6
  AD_DATA6 += LPLD_ADC_SE_Get(ADC1, 12);                                       //PTB7
  AD_DATA7 += LPLD_ADC_SE_Get(ADC1, 13);                                       //PTB11
  
  
  if(tly_ji<10)
  {
    tly_ji++;
    tly_init+=LPLD_ADC_SE_Get(ADC1, 14);
  }
  if(tly_flag==0&&tly_ji>=10)
  {
    tly_init=tly_init/10;
    tly_flag=1;
  }
  if(ad_flag>=5)
    {
      lasterror = 0;
      
      ad_flag=0;
      need_data0 = AD_DATA0/5;                                        //PTE0
      need_data1 = AD_DATA1/5;                                        //PTE1
      need_data2 = AD_DATA2/5;                                        //PTE2
      need_data3 = AD_DATA3/5;                                       //PTE24
      need_data4 = AD_DATA4/5;                                       //PTE25
      need_data5 = AD_DATA5/5;                                       //PTB6
      need_data6 = AD_DATA6/5;                                       //PTB7
      need_data7 = AD_DATA7/5;                           //PTB5
      PDzero_flag++;
      DC_flag++;
      
                                      
      

      for(numberflag = 9;numberflag>0;numberflag--)
      {
        lastsum[numberflag]=lastsum[numberflag-1];
      }
      lastsum[0] = need_data2;                                        //PTE2
                   //PTB7
      for(numberflag = 0;numberflag<9;numberflag++)
      {
        lasterror += lastsum[numberflag]-lastsum[numberflag+1];
      }
      
     
      if(lasterror>350)
      {
        Inout = 2;
      }
      else if(lasterror<-350)
      {
        Inout = 1;
      }

  

    /*  
      if(need_data0<=1)  need_data0=1;
      if(need_data1<=1)  need_data1=1;
         
      if(need_data3<=1)  need_data3=1;   
      if(need_data4<=1)  need_data4=1;  
      if(need_data5<=1)  need_data5=1;  
      if(need_data6<=1)  need_data6=1; 
      if(need_data7<=1)  need_data7=1;
      */
      if(need_data2<=1)  need_data2=1;
      AD_DATA0=0;
      AD_DATA1=0; 
      AD_DATA2=0;
      AD_DATA3=0;
      AD_DATA4=0;
      AD_DATA5=0;
      AD_DATA6=0;
      AD_DATA7=0;
      
    }
   if(tly_flag==1)
   {
     AD_DATA8 = (tly_init-LPLD_ADC_SE_Get(ADC1, 14)); 
     PD_flag++;
     if(PD_flag>=1)
     { 
       if(AD_DATA8>=8||AD_DATA8<=-8)
       need_data8 += AD_DATA8;
       if(need_data8<=0)
         need_data8=0;
      // AD_DATA8=0;
       PD_flag=0;
       
     }
     if(PDzero_flag>=5)
     {
       need_data8=0;
       PDzero_flag=0;
     }
  }
}  

void CCD_GetResults(uint8 *pixel)
{
  uint8 i,j,k,temp;
  leftvalue = 0;
  rightvalue = 0;
  Max_Pixel = 0;
  Min_Pixel = 255;
  //采集上次曝光得到的图像
  //开始SI
  TSL1401_SI(1);
  asm("nop");
  TSL1401_CLK(1);
  //delay();
  TSL1401_SI(0);
  //delay();
  //采集第1个点
  pixel[0] = LPLD_ADC_SE_Get(ADC0, AO);
  TSL1401_CLK(0);
  gPixel_s[0] = pixel[0];
  CCD_averl += pixel[0];
 // Max_Pixel = Max_Pixel>pixel[0] ? Max_Pixel : pixel[0];
 // Min_Pixel = Min_Pixel<pixel[0] ? Min_Pixel : pixel[0];
  //采集第2~128个点
  for(i=1; i<64; i++)
  {
    asm("nop");
    TSL1401_CLK(1);
    //delay(); 
    pixel[i] = LPLD_ADC_SE_Get(ADC0, AO);
    TSL1401_CLK(0);
    gPixel_s[i] = pixel[i];
    CCD_averl += pixel[i];
   // Max_Pixel = Max_Pixel>pixel[i] ? Max_Pixel : pixel[i];
  //  Min_Pixel = Min_Pixel<pixel[i] ? Min_Pixel : pixel[i];
  }
  CCD_averl /=64;
  for(i=64; i<128; i++)
  {
    asm("nop");
    TSL1401_CLK(1);
    //delay(); 
    pixel[i] = LPLD_ADC_SE_Get(ADC0, AO);
    TSL1401_CLK(0);
    gPixel_s[i] = pixel[i];
    CCD_averr += pixel[i];
  //  Max_Pixel = Max_Pixel>pixel[i] ? Max_Pixel : pixel[i];
   // Min_Pixel = Min_Pixel<pixel[i] ? Min_Pixel : pixel[i];
  }
  CCD_averr /= 64;
  //发送第129个clk
  asm("nop");
  TSL1401_CLK(1);
  asm("nop");
  TSL1401_CLK(0);
  asm("nop");
  for(j=0;j<128;j++)
  {
    for(k=0;k<128-j;k++)
    {
      if(gPixel_s[k]>gPixel_s[k+1])
      {
        temp = gPixel_s[k];
        gPixel_s[k] = gPixel_s[k+1];
        gPixel_s[k+1] = temp;
      }
    }
  }
    Max_Pixel = gPixel_s[108];
    Min_Pixel = gPixel_s[20];
  for(i=0;i<128;i++)
    {
      if(Max_Pixel-Min_Pixel>150)
      {
        if(pixel[i]<(CCD_averl+CCD_averr)/2&&pixel[i]<Min_Pixel+8) gPixel_t[i] = 0;
        else gPixel_t[i] = 255;
      }
      else gPixel_t[i] = 255;
    }
}
void ScanBrick(uint8 *pixel)
{
  uint8 i,j,flag = 0;
  if(temp_pwm-Servomiddle>-80&&temp_pwm-Servomiddle<80)
  {
    if(temp_pwm-Servomiddle>0)
    {
      CCD_left=0;
      CCD_right=1;
    }
    if(temp_pwm-Servomiddle<0)
    {
      CCD_left=1;
      CCD_right=0;
    }
    if(CCD_averl>CCD_averr)
    {
      if(CCD_averr<Max_Pixel)
      {
         for(i=64;i<108-CCD_right*Abs(temp_pwm-Servomiddle)/5;i++)
        {
          flag = 0;
          for(j=i;j<i+15;j++)
          {
            if(pixel[j]!=0) 
            {
              flag = 1;
              break;
            }
            up = j;
          }
          if(flag!=1)
          {
            Beep_Flag = TRUE;
            if((straight_r+straight_l)>0)
            {
              Brick_Dir = Left;
              OLED_Print(60,2,"Left ");
              Brick_Flag = TRUE;
              break;
            }
          }
        }
      }
    }
    else
    {
      if(CCD_averl<Max_Pixel)
      {
        for(i=64;i>24+CCD_left*Abs(temp_pwm-Servomiddle)/5;i--)
        {
          flag = 0;
          for(j=i;j>i-15;j--)
          {
            if(pixel[j]!=0) 
            {
              flag = 1;
              break;
            }
            up = j;
          }
          if(flag!=1)
          {
            Beep_Flag = TRUE;
            if((straight_r+straight_l)>400)
            {
              Brick_Dir = Right;
              OLED_Print(60,2,"Right");
              Brick_Flag = TRUE;
              break;
            }
          }
        }
      }   
    }
  }
}

void BrickJudge()
{
  int i=0;
  if(temp_pwm>Servomiddle-60&&temp_pwm<Servomiddle+60)
  {
    
    for(i=0;i<128;i++)
    {
      if(i>63&&i<128) {rightvalue += gPixel[i];}
      if(i>0&&i<=63) {leftvalue += gPixel[i];}
    }
    rightvalue /=63;  
    leftvalue /=63;
    
    if(Abs(rightvalue-leftvalue)>=50)   CCD_flag=1;
    else CCD_flag=0;
    
    if(rightvalue-leftvalue>=50&&brick_flag==0&&(straight_r+straight_l)>3000)
    {
       brick_r_flag=1;
       brick_flag=1;
    }
    if(leftvalue-rightvalue>=50&&brick_flag==0&&(straight_r+straight_l)>3000)
    {
       brick_l_flag=1;
       brick_flag=1;
    }
    if(brick_flag==0&&Abs(leftvalue-rightvalue)<50)
    {
      brick_l_flag=0;
      brick_r_flag=0;
    }
   }
}

    /*
    if(brick_r==0)
    {
      for(i=64;i<=127;i++)//right
      {   
        i++;
        if(gPixel[i-1]<ad_brik&&gPixel[i]<ad_brik)
        {
          brick_r=1;  
          break;
        }
      }
    }
    
    if(brick_r==1&&brick_r_flag==0)
    {
      for(j=i-1;j<i+15;j++)
      {
        if(gPixel[j]<ad_brik)
         value_r++;
      }
      if(value_r>=10)
      {
        value_r=0;
        brick_r_flag=1;
      }
      else
        brick_r=0;
    }
    
    
    if(brick_l==0)
    {
      for(i=63;i>=0;i--)//left
      {   
        i--;
        if(gPixel[i+1]<ad_brik&&gPixel[i]<ad_brik&&brick_r==0)
        {
          brick_l=1;  
          break;
        }
      }
    }
    
    if(brick_l==1&&brick_l_flag==0)
    {
      for(j=i-1;j<i+15;j++)
      {
        if(gPixel[j]<ad_brik)
         value_l++;
      }
      if(value_l>=10)
      {
        value_l=0;
        brick_l_flag=1;
      }
    }
    
  }
}*/

