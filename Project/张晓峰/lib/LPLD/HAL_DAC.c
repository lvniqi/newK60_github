/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_DAC.c
 * ��;: DAC�ײ�ģ����غ���
 * ����޸�����: 20120618
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
*/

#include "HAL_DAC.h"
#include "common.h"


//�ڲ�����
uint8 LPLD_DAC_Config(LPLD_DAC_Cfg_t *);

//�û��Զ����жϷ���������
DAC_ISR_CALLBACK DAC_ISR[2];

/*******���õ�DAC�жϣ�����isr.h��ճ��һ�´���:*********

//DACģ���жϷ�����
#undef  VECTOR_097
#define VECTOR_097 LPLD_DAC_Isr
#undef  VECTOR_098
#define VECTOR_098 LPLD_DAC_Isr

//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_DAC_Isr(void);
*/



//DACӳ���ַ����
volatile DAC_MemMapPtr DACx_Ptr[2] = {DAC0_BASE_PTR, 
                                      DAC1_BASE_PTR};
/*

 * LPLD_DAC_Set_Buffer
 * ����DACͨ���Ļ�����
 * 
 * ����:
 *    dacx--DACģ���
 *      |__DAC0           --DAC0ģ��
 *      |__DAC1           --DAC1ģ��
 *    DACx_DATn--DAC��������
 *      |__0~15           --������0~15��
 *    data16--DAC����������
 *
 * ���
 *    ��
 */
void LPLD_DAC_Set_Buffer(DACx dacx, uint8 DACx_DATn, uint16 data16)
{
  DAC_MemMapPtr dacptr = DACx_Ptr[dacx];
  DAC_DATL_REG(dacptr, DACx_DATn) = (data16&0x0ff); 
  DAC_DATH_REG(dacptr, DACx_DATn) = (data16&0xf00)>>8;                                
}



/*
 * LPLD_DAC_Reset_Reg
 * ��λDACͨ���Լ������Ĵ���
 * 
 * ����:
 *    dacx--DACģ���
 *      |__DAC0           --DAC0ģ��
 *      |__DAC1           --DAC1ģ��
 * ���
 *    ��
 */
void LPLD_DAC_Reset_Reg(DACx dacx)
{
  DAC_MemMapPtr dacptr = DACx_Ptr[dacx];
  uint8 i;   
  
  //��λ16��ͨ������
  for (i=0; i<16;i++)
  {
    LPLD_DAC_Set_Buffer(dacx, i, 0x00); 
  }
  //DAC �����ָ������
  DAC_SR_REG(dacptr) = DAC_SR_DACBFRPTF_MASK ;
  //��� C0 �Ĵ��� 
  DAC_C0_REG(dacptr) = 0x00 ;
  //��� C1 �Ĵ��� 
  DAC_C1_REG(dacptr) = 0x00 ;
  //������������������Ϊ���
  DAC_C2_REG(dacptr) = 0x0F;
}

