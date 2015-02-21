#include "gpio.h"
#include "uart.h"
#include "sd.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�SD��ʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч������ȡ�ڴ濨�Ĵ�С����ȡ0���������ݣ�ʹ�ô��ڷ��ͳ�ȥ
      С����������˸����˸ʱ����500ms     
*/
uint8_t sd_buffer[512];  //SD�����ݻ���

int main(void)
{
    uint32_t i;
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    printf("SD test\r\n");
    printf("please insert SD card...\r\n");
    //SD��ģ����ٳ�ʼ���������ٶ�Ϊ20000000
    SD_QuickInit(20000000);
    //��ȡSD��������
    printf("SD size:%dMB\r\n", SD_GetSizeInMB());
    /* ��ȡ0�������ݣ�ÿһ������512�ֽ� */
    SD_ReadSingleBlock(0, sd_buffer);
    /* ��ӡ0�������� */
    printf("sectoer 0 data:\r\n");
    for(i = 0; i < 512; i++)
    {
        printf("0x%02X ", sd_buffer[i]);
    }
    while(1)
    {
        //С����˸
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


