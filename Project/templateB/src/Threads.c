/*
 * Threads.c
 *
 *  Created on: 2014��10��22��
 *      Author: lvniqi
 */
#include "Threads.h"
PT thread[THREAD_NUM];
/********************************************************************
* ���� : PT_THREAD( GetAd(PT *pt) )
* ���� : �߳� �õ�AD
* ���� : ��
* ��� : ��
***********************************************************************/
PT_THREAD( GetAd(PT *pt) )
{
  PT_BEGIN(pt);
  PT_WAIT_UNTIL(pt,pt->ready);
  pt->ready=0;
  MyADC_Get(&ADCDATA);
  PT_END(pt);
}
