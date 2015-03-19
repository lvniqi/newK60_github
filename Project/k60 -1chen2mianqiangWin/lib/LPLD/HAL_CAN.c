/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * �ú������벿�ֲο��մ����
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_CAN.h
 * ��;: CAN�ײ�ģ����غ���
 * ����޸�����: 20120711
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */

/*
 *******���õ�FTM�жϣ�����isr.h��ճ��һ�´���:*********

//FTMģ���жϷ�����

#undef  VECTOR_045
#define VECTOR_045 LPLD_CAN_Isr
#undef  VECTOR_046
#define VECTOR_046 LPLD_CAN_Isr
#undef  VECTOR_047
#define VECTOR_047 LPLD_CAN_Isr
#undef  VECTOR_048
#define VECTOR_048 LPLD_CAN_Isr
#undef  VECTOR_049
#define VECTOR_049 LPLD_CAN_Isr
#undef  VECTOR_050
#define VECTOR_050 LPLD_CAN_Isr
#undef  VECTOR_051
#define VECTOR_051 LPLD_CAN_Isr
#undef  VECTOR_052
#define VECTOR_052 LPLD_CAN_Isr
#undef  VECTOR_053
#define VECTOR_053 LPLD_CAN_Isr

//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_CAN_Isr(void);

 ***********************�������*************************
*/

#include "HAL_CAN.h"
//#include "common.h"
//#include "arm_cm4.h"


//�û��Զ����жϷ���������
CAN_ISR_CALLBACK CAN_ISR[16];

//GPIOӳ���ַ����
volatile CAN_MemMapPtr CANx_Ptr[5] = {CAN0_BASE_PTR, 
                                      CAN1_BASE_PTR};

//�����ڲ�����
static uint8 LPLD_CAN_SetBaud(CANx, uint32);



/*
 * LPLD_CAN_Init
 * �ú�������Flex_CANģ���ʼ��
 * ����:
 *    canx--����CANģ���
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *    baud_khz--����CAN���߲�����
 *      |__0
 *      |__....
 *    selfloop--����CAN������ѭ��ģʽ
 *      |__CAN_NOSELFLOOP   --��ѭ��
 *      |__CAN_SELFLOOP     --ѭ�� 
 * ���:
 *    0:���ó��ִ���
 *    1:���óɹ�
 */
