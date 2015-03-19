/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_FLASH.c
 * ��;: ��������K60 FLASH
 * ����޸�����: 20120730
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */

#include "HAL_FLASH.h"

/*
 * LPLD_Flash_Init
 * Flashģ���ʼ��
 * 
 * ����:
 *    ��
 *
 * ���:
 *    ��
 */
void LPLD_Flash_Init(void)
{
  //���Flash���ʴ���
  if (FTFL_FSTAT & FTFL_FSTAT_ACCERR_MASK)
  {
    FTFL_FSTAT |= FTFL_FSTAT_ACCERR_MASK;       //��������־
  }
  //��鱣������
  else if (FTFL_FSTAT & FTFL_FSTAT_FPVIOL_MASK)
  {
    FTFL_FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
  }
  //������ͻ����
  else if (FTFL_FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
  {
    FTFL_FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
  }
  
  //����Flashģ������ݻ���
  FMC_PFB0CR &= ~FMC_PFB0CR_B0DCE_MASK;
  FMC_PFB1CR &= ~FMC_PFB1CR_B1DCE_MASK;
} 


/*
 * LPLD_Flash_SectorErase
 * ����Flash����
 * 
 * ����:
 *    FlashPtr--������ַָ�룬�������ų���2048
 *
 * ���:
 *    �������
 */
uint8 LPLD_Flash_SectorErase(uint32 FlashPtr)
{
  uint8 Return = FLASH_OK;
  
  //�ȴ�CCIF��1
  while (!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK)){};
  //д�������FCCOB�Ĵ���
  FTFL_FCCOB0 = FLASH_CMD_ERSSCR;
  FTFL_FCCOB1 = (uint8) (FlashPtr >> 16);
  FTFL_FCCOB2 = (uint8)((FlashPtr >> 8 ) & 0xFF);
  FTFL_FCCOB3 = (uint8)( FlashPtr & 0xFF);
  
  //ִ������
  FTFL_FSTAT |= FTFL_FSTAT_CCIF_MASK;    
  //�ȴ��������
  while (!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
  
  //���Flash���ʴ���
  if (FTFL_FSTAT & FTFL_FSTAT_ACCERR_MASK)
  {
    FTFL_FSTAT |= FTFL_FSTAT_ACCERR_MASK;       //��������־
    Return |= FLASH_FACCERR;                    //���·���ֵ
  }
  //���Flash������־
  else if (FTFL_FSTAT & FTFL_FSTAT_FPVIOL_MASK)
  {
    FTFL_FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
    Return |= FLASH_FPVIOL;
  }
  //���Flash����ͻ����
  else if (FTFL_FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
  {
    FTFL_FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
    Return |= FLASH_RDCOLERR;
  }
  //���MGSTAT0�ǿɾ�������
  else if (FTFL_FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
  {
    Return |= FLASH_MGSTAT0;
  } 
  
  return  Return;
}

/*
 * LPLD_Flash_ByteProgram
 * ���Flash
 * 
 * ����:
 *    FlashStartAdd--Flash�����ʼ��ַ
 *    *DataSrcPtr--����Դָ��
 *    NumberOfBytes--�����ֽڳ���
 *
 * ���:
 *    �������
 */
uint8 LPLD_Flash_ByteProgram(uint32 FlashStartAdd, uint32 *DataSrcPtr, uint32 NumberOfBytes)
{
  uint8_t Return = FLASH_OK;
  
  uint32_t size_buffer;
  
  if (NumberOfBytes == 0)
  {
    return FLASH_CONTENTERR;
  }
  else
  {
    size_buffer = (NumberOfBytes - 1)/4 + 1;
  }
  //�ȴ�ֱ��CCIF����
  while (!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK)){};

  while ((size_buffer) && (Return == FLASH_OK))
  {
    //дFLASH���FCCOB
    FTFL_FCCOB0 = FLASH_CMD_PGM4;
    FTFL_FCCOB1 = (uint8_t)(FlashStartAdd >> 16);
    FTFL_FCCOB2 = (uint8_t)((FlashStartAdd >> 8) & 0xFF);
    FTFL_FCCOB3 = (uint8_t)(FlashStartAdd & 0xFF);
    //���K60���ó�ΪС�˸�ʽ���������²���
    FTFL_FCCOB4 = (uint8_t)(*((uint8_t*)DataSrcPtr+3));
    FTFL_FCCOB5 = (uint8_t)(*((uint8_t*)DataSrcPtr+2));
    FTFL_FCCOB6 = (uint8_t)(*((uint8_t*)DataSrcPtr+1));
    FTFL_FCCOB7 = (uint8_t)(*((uint8_t*)DataSrcPtr+0));
    //���K60���ó�Ϊ��˸�ʽ���������²���
    //FTFL_FCCOB4 = (uint8_t)(*((uint_8*)DataSrcPtr+0));
    //FTFL_FCCOB5 = (uint8_t)(*((uint_8*)DataSrcPtr+1));
    //FTFL_FCCOB6 = (uint8_t)(*((uint_8*)DataSrcPtr+2));
    //FTFL_FCCOB7 = (uint8_t)(*((uint_8*)DataSrcPtr+3));
    //����FLASH��������
    FTFL_FSTAT |= FTFL_FSTAT_CCIF_MASK;    
    //�ȴ��������
    while (!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
    
    //���FLASH���ʴ���
    if (FTFL_FSTAT & FTFL_FSTAT_ACCERR_MASK)
    {
        
        FTFL_FSTAT |= FTFL_FSTAT_ACCERR_MASK;
    
        Return |= FLASH_FACCERR;
    }
    //���FLASH��������
    else if (FTFL_FSTAT & FTFL_FSTAT_FPVIOL_MASK)
    {
        FTFL_FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
    
        Return |= FLASH_FPVIOL;
    }
    
    else if (FTFL_FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
    {
        FTFL_FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
    
        Return |= FLASH_RDCOLERR;
    }
    else if (FTFL_FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
    {
        Return |= FLASH_MGSTAT0;
    } 
    size_buffer --;
    (uint32_t*)DataSrcPtr++;
    FlashStartAdd +=4;
  } 
  return  Return;
} 
