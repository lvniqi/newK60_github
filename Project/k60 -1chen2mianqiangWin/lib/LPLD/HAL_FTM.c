/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_FTM.h
 * ��;: FlexTimer�ײ�ģ����غ���
 * ����޸�����: 20120329
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
/*
 *******���õ�FTM�жϣ�����isr.h��ճ��һ�´���:*********

//FTMģ���жϷ�����
#undef  VECTOR_078
#define VECTOR_078 LPLD_FTM_Isr
#undef  VECTOR_079
#define VECTOR_079 LPLD_FTM_Isr
#undef  VECTOR_080
#define VECTOR_080 LPLD_FTM_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_FTM_Isr(void);

 ***********************�������*************************
*/

#include "common.h"
#include "HAL_FTM.h"

//��������ʱ��Ƶ�ʣ���ֵ��sysinit.c�ļ���ȡ��
extern int periph_clk_khz;

//ȫ�ֱ�������
uint32 LPLD_FTM0_MOD;
uint32 LPLD_FTM1_MOD;
uint32 LPLD_FTM2_MOD;
uint8 LPLD_FTM0_Divider;
uint8 LPLD_FTM1_Divider;
uint8 LPLD_FTM2_Divider;

//�û��Զ����жϷ���������
FTM_ISR_CALLBACK FTM_ISR[3];

