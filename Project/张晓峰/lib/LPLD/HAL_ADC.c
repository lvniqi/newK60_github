/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_ADC.c
 * ��;: ADC�ײ�ģ����غ���
 * ����޸�����: 20120323
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#include "common.h"
#include "HAL_ADC.h"

ADC_ISR_CALLBACK ADC_ISR[2];
//ȫ�ֱ�������
tADC_Config Adc0_Config;  // ADC0 �Ĵ����ṹ��
tADC_Config Adc1_Config;  // ADC0 �Ĵ����ṹ��

//ADCӳ���ַ����
volatile ADC_MemMapPtr ADCx_Ptr[2] = {ADC0_BASE_PTR, 
                                      ADC1_BASE_PTR};


/*
 * LPLD_ADC_Init
 * ADCģ��ͨ�ó�ʼ������--���ڷ��ж�ģʽ������ת�����������
 * 
 * ����:
 *    adcx--ADCģ���
 *      |__ADC0         -ADC0ģ��
 *      |__ADC1         -ADC1ģ��
 *    mode--ADת������
 *      |__MODE_8       --����8λ�����9λ
 *      |__MODE_12      --����12λ�����13λ
 *      |__MODE_10      --����10λ�����11λ
 *      |__MODE_16      --����16λ�����16λ
 *    diff--���������������
 *      |__CONV_SING    --����
 *      |__CONV_DIFF    --���
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_ADC_Init(ADCx adcx, uint8 mode, uint8 diff)
{
  tADC_ConfigPtr ADC_CfgPtr;
  
  if(adcx == ADC0)
  {
    SIM_SCGC6 |= (SIM_SCGC6_ADC0_MASK);   // ����ADC0ʱ��
    ADC_CfgPtr = &Adc0_Config;
  }
  else if(adcx == ADC1)
  {
    SIM_SCGC3 |= (SIM_SCGC3_ADC1_MASK);   // ����ADC1ʱ��
    ADC_CfgPtr = &Adc1_Config;
  }
  else
  {
    return 0;
  }
  
  // ��ʼ��ADC
  // ���Ƚ���32�ε�Ӳ��ƽ��У׼
  ADC_CfgPtr->CONFIG1  = ADLPC_NORMAL | ADC_CFG1_ADIV(ADIV_8) | ADLSMP_LONG | ADC_CFG1_MODE(MODE_16)
                              | ADC_CFG1_ADICLK(ADICLK_BUS_2);  
  ADC_CfgPtr->CONFIG2  = MUXSEL_ADCB | ADACKEN_DISABLED | ADHSC_HISPEED | ADC_CFG2_ADLSTS(ADLSTS_20) ;
  ADC_CfgPtr->COMPARE1 = 0x1234u ; 
  ADC_CfgPtr->COMPARE2 = 0x5678u ;
  ADC_CfgPtr->STATUS2  = ADTRG_SW | ACFE_DISABLED | ACFGT_GREATER | ACREN_ENABLED | DMAEN_DISABLED | ADC_SC2_REFSEL(REFSEL_EXT);
  ADC_CfgPtr->STATUS3  = CAL_OFF | ADCO_SINGLE | AVGE_ENABLED | ADC_SC3_AVGS(AVGS_32);
  ADC_CfgPtr->PGA      = PGAEN_DISABLED | PGACHP_NOCHOP | PGALP_NORMAL | ADC_PGA_PGAG(PGAG_64);
  ADC_CfgPtr->STATUS1A = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(31);       
  ADC_CfgPtr->STATUS1B = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(31);  
  
  ADC_Config_Alt(ADCx_Ptr[adcx], ADC_CfgPtr);    // ���� ADC�Ĵ���
  ADC_Cal(ADCx_Ptr[adcx]);                       // ����У׼
  
  // ����Ϊ����ʹ�ý������ã�4��Ӳ��ƽ��
  // ADC����ʱ��ԴΪ BusClk/2
  // ADC����ʱ�ӷ�ƵΪ 1
  // ������ʱ������
  ADC_CfgPtr->CONFIG1  = ADLPC_NORMAL | ADC_CFG1_ADIV(ADIV_1) | ADLSMP_LONG
                              | ADC_CFG1_ADICLK(ADICLK_BUS_2);  
  
  // ѡ��ת������
  switch(mode)
  {
    case MODE_8:
       ADC_CfgPtr->CONFIG1 |= ADC_CFG1_MODE(MODE_8);
       break;
    case MODE_12:
       ADC_CfgPtr->CONFIG1 |= ADC_CFG1_MODE(MODE_12);
       break;
    case MODE_10:
       ADC_CfgPtr->CONFIG1 |= ADC_CFG1_MODE(MODE_10);
       break;
    case MODE_16:
       ADC_CfgPtr->CONFIG1 |= ADC_CFG1_MODE(MODE_16);
       break;
    default:
      return 0;
  }
  
  // ѡ��ADxxaΪ����ͨ��
  // �첽ʱ�����ʹ��
  // ����ת��
  // ������ʱ��ʱ������ѡ�� ����20��ʱ�����ڣ���24��ADCK����
  // �ܲ������ڼ�K60�����ĵ� page:840
  ADC_CfgPtr->CONFIG2  = MUXSEL_ADCB | ADACKEN_ENABLED | ADHSC_HISPEED | ADC_CFG2_ADLSTS(ADLSTS_20) ;
  ADC_CfgPtr->COMPARE1 = 0x1234u ; 
  ADC_CfgPtr->COMPARE2 = 0x5678u ;
  ADC_CfgPtr->STATUS2  = ADTRG_SW | ACFE_DISABLED | ACFGT_GREATER | ACREN_DISABLED | DMAEN_DISABLED | ADC_SC2_REFSEL(REFSEL_EXT);
  ADC_CfgPtr->STATUS3  = CAL_OFF | ADCO_SINGLE | AVGE_ENABLED | ADC_SC3_AVGS(AVGS_4);
  ADC_CfgPtr->PGA      = PGAEN_DISABLED | PGACHP_NOCHOP | PGALP_NORMAL | ADC_PGA_PGAG(PGAG_64);
  
  //ѡ�񵥶˻���ģʽ
  if(diff == CONV_SING)
  {
    ADC_CfgPtr->STATUS1A = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(31);
  }  
  else if(diff == CONV_DIFF)
  {
    ADC_CfgPtr->STATUS1A = AIEN_OFF | DIFF_DIFFERENTIAL | ADC_SC1_ADCH(31);
  } 
  else
  {
    return 0;
  }
  
  ADC_Config_Alt(ADCx_Ptr[adcx], ADC_CfgPtr);  // ����ADC0
  
  return 1;
}


/*
 * LPLD_ADC_SE_Get
 * ȡ��ADCģ�鵥������ת��ֵ--�������
 * 
 * ����:
 *    adcx--ADCģ���
 *      |__ADC0         -ADC0ģ��
 *      |__ADC1         -ADC0ģ��
 *    channel--ADCͨ���ţ���ͬ��ͨ���Ŷ�Ӧ��ͬ�����ţ�ע����Щͨ�����Ƕ���ADC0��ADC1
 *      |__0            --ADC0:PGA0_DP;  ADC1:PGA1_DP
 *      |__1            --ADC0:PGA2_DP;  ADC1:PGA3_DP
 *      |__2            --ADC0:PGA0_DP;  ADC1:PGA1_DP
 *      |__3            --ADC0:ADC0_DP3; ADC1:PGA0_DP
 *      |__4            --ADC0:NC;       ADC1:PTE0
 *      |__5            --ADC0:NC;       ADC1:PTE1
 *      |__6            --ADC0:NC;       ADC1:PTE2
 *      |__7            --ADC0:NC;       ADC1:PTE3
 *      |__8            --ADC0:PTB0;     ADC1:PTB0
 *      |__9            --ADC0:PTB1;     ADC1:PTB1
 *      |__10           --ADC0:PTA7;    ADC1:PTB4
 *      |__11           --ADC0:PTA8;    ADC1:PTB5
 *      |__12           --ADC0:PTB2;    ADC1:PTB6
 *      |__13           --ADC0:PTB3;    ADC1:PTB7
 *      |__14           --ADC0:PTC0;    ADC1:PTB10
 *      |__15           --ADC0:PTC1;    ADC1:PTB11
 *      |__16           --ADC0:ADC0_SE16;ADC1:ADC1_SE16
 *      |__17           --ADC0:PTE24;   ADC1:PTA17
 *      |__18           --ADC0:PTE25;   ADC1:VREF Output
 *      |__19           --ADC0:PGA0_DM; ADC1:PGA1_DM
 *      |__20           --ADC0:PGA2_DM; ADC1:PGA3_DM
 *      |__23           --ADC0:DAC0_OUT;ADC1:DAC1_OUT
 *      |__26           --ADC0:Temperature Sensor;  ADC1:Temperature Sensor
 *      |__27           --ADC0:Bandgap; ADC1:Bandgap
 *      |__29           --ADC0:VREFH;   ADC1:VREFH
 *      |__30           --ADC0:VREFL;   ADC1:VREFL
 *
 * ���:
 *    0--���ô��󣬻��ѹֵΪ0
 *    ����--ADͨ��ת��ֵ���Ҷ���
 */
