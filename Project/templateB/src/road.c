#include "road.h"

u32 road_f = other_f; //道路信息初始化为其他道路
u32 road_f_last = other_f; //上一次道路信息
u32 cross_cnt=2;

void judge_longStright(void)
{
  
  if(ad7>=140&&ad3<=10&&ad4<=10)
  {
    stright_cnt++;
  }
  else
  {
    stright_cnt-=2; //清直道计数快于加直道计数
  }
  //清直道计数
  if(stright_cnt<=2)
  {
    stright_cnt=2;
  }
  //50ms直道计数判为直道
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
  //清十字计数
  if(cross_cnt<=2)
  {
    cross_cnt=2;
  }
  //10ms十字计数判为十字
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
  *1ms进行1次道路采集
*/
void road_info(void)
{
  road_f_last=road_f;
  
  judge_longStright(); //判断直道
  judge_cross(); //判断十字
  judge_bigS(); //判断大S
  judge_smallS(); //判断小S
}
