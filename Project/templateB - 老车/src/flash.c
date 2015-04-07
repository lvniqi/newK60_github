#include "flash.h"

/**
 * @brief flash ��ʼ������
 * @code  //flash ��ʼ������
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
   *flash ���� 0 ���ƼĴ�������
  */
  //FMC flash memory control register flash �ڴ���ƼĴ�������
  FMC->PFB0CR |= FMC_PFB0CR_S_B_INV_MASK; //S_B_INV 1 Invalidate Prefetch Speculation Buffer
  
  /**
   *FTFL flash memory module �Ĵ�������
  */
  //command complete interrupt flag ��������жϼĴ���
  //CCIF 1 Flash command or EEPROM file system operation has completed
  while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)); //flash status register flash ״̬�Ĵ���
  
  //ACCERR 1 Flash Access Error Flag flash ��ȡ�����־ Access error detected ��ȡ������
  //FPVIOL 1 Flash Protection Violation Flag flash ������ѹ��־ Protection violation detected ������ѹ���
  FTFL->FSTAT = (0|FTFL_FSTAT_ACCERR_MASK|FTFL_FSTAT_FPVIOL_MASK);    
}

/**
 * @brief flash ��������
 * @code  //flash ��������
 *        Flash_erase_sector(200);
 *
 * @endcode         
 * @param  sectorNo �����������
 * @retval ���������ɹ���־
 *         : 0 �ɹ�����
 *         : 1 �����������
 *         : 2 �����������
 */
u8 Flash_erase_sector(u16 sectorNo)
{
  /**
   *dest ������ word �� byte[4]
  */
  union
  {
      u32  word;
      u8   byte[4];
  } dest;
  
  /**
   *dest ���ֽ���
  */
  dest.word    = (u32)(sectorNo*(1<<11));

  /**
   *
  */
  FTFL->FCCOB0 = 0x09; //��������
  //����Ŀ���ַ
  FTFL->FCCOB1 = dest.byte[2];
  FTFL->FCCOB2 = dest.byte[1];
  FTFL->FCCOB3 = dest.byte[0];
  
  //ִ����������
  if(1 == Flash_cmd_launch()) //��ִ��������ִ���
      return 1; //�����������
  
  //������sectorʱ �����豸
  if(dest.word <= 0x800)
  {
      
      FTFL->FCCOB0 = 0x06; //д�����ֽ�
    
      //����Ŀ���ַ
      FTFL->FCCOB1 = 0x00;
      FTFL->FCCOB2 = 0x04;
      FTFL->FCCOB3 = 0x0C;
      //����д�� 0xFF 0xFF 0xFF 0xFE ������
      FTFL->FCCOB4 = 0xFF;
      FTFL->FCCOB5 = 0xFF;
      FTFL->FCCOB6 = 0xFF;
      FTFL->FCCOB7 = 0xFE;
      //ִ����������
      if(1 == Flash_cmd_launch()) //��ִ��������ִ���
          return 2; //�����������
  }  
  
  return 0; //�ɹ�����
}

/**
 * @brief flash ��ȡ����
 * @code  //flash ��ȡ����ֵ����
 *        u8 bBuf[6];
 *        Flash_read(200,0,6,bBuf);
 *
 * @endcode         
 * @param   sectorNo  ��ȡ�������
 *          offset    ��ʼƫ��ֵ
 *          cnt       read �ĸ��� count
 *          bBuf      ��ȡ��ŵ�����
 * @retval ��ȡ���������ɹ���־
 *         : false ��ȡʧ��
 *         : true  ��ȡ�ɹ�
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
 * @brief flash д����
 * @code  //flash д����
 *        u8 bBuf[6];
 *        Flash_read(200,0,6,bBuf);
 *
 * @endcode         
 * @param   sectorNo  д�������
 *          offset    ��ʼƫ��ֵ
 *          cnt       write �ĸ��� count
 *          bBuf      д��ŵ�����
 * @retval д���������ɹ���־
 *         : 0  д�ɹ�
 *         : 1  дʧ��
 *         : 2  ����������
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
      return 1; //��ʼƫ��ֵ����4�ı��� дʧ��
  
  FTFL->FCCOB0 = 0x06; //д�����ֽ�
  
  destaddr = (u32)(sectNo*(1<<11) + offset); //Ŀ���ַ
  dest.word = destaddr; //��Ŀ���ַ��Ϊ����
  for(size=0; size<cnt; size+=4, dest.word+=4, buf+=4)
  {
      //����Ŀ���ַ
      FTFL->FCCOB1 = dest.byte[2];
      FTFL->FCCOB2 = dest.byte[1];
      FTFL->FCCOB3 = dest.byte[0];
      
      //����д��
      FTFL->FCCOB4 = buf[3];
      FTFL->FCCOB5 = buf[2];
      FTFL->FCCOB6 = buf[1];
      FTFL->FCCOB7 = buf[0];
      
      //ִ����������
      if(1 == Flash_cmd_launch()) //��ִ��������ִ���
          return 2; //�����������
  }
  
  return 0; //д�����ݳɹ�
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
      return 1; //��ʼƫ��ֵ����4�ı��� дʧ��
  
  FTFL->FCCOB0 = 0x06; //д�����ֽ�
  
  destaddr = (u32)(sectNo*(1<<11) + offset); //Ŀ���ַ
  dest1.word = destaddr; //��Ŀ���ַ��Ϊ����

  //����Ŀ���ַ
  FTFL->FCCOB1 = dest1.byte[2];
  FTFL->FCCOB2 = dest1.byte[1];
  FTFL->FCCOB3 = dest1.byte[0];
  
  destdata=data;
  dest2.word = destdata;
  
  //����д��
  FTFL->FCCOB4 = dest2.byte[3];
  FTFL->FCCOB5 = dest2.byte[2];
  FTFL->FCCOB6 = dest2.byte[1];
  FTFL->FCCOB7 = dest2.byte[0];
  
  //ִ����������
  if(1 == Flash_cmd_launch()) //��ִ��������ִ���
      return 2; //�����������
 
  return 0; //д�����ݳɹ�
}

/**
 * @brief Flash_cmd_launch flsh ����ִ��
 * @code  //flash ����ִ��
 *        Flash_cmd_launch();
 *
 * @endcode         
 * @param  None
 * @retval
 *          0 ����ִ�гɹ�
 *          1 ����ִ��ʧ��
 */
u32 Flash_cmd_launch(void)
{
  
  /**
   *flash memory module �Ĵ������� FTFL
  */ 
  FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK|FTFL_FSTAT_ACCERR_MASK|FTFL_FSTAT_FPVIOL_MASK;

  //�ȴ��������
  while(!(FTFL->FSTAT &(FTFL_FSTAT_CCIF_MASK)));

  //�������־
  if(FTFL->FSTAT & (FTFL_FSTAT_ACCERR_MASK|FTFL_FSTAT_FPVIOL_MASK|FTFL_FSTAT_MGSTAT0_MASK))
      return 1; //����ִ��ʧ��

  return 0; //����ִ�гɹ�
}