uint16 LPLD_ADC_SE_Get(ADCx adcx, uint8 channel)
{
  ADC_MemMapPtr adcptr = ADCx_Ptr[adcx];
  
  ADC_SC1_REG(adcptr,0) &= ~(ADC_SC1_ADCH_MASK);
  ADC_SC1_REG(adcptr,0) |= ADC_SC1_ADCH(channel);
  
  while((ADC_SC1_REG(adcptr,0)&ADC_SC1_COCO_MASK) == 0);  //�ȴ�ת�����
  return ADC_R_REG(adcptr, 0);
}

uint8 LPLD_ADC_Chn_Enable(ADCx adcx, uint8 channel)
{
  ADC_MemMapPtr adcptr = ADCx_Ptr[adcx];
  if(channel>30)
    return 0;
  
  //��ͬ��ͨ����Ӧ��ͬ�����ţ������Ҫ�жϲ�����
  if(adcx == ADC0)
  {
    switch(channel)
    {
      case 0:   //ADC0_DP0 -- PGA0_DP
      case 1:   //ADC0_DP1 -- PGA2_DP
      case 2:   //PGA0_DP
      case 3:   //ADC0_DP3 -- PGA1_DP
        break;
      case 8:  //ADC0_SE8 -- PTB0
      case 9:  //ADC0_SE9 -- PTB1
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-8) =  PORT_PCR_MUX(0);
        break;
      case 10:  //ADC0_SE10 -- PTA7
      case 11:  //ADC0_SE11 -- PTA8
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
        PORT_PCR_REG(PORTA_BASE_PTR, channel-3) =  PORT_PCR_MUX(0);
        break;
      case 12:  //ADC0_SE12 -- PTB2
      case 13:  //ADC0_SE13 -- PTB3
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-10) =  PORT_PCR_MUX(0);
        break;
      case 14:  //ADC0_SE14 -- PTC0
      case 15:  //ADC0_SE15 -- PTC1
        SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; 
        PORT_PCR_REG(PORTC_BASE_PTR, channel-14) =  PORT_PCR_MUX(0);
        break;
      case 16:   //ADC0_SE16
        break;
      case 17:   //ADC0_SE17 -- PTE24
      case 18:   //ADC0_SE17 -- PTE25
        SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK; 
        PORT_PCR_REG(PORTE_BASE_PTR, channel+7) =  PORT_PCR_MUX(0);
        break;
      case 19:   //ADC0_DM0 -- PGA0_DM
      case 20:   //ADC0_DM1 -- PGA2_DM
      case 23:   //ADC0_SE23 -- DAC0_OUT
      case 26:   //Temperature Sensor (S.E)
      case 27:   //Bandgap (S.E)
      case 29:   //VREFH (S.E)
      case 30:   //VREFL
        break;
      default:
        return 0;  
    }
  }
  else if(adcx == ADC1)
  {
    switch(channel)
    {
      case 0:   //ADC1_DP0 -- PGA1_DP
      case 1:   //ADC1_DP1 -- PGA3_DP
      case 2:   //PGA1_DP 
      case 3:   //ADC1_DP3 -- PGA0_DP
        break;
      case 4:   //ADC1_SE4a -- PTC8
      case 5:   //ADC1_SE5a -- PTC9
      case 6:   //ADC1_SE6a -- PTC10
      case 7:   //ADC1_SE7a -- PTC11
        SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; 
        PORT_PCR_REG(PORTC_BASE_PTR, channel+4) =  PORT_PCR_MUX(0);
        break;
      case 8:  //ADC1_SE8 -- PTB0
      case 9:  //ADC1_SE9 -- PTB1
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-8) =  PORT_PCR_MUX(0);
        break;
      case 10:  //ADC1_SE10 -- PTB4
      case 11:  //ADC1_SE11 -- PTB5
      case 12:  //ADC1_SE12 -- PTB6
      case 13:  //ADC1_SE13 -- PTB7
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-6) =  PORT_PCR_MUX(0);
        break;
      case 14:  //ADC1_SE14 -- PTB10
      case 15:  //ADC1_SE15 -- PTB11
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-4) =  PORT_PCR_MUX(0);
        break;
      case 16:   //ADC1_SE16
        break;
      case 17:  //ADC1_SE17 -- PTA17
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
        PORT_PCR_REG(PORTA_BASE_PTR, channel) =  PORT_PCR_MUX(0);
        break;
      case 18:   //VREF Output
      case 19:   //ADC1_DM0 -- PGA1_DM
      case 20:   //ADC1_DM1 -- PGA3_DM
      case 23:   //DAC1_OUT 
      case 26:   //Temperature Sensor (S.E)
      case 27:   //Bandgap (S.E)
      case 29:   //VREFH (S.E)
      case 30:   //VREFL
        break;
      default:
        return 0;  
    }
  }
  else
  {
    return 0;
  }
  return 1;
}

