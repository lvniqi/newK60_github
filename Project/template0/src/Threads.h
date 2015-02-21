/*
 * Threads.h
 *
 *  Created on: 2014年10月22日
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
* 名称 : PT_THREAD( GetAd(PT *pt) )
* 功能 : 线程 得到AD
* 输入 : 无
* 输出 : 无
***********************************************************************/
extern PT_THREAD( GetAd(PT *pt) );
#endif
