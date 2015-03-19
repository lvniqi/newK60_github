/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_UART.c
 * ��;: UART�ײ�ģ����غ���
 * ����޸�����: 20120330
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
*/
/*
 *******���õ�UART�жϣ�����isr.h��ճ��һ�´���:*********

//UARTģ���жϷ�����
#undef  VECTOR_061
#define VECTOR_061 LPLD_UART_Isr
#undef  VECTOR_063
#define VECTOR_063 LPLD_UART_Isr
#undef  VECTOR_065
#define VECTOR_065 LPLD_UART_Isr
#undef  VECTOR_067
#define VECTOR_067 LPLD_UART_Isr
#undef  VECTOR_069
#define VECTOR_069 LPLD_UART_Isr
#undef  VECTOR_071
#define VECTOR_071 LPLD_UART_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_UART_Isr(void);

 ***********************�������*************************
*/

#include "common.h"
#include "HAL_UART.h"


extern int core_clk_khz;          //ϵͳ��Ƶʱ��Ƶ��
extern int periph_clk_khz;        //����ʱ��Ƶ��


UART_ISR_CALLBACK UART_R_ISR[6];  //�û������жϺ�����ڵ�ַ����
UART_ISR_CALLBACK UART_T_ISR[6];  //�û������жϺ�����ڵ�ַ����

//UARTӳ���ַ����
volatile UART_MemMapPtr UARTx_Ptr[6] = {UART0_BASE_PTR, 
                                        UART1_BASE_PTR, 
                                        UART2_BASE_PTR, 
                                        UART3_BASE_PTR, 
                                        UART4_BASE_PTR, 
                                        UART5_BASE_PTR};

/*
 * LPLD_UART_Init
 * ��ʼ��UARTͨ�����䲨����
 * 
 * ����:
 *    uartx--UARTģ���
 *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
 *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
 *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
 *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
 *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
 *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
 *    baud--�����ʣ��Ƽ��������³��ò�����
 *      |__4800
 *      |__9600
 *      |__19200
 *      |__38400
 *      |__57600
 *      |__115200
 *
 * ���:
 *    ��
 *
 */
void LPLD_UART_Init(UARTx uartx, int baud)
{
  UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
  register uint16 sbr, brfa;
  int sysclk;
  uint8 temp;
  
  if ((uartptr == UART0_BASE_PTR) | (uartptr == UART1_BASE_PTR))
    sysclk = core_clk_khz;
  else
    sysclk = periph_clk_khz;
  
  //ʹ��ѡ�е�UART����ͨ��ʱ��   
  if(uartptr == UART0_BASE_PTR)
  {
    SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;
    //ʹ�� PTB17 ���ŵ� UART0_TXD ���� 
    PORTB_PCR17 = PORT_PCR_MUX(0x3); 
    //ʹ�� PTB16 ���ŵ� UART0_RXD ���� 
    PORTB_PCR16 = PORT_PCR_MUX(0x3);
  }
  else
  {
    if (uartptr == UART1_BASE_PTR)
    {
      SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
      SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
      //ʹ�� PTC4 ���ŵ� UART1_TXD ���� 
      PORTC_PCR4 = PORT_PCR_MUX(0x3); 
      //ʹ�� PTC3 ���ŵ� UART1_RXD ���� 
      PORTC_PCR3 = PORT_PCR_MUX(0x3);
    }
    else
    {
      if (uartptr == UART2_BASE_PTR)
      {
        SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
        //ʹ�� PTD3 ���ŵ� UART2_TXD ���� 
        PORTD_PCR3 = PORT_PCR_MUX(0x3); 
        //ʹ�� PTD2 ���ŵ� UART2_RXD ���� 
        PORTD_PCR2 = PORT_PCR_MUX(0x3);
      }
      else
      {
        if(uartptr == UART3_BASE_PTR)
        {
          SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
          //ʹ�� PTC17 ���ŵ� UART3_TXD ���� 
          PORTC_PCR17 = PORT_PCR_MUX(0x3); 
          //ʹ�� PTC16 ���ŵ� UART3_RXD ���� 
          PORTC_PCR16 = PORT_PCR_MUX(0x3);
        }
        else
        {
          if(uartptr == UART4_BASE_PTR)
          {
            SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
            //ʹ�� PTC15 ���ŵ� UART4_TXD ���� 
            PORTC_PCR15 = PORT_PCR_MUX(0x3); 
            //ʹ�� PTC14 ���ŵ� UART4_RXD ���� 
            PORTC_PCR14 = PORT_PCR_MUX(0x3);
          }
          else
          {
            SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
            //ʹ�� PTE8 ���ŵ� UART3_TXD ���� 
            PORTE_PCR8 = PORT_PCR_MUX(0x3); 
            //ʹ�� PTE9 ���ŵ� UART3_RXD ���� 
            PORTE_PCR9 = PORT_PCR_MUX(0x3); 
          }
        }
      }
    }
  }
  
  //�����ú������Ĵ���ǰ���ȹرշ������ͽ�����
  UART_C2_REG(uartptr) &= ~(UART_C2_TE_MASK | UART_C2_RE_MASK );
  
  //����UARTΪ 8λ, ����żУ�� */
  UART_C1_REG(uartptr) = 0;	
  
  //���㲨����
  sbr = (uint16)((sysclk*1000)/(baud * 16));
  
  //����UARTx_BDH�Ĵ����г���SBR��ֵ
  temp = UART_BDH_REG(uartptr) & ~(UART_BDH_SBR(0x1F));
  
  UART_BDH_REG(uartptr) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
  UART_BDL_REG(uartptr) = (uint8)(sbr & UART_BDL_SBR_MASK);
  
  //���ò����ʵ�΢������
  brfa = (((sysclk*32000)/(baud * 16)) - (sbr * 32));
  
  //����UARTx_C4�Ĵ����г���BRFA��ֵ
  temp = UART_C4_REG(uartptr) & ~(UART_C4_BRFA(0x1F));
  
  UART_C4_REG(uartptr) = temp |  UART_C4_BRFA(brfa);    
  
  //ʹ�ܷ������ͽ�����
  UART_C2_REG(uartptr) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
}