/*
 * LPLD_DAC_Init
 * DACģ���ʼ���������ڴ˺���������Ĭ�ϲ����Լ�����LPLD_DAC_Config���üĴ���
 *
 * ���� LPLD_DAC_Cfg_t *DAC_Config
 * ��ϸ������LPLD_DAC_Cfg_t �ṹ���ж���
 * LPLD_DAC_Cfg_t �ṹ���ڣ���HAL_DAC.h��ͷ�ļ��ж���
 *
 * �����
 *   0 ��ʼ��ʧ��
 *   1 ��ʼ���ɹ�
*/
uint8 LPLD_DAC_Init(LPLD_DAC_Cfg_t *DAC_Config)
{ 
  
  if(DAC_Config -> dacx > DAC1)
  {
    return 0;
  }
  
  //����û�û������ ˮӡģʽ������ Ĭ��Ϊ1����
  if(DAC_Config -> Water_Mark_Mode  == NULL)
  {
    DAC_Config -> Water_Mark_Mode = WATER_MODE_1WORD;
  }
  
  //����û�û������ ������ʹ�� Ĭ��Ϊ���û�����
  if(DAC_Config -> Buffer_Enable == NULL)
  {
    DAC_Config -> Buffer_Enable = BUFFER_DISABLE;       
  }
  
  //����û�û������ ��������ģʽ Ĭ��Ϊ����ģʽ
  if(DAC_Config -> Buffer_Mode == NULL)
  {
    DAC_Config -> Buffer_Mode = BUFFER_MODE_NORMAL;       
  }
  
  //����û�û������ ����ģʽ Ĭ��Ϊ�޴���ģʽ
  if(DAC_Config -> Triger_Mode == NULL)
  {
    DAC_Config -> Triger_Mode = TRIGER_MODE_NONE;   
  } 
  
  //����û�û������ ����������ʼλ�� Ĭ��Ϊ0
  if(DAC_Config -> Buffer_Init_Pos ==NULL)
  {
    DAC_Config -> Buffer_Init_Pos = 0;    
  }
  
  //����û�û������ �����������ֵ Ĭ��Ϊ16
  if(DAC_Config -> Buffer_Up_Limit == NULL)
  {
    DAC_Config -> Buffer_Up_Limit = 15;   
  }
    
  //����û�û������ �жϷ�ʽ Ĭ��Ϊ�����ж�
  if(DAC_Config -> DAC_irqc == NULL)
  {
    DAC_Config -> DAC_irqc = 0;     
  } 

  //����DAC�Ĵ���
  return LPLD_DAC_Config(DAC_Config);

}

