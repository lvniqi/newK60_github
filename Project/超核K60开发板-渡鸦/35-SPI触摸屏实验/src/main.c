#include "gpio.h"
#include "uart.h"
#include "ads7843.h"
#include "ili9320.h"
#include "spi.h"

#include "gui.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�SPI������ʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�����ڴ������ϻ�ͼ    
*/
static struct spi_bus bus;
extern int kinetis_spi_bus_init(struct spi_bus* bus, uint32_t instance);

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("spi touch screen test\r\n");
    /* ��ʼ��SPI2 �ӿ����Ӵ������Ĵ���оƬ*/
    kinetis_spi_bus_init(&bus, HW_SPI2);
    PORT_PinMuxConfig(HW_GPIOD, 12, kPinAlt2); /* SPI2_SCK */
    PORT_PinMuxConfig(HW_GPIOD, 13, kPinAlt2); /* SPI2_SOUT */
    PORT_PinMuxConfig(HW_GPIOD, 14, kPinAlt2); /* SPI2_SIN */ 

    PORT_PinMuxConfig(HW_GPIOD, 11, kPinAlt2); /* SPI2_PCS0 */
    /* ��ʼ������оƬ ʹ��CS0Ƭѡ */
    ads7843_init(&bus, HW_SPI_CS0);
    
    GUI_Init();//Һ���������ʼ��
    GUI_SetBkColor(GUI_WHITE); //���ñ���ɫ
    GUI_SetColor(GUI_BLACK);   //����ǰ��ɫ
    GUI_Clear();  //����
    GUI_SetPenSize(3); //���õ�Ĵ�С
    GUI_DispString("Measurement of\nA/D converter values");
    while (1)
    {
        GUI_PID_STATE TouchState;
        int xPhys, yPhys;
        GUI_TOUCH_GetState(&TouchState);  /* ��ô���λ�� */
        xPhys = GUI_TOUCH_GetxPhys();     /* ���x��Ĳ���ֵ */
        yPhys = GUI_TOUCH_GetyPhys();     /* ���y��Ĳ���ֵ */
        /* ��ʾ������� */
        GUI_SetColor(GUI_BLUE);
        GUI_DispStringAt("Analog input:\n", 0, 20);
        GUI_GotoY(GUI_GetDispPosY() + 2);
        GUI_DispString("x:");
        GUI_DispDec(xPhys, 4);
        GUI_DispString(", y:");
        GUI_DispDec(yPhys, 4);
        /* Display the according position */
        GUI_SetColor(GUI_RED);
        GUI_GotoY(GUI_GetDispPosY() + 4);
        GUI_DispString("\nPosition:\n");
        GUI_GotoY(GUI_GetDispPosY() + 2);
        GUI_DispString("x:");
        GUI_DispDec(TouchState.x,4);
        GUI_DispString(", y:");
        GUI_DispDec(TouchState.y,4);
        GUI_DrawPoint(TouchState.x, TouchState.y);
        GUI_TOUCH_Exec();
    }
}


