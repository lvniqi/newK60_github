/**
  ******************************************************************************
  * @file    dma.c
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.26
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  * @note    此文件为芯片DMA模块的底层功能函数
  ******************************************************************************
  */

#include "dma.h"
#include "common.h"

static DMA_CallBackType DMA_CallBackTable[16] = {NULL};
#if     (defined(MK60DZ10) || defined(MK60D10) || defined(MK64F12))
/* DMA中断向量入口 */
static const IRQn_Type DMA_IRQnTable[] = 
{
    DMA0_IRQn,
    DMA1_IRQn,
    DMA2_IRQn,
    DMA3_IRQn,
    DMA4_IRQn,
    DMA5_IRQn,
    DMA6_IRQn,
    DMA7_IRQn,
    DMA8_IRQn,
    DMA9_IRQn,
    DMA10_IRQn,
    DMA11_IRQn,
    DMA12_IRQn,
    DMA13_IRQn,
    DMA14_IRQn,
    DMA15_IRQn,
};
#elif   (defined(MK10D5))
static const IRQn_Type DMA_IRQnTable[] = 
{
    DMA0_IRQn,
    DMA1_IRQn,
    DMA2_IRQn,
    DMA3_IRQn,
};
#endif

/**
 * @brief  初始化DMA模块
 * @param  DMA_InitStruct :DMA初始化配置结构体，详见dma.h
 * @retval None
 */
void DMA_Init(DMA_InitTypeDef *DMA_InitStruct)
{
	/* enable DMA and DMAMUX clock */
	SIM->SCGC6 |= SIM_SCGC6_DMAMUX_MASK;    
	SIM->SCGC7 |= SIM_SCGC7_DMA_MASK;
    /* disable chl first */
    DMA0->ERQ &= ~(1<<(DMA_InitStruct->chl));
    /* dma chl source config */
    DMAMUX->CHCFG[DMA_InitStruct->chl] = DMAMUX_CHCFG_SOURCE(DMA_InitStruct->chlTriggerSource);
    /* trigger mode */
    switch(DMA_InitStruct->triggerSourceMode)
    {
        case kDMA_TriggerSource_Normal:
            DMAMUX->CHCFG[DMA_InitStruct->chl] &= ~DMAMUX_CHCFG_TRIG_MASK;
            break;
        case kDMA_TriggerSource_Periodic:
            DMAMUX->CHCFG[DMA_InitStruct->chl] |= DMAMUX_CHCFG_TRIG_MASK;
            break;
        default:
            break;
    }
    /* clear some register */
    DMA0->TCD[DMA_InitStruct->chl].ATTR  = 0;
    DMA0->TCD[DMA_InitStruct->chl].CSR   = 0;
    /* minor loop cnt */
    DMA0->TCD[DMA_InitStruct->chl].NBYTES_MLNO = DMA_NBYTES_MLNO_NBYTES(DMA_InitStruct->minorLoopByteCnt);
    /* major loop cnt */
	DMA0->TCD[DMA_InitStruct->chl].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(DMA_InitStruct->majorLoopCnt);
	DMA0->TCD[DMA_InitStruct->chl].BITER_ELINKNO = DMA_BITER_ELINKNO_BITER(DMA_InitStruct->majorLoopCnt);
    /* source config */
    DMA0->TCD[DMA_InitStruct->chl].SADDR = DMA_InitStruct->sAddr;
    DMA0->TCD[DMA_InitStruct->chl].SOFF = DMA_InitStruct->sAddrOffset;
    DMA0->TCD[DMA_InitStruct->chl].ATTR |= DMA_ATTR_SSIZE(DMA_InitStruct->sDataWidth);
    DMA0->TCD[DMA_InitStruct->chl].ATTR |= DMA_ATTR_SMOD(DMA_InitStruct->sMod);
    DMA0->TCD[DMA_InitStruct->chl].SLAST = DMA_SLAST_SLAST(DMA_InitStruct->sLastAddrAdj);
    /* destation config */
    DMA0->TCD[DMA_InitStruct->chl].DADDR = DMA_InitStruct->dAddr;
    DMA0->TCD[DMA_InitStruct->chl].DOFF = DMA_InitStruct->dAddrOffset;
    DMA0->TCD[DMA_InitStruct->chl].ATTR |= DMA_ATTR_DSIZE(DMA_InitStruct->dDataWidth);
    DMA0->TCD[DMA_InitStruct->chl].ATTR |= DMA_ATTR_DMOD(DMA_InitStruct->dMod);
    DMA0->TCD[DMA_InitStruct->chl].DLAST_SGA = DMA_DLAST_SGA_DLASTSGA(DMA_InitStruct->dLastAddrAdj);
    /* auto close enable(disable req on major loop complete)*/
    DMA0->TCD[DMA_InitStruct->chl].CSR |= DMA_CSR_DREQ_MASK;
	/* enable DMAMUX */
	DMAMUX->CHCFG[DMA_InitStruct->chl] |= DMAMUX_CHCFG_ENBL_MASK;
}

