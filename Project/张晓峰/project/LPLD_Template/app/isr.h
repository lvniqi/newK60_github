/*
 * 测试硬件平台:  LPLD_K60 Card
 * 版权所有:      北京拉普兰德电子技术有限公司
 * 网络销售:      http://laplenden.taobao.com
 * 公司门户:      http://www.lpld.cn
 *
 * 说明:    本工程基于Kintis K60开源底层开发包开发，
 *          所有开源驱动代码均在"LPLD"文件夹下，调用说明见文档[#LPLD-003-N]
 *
 * 文件名:  isr.h
 * 用途:    声明中断服务子程序，该头文件中所声明的中断函数均为底层中断函数，
 *	    向量号及函数名请参考文档[#LPLD-003-N]，或各底层模块".h"头文件。
 * 注意:   该头文件只能被"vectors.c"所包含。
 *
 */


#ifndef __ISR_H
#define __ISR_H 1


/* 声明底层中断服务子程序 */
#undef  VECTOR_016
#define VECTOR_016 DMA_CH0_Handler
#undef  VECTOR_026
#define VECTOR_026 DMA_CH10_Handler
#undef  VECTOR_084
#define VECTOR_084 LPLD_PIT_Isr
#undef  VECTOR_085
#define VECTOR_085 LPLD_PIT_Isr
#undef  VECTOR_086
#define VECTOR_086 LPLD_PIT_Isr
#undef  VECTOR_087
#define VECTOR_087 LPLD_PIT_Isr

extern void LPLD_PIT_Isr(void);
extern void DMA_CH0_Handler();            //DMA0传输中断服务函数
extern void DMA_CH10_Handler();           //DMA10传输中断服务函数

#endif  //__ISR_H

/* End of "isr.h" */
