#include "usb.h"
#include "common.h"

static int USB_SetClockDiv(uint32_t srcClock)
{
    uint8_t usbfrac_max, usbdiv_max,frac,div;
    usbfrac_max = 1;
    usbdiv_max = 7;
    
    /* clear all divivder */
    SIM->CLKDIV2 &= ~SIM_CLKDIV2_USBDIV_MASK;
    SIM->CLKDIV2 &= ~SIM_CLKDIV2_USBFRAC_MASK;
    
    for(frac=0;frac<usbfrac_max;frac++)
    {
        for(div=0;div<usbdiv_max;div++)
        {
            if((srcClock*(frac+1))/(div+1) == 48000000)
            {
                SIM->CLKDIV2 |= SIM_CLKDIV2_USBDIV(div);
                (frac)?(SIM->CLKDIV2 |= SIM_CLKDIV2_USBFRAC_MASK):(SIM->CLKDIV2 &= ~SIM_CLKDIV2_USBFRAC_MASK);
                LIB_TRACE("USB clock OK src:%d frac:%d div:%d 0x%08X\r\n", srcClock, frac, div, SIM->CLKDIV2);
                return 0;
            }
        }
    }
    return 1;
}

uint8_t USB_Init(void)
{
    /* disable flash protect */
	FMC->PFAPR |= (FMC_PFAPR_M4AP_MASK);
    
    /* enable USB reguator */
	SIM->SOPT1 |= SIM_SOPT1_USBREGEN_MASK;
    
    /* disable memory protection */
    MPU->CESR=0;
    
    /* clock config */
    SIM->SOPT2 |= SIM_SOPT2_USBSRC_MASK;
    uint32_t clock;
    CLOCK_GetClockFrequency(kCoreClock, &clock);
    if(USB_SetClockDiv(clock))
    {
        LIB_TRACE("USB clock setup fail\r\n");
    }
    SIM->CLKDIV2 = 0x02;
    (MCG->C6 & MCG_C6_PLLS_MASK)?
    (SIM->SOPT2 |= SIM_SOPT2_PLLFLLSEL_MASK):   /* PLL */
    (SIM->SOPT2 &= ~SIM_SOPT2_PLLFLLSEL_MASK);  /* FLL */

    /* enable USB clock */
    SIM->SCGC4 |= SIM_SCGC4_USBOTG_MASK;
    
    USB0->USBTRC0 = 0x40; 
    /* enable USB reset IT */
	//����BDT��ַ�Ĵ���
	//( ��9 λ��Ĭ��512 �ֽڵ�ƫ��) 512 = 16 * 4 * 8 ��
	//8 λ��ʾ: 4 ���ֽڵĿ���״̬��4 ���ֽڵĻ�������ַ

    /* reset USB moudle */
	USB0->USBTRC0 |= USB_USBTRC0_USBRESET_MASK;
	while(USB0->USBTRC0 & USB_USBTRC0_USBRESET_MASK){};
    
    /* set BDT table address */
	//USB0->BDTPAGE1=(uint8_t)((uint32_t)tBDTtable>>8);
	//USB0->BDTPAGE2=(uint8_t)((uint32_t)tBDTtable>>16);
	//USB0->BDTPAGE3=(uint8_t)((uint32_t)tBDTtable>>24);
        
    /* clear all IT bit */
    USB0->ISTAT |= 0xFF;
    
    /* enable USB reset IT */
    USB0->INTEN |= USB_INTEN_USBRSTEN_MASK;

	USB0->USBCTRL = USB_USBCTRL_PDE_MASK;       //D-  D+ ����
	USB0->USBTRC0 |= 0x40;                      //ǿ�����õ�6λΪ1  ���Ǿ��ᣬDS�Ͼ���ôд��

    /* enable USB moudle */
	USB0->CTL |= USB_CTL_USBENSOFEN_MASK;
    
    /* enable pull down reisger */
	USB0->CONTROL |= USB_CONTROL_DPPULLUPNONOTG_MASK;

    NVIC_EnableIRQ(USB0_IRQn); //ʹ��USBģ��IRQ�ж�
	return 0;
}


void USB_DisConnect(void)
{
	USB0->CONTROL &= ~USB_CONTROL_DPPULLUPNONOTG_MASK;
}

void USB_Connect(void)
{
	USB0->CONTROL |= USB_CONTROL_DPPULLUPNONOTG_MASK;
}
