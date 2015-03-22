#include "flash.h"

/**
 * @brief flash 初始化设置
 * @code  //flash 初始化设置
 *        Flash_Init();
 *
 * @endcode         
 * @param  None
 * @retval None
 */
void Flash_init(void)
{
  /**
   *flash bank 0 control register
   *flash 区域 0 控制寄存器设置
  */
  //FMC flash memory control register flash 内存控制寄存器设置
  FMC->PFB0CR |= FMC_PFB0CR_S_B_INV_MASK; //S_B_INV 1 Invalidate Prefetch Speculation Buffer
  
  /**
   *FTFL flash memory module 寄存器设置
  */
  //command complete interrupt flag 命令完成中断寄存器
  //CCIF 1 Flash command or EEPROM file system operation has completed
  while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)); //flash status register flash 状态寄存器
  
  //ACCERR 1 Flash Access Error Flag flash 获取错误标志 Access error detected 获取错误检测
  //FPVIOL 1 Flash Protection Violation Flag flash 保护电压标志 Protection violation detected 保护电压检测
  FTFL->FSTAT = (0|FTFL_FSTAT_ACCERR_MASK|FTFL_FSTAT_FPVIOL_MASK);    
}

/**
 * @brief flash 擦除扇区
 * @code  //flash 擦除扇区
 *        Flash_erase_sector(200);
 *
 * @endcode         
 * @param  sectorNo 擦除扇区编号
 * @retval 擦除扇区成功标志
 *         : 0 成功返回
 *         : 1 擦除命令错误
 *         : 2 解锁命令错误
 */
u8 Flash_erase_sector(u16 sectorNo)
{
  /**
   *dest 联合体 word 和 byte[4]
  */
  union
  {
      u32  word;
      u8   byte[4];
  } dest;
  
  /**
   *dest 的字节数
  */
  dest.word    = (u32)(sectorNo*(1<<11));

  /**
   *
  */
  FTFL->FCCOB0 = 0x09; //擦除扇区
  //设置目标地址
  FTFL->FCCOB1 = dest.byte[2];
  FTFL->FCCOB2 = dest.byte[1];
  FTFL->FCCOB3 = dest.byte[0];
  
  //执行命令序列
  if(1 == Flash_cmd_launch()) //若执行命令出现错误
      return 1; //擦除命令错误
  
  //若擦除sector时 则解除设备
  if(dest.word <= 0x800)
  {
      
      FTFL->FCCOB0 = 0x06; //写入四字节
    
      //设置目标地址
      FTFL->FCCOB1 = 0x00;
      FTFL->FCCOB2 = 0x04;
      FTFL->FCCOB3 = 0x0C;
      //数据写入 0xFF 0xFF 0xFF 0xFE 即擦除
      FTFL->FCCOB4 = 0xFF;
      FTFL->FCCOB5 = 0xFF;
      FTFL->FCCOB6 = 0xFF;
      FTFL->FCCOB7 = 0xFE;
      //执行命令序列
      if(1 == Flash_cmd_launch()) //若执行命令出现错误
          return 2; //解锁命令错误
  }  
  
  return 0; //成功返回
}

/**
 * @brief flash 读取扇区
 * @code  //flash 读取扇区值返回
 *        u8 bBuf[6];
 *        Flash_read(200,0,6,bBuf);
 *
 * @endcode         
 * @param   sectorNo  读取扇区编号
 *          offset    起始偏移值
 *          cnt       read 的个数 count
 *          bBuf      读取存放的数组
 * @retval 读取扇区扇区成功标志
 *         : false 读取失败
 *         : true  读取成功
 */
u8 Flash_read(u16 sectNo,u16 offset,u16 cnt,u8* bBuf)
{
  u32 wAddr = 0;
  wAddr = sectNo * 2048 + offset;
  while (cnt--)
      *bBuf++=*(u8*)wAddr++;
 return true;
}

u8 MyFlash_read(u16 sectNo,u16 offset)
{
  u32 wAddr = 0;
  wAddr = sectNo * 2048 + offset;
  return (*(u8*)wAddr);
}

