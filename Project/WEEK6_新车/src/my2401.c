#include "my2401.h"
int temp_rx;
u32 temp_rx_len=0;
void isr(uint32_t pinArray){
  nrf24l01_read_packet((u8*)&temp_rx,&temp_rx_len);
  OLED_PrintShort(60,0,temp_rx);
}

void NFR24l01_RX_Init(){
  /* ��ʼ��2401ģ��*/
  static struct spi_bus bus;
  GPIO_QuickInit(HW_GPIOA, 17, kGPIO_Mode_IPD);
  /* ��ʼ�� NRF2401ģ�� ��SPI�ӿڼ�Ƭѡ */
  PORT_PinMuxConfig(HW_GPIOA, 14, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 15, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 16, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 17, kPinAlt2);
  /* ��ʼ��2401�����CE���� */
  GPIO_QuickInit(HW_GPIOA, 10, kGPIO_Mode_OPP);
  kinetis_spi_bus_init(&bus, HW_SPI0);
  nrf24l01_init(&bus, 0);
  while (nrf24l01_probe()){
    OLED_P6x8Str(0, 0, "2401 ERROR");
  } 
  GPIO_QuickInit(HW_GPIOA,11,kGPIO_Mode_IPU);
  GPIO_CallbackInstall(HW_GPIOA,isr);
  GPIO_ITDMAConfig(HW_GPIOA, 11, kGPIO_IT_FallingEdge, true);
  nrf24l01_set_rx_mode();
}