uint8 LPLD_CAN_Init(CANx canx, uint32 baud_khz, uint8 selfloop)
{
    int8 i;
    CAN_MemMapPtr canptr = CANx_Ptr[canx];
  
    //ʹ��FlexCAN�ⲿʱ��
    OSC_CR |= OSC_CR_ERCLKEN_MASK | OSC_CR_EREFSTEN_MASK;
    
    //ʹ��CANģ��ʱ��
    if(canx == CAN0)
        SIM_SCGC6 |= SIM_SCGC6_FLEXCAN0_MASK;//ʹ��CAN0��ʱ��ģ�� 
    else
        SIM_SCGC3 |= SIM_SCGC3_FLEXCAN1_MASK;//ʹ��CAN1��ʱ��ģ��
    
    //����CAN_RX/TX�������Ź���
    if(canx == CAN0)
    {
	//CAN0_TX
        PORTA_PCR12 = PORT_PCR_MUX(2) | PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; //Tx����
        //CAN0_RX
	PORTA_PCR13 = PORT_PCR_MUX(2) | PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; //RX����
    }
    else
    {
    	PORTE_PCR24 = PORT_PCR_MUX(2) | PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; //Tx����
    	PORTE_PCR25 = PORT_PCR_MUX(2) | PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; //Rx����
    } 
    //ע��CTRL1������FRZ�����ᣩģʽ������
    //ѡ��ʱ��Դ������ʱ��48MHz���ڲ�ʱ�ӣ�12MHz
    //ѡ���ڲ�ʱ��
    CAN_CTRL1_REG(canptr)|= CAN_CTRL1_CLKSRC_MASK;    
     
    //ʹ��CANģ��
    CAN_MCR_REG(canptr) &= ~CAN_MCR_MDIS_MASK;
    
    //��ʱ�ӳ�ʼ����Ϻ�CAN����ʹ����Ϻ�
    //��Ƭ���Զ����붳��ģʽ
    //ֻ���ڶ���ģʽ�²������ô����CAN���߼Ĵ���
    //ʹ�ܶ���ģʽ
    CAN_MCR_REG(canptr) |= CAN_MCR_FRZ_MASK; 
    //ȷ�ϲ��ڵ͹���ģʽ������ڵ͹���ģʽ�������λ�޷����
    while((CAN_MCR_REG(canptr) & CAN_MCR_LPMACK_MASK ));
    
    //�����λ
    //��Ӱ���registers�� MCR (except the MDIS bit), TIMER, ECR, ESR1, ESR2,
    //                    IMASK1, IMASK2, IFLAG1, IFLAG2 and CRCR.
    //����Ӱ���registers��CTRL1, CTRL2, RXIMR0�CRXIMR63, RXMGMASK, RX14MASK,
    //                     RX15MASK, RXFGMASK, RXFIR, all Message Buffers
    //��λ��MCR��RFEN=0�����Rx FIFO��û��ʹ��  --------��Ҫ
    //�����ʹ�ܶ���ģʽλ������λ
    
    //CAN ���������λ����λ����Զ�����
    CAN_MCR_REG(canptr) |= CAN_MCR_SOFTRST_MASK; 
    //�ȴ���λ���
    while(CAN_MCR_SOFTRST_MASK & CAN_MCR_REG(canptr)); 
    
    //�˳�����ģʽ���ٴ�ʹ�ܶ���ģʽ ,��Ϊ�����λʹ����ģʽ�˳� 
    CAN_MCR_REG(canptr) |= CAN_MCR_FRZ_MASK;  
    //�ȴ����붳��ģʽ 
    while(!(CAN_MCR_REG(canptr) & CAN_MCR_FRZACK_MASK));
    
    //=================Initialize the Module Configuration Register=============
    //1 Enable the individual filtering per MB and reception queue features by setting the IRMQ bit
    //1����ȫƥ���λ����������֮��صļĴ���
    CAN_CTRL2_REG(canptr) &= ~CAN_CTRL2_EACEN_MASK;//�����������IDEƥ�䣬RTR��ƥ��
    CAN_CTRL2_REG(canptr) &= ~CAN_CTRL2_RRS_MASK;  //���Զ�����Զ������֡����
    CAN_MCR_REG(canptr)   &= ~CAN_MCR_IRMQ_MASK;   //ʹ��ȫ��ƥ��Ĵ���      
    CAN_CTRL2_REG(canptr) |= CAN_CTRL2_MRP_MASK;   //ID���ȴ�������ƥ��
    CAN_CTRL1_REG(canptr) |= CAN_CTRL1_LBUF_MASK;  //���͵�ʱ��ӵ����ȼ�����
    CAN_RXMGMASK_REG(canptr) = 0x1FFFFFFF;         //28λIDȫ��ƥ��
    CAN_RX14MASK_REG(canptr) = 0x00000000;
    CAN_RX15MASK_REG(canptr) = 0x00000000;
    //2 WRN_EN bit
    //2�����Ƿ���������ж�
    CAN_MCR_REG(canptr)  &= ~CAN_MCR_WRNEN_MASK;    //�����������ж�
    //3 SRX_DIS bit
    //3�����Ƿ����ҽ���
    //CAN_MCR_REG(canptr)  |= CAN_MCR_SRXDIS_MASK;  //��ֹCAN���ҽ���
    //4 Enable the Rx FIFO by setting the RFEN bit
    //4 �����Ƿ�ʹ��RX FIFO
    CAN_MCR_REG(canptr)  &= ~CAN_MCR_RFEN_MASK ;    //��ֹ����FIFO
    //5 Enable the abort mechanism by setting the AEN bit
    CAN_MCR_REG(canptr)  &= ~CAN_MCR_AEN_MASK;   
    //6 Enable the local priority feature by setting the LPRIO_EN bit
    CAN_MCR_REG(canptr)  &= ~CAN_MCR_LPRIOEN_MASK;
    

    //ģʽѡ�񣺻ػ�ģʽ������ģʽ
    if(selfloop)
      CAN_CTRL1_REG(canptr) |= CAN_CTRL1_LPB_MASK;   //ʹ�ûػ�ģʽ
    else
      CAN_CTRL1_REG(canptr) &= ~CAN_CTRL1_LPB_MASK;  //ʹ������ģʽ
    //->Initialize the Control Register
    //Determine the bit timing parameters: PROPSEG, PSEG1, PSEG2, RJW
    //Determine the bit rate by programming the PRESDIV field
    //Determine the internal arbitration mode (LBUF bit)
    //���ò�����
    if(LPLD_CAN_SetBaud(canx,baud_khz))//�����ô���
    {
        return 0;
    }
    //��SYNC�� message ʹ��ͬ������
    CAN_MCR_REG(canptr)  |= CAN_CTRL1_TSYN_MASK;
    CAN_TIMER_REG(canptr) = 0x0000;
    //->Initialize the Message Buffers
    //The Control and Status word of all Message Buffers must be initialized
    //If Rx FIFO was enabled, the ID filter table must be initialized
    //Other entries in each Message Buffer should be initialized as required
    //��16�����仺����������0
    for(i=0;i<16;i++)
    {
      canptr->MB[i].CS    = 0x00000000;
      canptr->MB[i].ID    = 0x00000000;
      canptr->MB[i].WORD0 = 0x00000000;
      canptr->MB[i].WORD1 = 0x00000000;
    }
    //��ʼ������Ҫ�Ľ������䣬���������ID����filter��IDֵ
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_1,FILTER_SLAVEA_ID);//1
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_2,FILTER_SLAVEB_ID);//2
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_3,FILTER_SLAVEC_ID);//3
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_4,FILTER_SLAVED_ID);//4
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_5,FILTER_SLAVEE_ID);//5
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_6,FILTER_SLAVEF_ID);//6
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_7,FILTER_SLAVEG_ID);//7
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_8,FILTER_SLAVEH_ID);//8
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_9,FILTER_SLAVEI_ID);//9
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_10,FILTER_SLAVEJ_ID);//10
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_11,FILTER_SLAVEK_ID);//11
    LPLD_CAN_Enable_RX_Buf(canx,MB_NUM_12,FILTER_SLAVEL_ID);//12
    //->Initialize the Rx Individual Mask Registers
    //����ÿ�������ƥ��Ĵ������õ��Ǹ����������ĸ�
    canptr->RXIMR[0]  = 0x00000000;
    canptr->RXIMR[1]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[2]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[3]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[4]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[5]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[6]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[7]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[8]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[9]  = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[10] = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[11] = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[12] = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[13] = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[14] = 0x1FFFFFFF; //����28λ����λ
    canptr->RXIMR[15] = 0x1FFFFFFF; //����28λ����λ
    //Set required interrupt mask bits in the IMASK Registers (for all MB interrupts), in
    //CTRL Register (for Bus Off and Error interrupts) and in MCR Register for Wake-Up interrupt
    //�����������ı�־λ
    LPLD_CAN_ClearAllFlag(canx);
    //ʹ�ܽ��������ж�
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_1);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_2);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_3);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_4);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_5);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_6);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_7);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_8);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_9);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_10);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_11);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_12);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_13);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_14);
    LPLD_CAN_Enable_Interrupt(canx,MB_NUM_15);
    //Negate the HALT bit in MCR
    
    //ֻ���ڶ���ģʽ�²������ã��������Ƴ�����ģʽ
    CAN_MCR_REG(canptr) &= ~(CAN_MCR_HALT_MASK);
    //�ȴ�ֱ���˳�����ģʽ
    while( CAN_MCR_REG(canptr) & CAN_MCR_FRZACK_MASK);    
    //�ȵ����ڶ���ģʽ������ģʽ����ֹͣģʽ
    while((CAN_MCR_REG(canptr) & CAN_MCR_NOTRDY_MASK));
    //Starting with the last event, FlexCAN attempts to synchronize to the CAN bus.
    return 1;
}

