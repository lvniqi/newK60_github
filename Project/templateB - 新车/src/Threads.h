/*
 * Threads.h
 *
 *  Created on: 2014��10��22��
 *      Author: lvniqi
 */

#ifndef THREADS_H_
#define THREADS_H_
#include "common.h"
#include "init.h"
#include "oled.h"
#include "myadc.h"
extern PT thread[THREAD_NUM];
/********************************************************************
* ���� : PT_THREAD( GetAd(PT *pt) )
* ���� : �߳� �õ�AD
* ���� : ��
* ��� : ��
***********************************************************************/
extern PT_THREAD( GetAd(PT *pt) );
#endif
