#include "myadc.h"

/**
 * @brief MyADC_Init adc 初始化
 * @code  //ADC通道初始化
 *        MyADC_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void MyADC_Init(void)
{
  
  ADC1_Channelx_Init(AD1_PORT);
  ADC1_Channelx_Init(AD2_PORT);
  ADC1_Channelx_Init(AD3_PORT);
  ADC1_Channelx_Init(AD4_PORT);
  ADC1_Channelx_Init(AD5_PORT);
  ADC1_Channelx_Init(AD6_PORT);
  ADC1_Channelx_Init(AD7_PORT);
  ADC1_Channelx_Init(AD8_PORT);
  
}

/**
 * @brief ADC0_Init ADC0 初始化
 * @code  //ADC0初始化
 *        ADC0_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void ADC0_init(void)
{
  /**
   *ADC0时钟通道选择
  */
  
  SIM->SCGC6&= ~SIM_SCGC6_ADC0_MASK;
  SIM->SCGC6|= SIM_SCGC6_ADC0_MASK; //开启ADC0时钟
  
  /**
   *ADC0 CFG1 配置
  */
  
  ADC0->CFG1&= ~ADC_CFG1_ADIV_MASK;
  ADC0->CFG1|= ADC_CFG1_ADIV(01); //ADIV 01 时钟分频选择 2分频
  
  ADC0->CFG1&= ~ADC_CFG1_ADLSMP_MASK;
  ADC0->CFG1|= ADC_CFG1_ADLSMP_MASK; //ADLSMP 1 采样时间配置 长采样时间
  
  ADC0->CFG1&= ~ADC_CFG1_MODE_MASK;
  ADC0->CFG1|= ADC_CFG1_MODE(00); //MODE 00 转换模式选择 when DIFF = 0 8位单端输入 when DIFF = 1 9为单端输入
  
  ADC0->CFG1&= ~ADC_CFG1_ADICLK_MASK;
  ADC0->CFG1|= ADC_CFG1_ADICLK(00); //ADICLK 00 输入时钟选择 总线时钟
  
  /**
   *ADC0 CFG2 配置
  */
  
  ADC0->CFG2&= ~ADC_CFG2_ADHSC_MASK; //ADHSC 1 高速配置 高速
  ADC0->CFG2|= ADC_CFG2_ADHSC_MASK;
  
  ADC0->CFG2&= ~ADC_CFG2_ADLSTS_MASK;
  ADC0->CFG2|= ADC_CFG2_ADLSTS(00); //ADLSTS 00 长采样时间选择 默认最长采样时间
  
  /**
   *ADC0 SC2 配置
  */
  
  ADC0->SC2&= ~ADC_SC2_REFSEL_MASK;
  ADC0->SC2|= ADC_SC2_REFSEL(00); //REFSEL 00 电压参考选择 默认电压参考选择
  
}

/**
 * @brief ADC1_Init ADC1 初始化
 * @code  //ADC1 初始化
 *        ADC1_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void ADC1_init(void)
{
  /**
   *ADC时钟通道选择
  */
  
  SIM->SCGC3&= ~SIM_SCGC3_ADC1_MASK;
  SIM->SCGC3|= SIM_SCGC3_ADC1_MASK; //开启ADC1时钟
  
  /**
   *ADC1 CFG1 配置
  */
  
  ADC1->CFG1&= ~ADC_CFG1_ADIV_MASK;
  ADC1->CFG1|= ADC_CFG1_ADIV(01); //ADIV 01 时钟分频选择 2分频
  
  ADC1->CFG1&= ~ADC_CFG1_ADLSMP_MASK;
  ADC1->CFG1|= ADC_CFG1_ADLSMP_MASK; //ADLSMP 1 采样时间配置 长采样时间
  
  ADC1->CFG1&= ~ADC_CFG1_MODE_MASK;
  ADC1->CFG1|= ADC_CFG1_MODE(00); //MODE 00 转换模式选择 when DIFF = 0 8位单端输入 when DIFF = 1 9为单端输入
  
  ADC1->CFG1&= ~ADC_CFG1_ADICLK_MASK;
  ADC1->CFG1|= ADC_CFG1_ADICLK(00); //ADICLK 00 输入时钟选择 总线时钟
  
  /**
   *ADC1 CFG2 配置
  */
  
  ADC1->CFG2&= ~ADC_CFG2_ADHSC_MASK; //ADHSC 1 高速配置 高速
  ADC1->CFG2|= ADC_CFG2_ADHSC_MASK;
  
  ADC1->CFG2&= ~ADC_CFG2_ADLSTS_MASK;
  ADC1->CFG2|= ADC_CFG2_ADLSTS(00); //ADLSTS 00 长采样时间选择 默认最长采样时间
  
  /**
   *ADC1 SC2 配置
  */
  
  ADC1->SC2&= ~ADC_SC2_REFSEL_MASK;
  ADC1->SC2|= ADC_SC2_REFSEL(00); //REFSEL 00 电压参考选择 默认电压参考选择
  
}

