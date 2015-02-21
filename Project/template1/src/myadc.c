#include "myadc.h"

/**
 * @brief MyADC_Init adc ��ʼ��
 * @code  //ADCͨ����ʼ��
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
 * @brief ADC0_Init ADC0 ��ʼ��
 * @code  //ADC0��ʼ��
 *        ADC0_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void ADC0_init(void)
{
  /**
   *ADC0ʱ��ͨ��ѡ��
  */
  
  SIM->SCGC6&= ~SIM_SCGC6_ADC0_MASK;
  SIM->SCGC6|= SIM_SCGC6_ADC0_MASK; //����ADC0ʱ��
  
  /**
   *ADC0 CFG1 ����
  */
  
  ADC0->CFG1&= ~ADC_CFG1_ADIV_MASK;
  ADC0->CFG1|= ADC_CFG1_ADIV(01); //ADIV 01 ʱ�ӷ�Ƶѡ�� 2��Ƶ
  
  ADC0->CFG1&= ~ADC_CFG1_ADLSMP_MASK;
  ADC0->CFG1|= ADC_CFG1_ADLSMP_MASK; //ADLSMP 1 ����ʱ������ ������ʱ��
  
  ADC0->CFG1&= ~ADC_CFG1_MODE_MASK;
  ADC0->CFG1|= ADC_CFG1_MODE(00); //MODE 00 ת��ģʽѡ�� when DIFF = 0 8λ�������� when DIFF = 1 9Ϊ��������
  
  ADC0->CFG1&= ~ADC_CFG1_ADICLK_MASK;
  ADC0->CFG1|= ADC_CFG1_ADICLK(00); //ADICLK 00 ����ʱ��ѡ�� ����ʱ��
  
  /**
   *ADC0 CFG2 ����
  */
  
  ADC0->CFG2&= ~ADC_CFG2_ADHSC_MASK; //ADHSC 1 �������� ����
  ADC0->CFG2|= ADC_CFG2_ADHSC_MASK;
  
  ADC0->CFG2&= ~ADC_CFG2_ADLSTS_MASK;
  ADC0->CFG2|= ADC_CFG2_ADLSTS(00); //ADLSTS 00 ������ʱ��ѡ�� Ĭ�������ʱ��
  
  /**
   *ADC0 SC2 ����
  */
  
  ADC0->SC2&= ~ADC_SC2_REFSEL_MASK;
  ADC0->SC2|= ADC_SC2_REFSEL(00); //REFSEL 00 ��ѹ�ο�ѡ�� Ĭ�ϵ�ѹ�ο�ѡ��
  
}

/**
 * @brief ADC1_Init ADC1 ��ʼ��
 * @code  //ADC1 ��ʼ��
 *        ADC1_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void ADC1_init(void)
{
  /**
   *ADCʱ��ͨ��ѡ��
  */
  
  SIM->SCGC3&= ~SIM_SCGC3_ADC1_MASK;
  SIM->SCGC3|= SIM_SCGC3_ADC1_MASK; //����ADC1ʱ��
  
  /**
   *ADC1 CFG1 ����
  */
  
  ADC1->CFG1&= ~ADC_CFG1_ADIV_MASK;
  ADC1->CFG1|= ADC_CFG1_ADIV(01); //ADIV 01 ʱ�ӷ�Ƶѡ�� 2��Ƶ
  
  ADC1->CFG1&= ~ADC_CFG1_ADLSMP_MASK;
  ADC1->CFG1|= ADC_CFG1_ADLSMP_MASK; //ADLSMP 1 ����ʱ������ ������ʱ��
  
  ADC1->CFG1&= ~ADC_CFG1_MODE_MASK;
  ADC1->CFG1|= ADC_CFG1_MODE(00); //MODE 00 ת��ģʽѡ�� when DIFF = 0 8λ�������� when DIFF = 1 9Ϊ��������
  
  ADC1->CFG1&= ~ADC_CFG1_ADICLK_MASK;
  ADC1->CFG1|= ADC_CFG1_ADICLK(00); //ADICLK 00 ����ʱ��ѡ�� ����ʱ��
  
  /**
   *ADC1 CFG2 ����
  */
  
  ADC1->CFG2&= ~ADC_CFG2_ADHSC_MASK; //ADHSC 1 �������� ����
  ADC1->CFG2|= ADC_CFG2_ADHSC_MASK;
  
  ADC1->CFG2&= ~ADC_CFG2_ADLSTS_MASK;
  ADC1->CFG2|= ADC_CFG2_ADLSTS(00); //ADLSTS 00 ������ʱ��ѡ�� Ĭ�������ʱ��
  
  /**
   *ADC1 SC2 ����
  */
  
  ADC1->SC2&= ~ADC_SC2_REFSEL_MASK;
  ADC1->SC2|= ADC_SC2_REFSEL(00); //REFSEL 00 ��ѹ�ο�ѡ�� Ĭ�ϵ�ѹ�ο�ѡ��
  
}