/*
 * LPLD_ADC_Channel_Init
 * ADCͨ����ʼ��,�ڸú���������ADC������ͨ��������ADC�жϡ�DMA���󣬺���Ӧ���жϷ�����
 * 
 * ����:
 *    adcx--ADCģ���
 *      |__ADC0         -ADC0ģ��
 *      |__ADC1         -ADC0ģ��
 *    channel--ADCͨ���ţ���ͬ��ͨ���Ŷ�Ӧ��ͬ�����ţ�ע����Щͨ�����Ƕ���ADC0��ADC1
 *      |__0            --ADC0:PGA0_DP;  ADC1:PGA1_DP
 *      |__1            --ADC0:PGA2_DP;  ADC1:PGA3_DP
 *      |__2            --ADC0:PGA0_DP;  ADC1:PGA1_DP
 *      |__3            --ADC0:ADC0_DP3; ADC1:PGA0_DP
 *      |__4            --ADC0:NC;       ADC1:PTE0
 *      |__5            --ADC0:NC;       ADC1:PTE1
 *      |__6            --ADC0:NC;       ADC1:PTE2
 *      |__7            --ADC0:NC;       ADC1:PTE3
 *      |__8            --ADC0:PTB0;     ADC1:PTB0
 *      |__9            --ADC0:PTB1;     ADC1:PTB1
 *      |__10           --ADC0:PTA7;    ADC1:PTB4
 *      |__11           --ADC0:PTA8;    ADC1:PTB5
 *      |__12           --ADC0:PTB2;    ADC1:PTB6
 *      |__13           --ADC0:PTB3;    ADC1:PTB7
 *      |__14           --ADC0:PTC0;    ADC1:PTB10
 *      |__15           --ADC0:PTC1;    ADC1:PTB11
 *      |__16           --ADC0:ADC0_SE16;ADC1:ADC1_SE16
 *      |__17           --ADC0:PTE24;   ADC1:PTA17
 *      |__18           --ADC0:PTE25;   ADC1:VREF Output
 *      |__19           --ADC0:PGA0_DM; ADC1:PGA1_DM
 *      |__20           --ADC0:PGA2_DM; ADC1:PGA3_DM
 *      |__23           --ADC0:DAC0_OUT;ADC1:DAC1_OUT
 *      |__26           --ADC0:Temperature Sensor;  ADC1:Temperature Sensor
 *      |__27           --ADC0:Bandgap; ADC1:Bandgap
 *      |__29           --ADC0:VREFH;   ADC1:VREFH
 *      |__30           --ADC0:VREFL;   ADC1:VREFL
 *  ad_event--ADC�¼�������ADC�жϽ�ֹ��ʹ�ܣ�DMA�����ֹ��ʹ�ܡ�
 *      |__ADC_INT_DISABLE    --�жϽ�ֹ
 *      |__ADC_INT_ENABLE     --�ж�ʹ��
 *      |__ADC_DMA_DISABLE    --DMA�����ֹ
 *      |__ADC_DMA_ENABLE     --DMA����ʹ��
 *
 *  ADC_ISR_CALLBACK
 *      |__isr                --���ʹ���жϣ������жϷ�������·����
 *                              ���û�������жϣ��������ó�ΪNULL
 * ���:
 *    0--���ô��󣬻��ѹֵΪ0
 *    ����--ADͨ��ת��ֵ���Ҷ���
 */