/*
 * LPLD_CAN_SetIsr
 * �ú�������Flex_CANģ���16���ж�Դ����
 * ����:
 *    canx--����CANģ���
 *      |__CAN0             -CAN0��ģ��
 *      |__CAN1             -CAN1��ģ��
 *    can_int_type--�����жϷ�ʽ
 *      |__FLEXCAN_MB_INT               -�����ж�
 *      |__FLEXCAN_BUS_OFF_INT          -���߹ر�
 *      |__FLEXCAN_ERROR_INT            -�����ж�
 *      |__FLEXCAN_TRANS_WARNING_INT    -���;����ж�
 *      |__FLEXCAN_RECV_WARNING_INT     -���վ����ж�
 *      |__FLEXCAN_WAKEUP_INT           -�����ж�
 *      |__FLEXCAN_IMEU_INT             -����ƥ��Ԫ�ظ���
 *      |__FLEXCAN_LOST_RECV_INT        -���ն�ʧ�ж� 
 *    isr_func--�û��жϳ�����ڵ�ַ
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 * ���:
 *    ��
 */
void LPLD_CAN_SetIsr(CANx canx, uint8 can_int_type, CAN_ISR_CALLBACK isr_func)
{
  //�������
  ASSERT( canx <=  CAN0);                                 //ģ���
  ASSERT( can_int_type <= FLEXCAN_LOST_RECV_INT);         //�ж�����
  
  enable_irq(29 + canx*8 + can_int_type);
  CAN_ISR[canx*8 + can_int_type] = isr_func;
  
}


