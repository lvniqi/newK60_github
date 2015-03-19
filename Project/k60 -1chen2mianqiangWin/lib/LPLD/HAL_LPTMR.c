/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_LPTMR.c
 * ��;: LPTMR�ײ�ģ����غ���
 * ����޸�����: 20120326
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
/*
 *******���õ�LPTMR�жϣ�����isr.h��ճ��һ�´���:*********

//LPTMRģ���жϷ�����
#undef  VECTOR_101
#define VECTOR_101 LPLD_LPTMR_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_LPTMR_Isr(void);

 ***********************�������*************************
*/

#include "common.h"
#include "HAL_LPTMR.h"

LPTMR_ISR_CALLBACK LPTMR_ISR;

/*
 * LPLD_LPTMR_Init
 * LPTMR��ʼ������
 * 
 * ����:
 *    mode--ѡ��LPTMRģʽ
 *      |__MODE_LPTMR           --�͹��Ķ�ʱ��ģʽ
 *      |__MODE_PLACC           --�����ۼ�ģʽ
 *    period_ms--�趨��ʱ���Ķ�ʱֵ ��λms
 *      |__0                    --���������ۼ�ģʽʱѡ��Ϊ0
 *      |__1~65535              --1ms<= ��ʱ����  <=65535ms 
 *    channel--ѡ���ۼ�����ͨ��
 *      |__0                    --����Ϊ��ʱ��ʱѡ��Ϊ0
 *      |__LPTMR_ALT1           --����LPTMR_ALT1, PTA19Ϊ�����ۼ�����
 *      |__LPTMR_ALT2           --����LPTMR_ALT2, PTC5 Ϊ�����ۼ�����
 *    irq_en--�����ж�
 *      |__IRQ_DISABLE          --��ʹ���ж�
 *      |__IRQ_ENABLE           --ʹ���ж�
 *    isr_func
 *      |__�͹��Ķ�ʱ���жϻص�����
 *  
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */

uint8 LPLD_LPTMR_Init(uint8 mode, uint16 period_ms, uint8 channel, uint8 irq_en, LPTMR_ISR_CALLBACK isr_func)
{
  SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK;//��ʼ��LPTMRʱ��
   
  LPTMR0_CSR=0x00;  //��ռĴ���
  LPTMR0_PSR=0x00;
  LPTMR0_CMR=0x00;
   
  if(mode==MODE_LPTMR)// ���óɵ͹��Ķ�ʱ������
  {
      
    /* ����LPTMR */
    // LPO 1Khz
    //���ñȽϵ�ֵ
    //ʹ���ڲ�ʱ�� ��Ƶϵ��PrescaleΪ 2^(X+1)
    //��ʱ����һ����������=ʱ��Դ(Clk_Src)/ Ԥ��Ƶֵ(Prescale)
    //��ʱ���Ķ�ʱֵ=���õıȽ�ֵ(compare_value)/��ʱ����һ����������
    LPTMR0_CMR=LPTMR_CMR_COMPARE(period_ms);                 //���ñȽ�ֵ
    LPTMR0_PSR=LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK;  //����LPOʱ����·ʹ��
        
  }
  else if(mode==MODE_PLACC)               //���ó����岶��ģʽ
  {
    if(channel==LPTMR_ALT1)               //LPTMR_ALT1
    {
      SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK; 
      PORTA_PCR19=PORT_PCR_MUX(0x6);      //����PTA19Ϊ�����ۼ�
    }
    else if(channel==LPTMR_ALT2)          //LPTMR_ALT2
    {
      SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;  //����PTC5Ϊ�����ۼ�
      PORTC_PCR5=PORT_PCR_MUX(0x4);      
    }
    else
    {
      return 0;
    }
    
    //�����õ��ڲ�ʱ���޹�
    //�ⲿ������ź���Ϊ����ʱ��
    LPTMR0_PSR =LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK; 
    LPTMR0_CSR =LPTMR_CSR_TPS(channel);
    LPTMR0_CSR|=LPTMR_CSR_TMS_MASK; //����ģʽ
    LPTMR0_CSR|=LPTMR_CSR_TFC_MASK; //���ɼ���ģʽ
  }
  else
  {
    return 0;
  }
  
  if(isr_func!=NULL)
  {
    LPTMR_ISR=isr_func;
    enable_irq(85);
  }
  
  if(irq_en==1)
  {
    LPTMR0_CSR|=LPTMR_CSR_TIE_MASK;
  }
  else if(irq_en==0)
  {
    LPTMR0_CSR&=~LPTMR_CSR_TIE_MASK;
  }
  else
  {
    return 0;
  }
  
  LPTMR0_CSR|=LPTMR_CSR_TEN_MASK; //����LPTMR
  return 1;
}


