/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_PDB.c
 * ��;: PDB�ײ�ģ����غ���
 * ����޸�����: 20120321
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
*/
#include "HAL_PDB.h"
#include "common.h"

/*
 *******���õ�PDB�жϣ�����isr.h��ճ��һ�´���:*********
#undef  VECTOR_088
#define VECTOR_088 LPLD_PDB_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_PDB_Isr(void);
 ***********************�������*************************
*/


PDB_ISR_CALLBACK PDB_ISR[1];


/*
 * LPLD_PDB_Init
 * ���ڳ�ʼ��PDB
 * ����PDB��prescaleԤ��Ƶֵ
 * ����PDB��trgsel���봥��Դ
 * ����PDB��ldmod����ģʽ
 * ����PDB��cont��������ģʽ��one-shotģʽ
 * ����PDB��dma_en
 * 
 * ����:
 *    prescale--PDB ��Ƶϵ��
 *      PDB�ļ�����Ƶ�� ���� ��������Ƶ�ʳ��� prescale��mult�ĳ˻�\
 *      |__PDB_PRESC_1      -����prescale = MULT * 1
 *      |__PDB_PRESC_2      -����prescale = MULT * 2
 *      |__PDB_PRESC_4      -����prescale = MULT * 4
 *      |__PDB_PRESC_8      -����prescale = MULT * 8
 *      |__PDB_PRESC_16     -����prescale = MULT * 16
 *      |__PDB_PRESC_32     -����prescale = MULT * 32
 *      |__PDB_PRESC_64     -����prescale = MULT * 64
 *      |__PDB_PRESC_128    -����prescale = MULT * 128
 *
 *    mult--PDB ��Ƶ����
 *      PDB�ļ�����Ƶ�� ���� ��������Ƶ�ʳ��� prescale��mult�ĳ˻�
 *      |__PDB_MULT_1       -����MULT = 1
 *      |__PDB_MULT_10      -����MULT = 10
 *      |__PDB_MULT_20      -����MULT = 20
 *      |__PDB_MULT_40      -����MULT = 40
 *
 *    mod--PDB ģ��������
 *      ��PDB����������MOD��ֵ��PDB����������
 *
 *    trgsel-- PDB ����Դѡ��
 *      |__TRIGER_IN0        -���봥��Դ0
 *      |__...                  
 *      |__TRIGER_IN14       -���봥��Դ14
 *      |__SOFTWARE_TRIGER   -�������
 * 
 *    ldmod--����PDB ADCͨ��x��Ԥ����ͨ��
 *      |__LDMOD0   -��LDOK=1�� MOD, IDLY, CHnDLYm, INTx, �� POyDLY �Ĵ�����������
 *      |__LDMOD1   -��LDOK=1��PDB����������MOD�� MOD, IDLY, CHnDLYm, INTx, �� POyDLY �Ĵ�����������
 *      |__LDMOD2   -��LDOK=1��һ�������¼�����Ϊ1�� MOD, IDLY, CHnDLYm, INTx, �� POyDLY �Ĵ�����������
 *      |__LDMOD3   -��LDOK=1���һ�������¼�����Ϊ1��PDB����������MOD�� MOD, IDLY, CHnDLYm, INTx, �� POyDLY �Ĵ�����������
 *
 *    cont -- ����PDB ����ģʽ
 *      |__PDB_ONESHOT   -����ģʽ
 *      |__PDB_CONTINUE  -����ģʽ
 * 
 *    dma_en -- ʹ��DMA����
 *      |__PDB_DMA_OFF   -��ֹDMAģʽ
 *      |__PDB_DMA_ON    -ʹ��DMAģʽ
 *
 *    ����ֵ:
 *       0 ����
 *       1 ���óɹ�
 */
