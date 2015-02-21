#include "gpio.h"
#include "uart.h"
#include "nrf24l01.h"
#include "ili9320.h"
#include "spi.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */
 
/*
     ʵ�����ƣ�NRF2401ʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ͨ������ʵ���������ݵ��շ����ܣ�
      ����ͨ��֧�ֵ���NRF24L01ģ��
    ע�⣺�ײ������ı�д���2.4G��usb����ģ���д����Ҫ���USB-2.4Gģ��ʹ�� 
      TX_ADDRESS[5]={0x34,0x43,0x10,0x10,0x01}; //���͵�ַ
      RX_ADDRESS[5]={0x34,0x43,0x10,0x10,0x01}; //���յ�ַ    
*/
extern int kinetis_spi_bus_init(struct spi_bus* bus, uint32_t instance);
static uint8_t NRF2401RXBuffer[32] = "HelloWorld\r\n";//���߽�������
static uint8_t* gpRevChar;

/* ���ڽ����ж� */
void UART_ISR(uint16_t ch)
{
    static uint8_t rev_ch;
    rev_ch = ch;
    gpRevChar = (uint8_t*)&rev_ch;
}

int main(void)
{
    uint32_t i;
    uint32_t len;
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    UART_CallbackRxInstall(HW_UART0, UART_ISR);
    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);
    
    printf("NRF24L01 test\r\n");
    /* ��ʼ�� NRF2401ģ�� ��SPI�ӿڼ�Ƭѡ */
    PORT_PinMuxConfig(HW_GPIOE, 1, kPinAlt2); 
    PORT_PinMuxConfig(HW_GPIOE, 2, kPinAlt2); 
    PORT_PinMuxConfig(HW_GPIOE, 3, kPinAlt2); 
    PORT_PinMuxConfig(HW_GPIOE, 4, kPinAlt2);
    /* ��ʼ��2401�����CE���� */
    GPIO_QuickInit(HW_GPIOE, 0 , kGPIO_Mode_OPP);
    /* ��ʼ��2401ģ��*/
    static struct spi_bus bus;
    kinetis_spi_bus_init(&bus, HW_SPI1);
    nrf24l01_init(&bus, 0);
    //����Ƿ���������豸�������ý��պͷ��͵�ַ
    if(nrf24l01_probe())
    {
        printf("no nrf24l01 device found!\r\n");
    }
    /* ����Rxģʽ */
    nrf24l01_set_rx_mode();
    while(1)
    {
        /* ����յ������������� */
        if(gpRevChar != NULL)
        {
            nrf24l01_set_tx_mode();
            nrf24l01_write_packet(gpRevChar, 1);
            nrf24l01_set_rx_mode();
            gpRevChar = NULL;
        }
        /* ����յ�2401 ������ ���䵽���� */
        if(!nrf24l01_read_packet(NRF2401RXBuffer, &len))
        {
            i = 0;
            while(len--)
            {
                UART_WriteByte(HW_UART0, NRF2401RXBuffer[i++]);
            }
        }
    }
}


