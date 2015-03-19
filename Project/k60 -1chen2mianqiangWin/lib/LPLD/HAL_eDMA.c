/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_eDAM.c
 * ��;: eDMA�ײ�ģ����غ���
 * ����޸�����: 20120321
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
*/
/*
 *******���õ�DMA�жϣ�����isr.h��ճ��һ�´���:*********

//DMAģ���жϷ�����
#undef  VECTOR_016
#define VECTOR_016 LPLD_DMA_Isr
#undef  VECTOR_017
#define VECTOR_017 LPLD_DMA_Isr
#undef  VECTOR_018
#define VECTOR_018 LPLD_DMA_Isr
#undef  VECTOR_019
#define VECTOR_019 LPLD_DMA_Isr
#undef  VECTOR_020
#define VECTOR_020 LPLD_DMA_Isr
#undef  VECTOR_021
#define VECTOR_021 LPLD_DMA_Isr
#undef  VECTOR_022
#define VECTOR_022 LPLD_DMA_Isr
#undef  VECTOR_023
#define VECTOR_023 LPLD_DMA_Isr
#undef  VECTOR_024
#define VECTOR_024 LPLD_DMA_Isr
#undef  VECTOR_025
#define VECTOR_025 LPLD_DMA_Isr
#undef  VECTOR_026
#define VECTOR_026 LPLD_DMA_Isr
#undef  VECTOR_027
#define VECTOR_027 LPLD_DMA_Isr
#undef  VECTOR_028
#define VECTOR_028 LPLD_DMA_Isr
#undef  VECTOR_029
#define VECTOR_029 LPLD_DMA_Isr
#undef  VECTOR_030
#define VECTOR_030 LPLD_DMA_Isr
#undef  VECTOR_031
#define VECTOR_031 LPLD_DMA_Isr
#undef  VECTOR_032
#define VECTOR_032 LPLD_DMA_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_DMA_Isr(void);

 ***********************�������*************************
*/

#include "common.h"
#include "HAL_eDMA.h"

//�ڲ�����
static uint8 LPLD_eDMA_Config(LPLD_eDMA_Cfg_t*);

DMA_ISR_CALLBACK DMA_ISR[16];

/*
 * LPLD_DMA_Init
 * DMAģ��ͨ�ó�ʼ������--����Դ��ַ��Ŀ�ĵ�ַ֮�������ֱ�Ӵ��䣨����ͨ��CPU��
 * ��ϸ������LPLD_eDMA_Cfg_t �ṹ���ж��壨��HAL_eDMA.h��ͷ�ļ��ж���
 */
uint8 LPLD_DMA_Init(LPLD_eDMA_Cfg_t *DMA_Config)
{ 
    //����û�û������ ÿһ�δ����ֽڵĸ��� Ĭ��Ϊÿ�δ���һ���ֽ�
    if(DMA_Config->Trans_bytesNum  == NULL)
    {
       DMA_Config->Trans_bytesNum =1;
    }
    
    //����û�û������ Դ��ַ���� Ĭ��Ϊִ��һ��DMA�����Դ��ַ������
    if(DMA_Config->Source_Addr_inc == NULL)
    {
       DMA_Config->Source_Addr_inc  =ADDR_HOLD;       //Դ��ַ������
    }
    //����û�û������ Դ���ݳ��� Ĭ��Ϊ8λ���ݳ���
    if(DMA_Config->Source_Size ==NULL)
    {
       DMA_Config->Source_Size       =DMA_SRC_8BIT;    //Դ���ݿ��8bit һ���ֽ�
    } 
    //����û�û������ ��ѭ������������Ժ� Դ��ַ�Ƿ���� Ĭ��Ϊ����ΪԴ��ַ������
    if(DMA_Config->Source_Adj_Addr ==NULL)
    {
        DMA_Config->Source_Adj_Addr  =0;    
    }
    
    //����û�û������ Ŀ�ĵ�ַ���� Ĭ��Ϊִ��һ��DMA�����Ŀ�ĵ�ַ��һ
    if(DMA_Config->Dest_Addr_inc ==NULL)
    {
        DMA_Config->Dest_Addr_inc     =ADDR_INCREASE;    //���Ŀ�ĵ�ַ�Ĳ���ִ����Ϻ��1
    } 
    //����û�û������ Դ���ݳ��� Ĭ��Ϊ8λ���ݳ���
    if(DMA_Config->Dest_Size ==NULL)
    {
        DMA_Config->Dest_Size         =DMA_DST_8BIT;     //Ŀ�����ݿ��8bit һ���ֽ�
    } 
    //����û�û������ ��ѭ������������Ժ� Ŀ�ĵ�ַ�Ƿ���� Ĭ��Ϊ����ΪĿ�ĵ�ַ������
    if(DMA_Config->Dest_Adj_Addr ==NULL)
    {
        DMA_Config->Dest_Adj_Addr     =0;    
    }
    //����û�û������ �ж�ģʽ Ĭ�Ϲر��ж�
    if(DMA_Config->Dma_irqc ==NULL)
    {
       DMA_Config->Dma_irqc          =0;                //�ر��ж�
    }
    //����û�û������ DMA�Զ��رշ�ʽ Ĭ�Ͽ�����ѭ����������Ϊ0�Զ��ر�DMA����
    if(DMA_Config->Dma_AutoClose ==NULL)
    {
       DMA_Config->Dma_AutoClose     =0;                //������ѭ����������Ϊ0�Զ��ر�DMA����
    } 
    
    if(DMA_Config->isr_func!=NULL)
    {
        DMA_ISR[DMA_Config->Channelx] = DMA_Config->isr_func;
        //��NVIC��ʹ��DMA�ж�
        enable_irq(DMA_Config->Channelx); 
    }
    //����DMA�Ĵ���
    return LPLD_eDMA_Config(DMA_Config);
}