/*
 * �ڲ��������û��������
 * LPLD_DAC_Config
 * ����DAC�Ĵ�������
 *
 * ���� LPLD_DAC_Cfg_t *DAC_Config
 * ��ϸ������LPLD_DAC_Cfg_t �ṹ���ж���
 * LPLD_DAC_Cfg_t �ṹ���ڣ���HAL_DAC.h��ͷ�ļ��ж���
 *
 * �����
 *   0 ����ʧ��
 *   1 ���óɹ�
*/
static uint8 LPLD_DAC_Config(LPLD_DAC_Cfg_t *DAC_Config)
{
  DAC_MemMapPtr dacptr = DACx_Ptr[DAC_Config->dacx];
  
  //===========����DAC_C0�Ĵ���=================//
  if( dacptr == DAC0_BASE_PTR )
  {
    //����DAC0ʱ��
    SIM_SCGC2 |= SIM_SCGC2_DAC0_MASK ; 
    
    if(DAC_Config -> DAC_irqc)
    {
      enable_irq(81);//����DAC0 CPU���ж�
      DAC_ISR[0]=DAC_Config -> isr_func;
    }
    
  }
  else if( dacptr == DAC1_BASE_PTR )
  {
    //����DAC1ʱ��
    SIM_SCGC2 |= SIM_SCGC2_DAC1_MASK ; 
    
    if(DAC_Config->DAC_irqc)
    {
      enable_irq(82);//����DAC1 CPU���ж�
      DAC_ISR[1]=DAC_Config->isr_func;
    }
  }
  else
    return 0;
  
  //===========����DAC_C0�Ĵ���=================//
  DAC_C0_REG(dacptr)  =0;
  //��ֹDACģ�������ж�
  if(DAC_Config->DAC_irqc == DAC_IRQ_DISABLE)
  {
    //The DAC buffer read pointer bottom flag interrupt is disabled.
    DAC_C0_REG(dacptr) &= (~DAC_C0_DACBBIEN_MASK);
    //The DAC buffer read pointer top flag interrupt is disabled.
    DAC_C0_REG(dacptr) &= (~DAC_C0_DACBTIEN_MASK);
    //The DAC buffer watermark interrupt is disabled.
    DAC_C0_REG(dacptr) &= (~DAC_C0_DACBWIEN_MASK); 
  }
  //����DACģ�����ָ��ָ���ж�
  else if(DAC_Config->DAC_irqc == DAC_IRQ_POINTER_BOTTOM)
  {
    //The DAC buffer read pointer bottom flag interrupt is disabled.
    DAC_C0_REG(dacptr) |= DAC_C0_DACBBIEN_MASK; 
  }
  //����DACģ�����ָ��ָ���ж�
  else if(DAC_Config->DAC_irqc == DAC_IRQ_POINTER_TOP)
  {
    //The DAC buffer read pointer top flag interrupt is disabled.
    DAC_C0_REG(dacptr) |=  DAC_C0_DACBTIEN_MASK; 
  }
  //����DACģ�����ˮӡ�ж�
  else if(DAC_Config->DAC_irqc == DAC_IRQ_WATER_MARK)
  {
    //The DAC buffer watermark interrupt is disabled.
    DAC_C0_REG(dacptr) |=  DAC_C0_DACBWIEN_MASK;   
  }
  else 
    return 0;

  //����DAC�ܺ�ģʽ�����ó�Ϊ�߹���ģʽ
  DAC_C0_REG(dacptr) &= (~DAC_C0_LPEN_MASK);
  
  //���ô�����ʽ
  //�޴�����ʽ��DAC����BUFFER0����ֵ��DAC0ͨ�����
  if(DAC_Config->Triger_Mode == TRIGER_MODE_NONE)
  {
    //����DAC������ʽ�����������ֹ
    DAC_C0_REG(dacptr) &= (~DAC_C0_DACTRGSEL_MASK);
    //����DAC���������ʽ�Ƿ���Ч��=1 ��Ч =0 ��Ч
    DAC_C0_REG(dacptr) |=  DAC_C0_DACSWTRG_MASK;
  }
  //���������ʽ��DAC����DAC_C0_DACSWTRG_MASK ������������ź�
  else if(DAC_Config->Triger_Mode == TRIGER_MODE_SOFTWARE)
  {
    //����DAC������ʽ�������������
    DAC_C0_REG(dacptr) |=  DAC_C0_DACTRGSEL_MASK;
    //����DAC���������ʽ�Ƿ���Ч��=1 ��Ч =0 ��Ч
    DAC_C0_REG(dacptr) |=  DAC_C0_DACSWTRG_MASK;
  }
  //���������ʽ��DAC����Ӳ���������ź� ��������
  else if(DAC_Config->Triger_Mode == TRIGER_MODE_HARDWARE)
  {
    //����DAC������ʽ��Ӳ����������
    DAC_C0_REG(dacptr) &= (~DAC_C0_DACTRGSEL_MASK);
    //����DAC���������ʽ�Ƿ���Ч��=1 ��Ч =0 ��Ч
    DAC_C0_REG(dacptr) &= (~DAC_C0_DACSWTRG_MASK );
  }
  else 
    return 0;
  //ѡ��DAC��ѹ�ο�Դ
  //0 The DAC selets DACREF_1 as the reference voltage.
  //  VREF_OUT = DACREF_1
  //1 The DAC selets DACREF_2 as the reference voltage.
  //  VDDA = DACREF_2
  //ѡ��VDDA��Ϊ�ο���ѹ
  DAC_C0_REG(dacptr) |=  DAC_C0_DACRFS_MASK;
  //ʹ��DACģ��
  DAC_C0_REG(dacptr) |=  DAC_C0_DACEN_MASK;
  //===========DAC_C0�������====================//
  
  //===========����DAC_C1�Ĵ���=================//
  DAC_C1_REG(dacptr)  = 0;
  //��ֹDAC��DMAģʽ 
  DAC_C1_REG(dacptr) &= (~DAC_C1_DMAEN_MASK);
  //DAC buffer watermark select
  
  //DAC ˮӡ��������Ϊ 1��word 
  if(DAC_Config->Water_Mark_Mode == WATER_MODE_1WORD)
  {
    DAC_C1_REG(dacptr) |= DAC_C1_DACBFWM(WATER_MODE_1WORD);
  }
   //DAC ˮӡ��������Ϊ 2��word 
  else if(DAC_Config->Water_Mark_Mode == WATER_MODE_2WORD)
  {
    DAC_C1_REG(dacptr) |= DAC_C1_DACBFWM(WATER_MODE_2WORD);  
  }
   //DAC ˮӡ��������Ϊ 3word 
  else if(DAC_Config->Water_Mark_Mode == WATER_MODE_3WORD)
  {
    DAC_C1_REG(dacptr) |= DAC_C1_DACBFWM(WATER_MODE_3WORD);   
  }
  //DAC ˮӡ��������Ϊ 4��word 
  else if(DAC_Config->Water_Mark_Mode == WATER_MODE_4WORD)
  {
    DAC_C1_REG(dacptr) |= DAC_C1_DACBFWM(WATER_MODE_4WORD);   
  }
  else
    return 0;
  
  //DAC ѡ��Ϊ����ģʽ
  //DAC Buffer ָ����㿪ʼ++ ֱ������ DAC Buffer Limit
  //Ȼ��DAC Buffer ָ������
  //���ó�Ϊ����ģʽ
  if(DAC_Config->Buffer_Mode == BUFFER_MODE_NORMAL)
  {
    DAC_C1_REG(dacptr) |= DAC_C1_DACBFMD(BUFFER_MODE_NORMAL);
  }
  //���ó�Ϊ��תģʽ
  else if(DAC_Config->Buffer_Mode == BUFFER_MODE_SWING)
  {
    DAC_C1_REG(dacptr) |= DAC_C1_DACBFMD(BUFFER_MODE_SWING);  
  }
  //���ó�Ϊһ��ɨ��ģʽ
  else if(DAC_Config->Buffer_Mode == BUFFER_MODE_ONETIMESCAN)
  {
    DAC_C1_REG(dacptr) |= DAC_C1_DACBFMD(BUFFER_MODE_ONETIMESCAN);   
  }
  else
    return 0;
  
  //�Ƿ�ʹ��DAC Buffer  
  if(DAC_Config->Buffer_Enable == BUFFER_ENABLE)
  {
    DAC_C1_REG(dacptr) |= DAC_C1_DACBFEN_MASK;
  }
  else
  {
    DAC_C1_REG(dacptr) &= (~DAC_C1_DACBFEN_MASK);
  }
  //===========DAC_C1�������====================//  
    
  //===========����DAC_C2�Ĵ���=================//
  //����Buffer���� 
  DAC_C2_REG(dacptr) = DAC_C2_DACBFUP((DAC_Config->Buffer_Up_Limit & 0x0f)); 
  //����Bufferָ��λ��
  DAC_C2_REG(dacptr) |=DAC_C2_DACBFRP((DAC_Config->Buffer_Init_Pos & 0xf0));
  //===========DAC_C2�������====================//  
  
  return 1;
}