/*
 * LPLD_UART_GetChar
 * ���ڲ�ѯ��ʽ��ȡһ���ֽ�
 * 
 * ����:
 *    uartx--UARTģ���
 *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
 *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
 *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
 *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
 *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
 *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
 *
 * ���:
 *    ���ڽ��յ�1���ֽ�
 *
 */
char LPLD_UART_GetChar(UARTx uartx)
{
  UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
  
  //�ȴ����ݽ���
  while (!(UART_S1_REG(uartptr) & UART_S1_RDRF_MASK));
  
  //���ؽ��յ�1���ֽ�����
  return UART_D_REG(uartptr);
}

/*
 * LPLD_UART_PutChar
 * ���ڲ�ѯ��ʽ����һ���ֽ�
 * 
 * ����:
 *    uartx--UARTģ���
 *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
 *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
 *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
 *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
 *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
 *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
 *    ch--�����͵�1���ֽ�
 *
 * ���:
 *    ��
 *
 */
void LPLD_UART_PutChar(UARTx uartx, char ch)
{
  UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
  
  //�ȴ�FIFO׼������
  while(!(UART_S1_REG(uartptr) & UART_S1_TDRE_MASK));
  
  //��Ҫ���͵�1���ֽڷ���UART���ݼĴ���
  UART_D_REG(uartptr) = (uint8)ch;
}


/*
 * LPLD_UART_PutCharArr
 * ���ڲ�ѯ��ʽ�����ֽ�������
 * 
 * ����:
 *    uartx--UARTģ���
 *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
 *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
 *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
 *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
 *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
 *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
 *    *ch--�����͵��ֽ�����ͷ��ַ
 *    len--�ֽ����鳤��
 *
 * ���:
 *    ��
 *
 */
void LPLD_UART_PutCharArr(UARTx uartx, char *ch, int len)
{
  while(len--)
  {
    LPLD_UART_PutChar(uartx, *(ch++));
  }
}

/*
 * LPLD_UART_RIE_Enable
 * ʹ�ܴ������ݽ����жϣ������жϺ������
 * 
 * ����:
 *    uartx--UARTģ���
 *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
 *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
 *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
 *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
 *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
 *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
 *    isr_func--���ݽ����жϳ�����ڵ�ַ
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    ��
 *
 */
void LPLD_UART_RIE_Enable(UARTx uartx, UART_ISR_CALLBACK isr_func)
{
  UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
  
  UART_R_ISR[uartx] = isr_func;
 
  //ʹ��UART�����ж�
  UART_C2_REG(uartptr) |= UART_C2_RIE_MASK; 
  
  //�����ж������ʹ����Ӧ�ж�
  enable_irq( 45 + uartx*2);
}

/*
 * LPLD_UART_RIE_Disable
 * ���ô������ݽ����ж�
 * 
 * ����:
 *    uartx--UARTģ���
 *      |__UART0          --UART0  -Txd:PTB17 -Rxd:PTB16
 *      |__UART1          --UART1  -Txd:PTC4  -Rxd:PTC3
 *      |__UART2          --UART2  -Txd:PTD3  -Rxd:PTD2
 *      |__UART3          --UART3  -Txd:PTC17 -Rxd:PTC16
 *      |__UART4          --UART4  -Txd:PTC15 -Rxd:PTC14
 *      |__UART5          --UART5  -Txd:PTE8  -Rxd:PTE9
 *
 * ���:
 *    ��
 *
 */
void LPLD_UART_RIE_Disable(UARTx uartx)
{
  UART_MemMapPtr uartptr = UARTx_Ptr[uartx];
 
  //����UART�����ж�
  UART_C2_REG(uartptr) &= ~UART_C2_RIE_MASK;  
  
  disable_irq( 45 + uartx*2);
}

/*
 * LPLD_UART_Isr
 * UARTͨ���жϵײ���ں���
 * 
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */
void LPLD_UART_Isr(void)
{
  #define UART_VECTORNUM   (*(volatile uint8_t*)(0xE000ED04))
  uint8_t uart_ch = (UART_VECTORNUM - 61)/2;
  UART_MemMapPtr uartch = (UART_MemMapPtr)((0x4006A+uart_ch)<<12);
  if(uart_ch>3){
    uartch = (UART_MemMapPtr)((0x400E6+uart_ch)<<12);  
  }
  
  //��������жϺ���
  if(UART_S1_REG(uartch) & UART_S1_RDRF_MASK)
  {
    UART_R_ISR[uart_ch]();
  }
}