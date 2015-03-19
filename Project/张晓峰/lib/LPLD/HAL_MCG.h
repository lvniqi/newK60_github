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
 */
#ifndef __HAL_MCG_H__
#define __HAL_MCG_H__
/********************************************************************/

unsigned char LPLD_PLL_Setup(unsigned char pll_option);
#if (defined(IAR))
	__ramfunc void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4);
#elif (defined(CW))
	__relocate_code__ 
	void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4);
#endif	
        
        
enum PLL_option
{
  PLL_60=60,
  PLL_70=70,
  PLL_80=80,
  PLL_90=90,
  PLL_96=96,
  PLL_100=100,
  PLL_110=110,
  PLL_120=120,
  PLL_130=130,
  PLL_150=150,
  PLL_170=170,
  PLL_180=180,
  PLL_200=200,
  PLL_209=209
};


#endif /* __HAL_MCG_H__ */