/*
 * File:        sysinit.c
 * Purpose:     Kinetis Configuration
 *              Initializes processor to a default state
 *
 * Notes:
 *
 */

#include "common.h"
#include "sysinit.h"
#include "uart.h"

/********************************************************************/

/* ʵ��ϵͳʱ��Ƶ�� */
int core_clk_khz;
int core_clk_mhz;
int periph_clk_khz;

/********************************************************************/
void sysinit (void)
{
        /*
         * ʹ�����ж˿ڵ�ʱ��. Ϊ���������Ÿ��������ʹ������, ���Դ����������Ҫ������Щ.
         */
        SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
                      | SIM_SCGC5_PORTB_MASK
                      | SIM_SCGC5_PORTC_MASK
                      | SIM_SCGC5_PORTD_MASK
                      | SIM_SCGC5_PORTE_MASK );

 	/* ����ϵͳʱ�� */
	core_clk_mhz = LPLD_PLL_Setup(CORE_CLK_MHZ);

	/*
         * ��pll_init�����ķ���ֵ���������:core_clk_khz��periph_clk_khz(��kHzΪ��λ)
	 * ��Щ������������������
	 */
	core_clk_khz = core_clk_mhz * 1000;
  	periph_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24)+ 1);

  	/* 
         *���ڷ����Ŀ��, ʹ��׷��ʱ�Ӻ�FlexBusʱ����
  	 */
	trace_clk_init();
  	fb_clk_init();

  	/* ʹ��ѡ�е� UART */

  	if (TERM_PORT == UART3_BASE_PTR)
  	{
                 /* ʹ�� PTC17 ���ŵ� UART3_TXD ����  */
  		PORTC_PCR17 = PORT_PCR_MUX(0x3); // �����ŵ� ����3 �� UART

  		/* ʹ�� PTC16 ���ŵ� UART3_RXD ���� */
  		PORTC_PCR16 = PORT_PCR_MUX(0x3); // �����ŵ� ����3 �� UART
  	}

  	if (TERM_PORT == UART5_BASE_PTR)
  	{
                 /* ʹ�� PTE8 ���ŵ� UART5_TXD ����  */
  		PORTE_PCR8 = PORT_PCR_MUX(0x3); // �����ŵ� ����3 �� UART

  		/* ʹ�� PTE9 ���ŵ� UART5_RXD ����  */
  		PORTE_PCR9 = PORT_PCR_MUX(0x3); // �����ŵ� ����3 �� UART
  	}
  	/* UART0 and UART1 �� core clock �ṩʱ��Դ, ������������ UARTs ��
         * peripheral clock �ṩʱ��Դ. ����Ҫ������������ĸ�ʱ����Ϊ uart_init �Ĳ���.
         */
        if ((TERM_PORT == UART0_BASE_PTR) | (TERM_PORT == UART1_BASE_PTR))
           uart_init (TERM_PORT, core_clk_khz, TERMINAL_BAUD);
        else
  	   uart_init (TERM_PORT, periph_clk_khz, TERMINAL_BAUD);
        
#if(defined(DEBUG_PRINT))  
        // ��ӡϵͳƵ��
        printf("Core Clock:%dMHz!\r\n", core_clk_mhz);
        printf("Bus Clock:%dkHz!\r\n", periph_clk_khz);
#endif
}
/********************************************************************/
void trace_clk_init(void)
{
	/* Set the trace clock to the core clock frequency */
	SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;

	/* Enable the TRACE_CLKOUT pin function on PTA6 (alt7 function) */
	PORTA_PCR6 = ( PORT_PCR_MUX(0x7));
}
/********************************************************************/
void fb_clk_init(void)
{
	/* Enable the clock to the FlexBus module */
        SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;

 	/* Enable the FB_CLKOUT function on PTC3 (alt5 function) */
	PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
}
/********************************************************************/