/**
 * @brief ADC0_Channelx_Init ADC0 ͨ�� x ��ʼ��
 * @code  //ADC0 ͨ�� x ��ʼ��
 *        ADC0_Channelx_Init(8); //ADC0ͨ��8��ʼ��
 *
 * @endcode         
 * @param  x  :   ͨ����
 * @retval None
 */
void ADC0_Channelx_Init(u8 x)
{
  
  ADC0_init();
  
  /**
   *ADC0 SC1����
  */
  
  ADC0->SC1[0]&= ~ADC_SC1_AIEN_MASK; //AIEN 0 �ж�ʹ�� ��ֹ�ж�
  
  ADC0->SC1[0]&= ~ADC_SC1_DIFF_MASK; //DIFF 0 ���ģʽʹ�� ��������
  
  ADC0->SC1[0]&= ~ADC_SC1_ADCH_MASK;
  ADC0->SC1[0]|= ADC_SC1_ADCH(x); //ADCH x ����ͨ��ѡ�� ADC0ͨ��x
  
}

/**
 * @brief ADC1_Channelx_Init ADC1 ͨ�� x ��ʼ��
 * @code  //ADC1 ͨ�� x ��ʼ��
 *        ADC1_Channelx_Init(8); //ADC1ͨ��8��ʼ��
 *
 * @endcode         
 * @param  x  :   ͨ����
 * @retval None
 */
void ADC1_Channelx_Init(u8 x)
{
  
  ADC1_init();
  
  /**
   *ADC1 SC1����
  */
  
  ADC1->SC1[0]&= ~ADC_SC1_AIEN_MASK; //AIEN 0 �ж�ʹ�� ��ֹ�ж�
  
  ADC1->SC1[0]&= ~ADC_SC1_DIFF_MASK; //DIFF 0 ���ģʽʹ�� ��������
  
  ADC1->SC1[0]&= ~ADC_SC1_ADCH_MASK;
  ADC1->SC1[0]|= ADC_SC1_ADCH(x); //ADCH x ����ͨ��ѡ�� ADC1ͨ��x
  
}


/**
 * @brief ADC0_Channelx_GETDATA ADC0 ͨ�� x ��ȡ����
 * @code  //ADC0 ͨ�� x ��ȡ����
 *        ad1 = ADC0_Channelx_GETDATA(8);
 *
 * @endcode         
 * @param  x  :   ͨ����
 * @retval ADResult  :   ADת�����ֵ
 */
u16 ADC0_Channelx_GETDATA(u8 x)
{

  u16 ADResult = 0;

  /**
   *ADC0 SC1����
  */
  
  ADC0->SC1[0]&= ~ADC_SC1_ADCH_MASK;
  ADC0->SC1[0]|= ADC_SC1_ADCH(x); //ADCH x ����ͨ��ѡ�� ADC0ͨ��x

  //ADC0 ת����ɱ�־
  while (!(ADC0->SC1[0]>>7));

  ADResult = ADC0->R[0];

  return (ADResult);
  
}

/**
 * @brief ADC1_Channelx_GETDATA ADC1 ͨ�� x ��ȡ����
 * @code  //ADC1 ͨ�� x ��ȡ����
 *        ad1 = ADC1_Channelx_GETDATA(8);
 *
 * @endcode         
 * @param  x  :   ͨ����
 * @retval ADResult  :   ADת�����ֵ
 */
u16 ADC1_Channelx_GETDATA(u8 x)
{

  u16 ADResult = 0;

  /**
   *ADC1 SC1����
  */
  
  ADC1->SC1[0]&= ~ADC_SC1_ADCH_MASK;
  ADC1->SC1[0]|= ADC_SC1_ADCH(x); //ADCH x ����ͨ��ѡ�� ADC1ͨ��x

  //ADC1 ת����ɱ�־
  while (!(ADC1->SC1[0]>>7));

  ADResult = ADC1->R[0];

  return (ADResult);
  
}

/**
 * @brief ADC_GETDATA ��ȡ����
 * @code  //ADC ��ȡ����
 *        ad1 = ADC_GETDATA(1);
 *
 * @endcode         
 * @param  x  :   ͨ����
 * @retval ADResult  :   ADת�����ֵ
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
