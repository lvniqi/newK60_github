/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_GPIO.c
 * ��;: GPIO�ײ�ģ����غ���
 * ����޸�����: 20120321
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
/*
 *******���õ�GPIO�жϣ�����isr.h��ճ��һ�´���:*********

//GPIOģ���жϷ�����
#undef  VECTOR_103
#define VECTOR_103 LPLD_GPIO_Isr
#undef  VECTOR_104
#define VECTOR_104 LPLD_GPIO_Isr
#undef  VECTOR_105
#define VECTOR_105 LPLD_GPIO_Isr
#undef  VECTOR_106
#define VECTOR_106 LPLD_GPIO_Isr
#undef  VECTOR_107
#define VECTOR_107 LPLD_GPIO_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_GPIO_Isr(void);

 ***********************�������*************************
*/

#include "common.h"
#include "HAL_GPIO.h"


//�û��Զ����жϷ���������
GPIO_ISR_CALLBACK GPIO_ISR[5];
//GPIOӳ���ַ����
volatile GPIO_MemMapPtr GPIOx_Ptr[5] = {PTA_BASE_PTR, 
                                        PTB_BASE_PTR, 
                                        PTC_BASE_PTR, 
                                        PTD_BASE_PTR, 
                                        PTE_BASE_PTR};
//PORTӳ���ַ����
volatile PORT_MemMapPtr PORTx_Ptr[5] = {PORTA_BASE_PTR, 
                                        PORTB_BASE_PTR, 
                                        PORTC_BASE_PTR, 
                                        PORTD_BASE_PTR, 
                                        PORTE_BASE_PTR};

/*
 * LPLD_GPIO_Init
 * GPIOͨ�ó�ʼ������
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *    port_bit--�˿�λ��
 *      |__0~31
 *    dir--�˿����ݷ���
 *      |__DIR_INPUT  --����
 *      |__DIR_OUTPUT --���
 *    data1--�����ʼ��ƽ/��������������
 *      |__INPUT_PDOWN--���dir=DIR_INPUT,�����ڲ�����
 *      |__INPUT_PUP  --���dir=DIR_INPUT,�����ڲ�����
 *      |__OUTPUT_L   --���dir=DIR_OUTPUT,����͵�ƽ
 *      |__OUTPUT_H   --���dir=DIR_OUTPUT,����ߵ�ƽ
 *    irqc--�����ж�
 *      |__IRQC_DIS   --��ʹ���ж�
 *      |__IRQC_DMARI --�����ش���DMA
 *      |__IRQC_DMAFA --�½��ش���DMA
 *      |__IRQC_DMAET --����/�½��ش���DMA
 *      |__IRQC_L     --�߼��ʹ����ж�
 *      |__IRQC_RI    --�����ش����ж�
 *      |__IRQC_FA    --�½��ش����ж�
 *      |__IRQC_ET    --����/�½��ش����ж�
 *      |__IRQC_H     --�߼��ߴ����ж�
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_GPIO_Init(PTx ptx, uint8 port_bit, uint8 dir, uint8 data1, uint8 irqc)
{
  GPIO_MemMapPtr gpio_ptr = GPIOx_Ptr[ptx];
  PORT_MemMapPtr port_ptr = PORTx_Ptr[ptx];
  
  //�������
  ASSERT( ptx <= PTE);                  //�ж϶˿�
  ASSERT( port_bit <= 31 );             //�ж϶˿�λ��
  ASSERT( dir <= 1 );                   //�жϷ���
  ASSERT( data1 <= 1 );                 //�ж������ʼ��ƽ/��������������
  ASSERT( irqc <= IRQC_H);              //�ж϶��ж�����

  //����ΪGPIO����
  PORT_PCR_REG(port_ptr, port_bit) = PORT_PCR_MUX(1);
  
  //������������
  if(dir==DIR_OUTPUT)
  {
    GPIO_PDDR_REG(gpio_ptr) |= 0x1u<<port_bit;
    //���ó�ʼ���
    if(data1==OUTPUT_H)
    {
      GPIO_PSOR_REG(gpio_ptr) = 0x1u<<port_bit; 
    }
    else
    {
      GPIO_PCOR_REG(gpio_ptr) = 0x1u<<port_bit;  
    }
  }
  else
  { 
    GPIO_PDDR_REG(gpio_ptr) &= ~(0x1u<<port_bit);
    PORT_PCR_REG(port_ptr, port_bit) |= PORT_PCR_IRQC(irqc); 
    //�����ڲ�������������ʹ��
    if(data1==INPUT_PUP)
    {
      //����
      PORT_PCR_REG(port_ptr, port_bit) |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK ; 
    }
    else if(data1==INPUT_PDOWN)
    {
      //����
      PORT_PCR_REG(port_ptr, port_bit) |= PORT_PCR_PE_MASK ; 
    }
    else
    {
      //��ʹ��������
      PORT_PCR_REG(port_ptr, port_bit) &= ~PORT_PCR_PE_MASK ; 
    }
 
  }
  
  return 1;
}

/*
 * LPLD_GPIO_SetIsr
 * ����GPIOͨ���û�������жϷ���������ʹ���ж�
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *    isr_func--�û��жϳ�����ڵ�ַ
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 *
 */