/*
 * LPLD_CAN_SendData
 * �ú�������Flex_CANģ�������߷�������
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             -CAN0��ģ��
 *      |__CAN1             -CAN1��ģ��
 *    mbx--��Ӧ�������
 *      |__MB_NUM_0         --����0
 *      |__...              --...
 *      |__MB_NUM_15        --����15
 *    id--Ŀ��λ�õ�id��  
 *    len--�������ݵ��ֽ��������8���ֽ�   
 *    *data--�������ݵĻ�����
 * ���:
 *    0:���ó��ִ���
 *    1:���óɹ�
 */
uint8 LPLD_CAN_SendData(CANx canx, uint16 mbx, uint32 id, uint8 len, uint8 *data)
{
    int16  i,j,k;
    uint32 word[2] = {0};
    CAN_MemMapPtr canptr = CANx_Ptr[canx];
    
    //�жϻ����������ݳ������ô���
    if(mbx >= MB_MAX_NO || len > MB_MAX_DATA)
        return 0; //������Χ
    
    //��8���ֽ�ת����32λ��word�洢
    //�����жϵ�ǰ���ݰ����ֽ���
    j = (len-1)/4; //�Ƿ񳬹�4�ֽ�
    k = (len-1)%4; //
    if(j > 0)         //���ȴ���4(���������ݳ���4�ֽ�)
    {
      word[0] = ((data[0]<<24) | (data[1]<<16) | (data[2]<< 8) |  data[3] );
    }
    for(i = 0; i <= k ; i++)
    {
       word[j] |= data[(j<<2)+i] << (24-(i<<3)); 
    }
    
    //ͨ��id�ж�֡���͡�����չ֡
    j = (id &  CAN_MSG_IDE_MASK)>>CAN_MSG_IDE_BIT_NO;  //IDE
    //ͨ��id�ж�֡���͡���Զ��֡
    k = (id &  CAN_MSG_TYPE_MASK)>>CAN_MSG_TYPE_BIT_NO;//RTR
    
    //���IDλ��
    i =  j? 0: FLEXCAN_MB_ID_STD_BIT_NO;
    
    if(canptr->IFLAG1 & (1<<mbx))
      canptr->IFLAG1 = (1<<mbx);
    //�����Ĳ���Ϊ���͹���
    //�Ȼ�����д������
    canptr->MB[mbx].CS = FLEXCAN_MB_CS_CODE(FLEXCAN_MB_CODE_TX_INACTIVE);
    
    //�򻺳���дĿ��ID
    canptr->MB[mbx].ID = (1 << FLEXCAN_MB_ID_PRIO_BIT_NO) | ((id & ~(CAN_MSG_IDE_MASK|CAN_MSG_TYPE_MASK))<<i);  
    
    //�򻺳���д����
    canptr->MB[mbx].WORD0 = word[0];
    canptr->MB[mbx].WORD1 = word[1];  
    
    //ͨ���ƶ��ķ��ʹ��뿪ʼ����
    canptr->MB[mbx].CS = FLEXCAN_MB_CS_CODE(FLEXCAN_MB_CODE_TX_ONCE)//д�������
                               | (j<<FLEXCAN_MB_CS_IDE_BIT_NO)          //������дIDEλ
			       | (k<<FLEXCAN_MB_CS_RTR_BIT_NO)          //������дRTRλ
                               | FLEXCAN_MB_CS_LENGTH(len);            //������д���ݳ���
    for(i = 0;i <1000;i++); //�ȴ�������װ�����
							
    //��ʱ�ȴ�������ɣ����ʹ���ж�����ʱ�ȴ�����ɾ����
    i=0;
    while(!(canptr->IFLAG1 & (1<<mbx)))
    {
    	if((i++)>0x1000)
          return 0;
    }
    //�屨�Ļ������жϱ�־
    canptr->IFLAG1 = (1<<mbx);
    return 1;
}

