/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_I2C.c
 * ��;: I2C�ײ�ģ����غ���
 * ����޸�����: 20120402
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */

#include "common.h"
#include "HAL_I2C.h"



//I2Cӳ���ַ����
volatile I2C_MemMapPtr I2Cx_Ptr[2] = {I2C0_BASE_PTR, 
                                      I2C1_BASE_PTR};

/*
 * LPLD_I2C_Init
 * I2Cͨ�ó�ʼ������
 * 
 * ����:
 *    i2cx--ѡ��I2Cģ���
 *      |__I2C0           --I2C0��ģ��
 *      |__I2C1           --I2C1��ģ��
 *    port--ͨ���˿�λѡ��
 *      |__0              --I2C0(PTB2-I2C0_SCL PTB3-I2C0_SDA)
 *      |                 --I2C1(PTE0-I2C1_SDA PTE1-I2C1_SCL)
 *      |__1              --I2C0(PTD8-I2C0_SCL PTD9-I2C0_SDA)
 *      |                 --I2C1(PTC10-I2C1_SCL PTC11-I2C1_SDA)
 *    scl_frq--ѡ��IIC SCLƵ��
 *      |__I2C_SCL_50KHZ  --50khz
 *      |__I2C_SCL_100KHZ --100khz
 *      |__I2C_SCL_150KHZ --150khz
 *      |__I2C_SCL_200KHZ --200khz
 *      |__I2C_SCL_250KHZ --250khz
 *      |__I2C_SCL_300KHZ --300khz
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_I2C_Init(I2Cx i2cx, uint8 port, uint8 scl_frq)
{
  uint8 ps; 
  
  //�������
  ASSERT( i2cx <= I2C1);                            //�ж�I2Cxģ���
  ASSERT( scl_frq <= I2C_SCL_300KHZ);               //�ж�SCLƵ��
  ASSERT( port <= 1);                               //�ж϶˿�ѡ��
  
  //����Ƶ��50mhz
  //scl_frq=50mhz/(mul * scl div)
  if(scl_frq == I2C_SCL_50KHZ)
  {
    ps=0x33;
  }
  else if(scl_frq == I2C_SCL_100KHZ)
  {
    ps=0x2B;
  }
  else if(scl_frq == I2C_SCL_150KHZ)
  {
    ps=0x28;
  }
  else if(scl_frq == I2C_SCL_200KHZ)
  {
    ps=0x23;
  }
  else if(scl_frq == I2C_SCL_250KHZ)
  {
    ps=0x21;
  }
  else if(scl_frq == I2C_SCL_300KHZ)
  {
    ps=0x20;
  }
  else
    return 0;

  if(i2cx==I2C0)
  {
    if(!port)
    {
      /* configure GPIO for I2C0 function */
      PORTB_PCR2 = PORT_PCR_MUX(2);
      PORTB_PCR3 = PORT_PCR_MUX(2);   
    }
    else if(port==1)
    {
      /* configure GPIO for I2C0 function */
      PORTD_PCR8 = PORT_PCR_MUX(2);
      PORTD_PCR9 = PORT_PCR_MUX(2);   
    }
    else
      return 0;
    
    SIM_SCGC4 |= SIM_SCGC4_I2C0_MASK; //����I2C0ʱ��
  }
  else if(i2cx==I2C1)
  {
    if(!port)
    {
      /* configure GPIO for I2C0 function */
      PORTE_PCR0 = PORT_PCR_MUX(6);
      PORTE_PCR1 = PORT_PCR_MUX(6);   
    }
    else if(port==1)
    {
      /* configure GPIO for I2C0 function */
      PORTC_PCR10 = PORT_PCR_MUX(2);
      PORTC_PCR11 = PORT_PCR_MUX(2);   
    }
    else
      return 0;
    
    SIM_SCGC4 |= SIM_SCGC4_I2C1_MASK; //����IIC1ʱ��
  }
  else
    return 0;
  
  I2C_F_REG(I2Cx_Ptr[i2cx]) = ps;
  I2C_C1_REG(I2Cx_Ptr[i2cx]) = I2C_C1_IICEN_MASK;      //ʹ��I2Cx
  
  return 1;
}


/*
 * LPLD_I2C_Start
 * I2C��ʼ�źŲ���
 * 
 * ����:
 *    i2cx--ѡ��I2Cģ���
 *      |__I2C0           --I2C0��ģ��
 *      |__I2C1           --I2C1��ģ��
 */
void LPLD_I2C_Start(I2Cx i2cx)
{
  I2C_MemMapPtr i2cptr = I2Cx_Ptr[i2cx];
  I2C_C1_REG(i2cptr) |= I2C_C1_TX_MASK ;
  I2C_C1_REG(i2cptr) |= I2C_C1_MST_MASK ;
}


