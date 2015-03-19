/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_MCG.h
 * ��;: MCG�ײ�ģ����غ���
 * ����޸�����: 20120216
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 *
 * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ mcg.c
 */
#include "common.h"
#include "HAL_MCG.h"

/*
 * LPLD_PLL_Setup
 * PLL��ʼ���ں˼�����ϵͳʱ��
 * 
 * ����:
 *    clk_option--�����ں�ʱ��Ƶ��
 *      |__PLLx--�μ�HAL_MCG.h�е�PLL_option����
 *
 * ���:
 *    �ں�Ƶ�ʣ���λMHz
 */
unsigned char LPLD_PLL_Setup(unsigned char pll_option)
{
  unsigned char pll_freq;
  unsigned char prdiv;
  
  if(pll_option<111)
  {
    prdiv = 24;  
  }
  else if(pll_option<201)
  {
    prdiv = 12; 
  }
  else if(pll_option<221)
  {
    prdiv = 11; 
  }
  else
  {
    return 0;
  }
  
  // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
  
  // �����ƶ��� FBE ģʽ
  MCG_C2 = 0;
  
  // ������ʼ����ɺ�,�ͷ�����״̬�µ� oscillator �� GPIO 
  SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
  LLWU_CS |= LLWU_CS_ACKISO_MASK;
  
  // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
  // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
  MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
  
  //while (!(MCG_S & MCG_S_OSCINIT_MASK)){};  // �ȴ� oscillator ��ʼ��
  
  while (MCG_S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
  
  while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
  
  // ����FBEģʽ
  // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
  // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
  // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
  MCG_C5 = MCG_C5_PRDIV(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
  
  // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
  MCG_C6 = 0x0;
  // ѡ��PLL VCO��Ƶ��,ϵͳʱ�ӷ�Ƶ��ȡ����ʱ��ѡ��
  
  switch (pll_option) {
    case 60:
      // ����ϵͳѡ���Ƶ
      // MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/3
      LPLD_Set_SYS_DIV(0,1,1,2);  //core=60M, bus=30M, FlexBus=30M, Flash Clk=20M
      // ���� VCO ��Ƶ��ʹ�� 50MHz PLL, LOLIE=0, PLLS=1, CME=0, VDIV=1
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(6); //VDIV = 6 (2x30) 60MHz
      pll_freq = 60;
      break;
    case 70:
      LPLD_Set_SYS_DIV(0,1,1,2);  //core=70M, bus=35M, FlexBus=35M, Flash Clk=23.3M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(11); //VDIV = 11 (2x35) 70MHz
      pll_freq = 70;
      break;
    case 80:
      LPLD_Set_SYS_DIV(0,1,1,3);  //core=80M, bus=40M, FlexBus=40M, Flash Clk=20M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(16); //VDIV = 16 (2x40) 80MHz
      pll_freq = 80;
      break;
    case 90:
      LPLD_Set_SYS_DIV(0,1,1,3);  //core=90M, bus=45M, FlexBus=45M, Flash Clk=22.5M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(21); //VDIV = 21 (2x45) 90MHz
      pll_freq = 90;
      break;
    case 96:
      LPLD_Set_SYS_DIV(0,1,1,3);  //core=96M, bus=48M, FlexBus=48M, Flash Clk=22.5M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(24); //VDIV = 24 (2x48) 96MHz
      pll_freq = 96;
      break;
    case 100:
      LPLD_Set_SYS_DIV(0,1,1,3);  //core=100M, bus=50M, FlexBus=50M, Flash Clk=25M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(26); //VDIV = 26 (2x50) 100MHz
      pll_freq = 100;
      break;
    case 110:
      LPLD_Set_SYS_DIV(0,2,2,4);  //core=110M, bus=36.7M, FlexBus=36.7M, Flash Clk=22M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(31); //VDIV = 31 (2x55) 110MHz
      pll_freq = 110;
      break;
    case 120:
      LPLD_Set_SYS_DIV(0,2,2,4);  //core=120M, bus=40M, FlexBus=40M, Flash Clk=24M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(7); //VDIV = 7 (3.846x31) 119.2MHz
      pll_freq = 120;
      break;
    case 130:
      LPLD_Set_SYS_DIV(0,2,2,5);  //core=130M, bus=43M, FlexBus=43M, Flash Clk=21.6M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(10); //VDIV = 10 (3.846x34) 130.8MHz
      pll_freq = 130;
      break;
    case 150:
      LPLD_Set_SYS_DIV(0,2,2,5);  //core=150M, bus=50M, FlexBus=50M, Flash Clk=25M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(15); //VDIV = 15 (3.846x39) 150MHz
      pll_freq = 150;
      break;
    case 170:
      LPLD_Set_SYS_DIV(0,3,3,6);  //core=170M, bus=42.5M, FlexBus=42.5M, Flash Clk=24.3M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(20); //VDIV = 20 (3.846x44) 169.2MHz
      pll_freq = 170;
      break;
    case 180:
      LPLD_Set_SYS_DIV(0,3,3,7);  //core=180M, bus=45M, FlexBus=45M, Flash Clk=22.5M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(23); //VDIV = 23 (3.846x47) 180.8MHz
      pll_freq = 180;
      break;
    case 200:
      LPLD_Set_SYS_DIV(0,3,3,7);  //core=200M, bus=50M, FlexBus=50M, Flash Clk=25M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(28); //VDIV = 28 (3.846x52) 200MHz
      pll_freq = 200;
      break;
    case 209:
      LPLD_Set_SYS_DIV(0,4,4,8);  //core=209M, bus=42M, FlexBus=42M, Flash Clk=23.2M
      MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(26); //VDIV = 26 (4.17x50) 208.5MHz
      pll_freq = 209;
    break;
  }
  
  while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
  
  while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
  
  // �Ѿ�����PBEģʽ
  
  // Transition into PEE by setting CLKS to 0
  // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
  MCG_C1 &= ~MCG_C1_CLKS_MASK;
  
  // Wait for clock status bits to update
  while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
  
  // �Ѿ�����PEEģʽ
  
  return pll_freq;
} 


/*
 * LPLD_Set_SYS_DIV
 * ����ϵͳʼ�շ�Ƶ(FSCL�ٷ�����)
 *
 * ˵��:
 * ��δ�����������RAM��. It is a workaround for errata e2448.
 * ��Flashʱ�ӷ�Ƶ�ı��ʱ��FlashԤ��ȡ�������.
 * �����ڴ�Flashִ�е�ʱ�����ﲻ��ִ��.
 * ��Ԥ��ȡ������ʹ��֮ǰ������ʱ�ӷ�Ƶ�ı����һ��С����ʱ.
 *
 * ����:
 *    outdiv1~outdiv4--�ֱ�Ϊcore, bus, FlexBus, Flashʱ�ӷ�Ƶϵ��
 */
#if (defined(IAR))
	__ramfunc void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
#elif (defined(CW))
__relocate_code__ 
void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
#endif
{
  uint32 temp_reg;
  uint8 i;
  
  temp_reg = FMC_PFAPR; // ���� FMC_PFAPR �Ĵ���
  
  // ���� M0PFD �� M7PFD Ϊ 1 ����Ԥ�ȶ�ȡ
  FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
             | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
             | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
  
  // ����ʱ�ӷ�ƵΪ����ֵ  
  SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2) 
              | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);

  // ��ʱһС��ʱ��ȴ��ı�
  for (i = 0 ; i < outdiv4 ; i++)
  {}
  
  FMC_PFAPR = temp_reg; // �ظ�ԭ�ȵ� FMC_PFAPR �Ĵ���ֵ
  
  return;
} // set_sys_dividers
