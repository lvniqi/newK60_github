/**
  ******************************************************************************
  * @file    enet.c
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */
  
  
#include "enet.h"
#include "common.h"
#include <string.h>

//!< ENET DMA Tx&Rx Descriptors memory regin(must be 16 bit agiged)
static  uint8_t xENETTxDescriptors_unaligned[(CFG_NUM_ENET_TX_BUFFERS*sizeof(NBUF))+16];
static  uint8_t xENETRxDescriptors_unaligned[(CFG_NUM_ENET_RX_BUFFERS*sizeof(NBUF))+16];
static NBUF *pxENETTxDescriptor;
static NBUF *pxENETRxDescriptors;

//!< Callback function slot
static ENET_CallBackTxType ENET_CallBackTxTable[1] = {0};
static ENET_CallBackRxType ENET_CallBackRxTable[1] = {0};

//!< enet received memory pool
static uint8_t ucENETRxBuffers[ ( CFG_NUM_ENET_RX_BUFFERS * CFG_ENET_BUFFER_SIZE ) + 16 ];

/**
 * @brief 初始化以太网描述符缓冲区
 * @note  以太网模块为提升速度 通过nent内部DMA搬运用户自定义内存区 每个内存区还要分配描述符
 * @retval None
 */
static void ENET_BDInit(void)
{
    unsigned long ux;
    unsigned char *pcBufPointer;
    
	/* find a 16bit agligned for TxDescriptors */
	pcBufPointer = &( xENETTxDescriptors_unaligned[ 0 ] );
	while( ( ( uint32_t ) pcBufPointer & 0x0fUL ) != 0 )
	{
		pcBufPointer++;
	}
	pxENETTxDescriptor = ( NBUF * ) pcBufPointer;
    
	/* find a 16bit agligned for RxDescriptors */
	pcBufPointer = &( xENETRxDescriptors_unaligned[ 0 ] );
	while( ( ( uint32_t ) pcBufPointer & 0x0fUL ) != 0 )
	{
		pcBufPointer++;
	}
	pxENETRxDescriptors = ( NBUF * ) pcBufPointer;
    
    /* Tx Descriptor settings */
	for( ux = 0; ux < CFG_NUM_ENET_TX_BUFFERS; ux++ )
	{
        pxENETTxDescriptor[ux].length = 0;
        pxENETTxDescriptor[ux].status = 0;
        pxENETTxDescriptor[ux].ebd_status = TX_BD_IINS | TX_BD_PINS;   
    }
    
	/* find a 16bit agligned for Rx buffer */
	pcBufPointer = &( ucENETRxBuffers[ 0 ] );
	while((( uint32_t ) pcBufPointer & 0x0fUL ) != 0 )
	{
		pcBufPointer++;
	}
    
	/* Rx Descriptor settings */
	for( ux = 0; ux < CFG_NUM_ENET_RX_BUFFERS; ux++ )
	{
	    pxENETRxDescriptors[ ux ].status = RX_BD_E;
	    pxENETRxDescriptors[ ux ].length = 0;
        pxENETRxDescriptors[ ux ].data = (uint8_t *)__REV((uint32_t)pcBufPointer);
	    pcBufPointer += CFG_ENET_BUFFER_SIZE;
	    pxENETRxDescriptors[ ux ].bdu = 0x00000000;
	    pxENETRxDescriptors[ ux ].ebd_status = RX_BD_INT;
	}
    
	/* set last Descriptor as a ring */
    pxENETTxDescriptor[CFG_NUM_ENET_TX_BUFFERS - 1].status |= TX_BD_W;
	pxENETRxDescriptors[CFG_NUM_ENET_RX_BUFFERS - 1].status |= RX_BD_W;
}

/**
 * @brief 计算哈希校验值
 * @note  辅助函数
 * @retval Hash值
 */
static uint8_t ENET_HashAddress(const uint8_t* addr)
{
    uint32_t crc;
    uint8_t byte;
    int i, j;
    crc = 0xFFFFFFFF;
    for(i=0; i < 6; ++i)
    {
        byte = addr[i];
        for(j = 0; j < 8; ++j)
        {
            if((byte & 0x01)^(crc & 0x01))
            {
                crc >>= 1;
                crc = crc ^ 0xEDB88320;
            }
        else
            crc >>= 1;
        byte >>= 1;
    }
    }
    return (uint8_t)(crc >> 26);
}

