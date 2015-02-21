#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "dma.h"

#include <string.h>
/* CH Kinetis�̼��� V2.50 �汾 */
/* �޸���Ƶ ���޸� CMSIS��׼�ļ� system_MKxxxx.c �е� CLOCK_SETUP �� */

/*
     ʵ�����ƣ�DMA�ڴ濽��
     ʵ��ƽ̨����ѻ������
     ����оƬ��MK60DN512ZVQ10
 ʵ��Ч�����ϵ��оƬִ��dma���ݴ��䣬���ݴ�����8λ��������64�ֽ�
        ���DMA���������Ļ����������ϵ�С�ƽ���˸
*/
static uint8_t SourceBuffer[64]; //Դ��ַ
static uint8_t DestBuffer[64];   //Ŀ���ַ

void DMA_ISR(void)
{
    uint32_t i;
    printf("DMA INT \r\n");
    for(i=0;i<sizeof(DestBuffer);i++)
    {
        printf("DestBuf[%d]:0x%X\r\n", i, DestBuffer[i]);
    }
    printf("DMA_sAddr:%x\r\n", DMA_GetSourceAddress(HW_DMA_CH0));
    printf("DMA_dAddr:%x\r\n", DMA_GetDestAddress(HW_DMA_CH0));
    printf("DMA_sAddr - SouceAddr:%d\r\n", DMA_GetSourceAddress(HW_DMA_CH0) - (uint32_t)SourceBuffer);
    printf("DMA_dAddr - DestAddr:%d\r\n", DMA_GetDestAddress(HW_DMA_CH0) - (uint32_t)DestBuffer);
    printf("DMA memcpy test succ!\r\n");
}

int main(void)
{
    uint32_t i;
    DelayInit();
    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("DMA memcpy test\r\n");
    
    /* һ�δ����� ִ�� minorLoopByteCnt ��ɺ� ����һ��Minor Loop */
    /* ��� majorLoopCnt�� Loop ѭ��ִ�к� һ�� DMA Major Loop ���� */
    
    /* д��������� ���ҽ��������������*/
    for(i = 0; i < sizeof(SourceBuffer); i++)
    {
        SourceBuffer[i] = i;
    }
    memset(DestBuffer, 0, sizeof(DestBuffer));       //��������е�����
    printf("SouceAddr:%p\r\n", SourceBuffer);
    printf("DestAddr :%p\r\n", DestBuffer);
    DMA_InitTypeDef DMA_InitStruct1 = {0};
    DMA_InitStruct1.chl = HW_DMA_CH0;                                           /* ͨ���� */
    DMA_InitStruct1.chlTriggerSource = MUX1_DMAREQ;                             /* Always Enabled ���� */
    DMA_InitStruct1.triggerSourceMode = kDMA_TriggerSource_Normal;              /* ��ͨģʽ �������ڴ���ģʽ */
    DMA_InitStruct1.minorLoopByteCnt = sizeof(SourceBuffer);
    DMA_InitStruct1.majorLoopCnt = 1;
    
    DMA_InitStruct1.sAddr = (uint32_t)SourceBuffer;                             /*Դ��ַ */
    DMA_InitStruct1.sLastAddrAdj = 0;                                           /* ����Major Loopִ����� sAddrƫ���� */
    DMA_InitStruct1.sAddrOffset = 1;                                            /* ÿ�ζ�ȡsAddr��ĵ�ַƫ�� */
    DMA_InitStruct1.sDataWidth = kDMA_DataWidthBit_8;                           /* ÿ�δ����λ�� */
    DMA_InitStruct1.sMod = kDMA_ModuloDisable;                                  /* ��ֹModulo ģʽ */
    
    DMA_InitStruct1.dAddr = (uint32_t)DestBuffer;
    DMA_InitStruct1.dLastAddrAdj = 0;
    DMA_InitStruct1.dAddrOffset = 1;
    DMA_InitStruct1.dDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.dMod = kDMA_ModuloDisable;
    /* ��ʼ�� �������ж� */
    DMA_Init(&DMA_InitStruct1);
    DMA_CallbackInstall(HW_DMA_CH0, DMA_ISR);
    DMA_ITConfig(HW_DMA_CH0, kDMA_IT_Major);
    DMA_EnableRequest(HW_DMA_CH0);/* ����DMA���� */
    while(1)
    {
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
}


