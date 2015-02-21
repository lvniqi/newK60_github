#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "dma.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */
 
/*
     ʵ�����ƣ�IR�������ʵ��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ���жϷ�ʽ���к�����룬ͨ�����ڽ����ݷ��ͳ�ȥ  
*/
/* �������Ŷ���PTE28 */
#define IR_PORT  HW_GPIOE
#define IR_PIN   (28)
#define IR_DATA  PEin(IR_PIN)

/* ����������� */
static uint8_t InfraredExec(uint8_t * code)
{
	uint8_t i,j;
	uint32_t time_out = 0;
	while((IR_DATA == 0) && (time_out < 30*10))
	{
		time_out++;
		DelayUs(100);
	}
	if(time_out > 92 || time_out < 87) return 1;
	time_out = 0;
	while((IR_DATA == 1) && (time_out < 30*10))
	{
		time_out++;
		DelayUs(100);
	}
	if((time_out > 47) || (time_out < 43)) return 2;

	//��ʼ����
	for(i = 0; i < 4; i++)
	{
		for(j = 0; j < 8; j++)
		{
			while(IR_DATA == 0); //�˷ѵ��͵�ƽʱ��
			time_out = 0;
			while(IR_DATA == 1)  //��ȡ�ߵ�ƽʱ��
			{
				DelayUs(100);
				time_out++;
			}
			code[i] = code[i]>>1;
			if(time_out > 9) code[i] |= 0x80;	 //1.68Ϊ�ߵ�ƽ
			
		}
	}
	return 0;
}

/* GPIO�жϻص����� */
void GPIO_ISR(uint32_t pinArray)
{
    /* �ر��ж� */
    GPIO_ITDMAConfig(IR_PORT, IR_PIN, kGPIO_IT_FallingEdge, false);
    uint8_t code[4];
    if(!InfraredExec(code))
    {
        /* ���ճɹ� ��ӡID ������Ҳ��һ�� */
        printf("infrared:0x%02X 0x%02X 0x%02X 0x%02X\r\n", code[0], code[1], code[2], code[3]);
        GPIO_WriteBit(HW_GPIOA, 6, 1);
        DelayMs(100);
        GPIO_WriteBit(HW_GPIOA, 6, 0);
    }
    GPIO_ITDMAConfig(IR_PORT, IR_PIN, kGPIO_IT_FallingEdge, true);
}

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    /* ��ʼ������������ */
    GPIO_QuickInit(HW_GPIOA, 6, kGPIO_Mode_OPP);
    
    printf("Infrared test please press remote key...\r\n");
    
    /* ���� IR����Ϊ�ж����� */
    GPIO_QuickInit(IR_PORT, IR_PIN, kGPIO_Mode_IPU);
    /* �����жϻص� �Լ���ʼ�ж� */
    GPIO_CallbackInstall(IR_PORT, GPIO_ISR);
    GPIO_ITDMAConfig(IR_PORT, IR_PIN, kGPIO_IT_FallingEdge, true);
    
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