/**
 * @brief   设置ENET模块的接收MAC地址
 * @param   MAC地址
 * @retval  None
 */
static void ENET_SetAddress(const uint8_t *pa)
{
    uint8_t crc;
    ENET->PALR = (uint32_t)((pa[0]<<24) | (pa[1]<<16) | (pa[2]<<8) | pa[3]);
    ENET->PAUR = (uint32_t)((pa[4]<<24) | (pa[5]<<16));
    crc = ENET_HashAddress(pa);
    if(crc >= 32)
    ENET->IAUR |= (uint32_t)(1 << (crc - 32));
    else
    ENET->IALR |= (uint32_t)(1 << crc);
}

/**
 * @brief  初始化以太网 MII配置层接口
 * @param  None
 * @retval None
 */
void ENET_MII_Init(void)
{
    uint32_t i;
    uint32_t clock;
    
	/* enable the ENET clock. */
    SIM->SCGC2 |= SIM_SCGC2_ENET_MASK;
    /* FSL: allow concurrent access to MPU controller. Example: ENET uDMA to SRAM, otherwise bus error */
    MPU->CESR = 0;   
    CLOCK_GetClockFrequency(kBusClock, &clock);
    i = (clock/1000)/1000;
    ENET->MSCR = 0 | ENET_MSCR_MII_SPEED((2*i/5)+1);
}

/**
 * @brief  写入以太网MII配置层数据
 * @param   phy_addr  :PHY芯片地址
 * @param   reg_addr  :寄存器在PHY内部的偏移地址
 * @param   data      :需要写入的数据
 * @retval  0 :成功 其它 :失败
 */
uint8_t ENET_MII_Write(uint16_t phy_addr, uint16_t reg_addr, uint16_t data)
{
    uint32_t timeout;
    DisableInterrupts();
    /* clear MII it pending bit */
    ENET->EIR |= ENET_EIR_MII_MASK;
    
    /* initiatate the MII Management write */
    ENET->MMFR = 0
            | ENET_MMFR_ST(0x01)
            | ENET_MMFR_OP(0x01)
            | ENET_MMFR_PA(phy_addr)
            | ENET_MMFR_RA(reg_addr)
            | ENET_MMFR_TA(0x02)
            | ENET_MMFR_DATA(data);
    
    /* waitting for transfer complete */
    for (timeout = 0; timeout < MII_TIMEOUT; timeout++)
    {
        if (ENET->EIR & ENET_EIR_MII_MASK)
        {
            LIB_TRACE("MII - timeout:%d\r\n", timeout);
            break;  
        }
    }
   EnableInterrupts();
    if(timeout == MII_TIMEOUT)
    {
        return timeout;
    }
    
    /* software clear it */
    ENET->EIR |= ENET_EIR_MII_MASK;
    return 0;
}

/**
 * @brief  读以太网MII配置层数据
 * @param   phy_addr    :PHY芯片地址
 * @param   reg_addr    :寄存器在PHY内部的偏移地址
 * @param   data        :需要读入的数据地址
 * @retval  0 :成功 其它 :失败
 */
uint8_t ENET_MII_Read(uint16_t phy_addr, uint16_t reg_addr, uint16_t *data)
{
    int r;
    uint32_t timeout;
    
    r = 0;
    DisableInterrupts();
    /* clear MII IT(interrupt) pending bit */
    ENET->EIR |= ENET_EIR_MII_MASK;
    
    /* initiatate the MII Management write */
    ENET->MMFR = 0
            | ENET_MMFR_ST(0x01)
            | ENET_MMFR_OP(0x02)
            | ENET_MMFR_PA(phy_addr)
            | ENET_MMFR_RA(reg_addr)
            | ENET_MMFR_TA(0x02);
  
	/* waitting for transfer complete */
    for (timeout = 0; timeout < MII_TIMEOUT; timeout++)
    {
        if (ENET->EIR & ENET_EIR_MII_MASK)
        {
            break; 
        }
    }
    if(timeout == MII_TIMEOUT) 
    {
        r = timeout;
    }
    
    /* software clear it */
    ENET->EIR |= ENET_EIR_MII_MASK;
    *data = ENET->MMFR & 0x0000FFFF;
    EnableInterrupts();
    return r;
}

