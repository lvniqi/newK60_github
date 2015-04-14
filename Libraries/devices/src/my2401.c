#include "my2401.h"
#include "myadc.h"
u32 temp_rx_len=0;
my2401_data RF2401_RXD;
void isr(uint32_t pinArray){
  static u8 mycount = 0;
  nrf24l01_read_packet((u8*)&RF2401_RXD,&temp_rx_len);
  if(temp_rx_len >2){
    int temp = RF2401_RXD.count;
    int len = (temp+256-mycount)%256;
    mycount = RF2401_RXD.count;
    for(int i=0;i<len;i++){
      Sequeue_In_Queue(&RF_SEQ,RF2401_RXD);
      Sequeue_Out_Queue(&RF_SEQ);
    }
    if(abs(RF2401_RXD.angle)<300){
      RF_SEQ.s_counter++;
      if(RF_SEQ.s_counter >10){
        RF_SEQ.isStright = true;
      }
    }
    else{
      RF_SEQ.s_counter = 0;
      RF_SEQ.isStright = true;
    }
  } 
}

void NFR24l01_RX_Init(){
  /* 初始化2401模块*/
  static struct spi_bus bus;
  GPIO_QuickInit(HW_GPIOA, 17, kGPIO_Mode_IPD);
  /* 初始化 NRF2401模块 的SPI接口及片选 */
  PORT_PinMuxConfig(HW_GPIOA, 14, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 15, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 16, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 17, kPinAlt2);
  /* 初始化2401所需的CE引脚 */
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
  while(temp_rx_len == 0){
    OLED_P6x8Str(0, 0, "2401 NO SERVER!");
  }
}
void NFR24l01_TX_Init(){
  /* 初始化2401模块*/
  static struct spi_bus bus;
  GPIO_QuickInit(HW_GPIOA, 17, kGPIO_Mode_IPD);
  /* 初始化 NRF2401模块 的SPI接口及片选 */
  PORT_PinMuxConfig(HW_GPIOA, 14, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 15, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 16, kPinAlt2);
  PORT_PinMuxConfig(HW_GPIOA, 17, kPinAlt2);
  /* 初始化2401所需的CE引脚 */
  GPIO_QuickInit(HW_GPIOA, 10, kGPIO_Mode_OPP);
  kinetis_spi_bus_init(&bus, HW_SPI0);
  nrf24l01_init(&bus, 0);
  while (nrf24l01_probe()){
    OLED_P6x8Str(0, 0, "2401 ERROR");
  } 
  nrf24l01_set_tx_mode();
  /* 初始化GPIOD8引脚 */
  GPIO_QuickInit(HW_GPIOD, 8, kGPIO_Mode_IFT);
  while(nrf24l01_write_packet("\0",1)){
    OLED_P6x8Str(0, 0, "2401 NO CLIENT!");
    if(GPIO_ReadBit(HW_GPIOD, 8)){
      break;
    }
  }
}