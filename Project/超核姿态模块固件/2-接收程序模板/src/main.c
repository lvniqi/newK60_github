#include "gpio.h"
#include "common.h"
#include "uart.h"

#include "imu_rev.h"

/* ������̬ģ��������� */
/* ��ʵ����ϳ��˴�����̬ģ�� �뽫��̬ģ�����ӵ� �������Ӧ���š� ����ͨ����ͨ���Դ�����ʾ��� */

void IMU_REV_Handler(void)
{
    struct imu_data data;
    
    /* get data */
    imu_rev_get_data(&data);
    
    /* print results */
    printf("P/R/Y/P:%05d %05d %05d %05d\r", data.pitch/100, data.roll/100, data.yaw/10, data.presure);
}


static void UART3_ISR(uint16_t byteReceived)
{
    /* hander imu receive */
    imu_rev_process((char)byteReceived, IMU_REV_Interrupt);
}

 struct imu_rev_init installer = 
{
    NULL, /* ���ʹ��Interruptģʽ ������NULL���� */
    IMU_REV_Handler, /* �ɹ�����һ֡��Ĵ����� */
};

int main(void)
{
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    /* ��ӡ������� */
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    printf("IMU data receie, please connect IMU Tx/RX to PC16, PC17...\r\n");
    
    /*��̬ģ�鴮�� */
    UART_QuickInit(UART3_RX_PC16_TX_PC17, 115200); 

    /* open interrupt */
    UART_CallbackRxInstall(HW_UART3, UART3_ISR);
    UART_ITDMAConfig(HW_UART3, kUART_IT_Rx, true);

    /* install functions */
    imu_rev_init(&installer);
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