/*
 * LPLD_LPTMR_SetIsr
 * ����LPTMRͨ���û�������жϷ���������ʹ���ж�
 * 
 * ����:
 *    isr_func--�û��жϳ�����ڵ�ַ
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 *
 */
uint8 LPLD_LPTMR_SetIsr(LPTMR_ISR_CALLBACK isr_func)
{
  LPTMR_ISR=isr_func;
  LPTMR0_CSR|=LPTMR_CSR_TIE_MASK;
  enable_irq(85);
  
  return 1;
}

/*
 * LPLD_LPTMR_ClearIsr
 * ���LPTMRͨ���û�������жϷ��������������ж�
 * 
 * ����:
 *    isr_func--�û��жϳ�����ڵ�ַ
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 *
 */
uint8 LPLD_LPTMR_ClearIsr(void)
{
  LPTMR0_CSR&=~LPTMR_CSR_TIE_MASK;
  disable_irq(85);
  LPTMR_ISR=NULL;
  
  return 1;
}

/*
 *  LPLD_LPTMR_Reset
 *  �͹��Ķ�ʱ����λ����λ�Ժ���յ͹��Ķ�ʱ��Counter
 * 
 *  ����:
 *      ��
 *  ����ֵ:
 *      ��
 */
void LPLD_LPTMR_Reset(void)
{
  LPTMR0_CSR&=(~LPTMR_CSR_TEN_MASK);       //Reset LPTMR0 
}


/*
 *  LPLD_LPTMR_GetPulseAcc
 *  �õ������ۼӵ�ֵ
 * 
 *  ����:
 *      ��
 *  ����ֵ:
 *      �����ۼ�ֵ
 */
uint16 LPLD_LPTMR_GetPulseAcc(void)
{
   return (uint16)LPTMR0_CNR;
}

/*
 *  LPLD_LPTMR_DelayMs
 *  �͹��Ķ�ʱ����ʱn��ms
 * 
 * ����:
 *    period_ms--�趨��ʱ���Ķ�ʱֵ ��λms
 *    ���65535ms
 *
 *  ����ֵ:
 *      ��
 */
void LPLD_LPTMR_DelayMs(uint16 period_ms)
{
  if(!period_ms)
    return;
  
  /* ����LPTMRʱ�� */
  SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK; 
  
  /* ���ú�����ʱ���� */
  LPTMR0_CMR = period_ms; 
  
  /* ����LPTMR����Ƶ����1kHz LPOΪʱ��Դ */
  LPTMR0_PSR = LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK; 
  
  /* ������ʱ�� */
  LPTMR0_CSR |= LPTMR_CSR_TEN_MASK; 

  /* �ȴ������ﵽ�趨ֵ */
  while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK));
  
  /*�����ֵ�Ƚϱ�־ */
  LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;
  
  return;
}


/*
 *  LPLD_LPTMR_Isr
 *  �͹��Ķ�ʱ���жϷ����ӳ���
 * 
 *  ����:
 *      ��
 *
 *  ����ֵ:
 *      ��
 */
void LPLD_LPTMR_Isr(void)
{
  LPTMR0_CSR|=LPTMR_CSR_TCF_MASK;  //���LPT�Ƚϱ�־
  LPTMR_ISR();
}