uint8_t LPLD_ADC_Channel_Init(ADCx adcx, uint8_t channel ,uint8_t ad_event,ADC_ISR_CALLBACK isr)
{
  ADC_MemMapPtr adcptr = ADCx_Ptr[adcx];
  
  if(channel>30)
    return 0;
  
  //��ͬ��ͨ����Ӧ��ͬ�����ţ������Ҫ�жϲ�����
  if(adcx == ADC0)
  {
    switch(channel)
    {
      case 0:   //ADC0_DP0 -- PGA0_DP
      case 1:   //ADC0_DP1 -- PGA2_DP
      case 2:   //PGA0_DP
      case 3:   //ADC0_DP3 -- PGA1_DP
        break;
      case 8:  //ADC0_SE8 -- PTB0
      case 9:  //ADC0_SE9 -- PTB1
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-8) =  PORT_PCR_MUX(0);
        break;
      case 10:  //ADC0_SE10 -- PTA7
      case 11:  //ADC0_SE11 -- PTA8
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
        PORT_PCR_REG(PORTA_BASE_PTR, channel-3) =  PORT_PCR_MUX(0);
        break;
      case 12:  //ADC0_SE12 -- PTB2
      case 13:  //ADC0_SE13 -- PTB3
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-10) =  PORT_PCR_MUX(0);
        break;
      case 14:  //ADC0_SE14 -- PTC0
      case 15:  //ADC0_SE15 -- PTC1
        SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; 
        PORT_PCR_REG(PORTC_BASE_PTR, channel-14) =  PORT_PCR_MUX(0);
        break;
      case 16:   //ADC0_SE16
        break;
      case 17:   //ADC0_SE17 -- PTE24
      case 18:   //ADC0_SE17 -- PTE25
        SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK; 
        PORT_PCR_REG(PORTE_BASE_PTR, channel+7) =  PORT_PCR_MUX(0);
        break;
      case 19:   //ADC0_DM0 -- PGA0_DM
      case 20:   //ADC0_DM1 -- PGA2_DM
      case 23:   //ADC0_SE23 -- DAC0_OUT
      case 26:   //Temperature Sensor (S.E)
      case 27:   //Bandgap (S.E)
      case 29:   //VREFH (S.E)
      case 30:   //VREFL
        break;
      default:
        return 0;  
    }
  }
  else if(adcx == ADC1)
  {
    switch(channel)
    {
      case 0:   //ADC1_DP0 -- PGA1_DP
      case 1:   //ADC1_DP1 -- PGA3_DP
      case 2:   //PGA1_DP 
      case 3:   //ADC1_DP3 -- PGA0_DP
        break;
      case 4:   //ADC1_SE4a -- PTE0
      case 5:   //ADC1_SE5a -- PTE1
      case 6:   //ADC1_SE6a -- PTE2
      case 7:   //ADC1_SE7a -- PTE3
        SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK; 
        PORT_PCR_REG(PORTE_BASE_PTR, channel-4) =  PORT_PCR_MUX(0);
        break;
      case 8:  //ADC1_SE8 -- PTB0
      case 9:  //ADC1_SE9 -- PTB1
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-8) =  PORT_PCR_MUX(0);
        break;
      case 10:  //ADC1_SE10 -- PTB4
      case 11:  //ADC1_SE11 -- PTB5
      case 12:  //ADC1_SE12 -- PTB6
      case 13:  //ADC1_SE13 -- PTB7
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-6) =  PORT_PCR_MUX(0);
        break;
      case 14:  //ADC1_SE14 -- PTB10
      case 15:  //ADC1_SE15 -- PTB11
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 
        PORT_PCR_REG(PORTB_BASE_PTR, channel-4) =  PORT_PCR_MUX(0);
        break;
      case 16:   //ADC1_SE16
        break;
      case 17:  //ADC1_SE17 -- PTA17
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
        PORT_PCR_REG(PORTA_BASE_PTR, channel) =  PORT_PCR_MUX(0);
        break;
      case 18:   //VREF Output
      case 19:   //ADC1_DM0 -- PGA1_DM
      case 20:   //ADC1_DM1 -- PGA3_DM
      case 23:   //DAC1_OUT 
      case 26:   //Temperature Sensor (S.E)
      case 27:   //Bandgap (S.E)
      case 29:   //VREFH (S.E)
      case 30:   //VREFL
        break;
      default:
        return 0;  
    }
  }
  else
  {
    return 0;
  }
  
  if(ad_event & ADC_INT_DISABLE)
  {
    ADC_SC1_REG(adcptr,0) &= ~(ADC_SC1_AIEN_MASK); //��ֹ�ж�
  }
  else if(ad_event & ADC_INT_ENABLE)
  {
    ADC_SC1_REG(adcptr,0) |= ADC_SC1_AIEN_MASK;   //ʹ���ж�
    if(adcx == ADC0)
    {
      enable_irq(57);      //ʹ��ADC0 NVIC�ж�
      ADC_ISR[ADC0] = isr; //����ж�·�� 
    }
    else
    {
      enable_irq(58);      //ʹ��ADC1 NVIC�ж�
      ADC_ISR[ADC1] = isr; //����ж�·�� 
    }
  }
  if(ad_event & ADC_DMA_DISABLE)
  {
    ADC_SC2_REG(adcptr)  &= ~( ADC_SC2_DMAEN_MASK ); //��ֹDMA
  }
  else if(ad_event & ADC_DMA_ENABLE)
  {
    ADC_SC2_REG(adcptr)  |= ADC_SC2_DMAEN_MASK;     //ʹ��DMA
  }
  ADC_SC1_REG(adcptr,0) &= ~(ADC_SC1_ADCH_MASK);   
  ADC_SC1_REG(adcptr,0) |= ADC_SC1_ADCH(channel);   //����ͨ��
  
  return 1;
}
/*
 * LPLD_ADC_SetHWTrg
 * ����ADCΪӲ��������ʽ
 * 
 * ����:
 *    adcx--ADCģ���
 *      |__ADC0         -ADC0ģ��
 *      |__ADC1         -ADC0ģ��
 *
 * ���:
 *    ��
 */
void LPLD_ADC_SetHWTrg(ADCx adcx)
{
  ADC_MemMapPtr adcptr = ADCx_Ptr[adcx];
  //ѡ��ADCΪӲ��������ʽ
  ADC_SC2_REG(adcptr)  |= ADC_SC2_ADTRG_MASK;
}

/*
 * LPLD_ADC_Isr
 * ADC�жϷ�����
 */
void LPLD_ADC_Isr(void)
{
  #define ADC_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 adc_ch = ADC_VECTORNUM - 73;
    
  //�����û��Զ����жϷ���
  if(ADC_ISR[adc_ch] != (ADC_ISR_CALLBACK)0)
    ADC_ISR[adc_ch](); 
  if(!adc_ch)
    ADC_SC1_REG(ADC0_BASE_PTR,0) |= ADC_SC1_COCO_MASK;
  else
    ADC_SC1_REG(ADC1_BASE_PTR,0) |= ADC_SC1_COCO_MASK;
}