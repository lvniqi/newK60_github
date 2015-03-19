/*
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: bsp.c
 * ��;: ����UCOSϵͳ��BSP���弶֧�ְ�������
 * ����޸�����: 20120715
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */


#include "bsp.h"
#include "bsp_int.h"
#include "common.h"
#include "includes.h"

/*���ϵͳ��ǰ��Ƶ��*/
extern int core_clk_khz;
static void LPLD_uCOS_Clk_Init(void);
static void LPLD_uCOS_InitIsrTable(void);
/*
 * LPLD_uCOS_Clk_Init
 * ����UCOS��ϵͳʱ�ӣ�ϵͳʱ��ȡ���ں�ʱ�ӣ���UCOS��ϵͳʱ��Ӧ�趨��10--100Hz��
 * 
 * ����:
 *    ��
 * ���:
 *    ��
 *
*/
static void LPLD_uCOS_Clk_Init(void)
{
  CPU_INT32U  cpu_clk_freq;
  CPU_INT32U  cnts;
  //UCOS��ϵͳʱ��Ƶ�ʿ�����10--100Hz֮������
  cpu_clk_freq = core_clk_khz*1000;
  cnts         = cpu_clk_freq / (CPU_INT32U)OS_TICKS_PER_SEC; 
  if(cnts > 100000) //���ϵͳʱ��Ƶ�ʴ���100hz����ϵͳʱ���ȶ���100hz
    cnts=100000;
  //systick������cnts�β���һ���ж� 
  OS_CPU_SysTickInit(cnts);                                   
}

/*
 * LPLD_uCOS_InitIsrTable
 * �˺������ڳ�ʼ��UCOS�����ж�ISR��
 * �ڴ˺����е���LPLD_uCOS_Register_K60Int������
 * ��LPLD�ײ��������е�xx_isr����ע�ᵽUCOS�����ж�ISR���м���
 * 
 * ����:
 *    ��
 * ���:
 *    ��
 *
*/
static void LPLD_uCOS_InitIsrTable(void)
{
  //ע��IOE�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_GPIO_Isr,BSP_INT_ID_PORTE);
  //ע��IOB�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_GPIO_Isr,BSP_INT_ID_PORTB);
  //ע��UART0�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_UART_Isr,BSP_INT_ID_UART0_RX_TX);
  //ע��UART1�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_UART_Isr,BSP_INT_ID_UART1_RX_TX);
  //ע��UART2�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_UART_Isr,BSP_INT_ID_UART4_RX_TX);
  //ע��UART5�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_UART_Isr,BSP_INT_ID_UART5_RX_TX);
  //ע��RTC�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_RTC_Isr,BSP_INT_ID_RTC);
  //ע��CAN�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_CAN_Isr,BSP_INT_ID_CAN0_ORED_MESSAGE_BUFFER);
  //ע��PIT�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_PIT_Isr,BSP_INT_ID_PIT0);
  //ע��DMA�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_DMA_Isr,BSP_INT_ID_DMA1);
  //ע��DMA�ж�
  //LPLD_uCOS_Register_K60Int(LPLD_DMA_Isr,BSP_INT_ID_DMA0);
}


/*
 * LPLD_uCOS_InitIsrTable
 * �˺������ڳ�ʼ��UCOS�����ж�ISR��
 * �ڴ˺����е���LPLD_uCOS_Register_K60Int������
 * ��LPLD�ײ��������е�xx_isr����ע�ᵽUCOS�����ж�ISR���м���
 * 
 * ����:
 *    ��
 * ���:
 *    ��
 *
*/
void LPLD_uCOS_bsp_Init(void)
{
  LPLD_uCOS_Clk_Init();
  LPLD_uCOS_InitIsrTable();
}