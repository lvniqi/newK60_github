///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:46:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_FLASH.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_FLASH.c" -D IAR
//        -D LPLD_K60 -lCN
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\List\"
//        -lB
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\List\"
//        -o
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files\IAR
//        Systems\Embedded Workbench 7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\app\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\cpu\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\cpu\headers\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\adc16\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\enet\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\lptmr\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\mcg\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\pmc\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\rtc\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\uart\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\drivers\wdog\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\platforms\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\LPLD\FatFs\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\LPLD\USB\"
//        -I
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\..\..\..\lib\iar_config_files\"
//        -Ol
//    List file    =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\FLASH\List\HAL_FLASH.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN assert_failed

        PUBLIC flash_erase_sector
        PUBLIC flash_init
        PUBLIC flash_write
        PUBLIC flash_write_buf

// C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\HAL_FLASH.c
//    1 /*
//    2  * --------------"��������K60�ײ��"-----------------
//    3  *
//    4  * ����Ӳ��ƽ̨:LPLD_K60 Card
//    5  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    6  * ��������:http://laplenden.taobao.com
//    7  * ��˾�Ż�:http://www.lpld.cn
//    8  *
//    9  * �ļ���: HAL_FLASH.c
//   10  * ��;: ��������K60 FLASH
//   11  * ����޸�����: 20120730
//   12  *
//   13  * ������ʹ��Э��:
//   14  *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
//   15  *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
//   16  *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   17  */
//   18 
//   19 #include "HAL_FLASH.h"
//   20 
//   21 
//   22 //Flash����궨�壬�ڲ�ʹ��
//   23 #define   RD1BLK    0x00   // ������Flash
//   24 #define   RD1SEC    0x01   // ����������
//   25 #define   PGMCHK    0x02   // д����
//   26 #define   RDRSRC    0x03   // ��Ŀ������
//   27 #define   PGM4      0x06   // д�볤��
//   28 #define   ERSBLK    0x08   // ��������Flash
//   29 #define   ERSSCR    0x09   // ����Flash����
//   30 #define   PGMSEC    0x0B   // д������
//   31 #define   RD1ALL    0x40   // �����еĿ�
//   32 #define   RDONCE    0x41   // ֻ��һ��
//   33 #define   PGMONCE   0x43   // ֻдһ��
//   34 #define   ERSALL    0x44   // �������п�
//   35 #define   VFYKEY    0x45   // ��֤���ŷ���Կ��
//   36 #define   PGMPART   0x80   // д�����
//   37 #define   SETRAM    0x81   // �趨FlexRAM����
//   38 
//   39 
//   40 //=================�ڲ�����ʵ��=============================================
//   41 
//   42 //==========================================================================
//   43 //�������ƣ�flash_cmd_launch
//   44 //�������أ�0-�ɹ� 1-ʧ��
//   45 //����˵������
//   46 //���ܸ�Ҫ������Flash����
//   47 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   48 __ramfunc static uint32 flash_cmd_launch(void)
//   49 {
//   50     
//   51     FTFL_FSTAT = 	(0
//   52 				  	|	FTFL_FSTAT_CCIF_MASK 		// ��������
//   53 					|	FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
//   54 					| 	FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
//   55 					);	
flash_cmd_launch:
        MOVS     R0,#+176
        LDR.N    R1,??DataTable4  ;; 0x40020000
        STRB     R0,[R1, #+0]
//   56     									
//   57     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������
??flash_cmd_launch_0:
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_cmd_launch_0
//   58 
//   59     // �������־
//   60     if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+49
        TST      R0,R1
        BEQ.N    ??flash_cmd_launch_1
//   61         return 1 ; 				//ִ���������
        MOVS     R0,#+1
        B.N      ??flash_cmd_launch_2
//   62   
//   63     return 0; 					//ִ������ɹ�
??flash_cmd_launch_1:
        MOVS     R0,#+0
??flash_cmd_launch_2:
        BX       LR               ;; return
//   64 }
//   65 
//   66 //===========================================================================
//   67 
//   68 //=================�ⲿ�ӿں���==============================================
//   69 //==========================================================================
//   70 //�������ƣ�flash_init
//   71 //�������أ���
//   72 //����˵������
//   73 //���ܸ�Ҫ����ʼ��flashģ��
//   74 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   75 __ramfunc void flash_init(void)
//   76 {
//   77 	// ���FlashԤ��ȡ������
//   78     FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
flash_init:
        LDR.N    R0,??DataTable4_1  ;; 0x4001f004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable4_1  ;; 0x4001f004
        STR      R0,[R1, #+0]
//   79     FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
        LDR.N    R0,??DataTable4_2  ;; 0x4001f008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable4_2  ;; 0x4001f008
        STR      R0,[R1, #+0]
//   80     
//   81     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������
??flash_init_0:
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_init_0
//   82     
//   83 	FTFL_FSTAT = 	(0
//   84 					|	FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
//   85 					| 	FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
//   86 					);	
        MOVS     R0,#+48
        LDR.N    R1,??DataTable4  ;; 0x40020000
        STRB     R0,[R1, #+0]
//   87 }
        BX       LR               ;; return
//   88 
//   89 //==========================================================================
//   90 //�������ƣ�flash_erase_sector
//   91 //�������أ�����ִ��ִ��״̬��0=��������0=�쳣��
//   92 //����˵����sectorNo�������ţ�K60N512ʵ��ʹ��0~255��
//   93 //���ܸ�Ҫ������ָ��flash����
//   94 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   95 __ramfunc uint8 flash_erase_sector(uint16 sectorNo)
//   96 {
flash_erase_sector:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   97     Dtype	addr;	
//   98 	addr.DW = (uint32)(sectorNo<<11);	//ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024 
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+11
        STR      R0,[SP, #+0]
//   99     
//  100     //dest.word    = (uint32)(sectorNo<<11);	//ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024 
//  101 
//  102     // ���ò�������
//  103     FTFL_FCCOB0 = ERSSCR; // ������������
        MOVS     R0,#+9
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  104     
//  105     // ����Ŀ���ַ
//  106     FTFL_FCCOB1 = addr.B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  107     FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  108     FTFL_FCCOB3 = addr.B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  109     
//  110     // ִ����������
//  111     if(1 == flash_cmd_launch())    //��ִ��������ִ���
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_erase_sector_0
//  112         return 1;     //�����������
        MOVS     R0,#+1
        B.N      ??flash_erase_sector_1
//  113    
//  114     // ������sector0ʱ��������豸
//  115     if(sectorNo ==0)
??flash_erase_sector_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??flash_erase_sector_2
//  116     {
//  117         // д��4�ֽ�
//  118         FTFL_FCCOB0 = PGM4; 
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  119         // ����Ŀ���ַ
//  120         FTFL_FCCOB1 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  121         FTFL_FCCOB2 = 0x04;
        MOVS     R0,#+4
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  122         FTFL_FCCOB3 = 0x0C;
        MOVS     R0,#+12
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  123         // ����
//  124         FTFL_FCCOB4 = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  125         FTFL_FCCOB5 = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  126         FTFL_FCCOB6 = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  127         FTFL_FCCOB7 = 0xFE;
        MOVS     R0,#+254
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  128         // ִ����������
//  129         if(1 == flash_cmd_launch())  //��ִ��������ִ���
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_erase_sector_2
//  130             return 2;   //�����������
        MOVS     R0,#+2
        B.N      ??flash_erase_sector_1
//  131     }  
//  132     
//  133     return 0;  //�ɹ�����
??flash_erase_sector_2:
        MOVS     R0,#+0
??flash_erase_sector_1:
        POP      {R1,R2,R4,PC}    ;; return
//  134 }
//  135 
//  136 //==========================================================================
//  137 //�������ƣ�flash_write
//  138 //�������أ�����ִ��״̬��0=��������0=�쳣��
//  139 //����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
//  140 //         offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��
//  141 //         cnt��д���ֽ���Ŀ��0~2043��
//  142 //         buf��Դ���ݻ������׵�ַ
//  143 //���ܸ�Ҫ��flashд�����
//  144 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  145 __ramfunc uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
//  146 {
flash_write:
        PUSH     {R2-R6,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R4,R2
//  147 	Dtype	addr;	
//  148     Dtype	Data;
//  149 	
//  150 	ASSERT(offset%4 == 0);			//ƫ��������Ϊ4�ı���
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        CMP      R1,#+0
        BEQ.N    ??flash_write_0
        MOVS     R1,#+150
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  151 									//�˴���ʾ���棬���ǰ�ȫ�ġ���
//  152 	ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
??flash_write_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2048
        BLE.N    ??flash_write_1
        MOVS     R1,#+152
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  153 									//�˴���ʾ���棬���ǰ�ȫ�ġ���
//  154 	
//  155     addr.DW = (uint32)((sectorNo<<11) + offset);		//�����ַ
??flash_write_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+11
        UXTAH    R0,R0,R6
        STR      R0,[SP, #+4]
//  156 	Data.DW	= data;	
        STR      R4,[SP, #+0]
//  157 	    
//  158     FTFL_FCCOB0 = PGM4;				// ����д������
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  159 
//  160 	FTFL_FCCOB1 = addr.B[2];		// ����Ŀ���ַ
        LDRB     R0,[SP, #+6]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  161 	FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+5]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  162 	FTFL_FCCOB3 = addr.B[0];
        LDRB     R0,[SP, #+4]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  163 
//  164 
//  165 	FTFL_FCCOB4 = Data.B[3];        // ����д������
        LDRB     R0,[SP, #+3]
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  166 	FTFL_FCCOB5 = Data.B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  167 	FTFL_FCCOB6 = Data.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  168 	FTFL_FCCOB7 = Data.B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  169 	
//  170 	if(1 == flash_cmd_launch()) 	return 2;  //д���������
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_2
        MOVS     R0,#+2
        B.N      ??flash_write_3
//  171 
//  172     return 0;  //�ɹ�ִ��
??flash_write_2:
        MOVS     R0,#+0
??flash_write_3:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  173 }
//  174 
//  175 
//  176 //==========================================================================
//  177 //�������ƣ�flash_write
//  178 //�������أ�����ִ��״̬��0=��������0=�쳣��
//  179 //����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
//  180 //         offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��
//  181 //         cnt��д���ֽ���Ŀ��0~2043��
//  182 //         buf��Դ���ݻ������׵�ַ
//  183 //���ܸ�Ҫ��flashд�����
//  184 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  185 __ramfunc uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
//  186 {
flash_write_buf:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R4,R2
        MOVS     R5,R3
//  187     uint32 size;
//  188  
//  189 	Dtype	addr;	
//  190     
//  191 	ASSERT(offset%4 == 0);			//ƫ��������Ϊ4�ı���
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R7,R0
        MLS      R1,R1,R0,R7
        CMP      R1,#+0
        BEQ.N    ??flash_write_buf_0
        MOVS     R1,#+191
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  192 									//�˴���ʾ���棬���ǰ�ȫ�ġ���
//  193 	ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
??flash_write_buf_0:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+2048
        BLE.N    ??flash_write_buf_1
        MOVS     R1,#+193
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  194 									//�˴���ʾ���棬���ǰ�ȫ�ġ���
//  195 	
//  196     addr.DW = (uint32)((sectorNo<<11) + offset);		//�����ַ
??flash_write_buf_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R0,R6,#+11
        UXTAH    R0,R0,R7
        STR      R0,[SP, #+0]
//  197 	
//  198     // ����д������
//  199     FTFL_FCCOB0 = PGM4;
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  200 
//  201     for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
        MOVS     R6,#+0
        B.N      ??flash_write_buf_2
??flash_write_buf_3:
        ADDS     R6,R6,#+4
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+4
        STR      R0,[SP, #+0]
        ADDS     R5,R5,#+4
??flash_write_buf_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R6,R4
        BCS.N    ??flash_write_buf_4
//  202     {
//  203         
//  204         FTFL_FCCOB1 = addr.B[2];						// ����Ŀ���ַ
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  205         FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  206         FTFL_FCCOB3 = addr.B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  207  
//  208         FTFL_FCCOB4 = buf[3];							// ��������
        LDRB     R0,[R5, #+3]
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  209         FTFL_FCCOB5 = buf[2];
        LDRB     R0,[R5, #+2]
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  210         FTFL_FCCOB6 = buf[1];
        LDRB     R0,[R5, #+1]
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  211         FTFL_FCCOB7 = buf[0];
        LDRB     R0,[R5, #+0]
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  212         
//  213         if(1 == flash_cmd_launch()) 
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_buf_3
//  214             return 2;  									//д���������
        MOVS     R0,#+2
        B.N      ??flash_write_buf_5
//  215     }
//  216     
//  217     return 0;  //�ɹ�ִ��
??flash_write_buf_4:
        MOVS     R0,#+0
??flash_write_buf_5:
        POP      {R1,R4-R7,PC}    ;; return
//  218 }

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4:
        DC32     0x40020000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_1:
        DC32     0x4001f004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_2:
        DC32     0x4001f008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_3:
        DC32     0x40020007

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_4:
        DC32     0x40020006

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_5:
        DC32     0x40020005

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_6:
        DC32     0x40020004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_7:
        DC32     0x4002000b

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_8:
        DC32     0x4002000a

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_9:
        DC32     0x40020009

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_10:
        DC32     0x40020008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_11:
        DC32     `?<Constant "C:\\\\Users\\\\zxf\\\\Desktop\\\\...">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\zxf\\\\Desktop\\\\...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 7AH, 78H, 66H, 5CH, 44H, 65H, 73H
        DC8 6BH, 74H, 6FH, 70H, 5CH, 38H, 2EH, 31H
        DC8 30H, 5CH, 37H, 2EH, 31H, 37H, 28H, 43H
        DC8 43H, 44H, 0D0H, 0DEH, 0B8H, 0C4H, 29H, 5CH
        DC8 6CH, 69H, 62H, 5CH, 4CH, 50H, 4CH, 44H
        DC8 5CH, 48H, 41H, 4CH, 5FH, 46H, 4CH, 41H
        DC8 53H, 48H, 2EH, 63H, 0
        DC8 0, 0, 0

        END
//  219 
//  220 
//  221 
//  222 
//  223 //==========================================================================
// 
//  64 bytes in section .rodata
// 532 bytes in section .textrw
// 
// 532 bytes of CODE  memory
//  64 bytes of CONST memory
//
//Errors: none
//Warnings: 8