/**
 * @brief   初始化以太网模块
 * @note    用户调用函数
 * @param   ENET_InitStrut   :以太网初始化结构指针，详见应用例程
 * @retval  None
 */
void ENET_Init(ENET_InitTypeDef* ENET_InitStrut)
{
    uint16_t usData;
    
    SIM->SCGC2 |= SIM_SCGC2_ENET_MASK;
    MPU->CESR = 0;
   
	ENET->ECR = ENET_ECR_RESET_MASK;
	for( usData = 0; usData < 100; usData++ )
	{
		__NOP();
	}
    
    /* reinit enet MII */
    ENET_MII_Init();
    
    /* init buffer desipicter */
    ENET_BDInit();
    
    /* select external clock(50Mhz) */
	MCG->C2 &= ~MCG_C2_EREFS0_MASK;
    
    /* enable OSCERCLK output */
    OSC->CR |= OSC_CR_ERCLKEN_MASK;
    
    /* 根据协商结果设置ENET模块 */
    usData = 0;	
    
    /* 清除单独和组地址哈希寄存器 */
    ENET->IALR = 0;
    ENET->IAUR = 0;
    ENET->GALR = 0;
    ENET->GAUR = 0;
    //设置ENET模块MAC地址
    ENET_SetAddress(ENET_InitStrut->pMacAddress);
    //设置接收控制寄存器，最大长度、RMII模式、接收CRC校验等
    ENET->RCR = ENET_RCR_MAX_FL(CFG_ENET_MAX_PACKET_SIZE) | ENET_RCR_MII_MODE_MASK | ENET_RCR_CRCFWD_MASK | ENET_RCR_RMII_MODE_MASK;
    //清除发送接收控制
    ENET->TCR = 0;
    
    if(ENET_InitStrut->isHalfDuplex)
    {
        ENET->RCR |= ENET_RCR_DRT_MASK;
        ENET->TCR &= (unsigned long)~ENET_TCR_FDEN_MASK;
        LIB_TRACE("enet moudle - half-duplex\r\n"); 
    }
    else
    {
        ENET->RCR &= (unsigned long)~ENET_RCR_DRT_MASK;
        ENET->TCR |= ENET_TCR_FDEN_MASK;
        LIB_TRACE("enet moudle - full-duplex\r\n");
    }
    
    if(ENET_InitStrut->is10MSpped)
    {
        LIB_TRACE("enet moudle - speed:10M\r\n");
        ENET->RCR |= ENET_RCR_RMII_10T_MASK;
    }
    else
    {
        LIB_TRACE("enet moudle - speed:100M\r\n");
        ENET->RCR &= ~ENET_RCR_RMII_10T_MASK; 
    }

    
    /* 使用增强型缓冲区描述符 */
    ENET->ECR = ENET_ECR_EN1588_MASK;
    
    /* max receiced packet size */
    ENET->MRBR |= ENET_MRBR_R_BUF_SIZE_MASK;
    
	/* tell NENT the descriptors address */
	ENET->RDSR = (uint32_t) pxENETRxDescriptors;
	ENET->TDSR = (uint32_t) pxENETTxDescriptor;
    
	/* clear all IT pending bit */
	ENET->EIR = ( uint32_t ) 0xFFFFFFFF;
	
    /* enable moudle */
    ENET->ECR |= ENET_ECR_ETHEREN_MASK;
    
    /* enable revieved */
	ENET->RDAR = ENET_RDAR_RDAR_MASK;
}

/**
 * @brief  发送一帧以太帧数据
 * @note    用户调用函数
 * @param   data    :发送数据指针
 * @param   len     :数据长度 (< 1500字节)
 * @retval  None
 */