/**
 * @brief  获得 DMA MajorLoopCount 计数值
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @retval 计数值
 */
uint32_t DMA_GetMajorLoopCount(uint8_t chl)
{
    return (DMA0->TCD[chl].CITER_ELINKNO & DMA_CITER_ELINKNO_CITER_MASK) >> DMA_CITER_ELINKNO_CITER_SHIFT;
}

/**
 * @brief  设置 DMA MajorLoopCount 计数值
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @retval None
 * @note   数值不能超过 DMA_CITER_ELINKNO_CITER_MASK
 */
void DMA_SetMajorLoopCounter(uint8_t chl, uint32_t val)
{
    DMA0->TCD[chl].CITER_ELINKNO &= ~DMA_CITER_ELINKNO_CITER_MASK;
    DMA0->TCD[chl].CITER_ELINKNO |= DMA_CITER_ELINKNO_CITER(val);
}


/**
 * @brief  使能通道响应传输
 * @code
 *     //开启DMA 的0通道进行数据传输
 *     DMA_EnableRequest(HW_DMA_CH0);
 * @endcode
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @retval None
 */
void DMA_EnableRequest(uint8_t chl)
{
    DMA0->SERQ = DMA_SERQ_SERQ(chl);
}

/**
 * @brief  禁止通道响应传输
 * @code
 *     //开启DMA 的0通道进行数据传输
 *     DMA_EnableRequest(HW_DMA_CH0);
 * @endcode
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @retval None
 */
void DMA_DisableRequest(uint8_t chl)
{
    DMA0->CERQ = DMA_CERQ_CERQ(chl);
}

/**
 * @brief  在Majloop 结束后  是否自动关闭Request
 */
void DMA_EnableAutoDisableRequest(uint8_t chl , bool flag)
{
    if(flag)
    {
        DMA0->TCD[chl].CSR |= DMA_CSR_DREQ_MASK;
    }
    else
    {
        DMA0->TCD[chl].CSR &= ~DMA_CSR_DREQ_MASK;  
    }
}

/**
 * @brief  使能Major LoopLink 功能
 * @note   当一个通道结束MajorLoopLink后 自动开始另一个通道的传输
 * @param  chl: DMA通道号
 * @param  linkChl: 需要连接到通道号
 * @param  flag 使能或者关闭
 * @retval None
 */
void DMA_EnableMajorLink(uint8_t chl , uint8_t linkChl, bool flag)
{
    if(flag)
    {
        /* enable major loop link */
        DMA0->TCD[chl].CSR |= DMA_CSR_MAJORELINK_MASK;
        /* set chl */
        DMA0->TCD[chl].CSR &= ~DMA_CSR_MAJORLINKCH_MASK;
        DMA0->TCD[chl].CSR |= DMA_CSR_MAJORLINKCH(linkChl);
    }
    else
    {
        DMA0->TCD[chl].CSR &= ~DMA_CSR_MAJORELINK_MASK;
    }
}

/**
 * @brief  设置DMA传输完成中断
 * @code
 *     //开启DMA 的0通道的传输完成中断功能
 *     DMA_StartTransfer(HW_DMA_CH0);
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @param config: 配置模式
 *         @arg kDMA_IT_Half_Disable 禁止DMA传输一半中断触发
 *         @arg kDMA_IT_Major_Disable 禁止DMA传输完成中断触发
 *         @arg kDMA_IT_Half 开启DMA传输一半中断触发
 *         @arg kDMA_IT_Major 开启DMA传世完成中断触发
 * @retval None
 */
void DMA_ITConfig(uint8_t chl, DMA_ITConfig_Type config, bool status)
{
    if(status)
    {
        NVIC_EnableIRQ(DMA_IRQnTable[chl]);
    }
    switch(config)
    {
        case kDMA_IT_Half:
            (status)?
            (DMA0->TCD[chl].CSR |= DMA_CSR_INTHALF_MASK):
            (DMA0->TCD[chl].CSR &= ~DMA_CSR_INTHALF_MASK);
            break;
        case kDMA_IT_Major:
            (status)?
            (DMA0->TCD[chl].CSR |= DMA_CSR_INTMAJOR_MASK):
            (DMA0->TCD[chl].CSR &= ~DMA_CSR_INTMAJOR_MASK);
            break; 
        default:
            break;
    }
}

