#include "head.h"


void duoji_control()
{
  //�������Ĵ���
  if(fmq_time>=0)
  {
      //���� PortPortPortPort��ĳһλ ĳһλ �����ֵ�� �����ֵ��
      //����ԭ�� ����ԭ��
      //void LPLD_GPIO_Set_b(PTx ptx, uint8 port_bit, data1)
      //#define OUTPUT_L        0
      //#define OUTPUT_H        1
      LPLD_GPIO_Set_b(PTC,10,OUTPUT_H);
      fmq_time--;
  }
  else
  {
      LPLD_GPIO_Set_b(PTC,10,OUTPUT_L);
  }
  
  //������һ�ε�duoji��hc
  prehc=hc;
  pred=duoji;
  
  //1 3 5 7 6 4 2
  //3 4 ����ֱ���
  //5 6 ����б���(ֻ�����ж��б���û�м���)
  //1��2�����ҵ�У�7Ϊ�м���
  
  //1 3 7 4 2
  //3 4 ����ֱ���
  //1 2 ��Զ��ˮƽ���ҵ��
  //7 ��Զ��ˮƽ�м���
  //5 6 �ǽ���ˮƽ���
  
  preAD3=ADValue3;
  preAD4=ADValue4;
  pAD7=ADValue7;
  
  if(fabsf(ADValue7-pAD7)>10)
  {
    fmq_time=40;//������һ������������˷������ͽ�
  }
  
  //Զ������ˮƽ��й�һ������
  //e0��Զ������ˮƽ���֮��
  e0=ADValue1-ADValue2;
  //e1��Զ������ˮƽ���֮��
  e1=ADValue1+ADValue2;
  
  //��ֱ��й�һ������
  //e2����ֱ���֮��
  e2=ADValue3-ADValue4;
  //e3����ֱ���֮��
  e3=ADValue3+ADValue4;
  
  //��������ˮƽ��й�һ������
  //e4�ǽ�������ˮƽ���֮��
  e4=ADValue5-ADValue6;
  //e5�ǽ�������ˮƽ���֮��
  e5=ADValue5+ADValue6;
  
  //��ֹ��0
  if(ADValue7!=0)
  {
    //���м�ĵ��ƫ�����й�
    //�����Ӧ�õ������ŵļ�����
    quan=190/ADValue7;
  }
  
  //ֱ����ʱ��hc1����0
  //�����ֱ�ǵ������e2/e3��ֱ��й�һ��
  
  if(ADValue3<=10&&ADValue4<=10)
  {
    hc1=0;
  }
  else
  {
    hc1=e2/e3;
  }
  
  //��������ˮƽ��й�һ��
  hc2=e4/e5;
  
  if(ADValue1 > ADValue2)
  {
    left = 1;
    right = 0;
  }
  else if(ADValue2 < ADValue1)
  {
    right = 1;
    left = 0;
  }
  
  //��ô�����һ����>60Ȼ����һ������-60��60֮�䵫����ƫ����-59
  //�ǰ�������㷨�Ļ�Ӧ�ò������������������ת����ʵ�����Ѿ��е�
  //Ҫ��ת��
  
  //�͹�һ����࣬�����������һ��quan
  if(left==1)
   hc=(quan*ADValue1-ADValue2)/(ADValue1+ADValue2);
  else if(right==1)
   hc=(ADValue1-quan*ADValue2)/(ADValue1+ADValue2);
  else
    hc=0;
  
  //hc_total=0.7*hc+hc1;
  hc_total=0.7*hc;
  
  //���Ǿ���������õ���kpֵ
  Kp=14.5*powf(2.6,-(ADValue7/183-1.93));
                              
  duoji = duoji_mid + Kp * hc_total + (hc - prehc) * Kd;

  //�м���ֵ�ǳ�С��ʱ������ҵ�е�ֵ�ǳ�С��ʱ��������
  if(right==1&&(ADValue7<25||ADValue2<20))
  {
   duoji=duoji_right;
  }
  //�м���ֵ�ǳ�С��ʱ��������е�ֵ�ǳ�С��ʱ��������
  if(left==1&&(ADValue7<25||ADValue1<20))
  {
   duoji=duoji_left;
  }
  
  //��б�������
  //���8�Ǳ�����м��������ĵ�п���ֵ�ж�ʹ�䱣������
  if(ADValue8<=2&&ADValue1<5&&ADValue2<5&&ADValue7<5)
    ting=1;

  //������������Ҷ�������ֵʹ����ڶ��
  //���ֵ����Сֵ
  if(duoji>=duoji_left)
   duoji=duoji_left;
  else if(duoji<=duoji_right)
   duoji=duoji_right;
  
  
  LPLD_FTM1_PWM_ChangeDuty(1,duoji);
  
  //Ӧ�ò���ȷ�������µ��ĺû������һζ�ؽ����µ�
  //����duoji������������ɵ������
  //�ڽ������ǰ��ʵ�Ѿ��е����ˣ�������Ǵ����ͻ�ɳ����
  
  //ChangeDutyLPLD_FTM1_PWM_ChangeDuty 
  //�ú����ı� FTM0ģ�� PWM���ͨ����ռ�ձȡ�
  //LPLD_FTM1_PWM_ChangeDuty(uint8 channel, uint32 duty)
  //1 PTA9���
  
  /*
  if(podao_jishu_u>=60)
    LPLD_FTM1_PWM_ChangeDuty(1,duoji_mid);
  */
}


