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
//PIT模块中断服务定义
#undef  VECTOR_084
#define VECTOR_084 LPLD_PIT_Isr
#undef  VECTOR_085
#define VECTOR_085 LPLD_PIT_Isr
#undef  VECTOR_086
#define VECTOR_086 LPLD_PIT_Isr
#undef  VECTOR_087
#define VECTOR_087 LPLD_PIT_Isr
//以下函数在LPLD_Kinetis底层包，不必修改
extern void LPLD_PIT_Isr(void);
//DMA模块中断服务定义
#undef  VECTOR_016
#define VECTOR_016 LPLD_DMA_Isr
#undef  VECTOR_017
#define VECTOR_017 LPLD_DMA_Isr
#undef  VECTOR_018
#define VECTOR_018 LPLD_DMA_Isr
#undef  VECTOR_019
#define VECTOR_019 LPLD_DMA_Isr
#undef  VECTOR_020
#define VECTOR_020 LPLD_DMA_Isr
#undef  VECTOR_021
#define VECTOR_021 LPLD_DMA_Isr
#undef  VECTOR_022
#define VECTOR_022 LPLD_DMA_Isr
#undef  VECTOR_023
#define VECTOR_023 LPLD_DMA_Isr
#undef  VECTOR_024
#define VECTOR_024 LPLD_DMA_Isr
#undef  VECTOR_025
#define VECTOR_025 LPLD_DMA_Isr
#undef  VECTOR_026
#define VECTOR_026 LPLD_DMA_Isr
#undef  VECTOR_027
#define VECTOR_027 LPLD_DMA_Isr
#undef  VECTOR_028
#define VECTOR_028 LPLD_DMA_Isr
#undef  VECTOR_029
#define VECTOR_029 LPLD_DMA_Isr
#undef  VECTOR_030
#define VECTOR_030 LPLD_DMA_Isr
#undef  VECTOR_031
#define VECTOR_031 LPLD_DMA_Isr
#undef  VECTOR_032
#define VECTOR_032 LPLD_DMA_Isr
//以下函数在LPLD_Kinetis底层包，不必修改
extern void LPLD_DMA_Isr(void);

#endif  //__ISR_H

/* End of "isr.h" */
