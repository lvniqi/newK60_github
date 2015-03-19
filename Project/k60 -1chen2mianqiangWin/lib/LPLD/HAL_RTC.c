/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_RTC.c
 * ��;: RTCC�ײ�ģ����غ���
 * ����޸�����: 20120626
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#include "common.h"
#include "HAL_RTC.h"

/*
 *******���õ���ʱ�жϣ�����isr.h��ճ��һ�´���:*********

//RTCģ���жϷ�����
#undef  VECTOR_082
#define VECTOR_082 LPLD_RTC_Isr

//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_RTC_Isr(void);

 ***********************�������*************************
*/

//�û��Զ����жϷ���������
RTC_ISR_CALLBACK RTC_ISR[1];


/*
 * LPLD_RTC_Init
 * RTCͨ�ó�ʼ������
 * 
 * ����:
 *    seconds--���ü�������ʼֵ
 *      |__�������������Ϊ0���ڲ���λ������¿ɼ���2��32�η��룬Լ136��
 *    alarm--���ñ���ֵ��
 *      |__������ֵ����RTC_TSR������TAF��־λ���ɴ����ж�
 *    rtc_irqc--�ж�ģʽ
 *      |__RTC_INT_DIS        -�ر�RTC�ж�
 *      |__RTC_INT_INVALID    -����RTC ��Ч���� ��־λ�ж�
 *      |__RTC_INT_OVERFLOW   -����RTC ��������� ��־λ�ж�
 *      |__RTC_INT_ALARM      -����RTC ���� ��־λ�ж�
 *    isr_func--�û��жϳ�����ڵ�ַ
 *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
 *
 * ���:
 *    0--���ô���
 *    1--���óɹ�
 */

uint8 LPLD_RTC_Init(uint32 seconds, uint32 alarm, uint8 rtc_irqc, RTC_ISR_CALLBACK isr_func)
{
  int i;
  
  SIM_SCGC6 |= SIM_SCGC6_RTC_MASK;
  //��λ����RTC�Ĵ��� ����SWRλ RTC_WAR��RTC_RAR�Ĵ���
  //���SWRλ��VBAT POR����֮����������λ
  //��λRTC�Ĵ���
  RTC_CR  = RTC_CR_SWR_MASK; 
  //���RTC��λ��־   
  RTC_CR  &= ~RTC_CR_SWR_MASK;  
  //ʹ��RTC 32.768 kHzRTCʱ��Դ
  //ʹ��֮��Ҫ��ʱһ��ʱ��ȴ�
  //�ȴ�ʱ���ȶ���������RTCʱ�Ӽ�����.
  RTC_CR |= RTC_CR_OSCE_MASK;
  
  //�ȴ�32.768ʱ������
  for(i=0;i<0x600000;i++);
  
  if(rtc_irqc)
  {
    RTC_IER = (rtc_irqc & 0x07);
    
    RTC_ISR[0]=isr_func;
    
    enable_irq(66);//����RTC�ж�
  }
  //����ʱ�Ӳ����Ĵ���
  RTC_TCR = RTC_TCR_CIR(0) | RTC_TCR_TCR(0);
  
  //�����������
  RTC_TSR = seconds;
    
  //��������  
  RTC_TAR = alarm;
  
  //ʹ���������
  RTC_SR |= RTC_SR_TCE_MASK;
  
  return 1;
}

/*
 * LPLD_Get_RealTime
 * ���RTC���������ֵ
 * 
 * ���
 *   ���ۼӵ��ܺ�
 */
uint32 LPLD_RTC_GetRealTime(void)
{
  return RTC_TSR;//��õ�ǰ�����ۼӵ��ܺ�
}

/*
 * LPLD_RTC_Stop
 * �ر�RTC����
 * 
 * ���
 *   ��
 */
void LPLD_RTC_Stop(void)
{
  RTC_SR &= (~RTC_SR_TCE_MASK);
}

/*
 * LPLD_RTC_Alarm
 * RTC�������ñ����Ĵ���
 * 
 * ����:
 *    data--���ñ�����ʱ�䣬��λ����
 * 
 * ���
 *   ��
 */
void LPLD_RTC_Alarm(uint32 data)
{
  RTC_TAR = data;
}

/*
 * LPLD_RTC_Alarm
 * RTC���������������
 * 
 * ����:
 *    data--���ñ�����ʱ�䣬��λ����
 * 
 * ���
 *   ��
 */
void LPLD_RTC_Seconds(uint32 data)
{
  RTC_TSR = data;
}

/*
 * LPLD_RTC_Isr
 * RTCͨ���жϵײ���ں���
 * 
 * �û������޸ģ������Զ������Ӧͨ���жϺ���
 */
void LPLD_RTC_Isr(void)
{ 
  if((RTC_SR & RTC_SR_TIF_MASK)== 0x01)
  {
    //�����û��Զ����жϷ���
    RTC_ISR[0](); 
    //����жϱ�־λ
    RTC_SR |= RTC_SR_TIF_MASK;
    
  }	
  else if((RTC_SR & RTC_SR_TOF_MASK) == 0x02)
  {
    //�����û��Զ����жϷ���
    RTC_ISR[0]();  
    //����жϱ�־λ
    RTC_SR |= RTC_SR_TOF_MASK;
  }	 	
  else if((RTC_SR & RTC_SR_TAF_MASK) == 0x04)
  {
    //�����û��Զ����жϷ���
    RTC_ISR[0]();  
    //����жϱ�־λ
    RTC_SR |= RTC_SR_TAF_MASK;
  }	
}