/**
 * @brief ADC0_Channelx_Init ADC0 通道 x 初始化
 * @code  //ADC0 通道 x 初始化
 *        ADC0_Channelx_Init(8); //ADC0通道8初始化
 *
 * @endcode         
 * @param  x  :   通道数
 * @retval None
 */
void ADC0_Channelx_Init(u8 x)
{
  
  ADC0_init();
  
  /**
   *ADC0 SC1配置
  */
  
  ADC0->SC1[0]&= ~ADC_SC1_AIEN_MASK; //AIEN 0 中断使能 禁止中断
  
  ADC0->SC1[0]&= ~ADC_SC1_DIFF_MASK; //DIFF 0 差分模式使能 单端输入
  
  ADC0->SC1[0]&= ~ADC_SC1_ADCH_MASK;
  ADC0->SC1[0]|= ADC_SC1_ADCH(x); //ADCH x 输入通道选择 ADC0通道x
  
}

/**
 * @brief ADC1_Channelx_Init ADC1 通道 x 初始化
 * @code  //ADC1 通道 x 初始化
 *        ADC1_Channelx_Init(8); //ADC1通道8初始化
 *
 * @endcode         
 * @param  x  :   通道数
 * @retval None
 */
void ADC1_Channelx_Init(u8 x)
{
  
  ADC1_init();
  
  /**
   *ADC1 SC1配置
  */
  
  ADC1->SC1[0]&= ~ADC_SC1_AIEN_MASK; //AIEN 0 中断使能 禁止中断
  
  ADC1->SC1[0]&= ~ADC_SC1_DIFF_MASK; //DIFF 0 差分模式使能 单端输入
  
  ADC1->SC1[0]&= ~ADC_SC1_ADCH_MASK;
  ADC1->SC1[0]|= ADC_SC1_ADCH(x); //ADCH x 输入通道选择 ADC1通道x
  
}


/**
 * @brief ADC0_Channelx_GETDATA ADC0 通道 x 读取数据
 * @code  //ADC0 通道 x 读取数据
 *        ad1 = ADC0_Channelx_GETDATA(8);
 *
 * @endcode         
 * @param  x  :   通道数
 * @retval ADResult  :   AD转换结果值
 */
u16 ADC0_Channelx_GETDATA(u8 x)
{

  u16 ADResult = 0;

  /**
   *ADC0 SC1配置
  */
  
  ADC0->SC1[0]&= ~ADC_SC1_ADCH_MASK;
  ADC0->SC1[0]|= ADC_SC1_ADCH(x); //ADCH x 输入通道选择 ADC0通道x

  //ADC0 转换完成标志
  while (!(ADC0->SC1[0]>>7));

  ADResult = ADC0->R[0];

  return (ADResult);
  
}

/**
 * @brief ADC1_Channelx_GETDATA ADC1 通道 x 读取数据
 * @code  //ADC1 通道 x 读取数据
 *        ad1 = ADC1_Channelx_GETDATA(8);
 *
 * @endcode         
 * @param  x  :   通道数
 * @retval ADResult  :   AD转换结果值
 */
u16 ADC1_Channelx_GETDATA(u8 x)
{

  u16 ADResult = 0;

  /**
   *ADC1 SC1配置
  */
  
  ADC1->SC1[0]&= ~ADC_SC1_ADCH_MASK;
  ADC1->SC1[0]|= ADC_SC1_ADCH(x); //ADCH x 输入通道选择 ADC1通道x

  //ADC1 转换完成标志
  while (!(ADC1->SC1[0]>>7));

  ADResult = ADC1->R[0];

  return (ADResult);
  
}

/**
 * @brief ADC_GETDATA 读取数据
 * @code  //ADC 读取数据
 *        ad1 = ADC_GETDATA(1);
 *
 * @endcode         
 * @param  x  :   通道数
 * @retval ADResult  :   AD转换结果值
 */
u16 ADC_GETDATA(u8 x)
{
  switch(x)
  {
    case 1: return  ADC1_Channelx_GETDATA(AD1_PORT);
    case 2: return  ADC1_Channelx_GETDATA(AD2_PORT);
    case 3: return  ADC1_Channelx_GETDATA(AD3_PORT);
    case 4: return  ADC1_Channelx_GETDATA(AD4_PORT);
    case 5: return  ADC1_Channelx_GETDATA(AD5_PORT);
    case 6: return  ADC1_Channelx_GETDATA(AD6_PORT);
    case 7: return  ADC1_Channelx_GETDATA(AD7_PORT);
    default: return ADC1_Channelx_GETDATA(AD8_PORT);
  }
}