void speed_define()
{
   //Expect_speed=170-9.5*powf(2.7,-(ADValue7/46.5-2.6642));
  
   //���Ҳ������200
   //Expect_speed_l=Expect_speed+(duoji_mid-duoji)/(duoji_r/100);
   //Expect_speed_r=Expect_speed+(duoji-duoji_mid)/(duoji_r/100);
   //���Ҳ���max = max(Expect_speed_l - Expect_speed_l) = 200;
   
   //Expect_speed_l=Expect_speed+(duoji_mid-duoji)/1.00;
   //Expect_speed_r=Expect_speed+(duoji-duoji_mid)/1.00;
   Expect_speed = 100;
   Expect_speed_l = 100;
   Expect_speed_r = 100;
  
  /*
  if(podao_jishu_u>=1&&podao_u==1)
  {
    podao_jishu_u--;  }

  if(podao_jishu_u>=1&&podao_u==-1)
  {
    //fmq_time=40;
    Expect_speed_l=Expect_speed_r=100; 
    podao_jishu_u--;
  }
  if(ADValue9<45&&podao_jishu_u==0)         
  {
    podao_u=-podao_u;
    podao_jishu_u=100;
  } 
  
  if(ting==1 || time >= dingshi)
  {
    time = dingshi;
    Expect_speed_l=Expect_speed_r=0;
  }
 */
}
void speed_control()
{
  h1_r=h0_r;
  realspeed_r_1=realspeed_r_0; 
  //h0_r=a_r*h1_r+b_r*realspeed_r_0-c_r*realspeed_r_1;
  h0_r=realspeed_r_0;
  
  e2motor_r=e1motor_r;
  e1motor_r=e0motor_r;
  e0motor_r=Expect_speed_r-h0_r;
 
 
  h1_l=h0_l;
  realspeed_l_1=realspeed_l_0;
  //h0_l=a_l*h1_l+b_l*realspeed_l_0-c_l*realspeed_l_1; 
  h0_l=realspeed_l_0;
  
  e2motor_l=e1motor_l;
  e1motor_l=e0motor_l;
  e0motor_l=Expect_speed_l-h0_l;

 
  Motorerr_r=kp_r*(e0motor_r-e1motor_r)+ki_r*e0motor_r+kd_r*(e0motor_r-2*e1motor_r+e2motor_r);  
        
  Motorpwm_r+=(int)Motorerr_r;  
 
  Motorerr_l=kp_l*(e0motor_l-e1motor_l)+ki_l*e0motor_l+kd_l*(e0motor_l-2*e1motor_l+e2motor_l);  
  
  Motorpwm_l+=(int)Motorerr_l; 
 
  if(Motorpwm_r>=500)
   Motorpwm_r=500;
  else if(Motorpwm_r<0)
   Motorpwm_r=0;
  
  if(Motorpwm_l>=500)
   Motorpwm_l=500;
  else if(Motorpwm_l<0)
   Motorpwm_l=0;
 
  if(Expect_speed_r==0&&Expect_speed_l==0)
  {
   LPLD_FTM0_PWM_ChangeDuty(4,0);
   LPLD_FTM0_PWM_ChangeDuty(6,0);
  }
  else
  {
    LPLD_FTM0_PWM_ChangeDuty(4,Motorpwm_l*20);
    LPLD_FTM0_PWM_ChangeDuty(6,Motorpwm_r*20);
  }
  
}