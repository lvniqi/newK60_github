#include "gpio.h"
#include "common.h"
#include "uart.h"
#include "spi.h"
#include "ili9163.h"
#include "gui.h"
#include "dma.h"
#include "i2c.h"
#include "ili9320.h"

/* CCDģ��� GND 5V 3.3V ��Ҫ�� */

typedef enum
{
    TRANSFER_IN_PROCESS, 
    START_TRANS,          
}OV7620_Status;

#define BOARD_OV7620_VSYNC_PORT     HW_GPIOC
#define BOARD_OV7620_VSYNC_PIN      (1) //����ͷ�����ж�
#define BOARD_OV7620_HREF_PORT      HW_GPIOC
#define BOARD_OV7620_HREF_PIN       (3) //����ͷ���ж�
#define BOARD_OV7620_DATA_OFFSET    (0) /* ����ͷ��������PTA8-PTA15 ֻ��Ϊ 0 8 16 24 */


#define IMAGE_W     (80)
#define IMAGE_H     (60)
#define OV7620_W    (320) /* ����ͷӲ������ */
#define OV7620_H    (240)
#define OV7620_I2C_CHIP_ADDR   0x21   /* I2C OV7620 I2C��ַ */


uint8_t ImageBuffer[IMAGE_H][IMAGE_W];
uint8_t DMABuffer[OV7620_W*2];

static inline uint16_t RGB2COLOR(uint8_t RR,uint8_t GG,uint8_t BB)
{
  return (((RR/8)<<11)+((GG/8)<<6)+BB/8); 
}

static void UserApp(void)
{
    uint32_t i,j;
    for(i=0;i<IMAGE_H;i++)
    {
        for(j=0;j<IMAGE_W;j++)
        {
            printf("%02X", ImageBuffer[i][j]);
       //     ili9320_write_pixel(OV7620_H - i, OV7620_W- j, RGB2COLOR(ImageBuffer[i][j], ImageBuffer[i][j], ImageBuffer[i][j]));
        }
        printf("\r\n");
    }
    DelayMs(50);
}

void OV7620_ISR(uint32_t index)
{
    static uint32_t i;
    static uint32_t dma_cnt;
    static uint32_t href_counter;
    static uint8_t status = TRANSFER_IN_PROCESS;  
    if(index & (1<<BOARD_OV7620_VSYNC_PIN))
    {
        switch(status)
        {
            case TRANSFER_IN_PROCESS:
                GPIO_ITDMAConfig(BOARD_OV7620_VSYNC_PORT, BOARD_OV7620_VSYNC_PIN, kGPIO_IT_Disable);
                GPIO_ITDMAConfig(BOARD_OV7620_HREF_PORT, BOARD_OV7620_HREF_PIN, kGPIO_IT_Disable);
                UserApp();
                printf("dma cnt:%d %d\r\n", dma_cnt, href_counter);
                status = START_TRANS;
                GPIO_ITDMAConfig(BOARD_OV7620_VSYNC_PORT, BOARD_OV7620_VSYNC_PIN, kGPIO_IT_RisingEdge);
                break;
            case START_TRANS:
                status =  TRANSFER_IN_PROCESS;
                GPIO_ITDMAConfig(BOARD_OV7620_HREF_PORT, BOARD_OV7620_HREF_PIN, kGPIO_IT_RisingEdge);
                href_counter = 0;
                break;
            default:
                break;
        }
    }
    if(index & (1<<BOARD_OV7620_HREF_PIN))
    {
        DMA_SetDestAddress(HW_DMA_CH2, (uint32_t)DMABuffer);
        dma_cnt = sizeof(DMABuffer) - DMA_GetMajorLoopCount(HW_DMA_CH2);
        DMA_SetMajorLoopCount(HW_DMA_CH2, OV7620_W*2);
        /* copy data */
        for(i=0;i<IMAGE_W;i++)
        {
            ImageBuffer[href_counter*IMAGE_H/OV7620_H][i] = DMABuffer[i*OV7620_W/IMAGE_W];
        }
        DMA_EnableRequest(HW_DMA_CH2); 
        href_counter++;
    }
}


