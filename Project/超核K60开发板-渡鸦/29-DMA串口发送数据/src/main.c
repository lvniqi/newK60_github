#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "dma.h"
#include "sram.h"
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�DMA���ڷ�������
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч����ʹ�ô��ڷ������ݣ�������ʹ����DMA���ܣ������ٶȸ���
*/

static const void* UART_DataPortAddrTable[] = 
{
    (void*)&UART0->D,
    (void*)&UART1->D,
    (void*)&UART2->D,
    (void*)&UART3->D,
    (void*)&UART4->D,
    (void*)&UART5->D,    
};

static const uint32_t UART_SendDMATriggerSourceTable[] = 
{
    UART0_TRAN_DMAREQ,
    UART1_TRAN_DMAREQ,
    UART2_TRAN_DMAREQ,
    UART3_TRAN_DMAREQ,
    UART4_TRAN_DMAREQ,
    UART5_TRAN_DMAREQ,
};

/* DMA ���ͺ��� */
static uint32_t UART_SendWithDMA(uint32_t dmaChl, const uint8_t *buf, uint32_t size)
{
    DMA_SetSourceAddress(dmaChl, (uint32_t)buf);
    DMA_SetMajorLoopCounter(dmaChl, size);
    /* �������� */
    DMA_EnableRequest(dmaChl);
    return 0;
}

static void UART_DMASendConfig(uint32_t uartInstnace, uint8_t dmaChl)
{
    DMA_InitTypeDef DMA_InitStruct1 = {0};
    DMA_InitStruct1.chl = dmaChl;
    DMA_InitStruct1.chlTriggerSource = UART_SendDMATriggerSourceTable[uartInstnace];
    DMA_InitStruct1.triggerSourceMode = kDMA_TriggerSource_Normal;
    DMA_InitStruct1.minorLoopByteCnt = 1;
    DMA_InitStruct1.majorLoopCnt = 0;
    
    DMA_InitStruct1.sAddr = NULL;
    DMA_InitStruct1.sLastAddrAdj = 0; 
    DMA_InitStruct1.sAddrOffset = 1;
    DMA_InitStruct1.sDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.sMod = kDMA_ModuloDisable;
    
    DMA_InitStruct1.dAddr = (uint32_t)UART_DataPortAddrTable[uartInstnace]; 
    DMA_InitStruct1.dLastAddrAdj = 0;
    DMA_InitStruct1.dAddrOffset = 0;
    DMA_InitStruct1.dDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.dMod = kDMA_ModuloDisable;
    DMA_Init(&DMA_InitStruct1);
}

int main(void)
{
    static const char String1[] = "This string is send via DMA\r\n";
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    printf("DMA UART transmit test\r\n");
    /* ��UART0 DMA����ʹ�� */
    UART_ITDMAConfig(HW_UART0, kUART_DMA_Tx, true);
    UART_DMASendConfig(HW_UART0, HW_DMA_CH2);
    
    while(1)
    {
        /* ͨ������ʹ��dma����ʵ�����ݷ��� */
        UART_SendWithDMA(HW_DMA_CH2, (const uint8_t*)String1, sizeof(String1));
        /* �ȴ�DMA������� */
        while(DMA_IsMajorLoopComplete(HW_DMA_CH2));
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(200);
    }
}