/*
 * �ڲ��������û��������
 * LPLD_eDMA_Config
 * ����eDMA�Ĵ�������
 *
 * ���� LPLD_eDMA_Cfg_t *eDMA_Config
 * ��ϸ������LPLD_eDMA_Cfg �ṹ���ж���
 * LPLD_eDMA_Cfg_t �ṹ���ڣ���HAL_eDMA.h��ͷ�ļ��ж���
 *
 * �����
 *   0 ����ʧ��
 *   1 ���óɹ�
*/
static uint8 LPLD_eDMA_Config(LPLD_eDMA_Cfg_t *DMA_Config)
{
    //=====����eDMAģ��ʱ��===========
    SIM_SCGC6|=SIM_SCGC6_DMAMUX_MASK; //��DMAͨ����·������ʱ��
        
    SIM_SCGC7|=SIM_SCGC7_DMA_MASK;    //��DMAģ��ʱ��
    //================================
    if(DMA_Config->Channelx>15) 
    {
        return 0;
    }
    else
    {
        //ѡ�� ͨ��x ���������DMA source requestNumber
        DMAMUX_BASE_PTR->CHCFG[DMA_Config->Channelx]=DMAMUX_CHCFG_SOURCE(DMA_Config->Peri_DmaReq);
    }
    /*����Դ��ַ��Ϣ*/
    //����Դ��ַ   
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].SADDR=DMA_Config->Source_Addr;
    //��ִ�������Դ��ַ�Ĳ���֮���Ƿ���ԭ��ַ�Ļ������ۼ�
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].SOFF =DMA_Config->Source_Addr_inc;
    //���������ݳ��ȼĴ���
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].ATTR=0;
    //����Դ��ַ�Ĵ�����
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].ATTR |=DMA_Config->Source_Size;
    //���ļ���������major iteration count���ﵽ���Ƿ����¸���Դ��ַ
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].SLAST =DMA_Config->Source_Adj_Addr;
    
    /*����Ŀ�ĵ�ַ��Ϣ*/ 
    //����Ŀ�ĵ�ַ 
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].DADDR=DMA_Config->Dest_Addr;
    //��ִ�������Ŀ�ĵ�ַ�Ĳ���֮���Ƿ���ԭ��ַ�Ļ������ۼ�
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].DOFF =DMA_Config->Dest_Addr_inc;
    //����Դ��ַ�Ĵ�����
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].ATTR |=DMA_Config->Dest_Size;
    //���ļ���������major iteration count���ﵽ���Ƿ����¸���Ŀ�ĵ�ַ
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].DLAST_SGA =DMA_Config->Dest_Adj_Addr;
    
    if(DMA_Config->Minor_loop_Length>32767) //��ѭ���������Ĵ�����0---32767֮��
    {
        return 0;
    }
    else
    {
        //===============���������������ȣ�ѭ������====================================
        //�������ݳ��ȣ�����ÿ�εݼ���Ҳ���Գ�Ϊ ��ǰ��ѭ�������� current major loop count
        DMA_BASE_PTR->TCD[DMA_Config->Channelx].CITER_ELINKNO=DMA_CITER_ELINKNO_CITER(DMA_Config->Minor_loop_Length);
        //��ʼѭ��������������ѭ��������Ϊ���ʱ�򣬽�װ����ʼѭ����������ֵ
        DMA_BASE_PTR->TCD[DMA_Config->Channelx].BITER_ELINKNO=DMA_CITER_ELINKNO_CITER(DMA_Config->Minor_loop_Length);
        //����ÿһ�δ����ֽڵĸ����������ﵽ����ʱ��DMA�㽫���ݴ���memory
        DMA_BASE_PTR->TCD[DMA_Config->Channelx].NBYTES_MLNO=DMA_NBYTES_MLNO_NBYTES(DMA_Config->Trans_bytesNum);
    }
    
    //============����DMA TCD���ƼĴ���==========================//  
    DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR =0;     //���CSR������                   
    //===========����DMA�ж�===================================//
    if(!DMA_Config->Dma_irqc)
    {
       DMA_INT &=~(1<<DMA_Config->Channelx); //�ر���Ӧͨ�����ж�����  
    }
    else if(DMA_Config->Dma_irqc==1)
    {
       DMA_INT |=(1<<DMA_Config->Channelx); //������Ӧͨ�����ж�����
       DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR  |=DMA_CSR_INTHALF_MASK;//ʹ��DMA ��ѭ������������һ�� �ж�
    }
    else if(DMA_Config->Dma_irqc==2)
    {
       DMA_INT |=(1<<DMA_Config->Channelx); //������Ӧͨ�����ж�����
       DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR  |=DMA_CSR_INTMAJOR_MASK;//ʹ��DMA ��ѭ�������������� �ж�
    }
    
    if(!DMA_Config->Dma_AutoClose)
    {
       DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR  |=DMA_CSR_DREQ_MASK; //��ѭ����������������Զ��ر�DMA 
    }
    else
    {
       DMA_BASE_PTR->TCD[DMA_Config->Channelx].CSR  &=(~DMA_CSR_DREQ_MASK); //��ѭ��������������󣬲��ر�DMA
    }
    //ע��ʹ�ܴ˼Ĵ���DMA��ʼ����
    //�ر�ͨ��xӲ��DMA���� 
    DMA_ERQ&=~(1<<DMA_Config->Channelx);
    //DMAͨ��ʹ��
    DMAMUX_BASE_PTR->CHCFG[DMA_Config->Channelx]|=DMAMUX_CHCFG_ENBL_MASK;
    
    return 1;
}


