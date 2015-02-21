#include "gpio.h"
#include "common.h"
#include "uart.h"

/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ��ʹ�� CMSIS��׼�ļ� startup_MKxxxx.c �е� CLOCK_SETUP �� */

/* UART ���ٳ�ʼ���ṹ��֧�ֵ�����* ʹ��ʱ�����Ƽ���׼��ʼ�� */
/*
 UART1_RX_PE01_TX_PE00   
 UART0_RX_PF17_TX_PF18   
 UART3_RX_PE05_TX_PE04   
 UART5_RX_PF19_TX_PF20   
 UART5_RX_PE09_TX_PE08   
 UART2_RX_PE17_TX_PE16   
 UART4_RX_PE25_TX_PE24   
 UART0_RX_PA01_TX_PA02   
 UART0_RX_PA15_TX_PA14   
 UART3_RX_PB10_TX_PB11   
 UART0_RX_PB16_TX_PB17   
 UART1_RX_PC03_TX_PC04   
 UART4_RX_PC14_TX_PC15   
 UART3_RX_PC16_TX_PC17   
 UART2_RX_PD02_TX_PD03   
 UART0_RX_PD06_TX_PD07   
 UART2_RX_PF13_TX_PF14   
 UART5_RX_PD08_TX_PD09   
*/

 /*
     ʵ�����ƣ�UART����
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ�ÿ������ϵ�UART�ӿں͵���ͨ�ţ�
        ������ÿ��500ms�����ݷ��͵����ԵĴ��ڵ���������
        ͬʱ�������ϻ�������С�Ƶ���˸��
        ���ڵ�ͨ���ٶ�Ϊ115200 8λ��Ч����λ
    ע�⣺��Ҫʹ��USB���������ӵ����Զ˺Ϳ������UART�ӿ�
         ���Զ���Ҫ��װCH340�����ʹ��ڵ�������
*/

int main(void)
{
    uint32_t instance; /*��� UART ��ģ��� */
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    
    /* ��ʼ��UART ʹ�ÿ��ٳ�ʼ����ʽ ������ 115200 ��������Ĭ�� ���س�ʼ���� UART��ģ��� */
    instance = UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    /* ��ʹ�ô��ڳ�ʼ���� printf ��Ĭ�����ӵ���һ������ʼ���Ĵ�����*/
    printf("UART%d OK! Hello Kinetis\r\n", instance);
    
    while(1)
    {
        /* ���� ���ֽڷ��� ���� ע�� HW_UART0�������Ѿ���ʼ������ģ�� ���� ����������*/
        UART_WriteByte(instance, 'h');
        UART_WriteByte(instance, 'e');
        UART_WriteByte(instance, 'l');
        UART_WriteByte(instance, 'l');
        UART_WriteByte(instance, 'o');
        UART_WriteByte(instance, '\r');
        UART_WriteByte(instance, '\n');
        /* ��˸С�� */
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


