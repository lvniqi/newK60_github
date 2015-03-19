/*
 * --------------"拉普兰德K60底层库"-----------------
 *
 * 测试硬件平台:LPLD_K60 Card
 * 版权所有:北京拉普兰德电子技术有限公司
 * 网络销售:http://laplenden.taobao.com
 * 公司门户:http://www.lpld.cn
 *
 * 文件名: HAL_Def.h
 * 用途: LPLD Kinetis驱动库通用定义配置
 * 最后修改日期: 20121112
 *
 * 开发者使用协议:
 *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
 *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
 *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
 */
#ifndef __HAL_DEF_H__
#define __HAL_DEF_H__

//底层库版本定义
#define OSKinetis_Version     2.2

/*
 * GPIO模块
 *
 */
typedef enum PTx
{
  PTA,
  PTB,
  PTC,
  PTD,
  PTE
}PTx;

/*
 * ADC模块
 *
 */
typedef enum ADCx
{
  ADC0,
  ADC1
}ADCx;



/*
 * DAC模块
 *
 */
typedef enum DACx
{
  DAC0,
  DAC1
}DACx;


/*
 * PIT模块
 *
 */
typedef enum PITx
{
  PIT0,
  PIT1,
  PIT2,
  PIT3
}PITx;


/*
 * FTM模块
 *
 */
typedef enum FTMx
{
  FTM0,
  FTM1,
  FTM2
}FTMx;


/*
 * UART模块
 *
 */
typedef enum UARTx
{
  UART0,
  UART1,
  UART2,
  UART3,
  UART4,
  UART5
}UARTx;


/*
 * CAN模块
 *
 */
typedef enum CANx
{
  CAN0,
  CAN1
}CANx;


/*
 * I2C模块
 *
 */
typedef enum I2Cx
{
  I2C0,
  I2C1
}I2Cx;


/*
 * SPI模块
 *
 */
typedef enum SPIx
{
  SPI0,
  SPI1,
  SPI2
}SPIx;


#endif /* __HAL_DEF_H__ */