/*
 * LPLD_CAN_Enable_RX_Buf
 * �ú�������ʹ��Flex_CANģ��Ľ��ջ�����
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *    mbx--��Ӧ�������
 *      |__MB_NUM_0         --����0
 *      |__...              --...
 *      |__MB_NUM_15        --����15
 *    id--���ջ����ID�����ںͽ��յ���ID����ƥ�䡣
 * ���:
 *    ��
 *
 */
void LPLD_CAN_Enable_RX_Buf(CANx canx, uint16 mbx, uint32 id)
{
    uint32 idemp;
    //��õ�ǰ��������CODEֵ0X0100
    uint32 cs = FLEXCAN_MB_CS_CODE(FLEXCAN_MB_CODE_RX_EMPTY); 
    CAN_MemMapPtr canptr = CANx_Ptr[canx];

    //��MB����Ϊ�Ǽ���״̬
    canptr->MB[mbx].CS = FLEXCAN_MB_CS_CODE(FLEXCAN_MB_CODE_RX_INACTIVE); 	
    
    //ȡ��29λ������ID
    idemp = id & 0x1FFFFFFF;
    
    //����ID���ڽ��յ�����֡�������ID����ƥ��
    if(id & CAN_MSG_IDE_MASK)//��չ֡
    {
        canptr->MB[mbx].ID = idemp;
        cs |= FLEXCAN_MB_CS_IDE;//��λIDEλ������Ϊ��չ֡
    }
    else//��׼֡
    {
        //��ID����18λ�洢�ڱ�׼֡��IDλ��
        canptr->MB[mbx].ID = (idemp << FLEXCAN_MB_ID_STD_BIT_NO); //ȡ��׼֡��ID��          
    }
    
    //������ջ�������codeд0100
    canptr->MB[mbx].CS = cs;  //����Ϊ���ܻ����������ڽ�������    
}

/*
 * LPLD_CAN_RecvData
 * �ú������ڽ���Flex_CANģ������߻�ȡ������
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *    mbx--��Ӧ�������
 *      |__MB_NUM_0         --����0
 *      |__...              --...
 *      |__MB_NUM_15        --����15
 *    *id--���յ���ID   
 *    *len--���յ������ݳ���ָ��
 *    *data--���յ������ݻ�����ָ��
 * ���:
 *    0:����ʱ���ִ���
 *    1:����ʱ�ɹ�
 */