//ov7620����ͷ��ʼ������
static void OV7620_Init(void)
{
    DMA_InitTypeDef DMA_InitStruct1 = {0};
    uint32_t i;

    /* ���ж�  ���ж� �����ж� */
    GPIO_QuickInit(BOARD_OV7620_VSYNC_PORT, BOARD_OV7620_VSYNC_PIN, kGPIO_Mode_IPD);
    GPIO_QuickInit(BOARD_OV7620_HREF_PORT, BOARD_OV7620_HREF_PIN, kGPIO_Mode_IPD);
    /* ��ʼ�����ݶ˿� */
    for(i=0;i<8;i++)
    {
        GPIO_QuickInit(HW_GPIOD, BOARD_OV7620_DATA_OFFSET+i, kGPIO_Mode_IPD); /* ���ݶ˿ڣ�*/
    }
    GPIO_CallbackInstall(BOARD_OV7620_VSYNC_PORT, OV7620_ISR);
    GPIO_ITDMAConfig(BOARD_OV7620_HREF_PORT, BOARD_OV7620_HREF_PIN, kGPIO_IT_RisingEdge);
    GPIO_ITDMAConfig(BOARD_OV7620_VSYNC_PORT, BOARD_OV7620_VSYNC_PIN, kGPIO_IT_RisingEdge);
  //  GPIO_ITDMAConfig(BOARD_OV7620_PCLK_PORT, BOARD_OV7620_PCLK_PIN, kGPIO_DMA_RisingEdge); //ʵ�ʲ�û���õ�
    DMA_InitStruct1.chl = HW_DMA_CH2;
    DMA_InitStruct1.chlTriggerSource = MUX2_DMAREQ;
    DMA_InitStruct1.triggerSourceMode = kDMA_TriggerSource_Normal;
    DMA_InitStruct1.minorLoopByteCnt = 1;
    DMA_InitStruct1.majorLoopCnt = OV7620_W*2;
    
    DMA_InitStruct1.sAddr = (uint32_t)&PTD->PDIR + BOARD_OV7620_DATA_OFFSET/8;  /* ���ݶ˿ڣ�*/
    DMA_InitStruct1.sLastAddrAdj = 0;
    DMA_InitStruct1.sAddrOffset = 0;
    DMA_InitStruct1.sDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.sMod = kDMA_ModuloDisable;
    
    DMA_InitStruct1.dAddr = (uint32_t)&DMABuffer;
    DMA_InitStruct1.dLastAddrAdj = 0;
    DMA_InitStruct1.dAddrOffset = 1;
    DMA_InitStruct1.dDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.dMod = kDMA_ModuloDisable;
    
    DMA_Init(&DMA_InitStruct1);
}


void OV7620_Reset(void)
{
    SCCB_WriteSingleRegister(HW_I2C0, OV7620_I2C_CHIP_ADDR, 0x12, 0x80);
}

void SCCB_Init(void)
{
    I2C_QuickInit(I2C0_SCL_PB00_SDA_PB01, 100*1000);
    OV7620_Reset();
    DelayMs(10);
    /* ?????? */
    /* 0x12,0x64
       0x06,0xA0
       0x03,0x80 */
}

int main(void)
{
    uint32_t i;
    DelayInit();
    /* ��ʼ��һ������ ����Ϊ������� */
    GPIO_QuickInit(HW_GPIOC, 16, kGPIO_Mode_OPP);
    /* ��ʼ��һ������ ʹ��UART0�˿ڵ�PTD6���ź�PTD7������Ϊ���պͷ��ͣ�Ĭ������ baud 115200 */
    UART_QuickInit(UART4_RX_PC14_TX_PC15, 115200);
    
    printf("ili9163 lcd test\r\n");
  //  SCCB_Init();
    OV7620_Init();
    
    while(1) 
    {
        DelayMs(10);
    }
}