uint8 LPLD_GPIO_SetIsr(PTx ptx, GPIO_ISR_CALLBACK isr_func)
{
  GPIO_ISR[ptx] = isr_func;
  enable_irq(ptx + 87);
  
  return 1;
}

/*
 * LPLD_GPIO_ClearIsr
 * ���GPIOͨ���û�������жϷ��������������ж�
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 *
 */
uint8 LPLD_GPIO_ClearIsr(PTx ptx)
{
  disable_irq(ptx + 87);
  GPIO_ISR[ptx] = NULL;
  
  return 1;
}

/*
 * LPLD_GPIO_Set
 * ����GPIO�˿�0~31λ���
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *    data32--�������
 *      |__0x00000000~0xFFFFFFFF--�͵��ߴ���GPIO�ڵĵ�0~31λ����
 *
 * ���:
 *
 */
void LPLD_GPIO_Set(PTx ptx, uint32 data32)
{ 
  GPIO_PDOR_REG(GPIOx_Ptr[ptx]) = data32;
}

/*
 * LPLD_GPIO_Set_b
 * ����GPIO�˿�һλ�����
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *    port_bit--λ��
 *      |__0~31       --GPIO�ڵĵ�0~31λ
 *    data1--�������
 *      |__OUTPUT_L   --����͵�ƽ
 *      |__OUTPUT_H   --����ߵ�ƽ
 *
 * ���:
 *
 */
void LPLD_GPIO_Set_b(PTx ptx, uint8 port_bit, uint8 data1)
{
  if(data1==OUTPUT_L)
    GPIO_PCOR_REG(GPIOx_Ptr[ptx]) = 0x1u<<port_bit;
  else
    GPIO_PSOR_REG(GPIOx_Ptr[ptx]) = 0x1u<<port_bit;
}

/*
 * LPLD_GPIO_Toggle
 * ����GPIO�˿�0~31�ĵ�ƽ��ת
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *    data32--��ת����
 *      |__0x00000000~0xFFFFFFFF--�͵��ߴ���GPIO�ڵĵ�0~31λ�ķ�ת��1Ϊ��ת��0Ϊ���ֲ��䡣
 *
 * ���:
 *
 */
void LPLD_GPIO_Toggle(PTx ptx, uint32 data32)
{
  GPIO_PTOR_REG(GPIOx_Ptr[ptx]) = data32;
}

/*
 * LPLD_GPIO_Toggle_b
 * ����GPIO�˿�һλ�ķ�ת
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *    port_bit--λ��
 *      |__0~31       --����GPIO�ڵ�һλ��ת
 *
 * ���:
 *
 */
void LPLD_GPIO_Toggle_b(PTx ptx, uint8 port_bit)
{
  GPIO_PTOR_REG(GPIOx_Ptr[ptx]) = 0x1u<<port_bit;
}

/*
 * LPLD_GPIO_Get
 * ȡ��GPIO�ڵ�����
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *
 * ���:
 *    ָ��GPIO�ڵ�32λ����
 *
 */
uint32 LPLD_GPIO_Get(PTx ptx)
{
  return GPIO_PDIR_REG(GPIOx_Ptr[ptx]);
}

/*
 * LPLD_GPIO_Get_b
 * ȡ��GPIO��ĳһλ������
 * 
 * ����:
 *    ptx--�˿ں�
 *      |__PTA        --Port A
 *      |__PTB        --Port B
 *      |__PTC        --Port C
 *      |__PTD        --Port D
 *      |__PTE        --Port E
 *    port_bit--λ��
 *      |__0~31--GPIO�ڵĵ�0~31λ
 *
 * ���:
 *    ָ��GPIO�ڵ�ָ��λ���ĵ�ƽ
 *
 */
uint8 LPLD_GPIO_Get_b(PTx ptx, uint8 port_bit)
{
  return (GPIO_PDIR_REG(GPIOx_Ptr[ptx])>>port_bit)&0x1u;
}

/*
 * LPLD_GPIO_Isr
 * GPIOͨ���жϵײ���ں���
 * 
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */
void LPLD_GPIO_Isr(void)
{
  #define GPIO_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 gpio_port = GPIO_VECTORNUM - 103;
    
  //�����û��Զ����жϷ���
  GPIO_ISR[gpio_port]();  
  
  //����жϱ�־λ
  PORT_ISFR_REG((PORT_MemMapPtr)((0x40049+gpio_port)<<12))=0xFFFFFFFF;
}