uint8 LPLD_CAN_RecvData(CANx canx, uint16 mbx, uint32 *id, uint8 *len, uint8 *data)  
{
    int8   i,j,k;
    int8   format;
    uint16 code;
    int16  length;   
    uint8  *pMBData;
    uint8  *pBytes = data;
    CAN_MemMapPtr canptr = CANx_Ptr[canx];
    
    //��timerֵ�����������
    //��һ��ģʽ�������FIFO���գ��£��������Ƚ�������
    LPLD_CAN_Unlock_MBx(CAN0);
    
    code = FLEXCAN_GET_CODE(canptr->MB[mbx].CS);
    //����� FULL �� OVERRUN״̬ ֤�����ܵ�����
    if(code != RX_BUF_STATUS_FULL && code != RX_BUF_STATUS_OVERRUN)
    {
      *len = 0;
      return 0;
    }
    length = FLEXCAN_GET_LENGTH(canptr->MB[mbx].CS);  //ȡMB�ṹ��CS��DLCֵ
    
    if(length <1)//���յ������ݳ���С��1�����ش���
    {
      *len = 0;
      return 0;
    }
   
    //�ж��Ǳ�׼֡������չ֡
    format = (canptr->MB[mbx].CS & FLEXCAN_MB_CS_IDE)? 1:0;//�ж�IDEλ
    *id    = (canptr->MB[mbx].ID & FLEXCAN_MB_ID_EXT_MASK); //�ڽ��ܻ�����֡�У��Ȱ���չ֡��ȡID��֮�����format�жϺ󣬽�һ������ID
 
    if(!format) //format=0,��׼֡
    {
      *id >>= FLEXCAN_MB_ID_STD_BIT_NO; // ��ñ�׼֡��
    }
    else   
    { 
      *id |= CAN_MSG_IDE_MASK; //�����չ��ID        
    }
   //�ж���Զ��֡or����֡
    format = (canptr->MB[mbx].CS & FLEXCAN_MB_CS_RTR)? 1:0;  
    if(format)
    {
      *id |= CAN_MSG_TYPE_MASK; //���ΪԶ��֡����       
    }
    //��ȡ��������
    j = (length-1)>>2; //1
    k = length-1;      //7
    if(j > 0)//������յ���8�ֽ�����
    {  
      //��word0�е�������ȡ����
      (*(uint32*)pBytes) = canptr->MB[mbx].WORD0;
      //����˳��0 1 2 3-->3 2 1 0
      swap_bytes(pBytes);    
      k -= 4;
      //��WORD1������ֽڵ�ַ����pMBData
      pMBData = (uint8*)&canptr->MB[mbx].WORD1+3;
    }
    else
    {
      pMBData = (uint8*)&canptr->MB[mbx].WORD0+3;
    }
 
    for(i = 0; i <= k; i++)
    {
      pBytes[i+(j<<2)] = *pMBData--;	
    }
    *len = length;
    return 1;
}

/*
 * LPLD_CAN_Enable_Interrupt
 * �ú������ڰ�λʹ��Flex_CANģ��������ж�
 * 
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *    mbx--��Ӧ�������
 *      |__MB_NUM_0         --����0
 *      |__...              --...
 *      |__MB_NUM_15        --����15
 * ���:
 *    ��
 *
 */
void LPLD_CAN_Enable_Interrupt(CANx canx, uint16 mbx)
{
    CAN_MemMapPtr canptr = CANx_Ptr[canx];

    //ʹ����Ӧͨ�����ж�
    CAN_IMASK1_REG(canptr) |= (1<<mbx); 
}

/*
 * LPLD_CAN_Disable_Interrupt
 * �ú������ڰ�λ��ֹFlex_CANģ��������ж�
 * 
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *    mbx--��Ӧ�������
 *      |__MB_NUM_0         --����0
 *      |__...              --...
 *      |__MB_NUM_15        --����15
 * ���:
 *    ��
 *
 */