/**
 * @brief flash 写扇区
 * @code  //flash 写扇区
 *        u8 bBuf[6];
 *        Flash_read(200,0,6,bBuf);
 *
 * @endcode         
 * @param   sectorNo  写扇区编号
 *          offset    起始偏移值
 *          cnt       write 的个数 count
 *          bBuf      写存放的数组
 * @retval 写扇区扇区成功标志
 *         : 0  写成功
 *         : 1  写失败
 *         : 2  解除命令错误
 */
u8 Flash_write(u16 sectNo,u16 offset,u16 cnt,u8* buf)
{
  u32 size;
  u32 destaddr;
  
  union
  {
      u32   word;
      u8  byte[4];
  } dest;
  
  if(offset%4 != 0)
      return 1; //起始偏移值不是4的倍数 写失败
  
  FTFL->FCCOB0 = 0x06; //写入四字节
  
  destaddr = (u32)(sectNo*(1<<11) + offset); //目标地址
  dest.word = destaddr; //将目标地址分为数组
  for(size=0; size<cnt; size+=4, dest.word+=4, buf+=4)
  {
      //设置目标地址
      FTFL->FCCOB1 = dest.byte[2];
      FTFL->FCCOB2 = dest.byte[1];
      FTFL->FCCOB3 = dest.byte[0];
      
      //数据写入
      FTFL->FCCOB4 = buf[3];
      FTFL->FCCOB5 = buf[2];
      FTFL->FCCOB6 = buf[1];
      FTFL->FCCOB7 = buf[0];
      
      //执行命令序列
      if(1 == Flash_cmd_launch()) //若执行命令出现错误
          return 2; //解锁命令错误
  }
  
  return 0; //写入数据成功
}

u8 MyFlash_write(u16 sectNo,u16 offset,u32 data)
{
  u32 destaddr;
  u32 destdata;
  
  union
  {
      u32   word;
      u8  byte[4];
  } dest1;

  union
  {
      u32   word;
      u8  byte[4];
  } dest2;
  
  if(offset%4 != 0)
      return 1; //起始偏移值不是4的倍数 写失败
  
  FTFL->FCCOB0 = 0x06; //写入四字节
  
  destaddr = (u32)(sectNo*(1<<11) + offset); //目标地址
  dest1.word = destaddr; //将目标地址分为数组

  //设置目标地址
  FTFL->FCCOB1 = dest1.byte[2];
  FTFL->FCCOB2 = dest1.byte[1];
  FTFL->FCCOB3 = dest1.byte[0];
  
  destdata=data;
  dest2.word = destdata;
  
  //数据写入
  FTFL->FCCOB4 = dest2.byte[3];
  FTFL->FCCOB5 = dest2.byte[2];
  FTFL->FCCOB6 = dest2.byte[1];
  FTFL->FCCOB7 = dest2.byte[0];
  
  //执行命令序列
  if(1 == Flash_cmd_launch()) //若执行命令出现错误
      return 2; //解锁命令错误
 
  return 0; //写入数据成功
}

/**
 * @brief Flash_cmd_launch flsh 命令执行
 * @code  //flash 命令执行
 *        Flash_cmd_launch();
 *
 * @endcode         
 * @param  None
 * @retval
 *          0 命令执行成功
 *          1 命令执行失败
 */
u32 Flash_cmd_launch(void)
{
  
  /**
   *flash memory module 寄存器配置 FTFL
  */ 
  FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK|FTFL_FSTAT_ACCERR_MASK|FTFL_FSTAT_FPVIOL_MASK;

  //等待命令结束
  while(!(FTFL->FSTAT &(FTFL_FSTAT_CCIF_MASK)));

  //检查错误标志
  if(FTFL->FSTAT & (FTFL_FSTAT_ACCERR_MASK|FTFL_FSTAT_FPVIOL_MASK|FTFL_FSTAT_MGSTAT0_MASK))
      return 1; //命令执行失败

  return 0; //命令执行成功
}
