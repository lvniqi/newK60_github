#ifndef _DMA_H_
#define _DMA_H_

//#include "common.h"
#define u32 uint32
#define u8 uint8

typedef enum DMA_sources
{
    /*        禁用通道            */
    Channel_Disabled    = 0,

    /*        UART            */
    DMA_UART0_Rx            = 2,
    DMA_UART0_Tx            = 3,
    DMA_UART1_Rx            = 4,
    DMA_UART1_Tx            = 5,
    DMA_UART2_Rx            = 6,
    DMA_UART2_Tx            = 7,
    DMA_UART3_Rx            = 8,
    DMA_UART3_Tx            = 9,
    DMA_UART4_Rx            = 10,
    DMA_UART4_Tx            = 11,
    DMA_UART5_Rx            = 12,
    DMA_UART5_Tx            = 13,

    /*        I2S            */
    DMA_I2S0_Rx             = 14,
    DMA_I2S0_Tx             = 15,

    /*        SPI            */
    DMA_SPI0_Rx             = 16,
    DMA_SPI0_Tx             = 17,
    DMA_SPI1_Rx             = 18,
    DMA_SPI1_Tx             = 19,

    /*        I2C            */
    DMA_I2C0                = 22,
    DMA_I2C1                = 23,

    /*        FTM            */
    DMA_FTM0_CH0            = 24,
    DMA_FTM0_CH1            = 25,
    DMA_FTM0_CH2            = 26,
    DMA_FTM0_CH3            = 27,
    DMA_FTM0_CH4            = 28,
    DMA_FTM0_CH5            = 29,
    DMA_FTM0_CH6            = 30,
    DMA_FTM0_CH7            = 31,

    DMA_FTM1_CH0            = 32,
    DMA_FTM1_CH1            = 33,

    DMA_FTM2_CH0            = 34,
    DMA_FTM2_CH1            = 35,

    DMA_FTM3_CH0            = 36,
    DMA_FTM3_CH1            = 37,
    DMA_FTM3_CH2            = 38,

    DMA_FTM1_CH3            = 39,       //怎么会是 FTM1 呢？datasheet是这样的

    /*     ADC/DAC/CMP/CMT    */
    DMA_ADC0                = 40,
    DMA_ADC1                = 41,
    DMA_CMP0                = 42,
    DMA_CMP1                = 43,
    DMA_CMP2                = 44,
    DMA_DAC0                = 45,
    DMA_DAC1                = 46,
    DMA_CMT                 = 47,

    DMA_PDB                 = 48,


    DMA_Port_A              = 49,
    DMA_Port_B              = 50,
    DMA_Port_C              = 51,
    DMA_Port_D              = 52,
    DMA_Port_E              = 53,


    DMA_FTM3_CH4            = 54,
    DMA_FTM3_CH5            = 55,
    DMA_FTM3_CH6            = 56,
    DMA_FTM3_CH7            = 57,

    DMA_Always_EN1          = 58,
    DMA_Always_EN2          = 59,
    DMA_Always_EN3          = 60,
    DMA_Always_EN4          = 61,
    DMA_Always_EN5          = 62,
    DMA_Always_EN6          = 63,
} DMA_sources;



typedef enum DMA_PORTx2BUFF_cfg
{
    DMA_rising          = 0x01u,            //上升沿触发
    DMA_falling         = 0x02u,            //下降沿触发
    DMA_either          = 0x03u,            //跳变沿触发

    //用最高两位标志上拉和下拉
    DMA_rising_down     = 0x81u,            //上升沿触发，源地址IO端口内部下拉
    DMA_falling_down    = 0x82u,            //下降沿触发，源地址IO端口内部下拉
    DMA_either_down     = 0x83u,            //跳变沿触发，源地址IO端口内部下拉

    DMA_rising_up       = 0xc1u,            //上升沿触发，源地址IO端口内部上拉
    DMA_falling_up      = 0xc2u,            //下降沿触发，源地址IO端口内部上拉
    DMA_either_up       = 0xc3u,            //跳变沿触发，源地址IO端口内部上拉

    //用位6来标志，传输结束后,目的地址保持不变，不恢复成原来地址
    DMA_rising_keepon          = 0x21u,     //上升沿触发                      ，目的地址保持不变
    DMA_falling_keepon         = 0x22u,     //下降沿触发                      ，目的地址保持不变
    DMA_either_keepon          = 0x23u,     //跳变沿触发                      ，目的地址保持不变

    DMA_rising_down_keepon     = 0xA1u,     //上升沿触发，源地址IO端口内部下拉，目的地址保持不变
    DMA_falling_down_keepon    = 0xA2u,     //下降沿触发，源地址IO端口内部下拉，目的地址保持不变
    DMA_either_down_keepon     = 0xA3u,     //跳变沿触发，源地址IO端口内部下拉，目的地址保持不变

    DMA_rising_up_keepon       = 0xF1u,     //上升沿触发，源地址IO端口内部上拉，目的地址保持不变
    DMA_falling_up_keepon      = 0xF2u,     //下降沿触发，源地址IO端口内部上拉，目的地址保持不变
    DMA_either_up_keepon       = 0xF3u,     //跳变沿触发，源地址IO端口内部上拉，目的地址保持不变

} DMA_PORTx2BUFF_cfg, DMA_Count_cfg;