/*
 * LPLD_DMA_EnableReq
 * �˺�������enable��ֵ��������ر�ͨ��x��DMA����
 * һ������ͨ��x��DMA����DMAģ��Ϳ�ʼ����
 * 
 * ����:
 *    chx--DMAͨ��ֵ  һ��16��DMAͨ��
 *      |__0  DMA_Channel_0
 *      |__1  DMA_Channel_1
 *      .....
 *      |__15 DMA_Channel_15
 *
 *    enable--������ر�DMA����
 *      |__0  �ر�ͨ��x������DMA����
 *      |__1  ����ͨ��x������DMA����     
 */
void LPLD_DMA_EnableReq(uint8 chx,uint8 enable)
{
    if(enable)
    {
        //����ͨ��x������DMA���� 
        DMA_ERQ|=(1<<chx);
    }
    else
    {
        //�ر�ͨ��x������DMA���� 
        DMA_ERQ&=~(1<<chx);
    }
}

/*
 * LPLD_DMA_Reload
 * �����һ��DMA��ѭ��֮�󣬵��ô˺������Ե���Ŀ�ĵ�ַ��������������ѭ���������Ĵ���
 * ����֮�� �µ�Ŀ�ĵ�ַ=ԭ��Ŀ�ĵ�ַ+��һ����ѭ���Ĵ���
 * 
 * ����:
 *    chx--DMAͨ��ֵ  һ��16��DMAͨ�� 
 *      |__0  DMA_Channel_0
 *      |__1  DMA_Channel_1
 *      .....
 *      |__15 DMA_Channel_15
 *
 *    dest_base_addr--  Ŀ�Ĵ洢�����׵�ַ��������������׵�ַ��Ҳ���������ݼĴ����ĵ�ַ
 *      
 *    dest_offset_addr--Ŀ�ĵ�ַ��ƫ������һ�������Ŀ�ĵ�ַ��ƫ����������ѭ���������Ĵ���
 *    
 *    loop_length--��ѭ���������Ĵ���
 *     
 */
void LPLD_DMA_Reload(uint8 chx, uint32 dest_base_addr, uint32 dest_offset_addr, uint16 loop_length)
{
    //��������Ŀ�ĵ�ַ
    DMA_BASE_PTR->TCD[chx].DADDR =(uint32)(dest_base_addr+dest_offset_addr);
    //�������ݳ��ȣ�����ÿ�εݼ���Ҳ���Գ�Ϊ ��ǰ��ѭ�������� current major loop count
    DMA_BASE_PTR->TCD[chx].CITER_ELINKNO=DMA_CITER_ELINKNO_CITER(loop_length);
    //��ʼѭ��������������ѭ��������Ϊ���ʱ�򣬽�װ����ʼѭ����������ֵ
    DMA_BASE_PTR->TCD[chx].BITER_ELINKNO=DMA_CITER_ELINKNO_CITER(loop_length);
}


/*
 * LPLD_DMA_Isr
 * DMA�жϵײ���ں���
 * 
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */
void LPLD_DMA_Isr(void)
{
  #define DMA_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 dma_ch = DMA_VECTORNUM - 16;
  
  //�����û��Զ����жϷ���
  DMA_ISR[dma_ch]();
  //����жϱ�־λ
  DMA_INT |= 0x1u<<dma_ch; 
}