/*
 * LPLD_DAC_Soft_Trig
 * ������������ź�
 * 
 * ����:
 *    dacx--DACģ���
 *      |__DAC0           --DAC0ģ��
 *      |__DAC1           --DAC1ģ��
 * �����
 *    ��
 */
void LPLD_DAC_Soft_Trig(DACx dacx)
{
  DAC_MemMapPtr dacptr = DACx_Ptr[dacx];
  DAC_C0_REG(dacptr) |= DAC_C0_DACSWTRG_MASK;
}

/*
 * LPLD_DAC_Isr
 * DACͨ���жϵײ���ں���
 * 
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */
void LPLD_DAC_Isr(void)
{
  #define DAC_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 dac_ch = DAC_VECTORNUM - 97;
  DAC_MemMapPtr DACx_Base_Ptr = (DAC_MemMapPtr)((0x400CC+dac_ch)<<12);
  
  if ((DAC_SR_REG(DACx_Base_Ptr)&DAC_SR_DACBFRPBF_MASK) ) 
  {
    DAC_ISR[dac_ch]();
    DAC_SR_REG(DACx_Base_Ptr)=0x06; //����жϱ�־λ
  }
  else if ((DAC_SR_REG(DACx_Base_Ptr)&DAC_SR_DACBFRPTF_MASK))
  {
    DAC_ISR[dac_ch]();
    DAC_SR_REG(DACx_Base_Ptr)=0x05 ;//����жϱ�־λ
  }
  else if ((DAC_SR_REG(DACx_Base_Ptr)&DAC_SR_DACBFWMF_MASK))
  {
    DAC_ISR[dac_ch]();
    DAC_SR_REG(DACx_Base_Ptr)=0x03 ;//����жϱ�־λ
  }
}