/*
 * LPLD_FTM0_PWM_Init
 * FTM0ģ��PWM���ܳ�ʼ������
 * 
 * ����:
 *    freq--����Ƶ�ʣ���λHz
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM0_PWM_Init(uint32 freq)
{
  uint32 bus_clk_hz;
  uint32 mod;
  uint8 ps;

  bus_clk_hz = periph_clk_khz*1000;
  
  if(freq>bus_clk_hz) return 0;
  
  if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
  {
    ps = 7;
    LPLD_FTM0_MOD = mod;
    if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
    {
      ps = 6;   
      LPLD_FTM0_MOD = mod;  
      if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
      {
        ps = 5; 
        LPLD_FTM0_MOD = mod;  
        if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        {
          ps = 4;  
          LPLD_FTM0_MOD = mod;    
          if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
          {
            ps = 3;
            LPLD_FTM0_MOD = mod;
            if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
            {
              ps = 2;
              LPLD_FTM0_MOD = mod;
              if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
              {
                ps = 1;
                LPLD_FTM0_MOD = mod;
                if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
                {
                  ps = 0;
                  LPLD_FTM0_MOD = mod;
                }
              }
            }
          }
        }  
      }
    }
  }
  else
  {
    return 0;
  }
  
  // ʹ��FTMʱ��ģ��
  SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;
  
  // ����FTM���ƼĴ���
  // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
  // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
  FTM0_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
  
  // ����PWM���ڼ�ռ�ձ�
  //    PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
  // ����FTM������ʼֵ
  FTM0_CNT = 0;
  FTM0_CNTIN = 0;
  // ����FTM����MODֵ
  FTM0_MOD = LPLD_FTM0_MOD;
  
  return 1;
}

/*
 * LPLD_FTM0_PWM_Open
 * FTM0ģ��PWM���ͨ����ռ�ձ�����
 * 
 * ˵��: ����GPIOҲ������ΪFTM0���,������ֻ����PTC��PTD,����ı��������޸� 
 * 
 * ����:
 *    channel - PWM���ͨ��
 *      |__0--PTC1
 *      |__1--PTC2
 *      |__2--PTC3
 *      |__3--PTC4
 *      |__4--PTD4
 *      |__5--PTD5
 *      |__6--PTD6
 *      |__7--PTD7
 *    duty - PWM���ռ�ձ�
 *      |__0~10000--ռ�ձ�0.00%~100.00%
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM0_PWM_Open(uint8 channel, uint32 duty)
{
  uint32 cv;
  volatile uint32 mod;
  
  if(duty>10000) return 0;
  //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
  mod = LPLD_FTM0_MOD;
  cv = (duty*(mod-0+1)+0)/10000;
  
  //ѡ�񲢿���ͨ��
  switch(channel)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
      PORT_PCR_REG(PORTC_BASE_PTR, channel+1) = PORT_PCR_MUX(4);
      break;
    case 4:
    case 5:
    case 6:
    case 7:
      SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
      PORT_PCR_REG(PORTD_BASE_PTR, channel) = PORT_PCR_MUX(4);
      break;
    default:
       return 0;
  }  
  
  // ����FTMͨ�����ƼĴ��� 
  // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
  FTM_CnSC_REG(FTM0_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
  // ����FTMͨ��ֵ
  FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
  
  return 1;
}

/*
 * LPLD_FTM0_PWM_ChangeDuty
 * �ı�FTM0ģ��PWM���ͨ��ռ�ձ�
 *
 * ����:
 *    channel - PWM���ͨ��
 *      |__0--PTC1
 *      |__1--PTC2
 *      |__2--PTC3
 *      |__3--PTC4
 *      |__4--PTD4
 *      |__5--PTD5
 *      |__6--PTD6
 *      |__7--PTD7
 *    duty - PWM���ռ�ձ�
 *      |__0~10000--ռ�ձ�0.00%~100.00%
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM0_PWM_ChangeDuty(uint8 channel, uint32 duty)
{
  uint32 cv;
  volatile uint32 mod;
  
  if(duty>10000) return 0;
  //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
  mod = LPLD_FTM0_MOD;
  cv = (duty*(mod-0+1)+0)/10000;
 
  // ����FTMͨ��ֵ
  FTM_CnV_REG(FTM0_BASE_PTR, channel) = cv;
  
  return 1;
}

/*
 * LPLD_FTM1_PWM_Init
 * FTM1ģ��PWM���ܳ�ʼ������
 * 
 * ����:
 *    freq--����Ƶ�ʣ���λHz
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM1_PWM_Init(uint32 freq)
{
  uint32 bus_clk_hz;
  uint32 mod;
  uint8 ps;

  bus_clk_hz = periph_clk_khz*1000;
  
  if(freq>bus_clk_hz) return 0;
  
  if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
  {
    ps = 7;
    LPLD_FTM1_MOD = mod;
    if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
    {
      ps = 6;   
      LPLD_FTM1_MOD = mod;  
      if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
      {
        ps = 5; 
        LPLD_FTM1_MOD = mod;  
        if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        {
          ps = 4;  
          LPLD_FTM1_MOD = mod;    
          if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
          {
            ps = 3;
            LPLD_FTM1_MOD = mod;
            if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
            {
              ps = 2;
              LPLD_FTM1_MOD = mod;
              if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
              {
                ps = 1;
                LPLD_FTM1_MOD = mod;
                if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
                {
                  ps = 0;
                  LPLD_FTM1_MOD = mod;
                }
              }
            }
          }
        }  
      }
    }
  }
  else
  {
    return 0;
  }
  
  // ʹ��FTMʱ��ģ��
  SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
  
  // ����FTM���ƼĴ���
  // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
  // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
  FTM1_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
  
  // ����PWM���ڼ�ռ�ձ�
  //    PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
  // ����FTM������ʼֵ
  FTM1_CNT = 0;
  FTM1_CNTIN = 0;
  // ����FTM����MODֵ
  FTM1_MOD = LPLD_FTM1_MOD;
  
  return 1;
}

/*
 * LPLD_FTM1_PWM_Open
 * FTM1ģ��PWM���ͨ����ռ�ձ�����
 *  
 * ˵��: ����GPIOҲ������ΪFTM1���,������ֻ����PTA,����ı��������޸� 
 * 
 * ����:
 *    channel - PWM���ͨ��
 *      |__0--PTA8
 *      |__1--PTA9
 *    duty - PWM���ռ�ձ�
 *      |__0~10000--ռ�ձ�0.00%~100.00%
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM1_PWM_Open(uint8 channel, uint32 duty)
{
  uint32 cv;
  volatile uint32 mod;
  
  if(duty>10000) return 0;
  //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
  mod = LPLD_FTM1_MOD;
  cv = (duty*(mod-0+1)+0)/10000;
  
  //ѡ�񲢿���ͨ��
  switch(channel)
  {
    case 0:
    case 1:
      SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
      PORT_PCR_REG(PORTA_BASE_PTR, channel+8) = PORT_PCR_MUX(3);
      break;
    default:
       return 0;
  }  
  
  // ����FTMͨ�����ƼĴ��� 
  // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
  FTM_CnSC_REG(FTM1_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
  // ����FTMͨ��ֵ
  FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
  
  return 1;
}

/*
 * LPLD_FTM1_PWM_ChangeDuty
 * �ı�FTM1ģ��PWM���ͨ��ռ�ձ�
 *
 * ����:
 *    channel - PWM���ͨ��
 *      |__0--PTA8
 *      |__1--PTA9
 *    duty - PWM���ռ�ձ�
 *      |__0~10000--ռ�ձ�0.00%~100.00%
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM1_PWM_ChangeDuty(uint8 channel, uint32 duty)
{
  uint32 cv;
  volatile uint32 mod;
  
  if(duty>10000) return 0;
  //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
  mod = LPLD_FTM1_MOD;
  cv = (duty*(mod-0+1)+0)/10000;
 
  // ����FTMͨ��ֵ
  FTM_CnV_REG(FTM1_BASE_PTR, channel) = cv;
  
  return 1;
}


/*
 * LPLD_FTM2_PWM_Init
 * FTM2ģ��PWM���ܳ�ʼ������
 * 
 * ����:
 *    freq--����Ƶ�ʣ���λHz
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM2_PWM_Init(uint32 freq)
{
  uint32 bus_clk_hz;
  uint32 mod;
  uint8 ps;

  bus_clk_hz = periph_clk_khz*1000;
  
  if(freq>bus_clk_hz) return 0;
  
  if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
  {
    ps = 7;
    LPLD_FTM2_MOD = mod;
    if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
    {
      ps = 6;   
      LPLD_FTM2_MOD = mod;  
      if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
      {
        ps = 5; 
        LPLD_FTM2_MOD = mod;  
        if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        {
          ps = 4;  
          LPLD_FTM2_MOD = mod;    
          if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
          {
            ps = 3;
            LPLD_FTM2_MOD = mod;
            if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
            {
              ps = 2;
              LPLD_FTM2_MOD = mod;
              if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
              {
                ps = 1;
                LPLD_FTM2_MOD = mod;
                if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
                {
                  ps = 0;
                  LPLD_FTM2_MOD = mod;
                }
              }
            }
          }
        }  
      }
    }
  }
  else
  {
    return 0;
  }
  
  // ʹ��FTMʱ��ģ��
  SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;
  
  // ����FTM���ƼĴ���
  // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
  // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
  FTM2_SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
  
  // ����PWM���ڼ�ռ�ձ�
  //    PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
  // ����FTM������ʼֵ
  FTM2_CNT = 0;
  FTM2_CNTIN = 0;
  // ����FTM����MODֵ
  FTM2_MOD = LPLD_FTM2_MOD;
  
  return 1;
}

/*
 * LPLD_FTM2_PWM_Open
 * FTM2ģ��PWM���ͨ����ռ�ձ�����
 *  
 * ˵��: ����GPIOҲ������ΪFTM2���,������ֻ����PTA,����ı��������޸� 
 * 
 * ����:
 *    channel - PWM���ͨ��
 *      |__0--PTA10
 *      |__1--PTA11
 *    duty - PWM���ռ�ձ�
 *      |__0~10000--ռ�ձ�0.00%~100.00%
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM2_PWM_Open(uint8 channel, uint32 duty)
{
  uint32 cv;
  volatile uint32 mod;
  
  if(duty>10000) return 0;
  //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
  mod = LPLD_FTM2_MOD;
  cv = (duty*(mod-0+1)+0)/10000;
  
  //ѡ�񲢿���ͨ��
  switch(channel)
  {
    case 0:
    case 1:
      SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
      PORT_PCR_REG(PORTA_BASE_PTR, channel+10) = PORT_PCR_MUX(3);
      break;
    default:
       return 0;
  }  
  
  // ����FTMͨ�����ƼĴ��� 
  // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ELSB:ELSA-10
  FTM_CnSC_REG(FTM2_BASE_PTR, channel) = FTM_CnSC_MSB_MASK|FTM_CnSC_ELSB_MASK;
  // ����FTMͨ��ֵ
  FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
  
  return 1;
}

/*
 * LPLD_FTM2_PWM_ChangeDuty
 * �ı�FTM2ģ��PWM���ͨ��ռ�ձ�
 *
 * ����:
 *    channel - PWM���ͨ��
 *      |__0--PTA8
 *      |__1--PTA9
 *    duty - PWM���ռ�ձ�
 *      |__0~10000--ռ�ձ�0.00%~100.00%
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM2_PWM_ChangeDuty(uint8 channel, uint32 duty)
{
  uint32 cv;
  volatile uint32 mod;
  
  if(duty>10000) return 0;
  //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
  mod = LPLD_FTM2_MOD;
  cv = (duty*(mod-0+1)+0)/10000;
 
  // ����FTMͨ��ֵ
  FTM_CnV_REG(FTM2_BASE_PTR, channel) = cv;
  
  return 1;
}


/*
 * LPLD_FTM0_InputCapture_Init
 * FTM0ģ�����벶���ܳ�ʼ��
 *
 * ����:
 *    channel - ���벶��ͨ��
 *      |__0--PTC1
 *      |__1--PTC2
 *      |__2--PTC3
 *      |__3--PTC4
 *      |__4--PTD4
 *      |__5--PTD5
 *      |__6--PTD6
 *      |__7--PTD7
 *    edge - ��Եѡ��
 *      |__1--������
 *      |__2--�½���
 *      |__3--�������½���
 *    ps - ������ʱ�ӷ�Ƶ��ֵԽС��������ʱ��Ƶ��Խ��
 *      |__0--1��Ƶ
 *      |__1--2��Ƶ
 *      |__2--4��Ƶ
 *      |__3--8��Ƶ
 *      |__4--16��Ƶ
 *      |__5--32��Ƶ
 *      |__6--64��Ƶ
 *      |__7--128��Ƶ
 *    isr_func--�û��жϳ�����ڵ�ַ�������жϻ����������ж�
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM0_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func)
{
 
  // ʹ��FTMʱ��ģ��
  SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;
  
  FTM0_CONF=FTM_CONF_BDMMODE(0x3);

  if(ps==7)
  {
    LPLD_FTM0_Divider = 128;
  }
  else if(ps==6)
  {
    LPLD_FTM0_Divider = 64;
  }
  else if(ps==5)
  {
    LPLD_FTM0_Divider = 32;
  }
  else if(ps==4)
  {
    LPLD_FTM0_Divider = 16;
  }
  else if(ps==3)
  {
    LPLD_FTM0_Divider = 8;
  }
  else if(ps==2)
  {
    LPLD_FTM0_Divider = 4;
  }
  else if(ps==1)
  {
    LPLD_FTM0_Divider = 2;
  }
  else if(ps==0)
  {
    LPLD_FTM0_Divider = 1;
  }
  else
  {
    return 0;
  }
  
  //ѡ�񲢿���ͨ��
  switch(channel)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      PORT_PCR_REG(PORTC_BASE_PTR, channel+1) = PORT_PCR_MUX(4);
      break;
    case 4:
    case 5:
    case 6:
    case 7:
      PORT_PCR_REG(PORTD_BASE_PTR, channel) = PORT_PCR_MUX(4);
      break;
    default:
       return 0;
  }   

  FTM0_MODE &=(~FTM_MODE_FTMEN_MASK);       //ʹ��FTMȫ����
  
  // ����FTM���ƼĴ���
  // ��FTM Counter���ó�Free Counter
  // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:PS
  // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
  FTM0_SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
  FTM0_SC |= FTM_SC_TOIE_MASK;             //ʹ�ܼ�������ж�
  FTM0_SC &= (~FTM_SC_CPWMS_MASK);         //FTM�Ӽ���
  
  FTM0_CNT = 0;
  FTM0_CNTIN = 0;
  FTM0_MOD = 0;                           
  FTM0_QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //�ر���������
  FTM0_FILTER = 0x00;                      //�ع�����
 
  FTM_CnSC_REG(FTM0_BASE_PTR, channel) = 0x00;
  FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_CHF_MASK);
  FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_CHIE_MASK;         //ʹ��ͨ�����������ж�
  FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_MSB_MASK);
  FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_MSA_MASK);       //���ó�Input captureģʽ
  if(edge==1)       //�����ز���
  {
    FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_ELSB_MASK);  
    FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
  }
  else if(edge==2)  //�½��ز���
  {
    FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;  
    FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_ELSA_MASK);         
  }
  else if(edge==3)  //�������½��ز���
  {
    FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;
    FTM_CnSC_REG(FTM0_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
  }
  else
  {
    return 0;
  }
  FTM_CnSC_REG(FTM0_BASE_PTR, channel) &= (~FTM_CnSC_DMA_MASK);       //�ر�DMA
  
  //�����жϺ�����ڵ�ַ�������ж�
  if(isr_func!=NULL)
  {
    FTM_ISR[0] = isr_func;
    enable_irq(62);
  }

  return 1;
}


/*
 * LPLD_FTM1_InputCapture_Init
 * FTM1ģ�����벶���ܳ�ʼ��
 *
 * ����:
 *    channel - ���벶��ͨ��
 *      |__0--PTA8
 *      |__1--PTA9
 *    edge - ��Եѡ��
 *      |__1--������
 *      |__2--�½���
 *      |__3--�������½���
 *    ps - ������ʱ�ӷ�Ƶ��ֵԽС��������ʱ��Ƶ��Խ��
 *      |__0--1��Ƶ
 *      |__1--2��Ƶ
 *      |__2--4��Ƶ
 *      |__3--8��Ƶ
 *      |__4--16��Ƶ
 *      |__5--32��Ƶ
 *      |__6--64��Ƶ
 *      |__7--128��Ƶ
 *    isr_func--�û��жϳ�����ڵ�ַ�������жϻ����������ж�
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM1_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func)
{
 
  // ʹ��FTMʱ��ģ��
  SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
  
  FTM1_CONF=FTM_CONF_BDMMODE(0x3);

  if(ps==7)
  {
    LPLD_FTM1_Divider = 128;
  }
  else if(ps==6)
  {
    LPLD_FTM1_Divider = 64;
  }
  else if(ps==5)
  {
    LPLD_FTM1_Divider = 32;
  }
  else if(ps==4)
  {
    LPLD_FTM1_Divider = 16;
  }
  else if(ps==3)
  {
    LPLD_FTM1_Divider = 8;
  }
  else if(ps==2)
  {
    LPLD_FTM1_Divider = 4;
  }
  else if(ps==1)
  {
    LPLD_FTM1_Divider = 2;
  }
  else if(ps==0)
  {
    LPLD_FTM1_Divider = 1;
  }
  else
  {
    return 0;
  }
  
  //ѡ�񲢿���ͨ��
  switch(channel)
  {
    case 0:
    case 1:
      PORT_PCR_REG(PORTA_BASE_PTR, channel+8) = PORT_PCR_MUX(3);
      break;
    default:
       return 0;
  }  

  FTM1_MODE &=(~FTM_MODE_FTMEN_MASK);       //ʹ��FTMȫ����
  
  // ����FTM���ƼĴ���
  // ��FTM Counter���ó�Free Counter
  // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:PS
  // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
  FTM1_SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
  FTM1_SC |= FTM_SC_TOIE_MASK;             //ʹ�ܼ�������ж�
  FTM1_SC &= (~FTM_SC_CPWMS_MASK);         //FTM�Ӽ���
  
  FTM1_CNT = 0;
  FTM1_CNTIN = 0;
  FTM1_MOD = 0;                           
  FTM1_QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //�ر���������
  FTM1_FILTER = 0x00;                      //�ع�����
 
  FTM_CnSC_REG(FTM1_BASE_PTR, channel) = 0x00;
  FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_CHF_MASK);
  FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_CHIE_MASK;         //ʹ��ͨ�����������ж�
  FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_MSB_MASK);
  FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_MSA_MASK);       //���ó�Input captureģʽ
  if(edge==1)       //�����ز���
  {
    FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_ELSB_MASK);  
    FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
  }
  else if(edge==2)  //�½��ز���
  {
    FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;  
    FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_ELSA_MASK);         
  }
  else if(edge==3)  //�������½��ز���
  {
    FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;
    FTM_CnSC_REG(FTM1_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
  }
  else
  {
    return 0;
  }
  FTM_CnSC_REG(FTM1_BASE_PTR, channel) &= (~FTM_CnSC_DMA_MASK);       //�ر�DMA
  
  //�����жϺ�����ڵ�ַ�������ж�
  if(isr_func!=NULL)
  {
    FTM_ISR[1] = isr_func;
    enable_irq(63);
  }

  return 1;
}



/*
 * LPLD_FTM2_InputCapture_Init
 * FTM1ģ�����벶���ܳ�ʼ��
 *
 * ����:
 *    channel - ���벶��ͨ��
 *      |__0--PTA10
 *      |__1--PTA11
 *    edge - ��Եѡ��
 *      |__1--������
 *      |__2--�½���
 *      |__3--�������½���
 *    ps - ������ʱ�ӷ�Ƶ��ֵԽС��������ʱ��Ƶ��Խ��
 *      |__0--1��Ƶ
 *      |__1--2��Ƶ
 *      |__2--4��Ƶ
 *      |__3--8��Ƶ
 *      |__4--16��Ƶ
 *      |__5--32��Ƶ
 *      |__6--64��Ƶ
 *      |__7--128��Ƶ
 *    isr_func--�û��жϳ�����ڵ�ַ�������жϻ����������ж�
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */
uint8 LPLD_FTM2_InputCapture_Init(uint8 channel, uint8 edge, uint8 ps, FTM_ISR_CALLBACK isr_func)
{
 
  // ʹ��FTMʱ��ģ��
  SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;
  
  FTM2_CONF=FTM_CONF_BDMMODE(0x3);

  if(ps==7)
  {
    LPLD_FTM2_Divider = 128;
  }
  else if(ps==6)
  {
    LPLD_FTM2_Divider = 64;
  }
  else if(ps==5)
  {
    LPLD_FTM2_Divider = 32;
  }
  else if(ps==4)
  {
    LPLD_FTM2_Divider = 16;
  }
  else if(ps==3)
  {
    LPLD_FTM2_Divider = 8;
  }
  else if(ps==2)
  {
    LPLD_FTM2_Divider = 4;
  }
  else if(ps==1)
  {
    LPLD_FTM2_Divider = 2;
  }
  else if(ps==0)
  {
    LPLD_FTM2_Divider = 1;
  }
  else
  {
    return 0;
  }
  
  //ѡ�񲢿���ͨ��
  switch(channel)
  {
    case 0:
    case 1:
      PORT_PCR_REG(PORTA_BASE_PTR, channel+10) = PORT_PCR_MUX(3);
      break;
    default:
       return 0;
  }  

  FTM2_MODE &=(~FTM_MODE_FTMEN_MASK);       //ʹ��FTMȫ����
  
  // ����FTM���ƼĴ���
  // ��FTM Counter���ó�Free Counter
  // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:PS
  // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
  FTM2_SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
  FTM2_SC |= FTM_SC_TOIE_MASK;             //ʹ�ܼ�������ж�
  FTM2_SC &= (~FTM_SC_CPWMS_MASK);         //FTM�Ӽ���
  
  FTM2_CNT = 0;
  FTM2_CNTIN = 0;
  FTM2_MOD = 0;                           
  FTM2_QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //�ر���������
  FTM2_FILTER = 0x00;                      //�ع�����
 
  FTM_CnSC_REG(FTM2_BASE_PTR, channel) = 0x00;
  FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_CHF_MASK);
  FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_CHIE_MASK;         //ʹ��ͨ�����������ж�
  FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_MSB_MASK);
  FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_MSA_MASK);       //���ó�Input captureģʽ
  if(edge==1)       //�����ز���
  {
    FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_ELSB_MASK);  
    FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
  }
  else if(edge==2)  //�½��ز���
  {
    FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;  
    FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_ELSA_MASK);         
  }
  else if(edge==3)  //�������½��ز���
  {
    FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_ELSB_MASK;
    FTM_CnSC_REG(FTM2_BASE_PTR, channel) |= FTM_CnSC_ELSA_MASK;         
  }
  else
  {
    return 0;
  }
  FTM_CnSC_REG(FTM2_BASE_PTR, channel) &= (~FTM_CnSC_DMA_MASK);       //�ر�DMA
  
  //�����жϺ�����ڵ�ַ�������ж�
  if(isr_func!=NULL)
  {
    FTM_ISR[2] = isr_func;
    enable_irq(64);
  }

  return 1;
}


/*
 * LPLD_FTM_Isr
 * FTMͨ���жϵײ���ں���
 * 
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */
void LPLD_FTM_Isr(void)
{
  #define FTM_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 ftm_ch = FTM_VECTORNUM - 78;
    
  //�����û��Զ����жϷ���
  FTM_ISR[ftm_ch]();  

}