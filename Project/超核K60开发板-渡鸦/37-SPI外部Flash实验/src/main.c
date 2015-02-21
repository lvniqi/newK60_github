#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "w25qxx.h"
#include "spi.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */
 
/*
     ʵ�����ƣ�GPIOС��ʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч��: ��ȡ��������SPI-Flash����Ϣͨ�����ڷ��ͳ�ȥ
      С����������˸����˸ʱ����500ms     
*/
static struct spi_bus bus;
extern int kinetis_spi_bus_init(struct spi_bus* bus, uint32_t instance);

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("w25qxx test\r\n");
    /* ��ʼ��SPI2�ӿ� */
    kinetis_spi_bus_init(&bus, HW_SPI2);
    PORT_PinMuxConfig(HW_GPIOD, 12, kPinAlt2); /* SPI2_SCK */
    PORT_PinMuxConfig(HW_GPIOD, 13, kPinAlt2); /* SPI2_SOUT */
    PORT_PinMuxConfig(HW_GPIOD, 14, kPinAlt2); /* SPI2_SIN */ 

    PORT_PinMuxConfig(HW_GPIOD, 15, kPinAlt2); /* SPI2_PCS1 */
    /* ��ʼ��w25qxx ʹ��CS1Ƭѡ */
    w25qxx_init(&bus, HW_SPI_CS1);
    //��ȡSPI-Flash����Ϣ
    if(w25qxx_probe())
    {
        printf("w25qxx device no found!\r\n");
    }
    else
    {
        printf("%s detected! size:%dKB\r\n", w25qxx_get_name(), w25qxx_get_size()/1024);
    }
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);  //С����˸
    }
}


