/*
 * �ļ���: k60_card.h
 * ��;: K60 Card���İ���������
 * ����޸�����: 20120216
 *
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * http://laplenden.taobao.com
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 *
 * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ k60_tower.h
 */
#ifndef __K60_CARD_H__
#define __K60_CARD_H__

#include "HAL_Def.h"
#include "HAL_MCG.h"

/********************************************************************/

#if (defined(UCOS_II))
  #include "bsp_int.h"
#endif

/*
 * �Ƿ����ô�����ʾ������Ϣ
 * ������ã����İ��������ʱͨ��UART5��ʾ���������Ϣ��ռ��PTE8��PTE9�����˿�
 * 1����ʾ  0��ʾ
 */
#if (0)            
#undef DEBUG_PRINT
#endif

/* Define for the CPU on the K60 board */
#define CPU_MK60N512VMD100

/*
 * ����ʱ�Ӷ���(Core Clock)
 * ��ѡ��Χ:
 *        PLL_60 - 60MHz
 *        PLL_70 - 70MHz
 *        PLL_80 - 80MHz
 *        PLL_90 - 90MHz
 *        PLL_96 - 96MHz
 *        PLL_100 - 100MHz
 *        PLL_110 - 110MHz
 *        PLL_120 - 120MHz
 *        PLL_130 - 130MHz
 *        PLL_150 - 150MHz
 *        PLL_170 - 170MHz
 *        PLL_180 - 180MHz
 *        PLL_200 - 200MHz
 *        PLL_209 - 209MHz
 * bus,FlexBus,Flash������ģ��ʱ����μ� HAL_MCG.c �е� pll_setup() ����.
 * �Ƽ�ʹ�õ�Ƶ��: 100MHz, 150MHz, 200MHz. �ڴ�3��Ƶ��������ģ��ʱ��Ƶ�ʴﵽ����
 */
#define CORE_CLK_MHZ        PLL_100      /* ����ʱ��Ƶ��*/



/* 
 * ѡ�������Ϣ������еĴ��ںźͲ�����
 */
#define OSJTAG     

#if (defined(OSJTAG))
    #define TERM_PORT           UART5_BASE_PTR
    #define TERMINAL_BAUD       115200
    #undef  HW_FLOW_CONTROL
#else
  #error "No valid serial port defined"
#endif


#endif /* __K60_CARD_H__ */