uint8 LPLD_PDB_Init(uint8 prescale,uint8 mult,uint16 mod ,uint8 trgsel,uint8 ldmod,uint8 cont,uint8 dma_en)
{
  //ʹ��PDBʱ��
  SIM_SCGC6 |= SIM_SCGC6_PDB_MASK ;
  
  PDB0_SC = 0x00;
  //���÷�Ƶ����
  //f_PDB = f_perpherial_bus / (mult * prescale)
  //����f_perpherial_bus��PLL���໷������
  if( mult > 3)
    return 0;
  else
    PDB0_SC |=PDB_SC_MULT(mult);
  
  if(prescale >7)
    return 0;
  else
    PDB0_SC |=PDB_SC_PRESCALER(prescale);
  
  if(ldmod > 3)
    return 0;
  else
    //���ü���ģʽ
    PDB0_SC |= PDB_SC_LDMOD(ldmod); 
  
  if(trgsel >15)
    return 0;
  else
    //���ô���ģʽ
    PDB0_SC |= PDB_SC_TRGSEL(trgsel);
  
  //����PDB����ģʽ
  if(cont)
  {
    //PDB ����������ģʽ
    PDB0_SC |= PDB_SC_CONT_MASK ;
  }
  else
  {
    //PDB ����������ģʽ
    PDB0_SC &=(~PDB_SC_CONT_MASK);
  }
  //����DMAģʽ
  if(dma_en)
  {
    //PDB ����������ģʽ
    PDB0_SC |= PDB_SC_DMAEN_MASK ;
  }
  else
  {
    //PDB ����������ģʽ
    PDB0_SC &=(~PDB_SC_DMAEN_MASK);
  }
  
  PDB0_MOD = mod;
  
  return 1;
}

/*
 * LPLD_PDB_SetUp
 * ���ڿ����ر�PDB������
 * ������ͬʱ����LMOD�����ü���MOD, IDLY, CHnDLYm, DACINTx, and POyDLY
 * �������Ϊ�����������ʱ���������
 *
 * ����:
 *   is_operate -- �����Ƿ���PDB
 *     |__PDB_STOP        -�ر�PDB
 *     |__PDB_OPERATION   -����PDB
 */
void LPLD_PDB_SetUp(uint8 is_operate)
{
  if(is_operate==PDB_OPERATION)
  {
    //����PDB0
    PDB0_SC |= PDB_SC_PDBEN_MASK ; 
    //LDOK ֻ����PDBEN = 1����²����ã�
    //��ϸMOD, IDLY, CHnDLYm, DACINTx, and POyDLY�е�ֵ
    //���������õ�ʱ��ֵ���ص����Ӧ�Ļ������С�
    PDB0_SC |= PDB_SC_LDOK_MASK ;
    
    //PDBʹ�ܺ����������ģʽ��
    //��ʱ�����������㣬��λ������
    PDB0_SC |= PDB_SC_SWTRIG_MASK ;
  }
  else
  {
    //�ر�PDB
    PDB0_SC &= (~PDB_SC_PDBEN_MASK); 
  }
}

/*
 * LPLD_PDB_ADC_Trigger_Congfig
 * ��������ͨ��PDB����ADC�Ĵ����źţ��ڸú�����
 * ����PDB��adcxͨ��
 * ����PDB��adcxԤ������ʱ��������ֵ
 * ����PDB��adcxԤ����ͨ��
 * ����PDB��adcxԤ����ͨ��bbģʽ
 * 
 * ����:
 *    adcx--ѡ��PDB ADC��ͨ��
 *      |__ADC0       -ѡ��PDB ADCͨ��0
 *      |__ADC1       -ѡ��PDB ADCͨ��1
 * 
 *    *pre_dalay--PDB ADC��Ԥ������ʱ���ļ���ֵ���ò������Ϊ65536
 *        PDB ADC����ʱƵ�� ���� PDB��������Ƶ�� ���� pre_dalay 
 *        ��Ϊÿ��ͨ��������Ԥ������ʱ������Ҫ������ʱֵ�����Զ���Ϊ*pre_dalay
 * 
 *    pre_ch--����PDB ADCͨ��x��Ԥ����ͨ��
 *      |__PDB_PRECH_DIS  -��ѡ��Ԥ����λ
 *      |__PDB_PRECH_EN0  -ѡ��Ԥ����0  
 *      |__PDB_PRECH_EN1  -ѡ��Ԥ����1  
 *
 *    pre_bb_mode--����PDB ADCͨ��x��Ԥ������back to backģʽ
 *      |__PDB_PREBB_DIS  -��ֹPDB ADCͨ��x��Ԥ������b to bģʽ
 *      |__PDB_PREBB_EN0  -ѡ��PDB ADCͨ��x��Ԥ����0�ĵ�b to bģʽ
 *      |__PDB_PREBB_EN1  -ѡ��PDB ADCͨ��x��Ԥ����1�ĵ�b to bģʽ
 */

void LPLD_PDB_ADC_Trigger_Congfig(ADCx adcx, uint16 *pre_dalay, uint8 pre_ch, uint8 pre_bb_mode)
{
  PDB_C1_REG(PDB0_BASE_PTR,adcx) = (0 
                                    | PDB_C1_BB(pre_bb_mode)
                                    | PDB_C1_TOS(pre_ch)
                                    | PDB_C1_EN(pre_ch)
                                    );
  
  if(pre_ch) 
  {
    PDB_DLY_REG(PDB0_BASE_PTR,adcx,pre_ch-1) = *pre_dalay;
  }
}