void ENET_MacSendData(uint8_t *data, uint16_t len)
{
    
    /* check if buffer is readly */
    while( pxENETTxDescriptor->status & TX_BD_R ) {};
        
    /* set Tx Descriptor */
    pxENETTxDescriptor->data = (uint8_t *)__REV((uint32_t)data);		
    pxENETTxDescriptor->length = __REVSH(len);
    pxENETTxDescriptor->bdu = 0x00000000;
	pxENETTxDescriptor->ebd_status = TX_BD_INT | TX_BD_TS;// | TX_BD_IINS | TX_BD_PINS;
	pxENETTxDescriptor->status = ( TX_BD_R | TX_BD_L | TX_BD_TC | TX_BD_W );
        
    /* enable transmit */
    ENET->TDAR = ENET_TDAR_TDAR_MASK;
}

/**
 * @brief  接收一帧以太帧数据
 * @note    用户调用函数
 * @param   data    :数据指针
 * @retval  接收到的数据长度
 */
uint16_t ENET_MacReceiveData(uint8_t *data)
{
    uint16_t len = 0;
    
    /* if buffer is ready */
    if((pxENETRxDescriptors[0].status & RX_BD_E ) == 0)
    {
        
		/* copy data to user bufer */
		len =  __REVSH(pxENETRxDescriptors[0].length);
		memcpy(data, (uint8_t *)__REV((uint32_t)pxENETRxDescriptors[0].data), len);
        
		/* buffer is ready and data is readed */
		pxENETRxDescriptors[0].status |= RX_BD_E;
		ENET->RDAR = ENET_RDAR_RDAR_MASK;
        return len;
	}
	return 0;
}

/**
 * @brief  配置ENET模块的中断或者DMA属性
 * @param  config     :模式选择
 *         @arg kENET_IT_TXF_Disable:禁止发送一帧以太网数据帧中断
 *         @arg kENET_IT_RXF_Disable:禁止接收一帧以太网数据帧中断
 *         @arg kENET_IT_TXF        :发送一帧以太网数据中断
 *         @arg kENET_IT_RXF        :接收一帧以太网数据中断
 * @retval None
 */
void ENET_ITDMAConfig(ENET_ITDMAConfig_Type config)
{
    switch(config)
    {
        case kENET_IT_TXF_Disable:
            ENET->EIMR &= ~ENET_EIMR_TXF_MASK;
            break;
        case kENET_IT_RXF_Disable:
            ENET->EIMR &= ~ENET_EIMR_RXF_MASK;
            break;
        case kENET_IT_TXF:
            NVIC_EnableIRQ(ENET_Transmit_IRQn);
            ENET->EIMR |= ENET_EIMR_TXF_MASK;
            break;
        case kENET_IT_RXF:
            NVIC_EnableIRQ(ENET_Receive_IRQn);
            ENET->EIMR |= ENET_EIMR_RXF_MASK;
            break;
        default:
            break;
    }
}



/**
 * @brief  设置ENET发送中断回调函数
 * @param  AppCBFun: 回调函数指针
 * @retval None
 */
void ENET_CallbackTxInstall(ENET_CallBackTxType AppCBFun)
{
    if(AppCBFun != NULL)
    {
        ENET_CallBackTxTable[0] = AppCBFun;
    }
}

/**
 * @brief  设置ENET接收中断回调函数
 * @param  AppCBFun: 回调函数指针
 * @retval None
 */
void ENET_CallbackRxInstall(ENET_CallBackRxType AppCBFun)
{
    if(AppCBFun != NULL)
    {
        ENET_CallBackRxTable[0] = AppCBFun;
    }
}

/**
 * @brief  查看以太帧否发送完成
 * @retval 0:完成 1:未完成
 */
uint32_t ENET_IsTransmitComplete(void)
{
    if(ENET->EIR & ENET_EIMR_TXF_MASK)
    {
        ENET->EIR |= ENET_EIMR_TXF_MASK;
        return 0;
    }
    return 1;
}

void ENET_Transmit_IRQHandler(void)
{
	ENET->EIR |= ENET_EIMR_TXF_MASK;
    if(ENET_CallBackTxTable[0])
    {
            ENET_CallBackTxTable[0]();
    }  
}

/**
 * @brief  中断处理函数入口
 * @param  ENET_Receive_IRQHandler :以太网中断接收函数入口
 * @note 函数内部用于中断事件处理
 */
void ENET_Receive_IRQHandler(void)
{
	ENET->EIR |= ENET_EIMR_RXF_MASK; 
    if(ENET_CallBackRxTable[0])
    {
            ENET_CallBackRxTable[0]();
    }
}



