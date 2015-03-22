/*
 * Threads.c
 *
 *  Created on: 2014年10月22日
 *      Author: lvniqi
 */
#include "Threads.h"
PT thread[THREAD_NUM];
/********************************************************************
* 名称 : PT_THREAD( GetAd(PT *pt) )
* 功能 : 线程 得到AD
* 输入 : 无
* 输出 : 无
***********************************************************************/
PT_THREAD( GetAd(PT *pt) )
{
  PT_BEGIN(pt);
  PT_WAIT_UNTIL(pt,pt->ready);
  pt->ready=0;
  MyADC_Get(&ADCDATA);
  PT_END(pt);
}