typedef enum DMA_BYTEn      //DMA每次传输字节数
{
    DMA_BYTE1 = 0,
    DMA_BYTE2 = 1,
    DMA_BYTE4 = 2,
    DMA_BYTE16 = 4
} DMA_BYTEn;


typedef enum DMA_CHn
{
    DMA_CH0,
    DMA_CH1,
    DMA_CH2,
    DMA_CH3,
    DMA_CH4,
    DMA_CH5,
    DMA_CH6,
    DMA_CH7,
    DMA_CH8,
    DMA_CH9,
    DMA_CH10,
    DMA_CH11,
    DMA_CH12,
    DMA_CH13,
    DMA_CH14,
    DMA_CH15
} DMA_CHn;

typedef enum PTxn
{
    /*  PTA端口    */ //0~31
    PTA0,
    PTA1,
    PTA2,
    PTA3,
    PTA4,
    PTA5,
    PTA6,
    PTA7,
    PTA8,
    PTA9,
    PTA10,
    PTA11,
    PTA12,
    PTA13,
    PTA14,
    PTA15,
    PTA16,
    PTA17,
    PTA18,
    PTA19,
    PTA20,
    PTA21,
    PTA22,
    PTA23,
    PTA24,
    PTA25,
    PTA26,
    PTA27,
    PTA28,
    PTA29,
    PTA30,
    PTA31,

    /*  PTB端口    */   //32~63
    PTB0,
    PTB1,
    PTB2,
    PTB3,
    PTB4,
    PTB5,
    PTB6,
    PTB7,
    PTB8,
    PTB9,
    PTB10,
    PTB11,
    PTB12,
    PTB13,
    PTB14,
    PTB15,
    PTB16,
    PTB17,
    PTB18,
    PTB19,
    PTB20,
    PTB21,
    PTB22,
    PTB23,
    PTB24,
    PTB25,
    PTB26,
    PTB27,
    PTB28,
    PTB29,
    PTB30,
    PTB31,

    /*  PTC端口    */
    PTC0,
    PTC1,
    PTC2,
    PTC3,
    PTC4,
    PTC5,
    PTC6,
    PTC7,
    PTC8,
    PTC9,
    PTC10,
    PTC11,
    PTC12,
    PTC13,
    PTC14,
    PTC15,
    PTC16,
    PTC17,
    PTC18,
    PTC19,
    PTC20,
    PTC21,
    PTC22,
    PTC23,
    PTC24,
    PTC25,
    PTC26,
    PTC27,
    PTC28,
    PTC29,
    PTC30,
    PTC31,

    /*  PTD端口    */
    PTD0,
    PTD1,
    PTD2,
    PTD3,
    PTD4,
    PTD5,
    PTD6,
    PTD7,
    PTD8,
    PTD9,
    PTD10,
    PTD11,
    PTD12,
    PTD13,
    PTD14,
    PTD15,
    PTD16,
    PTD17,
    PTD18,
    PTD19,
    PTD20,
    PTD21,
    PTD22,
    PTD23,
    PTD24,
    PTD25,
    PTD26,
    PTD27,
    PTD28,
    PTD29,
    PTD30,
    PTD31,

    /*  PTE端口    */
    PTE0,
    PTE1,
    PTE2,
    PTE3,
    PTE4,
    PTE5,
    PTE6,
    PTE7,
    PTE8,
    PTE9,
    PTE10,
    PTE11,
    PTE12,
    PTE13,
    PTE14,
    PTE15,
    PTE16,
    PTE17,
    PTE18,
    PTE19,
    PTE20,
    PTE21,
    PTE22,
    PTE23,
    PTE24,
    PTE25,
    PTE26,
    PTE27,
    PTE28,
    PTE29,
    PTE30,
    PTE31,

} PTxn;

/*

extern unsigned int DMA_GetChannelStatus(void);
*/


#define  DMA_IRQ_EN(DMA_CHn)    enable_irq((DMA_CHn) + 0)                         //允许DMA通道传输
#define  DMA_IRQ_DIS(DMA_CHn)   disable_irq((DMA_CHn) + 0)                        //禁止DMA通道传输
#define  DMA_IRQ_CLEAN(DMA_CHn) DMA_INT|=(DMA_INT_INT0_MASK<<DMA_CHn)             //清除通道传输中断标志位

#define  DMA_EN(DMA_CHn)        DMA_ERQ |= (DMA_ERQ_ERQ0_MASK<<(DMA_CHn))         //使能通道硬件DMA请求
#define  DMA_DIS(DMA_CHn)       DMA_ERQ &=~(DMA_ERQ_ERQ0_MASK<<(DMA_CHn))         //禁止通道硬件DMA请求

//#define  DMA_CHn_DIS(DMA_CHn)   DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,DMA_CHn) &= DMAMUX_CHCFG_SOURCE(Channel_Disabled)  //禁用通道

//初始化DMA，使得PORT端口数据通过DMA传输到BUFF缓冲区
//extern void DMA_PORTx2BUFF_Init(DMA_CHn, void *SADDR, void *DADDR, PTxn, DMA_BYTEn, u32 count, DMA_PORTx2BUFF_cfg);


extern void DMA_count_Init(DMA_CHn CHn, PTxn ptxn,u32 count, DMA_PORTx2BUFF_cfg cfg);
extern uint32  DMA_count_get(DMA_CHn CHn);
extern void DMA_count_reset(DMA_CHn CHn);

#endif  //_DMA_H_