/*
 * LPLD_PDB_DAC_Interval_Congfig
 * �ú�����������DAC��PDB�������ڣ��ڸú�����
 * ����PDB��dacxͨ��
 * ����PDB��dacx��PDB0_DACINTx�ļ���ֵ��
 * ����PDB��dacx�ⲿ���Ŵ���ģʽ
 * 
 * ����:
 *    dacx--ѡ��PDB DAC��ͨ��
 *      |__DAC0       -ѡ��PDB DACͨ��0
 *      |__DAC1       -ѡ��PDB DACͨ��1
 * 
 *    interval -- DAC�Ĵ���������ò������Ϊ65536
 *        DAC�Ĵ���Ƶ�� ���� PDB��������Ƶ�� ���� interval 
 * 
 *    extrigger -- DAC�ⲿ��������ʹ�ܣ�������ô�λPDB0_DACINTx�ᱻ����
 *      |__PDB_EXTRG_DIS  -�����ⲿ��������
 *      |__PDB_EXTRG_EN   -ʹ���ⲿ��������   
 */
void LPLD_PDB_DAC_Interval_Congfig(DACx dacx,uint16 interval,uint8 extrigger)
{

  if(extrigger == PDB_EXTRG_EN)
  {
    //�ⲿ����ģʽ�£�PDB0_DACINT0����
    //DAC output delay from PDB Software trigger
    PDB_INTC_REG(PDB0_BASE_PTR,dacx) |= PDB_INTC_EXT_MASK ;
  }
  else
  {
    //����PDB0_DACINT0ʱ�����뱣֤PDSC_DACTOE = 1,��˼�ǿ���PDB�ڲ�DAC������
    //DAC output changes are base on the interval defined by this value
    PDB_INT_REG(PDB0_BASE_PTR,dacx) = interval;
    PDB_INTC_REG(PDB0_BASE_PTR,dacx) &= ~PDB_INTC_EXT_MASK ;
  }
  //ʹ��DAC���������
  PDB_INTC_REG(PDB0_BASE_PTR,dacx) |= PDB_INTC_TOE_MASK ;
  
}

/*
 * LPLD_PDB_Delay_SetIsr
 * �ú��������趨PDB��ʱ�ж�
 * 
 * ����:
 * 
 *    delay -- PDB����ʱֵ���ò������Ϊ65536
 *        PDB����ʱֵƵ�� ���� PDB��������Ƶ�� ���� delay 
 * 
 *    isr_func -- PDB��ʱ�жϷ�����
 */

void LPLD_PDB_SetDelayIsr(uint16 delay,PDB_ISR_CALLBACK isr_func)
{
  //�趨��ʱ��ֵ
  PDB0_IDLY = delay;
  
  enable_irq(72);
  //ʹ�ܶ�ʱ�ж�
  PDB0_SC |= PDB_SC_PDBIE_MASK;
  //����жϺ���  
  PDB_ISR[0] = isr_func;

}

/*
 * LPLD_PDB_Delay
 * �ú����ò�ѯ��־λ�ķ�ʽ�ȴ���ʱ���
 * 
 * ����:
 * 
 *    delay -- PDB����ʱֵ���ò������Ϊ65536
 *        PDB����ʱֵƵ�� ���� PDB��������λ��Ƶ�� ���� delay 
 * 
 */
void LPLD_PDB_Delay(uint16 delay)
{
  //�趨��ʱ��ֵ
  PDB0_IDLY = delay;
  //��ֹ��ʱ���ж�
  PDB0_SC &= (~PDB_SC_PDBIE_MASK);
  //��ʱ�ȴ�ֱ����־λ��1
  while(PDB0_SC & PDB_SC_PDBIF_MASK)
  {
    //�����־λ  
    PDB0_SC |= PDB_SC_PDBIF_MASK;
  }
}


/*
 * LPLD_PDB_Isr
 * PDBͨ���жϵײ���ں���
 * PDBһ���������жϣ���һΪ��ʱ�жϣ����Ϊ�����ж�
 * ��������ö�ʱ�жϴ�����
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */
void LPLD_PDB_Isr(void)
{
  #define PDB_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 pdb_ch = PDB_VECTORNUM - 88;
    
  //�����û��Զ����жϷ���
  PDB_ISR[pdb_ch]();  
  
  //�����ʱ�жϱ�־λ  
  PDB0_SC &= ~PDB_SC_PDBIF_MASK;
}