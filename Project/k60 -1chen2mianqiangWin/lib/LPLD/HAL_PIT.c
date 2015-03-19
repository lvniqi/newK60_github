/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_PIT.c
 * ��;: PIT�ײ�ģ����غ���
 * ����޸�����: 20120321
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */

/*
 *******���õ���ʱ�жϣ�����isr.h��ճ��һ�´���:*********

//PITģ���жϷ�����
#undef  VECTOR_084
#define VECTOR_084 LPLD_PIT_Isr
#undef  VECTOR_085
#define VECTOR_085 LPLD_PIT_Isr
#undef  VECTOR_086
#define VECTOR_086 LPLD_PIT_Isr
#undef  VECTOR_087
#define VECTOR_087 LPLD_PIT_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_PIT_Isr(void);

 ***********************�������*************************
*/

#include "common.h"
#include "HAL_PIT.h"


//��������ʱ��Ƶ�ʣ���ֵ��sysinit.c�ļ���ȡ��
extern int periph_clk_khz;

//�û��Զ����жϷ���������
PIT_ISR_CALLBACK PIT_ISR[4];

/*
 * LPLD_PIT_Init
 * PITͨ�ó�ʼ������
 * 
 * ����:
 *    pitx--PITģ���
 *      |__PIT0        --�����ж϶�ʱ��0
 *      |__PIT1        --�����ж϶�ʱ��0
 *      |__PIT2        --�����ж϶�ʱ��0
 *      |__PIT3        --�����ж϶�ʱ��0
 *    period_us--�ж�����
 *      |__��λΪ΢��
 *    isr_func--�û��жϳ�����ڵ�ַ
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_PIT_Init(PITx pitx, uint32 period_us, PIT_ISR_CALLBACK isr_func)
{ 
  uint32 ldval;
  uint32 periph_clk_mhz;
  
  //�������
  ASSERT( pitx <= PIT3);                  //�ж�ģ���
  
  //���㶨ʱ����ֵ
  periph_clk_mhz = periph_clk_khz/1000;
  ldval = period_us*periph_clk_mhz;
  
  ASSERT( ldval > 0);                    
  
  //������ʱģ��ʱ��
  SIM_SCGC6 |= SIM_SCGC6_PIT_MASK;
  
  // ���� PIT
  PIT_MCR = 0x00;
 
  if(isr_func!=NULL){
    PIT_ISR[pitx] = isr_func;
    //��NVIC��ʹ��PIT�ж�
    enable_irq(68+pitx); 
  }
  
  //period = (period_ns/bus_period_ns)-1
  PIT_LDVAL_REG(PIT_BASE_PTR,pitx) = ldval-1;
  
  //ʹ���ж�
  PIT_TCTRL_REG(PIT_BASE_PTR,pitx) = PIT_TCTRL_TIE_MASK;
  //��ʼ��ʱ
  PIT_TCTRL_REG(PIT_BASE_PTR,pitx) |= PIT_TCTRL_TEN_MASK;
  
  return 1;
}

/*
 * LPLD_PIT_SetIsr
 * ����PITͨ���û�������жϷ���������ʹ���ж�
 * 
 * ����:
 *    pitx--PITģ���
 *      |__PIT0        --�����ж϶�ʱ��0
 *      |__PIT1        --�����ж϶�ʱ��0
 *      |__PIT2        --�����ж϶�ʱ��0
 *      |__PIT3        --�����ж϶�ʱ��0
 *    isr_func--�û��жϳ�����ڵ�ַ
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 *
 */
uint8 LPLD_PIT_SetIsr(PITx pitx, PIT_ISR_CALLBACK isr_func)
{
  PIT_ISR[pitx] = isr_func;
  enable_irq(68+pitx); 
  
  return 1;
}

/*
 * LPLD_PIT_ClearIsr
 * ���PITͨ���û�������жϷ��������������ж�
 * 
 * ����:
 *    pitx--PITģ���
 *      |__PIT0        --�����ж϶�ʱ��0
 *      |__PIT1        --�����ж϶�ʱ��0
 *      |__PIT2        --�����ж϶�ʱ��0
 *      |__PIT3        --�����ж϶�ʱ��0
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 *
 */
uint8 LPLD_PIT_ClearIsr(PITx pitx)
{
  disable_irq(68+pitx); 
  PIT_ISR[pitx] = NULL;
  
  return 1;
}


/*
 * LPLD_PIT_Isr
 * PITͨ���жϵײ���ں���
 * 
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */
void LPLD_PIT_Isr(void)
{
  #define PIT_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 pit_ch = PIT_VECTORNUM - 84;
    
  //�����û��Զ����жϷ���
  PIT_ISR[pit_ch]();  
  //����жϱ�־λ
  PIT_TFLG_REG(PIT_BASE_PTR,pit_ch) |= PIT_TFLG_TIF_MASK;
}