void LPLD_CAN_Disable_Interrupt(CANx canx, uint16 mbx)
{
    CAN_MemMapPtr canptr = CANx_Ptr[canx];
    
    CAN_IMASK1_REG(canptr) &= ~CAN_IMASK1_BUFLM(mbx);
}

/*
 * LPLD_CAN_ClearFlag
 * �ú������ڰ�λ���Flex_CANģ��������жϱ�־λ
 * 
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *    mbx--��Ӧ�������
 *      |__MB_NUM_0         --����0
 *      |__...              --...
 *      |__MB_NUM_15        --����15
 * ���:
 *    ��
 *
 */
void LPLD_CAN_ClearFlag(CANx canx, uint16 mbx)
{
    CAN_MemMapPtr canptr = CANx_Ptr[canx];
    
    canptr->IFLAG1= (1<<mbx);
}


/*
 * LPLD_CAN_ClearAllFlag
 * �ú��������������Flex_CANģ��������жϱ�־λ
 * 
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 * ���:
 *    ��
 *
 */
void LPLD_CAN_ClearAllFlag(CANx canx)
{
    CAN_MemMapPtr canptr = CANx_Ptr[canx];
    
    canptr->IFLAG1= 0xFFFF;
    canptr->IFLAG2= 0xFFFF;
}


/*
 * LPLD_CAN_Unlock_MBx
 * �ú������ڽ���Flex_CANģ���еĽ������䣬ͨ����ȡ���ɼ�������ֵ
 * 
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *
 * ���:
 *    �����ɼ�������ֵ
 *
 */
uint16 LPLD_CAN_Unlock_MBx(CANx canx)
{
  CAN_MemMapPtr canptr = CANx_Ptr[canx];
  uint16 timer;

  timer = CAN_TIMER_REG(canptr);
  return timer;
}

/*
 * LPLD_CAN_GetFlag
 * �ú������ڻ��Flex_CANģ��������жϱ�־λ
 * 
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *    mbx--��Ӧ�������
 *      |__MB_NUM_0         --����0
 *      |__...              --...
 *      |__MB_NUM_15        --����15
 * ���:
 *    ��������Ӧ���жϱ�־λ
 *
 */
uint32 LPLD_CAN_GetFlag(CANx canx, uint16 mbx)
{
  CAN_MemMapPtr canptr = CANx_Ptr[canx];
  
  return (canptr->IFLAG1 & (1<<mbx));
}

/*
 * LPLD_CAN_SetBaud
 * ����ָ��CANģ�鲨����
 * ����:
 *    canx--����CAN����ͨ��
 *      |__CAN0             --CAN0��ģ��
 *      |__CAN1             --CAN1��ģ��
 *    baud_khz--����CAN���߲�����
 *      |__���ò����ʵ�ֵ����λKhz
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 *
 */