/**
 * @brief  注册中断回调函数
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @param AppCBFun: 回调函数指针
 * @retval None
 */
void DMA_CallbackInstall(uint8_t chl, DMA_CallBackType AppCBFun)
{
    if(AppCBFun != NULL)
    {
        DMA_CallBackTable[chl] = AppCBFun;
    }
}

/**
 * @brief  检测DMA传输是否完成
 * @code
 *     //检测DMA的0通道是否完成数据传输
 *     status = IsMajorLoopComplete(HW_DMA_CH0);
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @retval 0:数据传输完成 1:数据传输未完成
 */

uint8_t DMA_IsMajorLoopComplete(uint8_t chl)
{
    if(DMA0->ERQ & (1 << chl))
    {
        if(DMA0->TCD[chl].CSR & DMA_CSR_DONE_MASK)
        {
            /* clear this bit */
            DMA0->CDNE = DMA_CDNE_CDNE(chl);
            return 0;
        }
        else
        {
            return 1;
        }
    }
    /* this chl is idle, so return 0 and clear DONE bit anyway; */
    DMA0->CDNE = DMA_CDNE_CDNE(chl);
    return 0;
}

/**
 * @brief  设置DMA模块指定通道的目标地址
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @param address: 32位的目标数据地址
 * @retval None
 */
void DMA_SetDestAddress(uint8_t ch, uint32_t address)
{
    DMA0->TCD[ch].DADDR = address;
}

uint32_t DMA_GetDestAddress(uint8_t ch)
{
    return DMA0->TCD[ch].DADDR;
}

/**
 * @brief  设置DMA模块指定通道的源地址
 * @param  chl: DMA通道号
 *         @arg HW_DMA_CH0
 *         @arg HW_DMA_CH1
 *         @arg HW_DMA_CH2
 *         @arg HW_DMA_CH3
 * @param address: 32位的源数据地址
 * @retval None
 */
void DMA_SetSourceAddress(uint8_t ch, uint32_t address)
{
    DMA0->TCD[ch].SADDR = address;
}

uint32_t DMA_GetSourceAddress(uint8_t ch)
{
    return DMA0->TCD[ch].SADDR;
}

/**
 * @brief  取消DMA模块指定通道的数据传输
 * @param  None
 * @retval None
 */
void DMA_CancelTransfer(void)
{
    DMA0->CR |= DMA_CR_CX_MASK;
}

/**
 * @brief  中断处理函数入口
 * @param  DMA0_IRQHandler :芯片的DMA0通道中断函数入口
 *               ...       :         ....
 *         DMA15_IRQHandler:芯片的DMA15通道中断函数入口
 * @note 函数内部用于中断事件处理
 */
void DMA0_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(0);
    if(DMA_CallBackTable[0]) DMA_CallBackTable[0]();
}
void DMA1_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(1);
    if(DMA_CallBackTable[1]) DMA_CallBackTable[1]();
}
void DMA2_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(2);
    if(DMA_CallBackTable[2]) DMA_CallBackTable[2]();
}
void DMA3_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(3);
    if(DMA_CallBackTable[3]) DMA_CallBackTable[3]();
}
void DMA4_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(4);
    if(DMA_CallBackTable[4]) DMA_CallBackTable[4]();
}
void DMA5_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(5);
    if(DMA_CallBackTable[5]) DMA_CallBackTable[5]();
}
void DMA6_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(6);
    if(DMA_CallBackTable[6]) DMA_CallBackTable[6]();
}
void DMA7_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(7);
    if(DMA_CallBackTable[7]) DMA_CallBackTable[7]();
}
void DMA8_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(8);
    if(DMA_CallBackTable[8]) DMA_CallBackTable[8]();
}
void DMA9_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(9);
    if(DMA_CallBackTable[9]) DMA_CallBackTable[9]();
}
void DMA10_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(10);
    if(DMA_CallBackTable[10]) DMA_CallBackTable[10]();
}
void DMA11_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(11);
    if(DMA_CallBackTable[11]) DMA_CallBackTable[11]();
}
void DMA12_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(12);
    if(DMA_CallBackTable[12]) DMA_CallBackTable[12]();
}
void DMA13_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(13);
    if(DMA_CallBackTable[13]) DMA_CallBackTable[13]();
}
void DMA14_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(14);
    if(DMA_CallBackTable[14]) DMA_CallBackTable[14]();
}
void DMA15_IRQHandler(void)
{
    DMA0->CINT = DMA_CINT_CINT(15);
    if(DMA_CallBackTable[15]) DMA_CallBackTable[15]();
}