/*
 * LPLD_ReStart
 * I2C�ٴβ�����ʼ�ź�
 * 
 * ����:
 *    i2cx--ѡ��I2Cģ���
 *      |__I2C0           --I2C0��ģ��
 *      |__I2C1           --I2C1��ģ��
*/
void LPLD_I2C_ReStart(I2Cx i2cx)
{
  I2C_MemMapPtr i2cptr = I2Cx_Ptr[i2cx];
  I2C_C1_REG(i2cptr) |= I2C_C1_RSTA_MASK ;
}


/*
 * LPLD_I2C_Stop
 * I2Cֹͣ�źŲ���
 * 
 * ����:
 *    i2cx--ѡ��I2Cģ���
 *      |__I2C0           --I2C0��ģ��
 *      |__I2C1           --I2C1��ģ��
 */
void LPLD_I2C_Stop(I2Cx i2cx)
{
  I2C_MemMapPtr i2cptr = I2Cx_Ptr[i2cx];
  I2C_C1_REG(i2cptr) &=(~I2C_C1_MST_MASK);
  I2C_C1_REG(i2cptr) &=(~I2C_C1_TX_MASK); 
}


/*
 * LPLD_I2C_WaitAck
 * I2C���õȴ�Ӧ���źţ�������ȴ����ر��򲻵ȴ�
 * 
 * ����:
 *    i2cx--ѡ��I2Cģ���
 *      |__I2C0           --I2C0��ģ��
 *      |__I2C1           --I2C1��ģ��
 *    is_wait--ѡ���Ƿ�ȴ�Ӧ��
 *      |__I2C_ACK_OFF    --�رյȴ�Ack
 *      |__I2C_ACK_ON     --�����ȴ�Ack�����ȴ�ACK�ź�
 */
void LPLD_I2C_WaitAck(I2Cx i2cx, uint8 is_wait)
{
  I2C_MemMapPtr i2cptr = I2Cx_Ptr[i2cx];
  uint16 time_out;
  if(is_wait == I2C_ACK_ON)
  {
    while(!(I2C_S_REG(I2Cx_Ptr[i2cx]) & I2C_S_IICIF_MASK))
    {
      if(time_out>60000) //����ȴ���ʱ��ǿ���˳�
        break;
      else time_out++;
    }
    I2C_S_REG(i2cptr) |= I2C_S_IICIF_MASK;
  }
  else
  {
    //�ر�I2C��ACK
    I2C_C1_REG(i2cptr) |= I2C_C1_TXAK_MASK; 
  }
}


/*
 * LPLD_I2C_Write
 * I2C����һ���ֽ����ݸ�Ŀ�ĵ�ַ�豸
 * 
 * ����:
 *    i2cx--ѡ��I2Cģ���
 *      |__I2C0           --I2C0��ģ��
 *      |__I2C1           --I2C1��ģ��
 *    data8--Ҫ���͵��ֽ�����
 *
 */
void LPLD_I2C_Write(I2Cx i2cx, uint8 data8)
{
  I2C_D_REG(I2Cx_Ptr[i2cx]) = data8; 
}


/*
 * LPLD_I2C_Read
 * I2C���ⲿ�豸��һ���ֽ�����
 * 
 * ����:
 *    i2cx--ѡ��I2Cģ���
 *      |__I2C0           --I2C0��ģ��
 *      |__I2C1           --I2C1��ģ��
 * ����ֵ:
 *    I2C��ȡ������ 
 */

uint8 LPLD_I2C_Read(I2Cx i2cx)
{
  uint8 temp;
  temp = I2C_D_REG(I2Cx_Ptr[i2cx]); 
  return temp;
}

/*
 * LPLD_I2C_SetMasterWR
 * I2C������дģʽ����
 * 
 * ����:
 *    IICx--ѡ��I2Cģ���ͨ��
 *      |__0 I2C0
 *      |__1 I2C1
 *    mode--��дģʽѡ��
 *      |__I2C_MWSR         --����д
 *      |__I2C_MRSW         --������
 */

void LPLD_I2C_SetMasterWR(I2Cx i2cx, uint8 mode)
{
  I2C_MemMapPtr i2cptr = I2Cx_Ptr[i2cx];
  if(mode==I2C_MRSW) 
    I2C_C1_REG(i2cptr) &= (~I2C_C1_TX_MASK);
  else
    I2C_C1_REG(i2cptr) |= ( I2C_C1_TX_MASK);
}

/*
 * LPLD_IIC_StartTrans
 * I2C��ʼ���亯������Ҫ������Χ�豸��ַ�Ͷ�дģʽ
 * 
 * ����:
 *    IICx--ѡ��I2Cģ���ͨ��
 *      |__0 I2C0
 *      |__1 I2C1
 *    addr--��Χ�豸��ַ     
 *    mode--��дģʽѡ��
 *      |__I2C_MWSR         --����д
 *      |__I2C_MRSW         --������
 */
void LPLD_I2C_StartTrans(I2Cx i2cx, uint8 addr, uint8 mode)
{
  //I2C����start�ź�
  LPLD_I2C_Start(i2cx);
  //���ӻ���ַ��������дλ�ϳ�һ���ֽ�д��
  LPLD_I2C_Write(i2cx, (addr<<1)|mode );
}