static uint8 LPLD_CAN_SetBaud(CANx canx, uint32 baud_khz)
{    
  CAN_MemMapPtr canptr = CANx_Ptr[canx];
  
  switch (baud_khz)
  {
    case (33):	// 33.33K
      if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)
      { 
         // 48M/120= 400k sclock, 12Tq
         // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
         // RJW = 3, PSEG1 = 4, PSEG2 = 4,PRESDIV = 120
        CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                          | CAN_CTRL1_RJW(2)
                                          | CAN_CTRL1_PSEG1(3) 
                                          | CAN_CTRL1_PSEG2(3)
                                          | CAN_CTRL1_PRESDIV(119));
      }
      else
      { 
         // 12M/20= 600k sclock, 18Tq
         // PROPSEG = 1, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
         // RJW = 4, PSEG1 = 8, PSEG2 = 8,PRESDIV = 20
        CAN_CTRL1_REG(canptr) = (0  | CAN_CTRL1_PROPSEG(0) 
                                          | CAN_CTRL1_PROPSEG(3)
                                          | CAN_CTRL1_PSEG1(7) 
                                          | CAN_CTRL1_PSEG2(7)
                                          | CAN_CTRL1_PRESDIV(19));
      }
    break;
  case (83):	// 83.33K
    if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)
    {
     // 48M/48= 1M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 3, PSEG1 = 4, PSEG2 = 4,PRESDIV = 48
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(2)
                                      | CAN_CTRL1_PSEG1(3)
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(47));
    }
    else
    { 
     // 12M/12= 1M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 3, PSEG1 = 4, PSEG2 = 4,PRESDIV = 12
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(2)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(11));
    }
    break;
  case (50):
    if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)
    {                
     // 48M/80= 0.6M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 3, PSEG1 = 4, PSEG2 = 4, PRESDIV = 40
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(1)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(79));
    }
    else
    {
     // 12M/20= 0.6M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 3, PSEG1 = 4, PSEG2 = 4, PRESDIV = 20                 
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2)
                                      | CAN_CTRL1_RJW(2)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(19));                   
    }
    break;
  case (100):
    if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)
    { 
     // 48M/40= 1.2M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 3, PSEG1 = 4, PSEG2 = 4, PRESDIV = 40
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2)
                                      | CAN_CTRL1_RJW(2)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(39));
    }
    else
    {
     // 12M/10= 1.2M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 3, PSEG1 = 4, PSEG2 = 4, PRESDIV = 10
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(2)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(9));                   
    }
    break;
  case (125):
    if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)
    {                 
     // 48M/32= 1.5M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 3, PSEG1 = 4, PSEG2 = 4, PRESDIV = 32
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(2)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(31));
    }
    else
    {
     // 12M/8= 1.5M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 3, PSEG1 = 4, PSEG2 = 4, PRESDIV = 8
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(2)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(7));                  
    }
    break;
  case (250):
    if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)
    {                
     // 48M/16= 3M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 2, PSEG1 = 4, PSEG2 = 4, PRESDIV = 16
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2)
                                      | CAN_CTRL1_RJW(1)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(15));
    }
    else
    {
     // 12M/4= 3M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 2, PSEG1 = 4, PSEG2 = 4, PRESDIV = 4
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(1)
                                      | CAN_CTRL1_PSEG1(3)
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(3));                   
    }
    break;
  case (500):
    if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)
    {                
     // 48M/8=6M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 2, PSEG1 = 4, PSEG2 = 4, PRESDIV = 6
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(1)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(7));
    }
    else
    {
     // 12M/2=6M sclock, 12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 2, PSEG1 = 4, PSEG2 = 4, PRESDIV = 2
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(1)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(1));                   
    }
    break;
  case (1000): 
    if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)
    {                  
     // 48M/6=8M sclock
     // PROPSEG = 4, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 1, PSEG1 = 1, PSEG2 = 2, PRESCALER = 6
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(3) 
                                      | CAN_CTRL1_RJW(0)
                                      | CAN_CTRL1_PSEG1(0)
                                      | CAN_CTRL1_PSEG2(1)
                                      | CAN_CTRL1_PRESDIV(5));
    }
    else
    {  
     // 12M/1=12M sclock,12Tq
     // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
     // RJW = 4, PSEG1 = 4, PSEG2 = 4, PRESCALER = 1
      CAN_CTRL1_REG(canptr) = (0 | CAN_CTRL1_PROPSEG(2) 
                                      | CAN_CTRL1_RJW(3)
                                      | CAN_CTRL1_PSEG1(3) 
                                      | CAN_CTRL1_PSEG2(3)
                                      | CAN_CTRL1_PRESDIV(0));
    }
    break;
  default: 
    return 0;
  }
  return 1;
}

/*
 * LPLD_CAN_Isr
 * CANͨ���жϵײ���ں���
 * 
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */

void LPLD_CAN_Isr(void)
{
  #define CAN_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 can_active_int = CAN_VECTORNUM - 45;
  CAN_ISR[can_active_int]();
}
