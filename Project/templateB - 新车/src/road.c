#include "road.h"

u32 road_f = other_f; //��·��Ϣ��ʼ��Ϊ������·
u32 road_f_last = other_f; //��һ�ε�·��Ϣ
u32 cross_cnt=2;

void judge_longStright(void)
{
  
  if(ad7>=140&&ad3<=10&&ad4<=10)
  {
    stright_cnt++;
  }
  else
  {
    stright_cnt-=2; //��ֱ���������ڼ�ֱ������
  }
  //��ֱ������
  if(stright_cnt<=2)
  {
    stright_cnt=2;
  }
  //50msֱ��������Ϊֱ��
  if(stright_cnt>=50)
  {
    road_f=longStraight_f;
  }
  
}

void judge_cross(void)
{
  
  if(ad1>=200&&ad7>=200&&ad2>=200)
  {
    cross_cnt++;
  }
  else
  {
    cross_cnt-=2;
  }
  //��ʮ�ּ���
  if(cross_cnt<=2)
  {
    cross_cnt=2;
  }
  //10msʮ�ּ�����Ϊʮ��
  if(cross_cnt>=10)
  {
    road_f=cross_f;
  }
  
}

void judge_bigS(void)
{
}

void judge_smallS(void)
{
}
/**
  *1ms����1�ε�·�ɼ�
*/
void road_info(void)
{
  road_f_last=road_f;
  
  judge_longStright(); //�ж�ֱ��
  judge_cross(); //�ж�ʮ��
  judge_bigS(); //�жϴ�S
  judge_smallS(); //�ж�СS
}
