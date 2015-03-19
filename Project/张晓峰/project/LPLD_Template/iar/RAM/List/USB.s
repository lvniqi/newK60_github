///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       11/Aug/2014  21:44:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\USB\USB.c
//    Command line =  
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\USB\USB.c" -D IAR
//        -D LPLD_K60 -lCN
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\List\"
//        -lB
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\List\"
//        -o
//        "C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\Obj\"
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
//        C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\project\LPLD_Template\iar\RAM\List\USB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CDC_InterfaceReq_Handler

        PUBLIC BufferPointer
        PUBLIC Configuration_Descriptor
        PUBLIC Device_Descriptor
        PUBLIC EP_IN_Transfer
        PUBLIC EP_OUT_Transfer
        PUBLIC Setup_Pkt
        PUBLIC String_Descriptor0
        PUBLIC String_Descriptor1
        PUBLIC String_Descriptor2
        PUBLIC String_Descriptor3
        PUBLIC String_Table
        PUBLIC USB_EP0_IN_Handler
        PUBLIC USB_EP0_OUT_Handler
        PUBLIC USB_EP0_Stall
        PUBLIC USB_EP_OUT_SizeCheck
        PUBLIC USB_Endpoint_Setup_Handler
        PUBLIC USB_Handler
        PUBLIC USB_Protocol_Handler
        PUBLIC USB_Reset_Handler
        PUBLIC USB_Rev_SetIsr
        PUBLIC USB_Set_Interface
        PUBLIC USB_Setup_Handler
        PUBLIC USB_Stall_Handler
        PUBLIC USB_StdReq_Handler
        PUBLIC cEP_Size
        PUBLIC gu8Dummy
        PUBLIC gu8EP0_IN_EVEN_Buffer
        PUBLIC gu8EP0_IN_ODD_Buffer
        PUBLIC gu8EP0_OUT_EVEN_Buffer
        PUBLIC gu8EP0_OUT_ODD_Buffer
        PUBLIC gu8EP1_IN_EVEN_Buffer
        PUBLIC gu8EP1_IN_ODD_Buffer
        PUBLIC gu8EP1_OUT_EVEN_Buffer
        PUBLIC gu8EP1_OUT_ODD_Buffer
        PUBLIC gu8EP2_IN_EVEN_Buffer
        PUBLIC gu8EP2_IN_ODD_Buffer
        PUBLIC gu8EP2_OUT_EVEN_Buffer
        PUBLIC gu8EP2_OUT_ODD_Buffer
        PUBLIC gu8EP3_IN_EVEN_Buffer
        PUBLIC gu8EP3_IN_ODD_Buffer
        PUBLIC gu8EP3_OUT_EVEN_Buffer
        PUBLIC gu8EP3_OUT_ODD_Buffer
        PUBLIC gu8HALT_EP
        PUBLIC gu8IN_Counter
        PUBLIC gu8Interface
        PUBLIC gu8Status
        PUBLIC gu8USBClearFlags
        PUBLIC gu8USB_Flags
        PUBLIC gu8USB_State
        PUBLIC gu8USB_Toogle_flags
        PUBLIC pu8IN_DataPointer
        PUBLIC tBDTtable
        PUBLIC usb_rev_data_isr

// C:\Users\zxf\Desktop\8.10\7.17(CCD�޸�)\lib\LPLD\USB\USB.c
//    1 /*
//    2  * �ļ���: USB.c
//    3  * ��;: ����USB�ײ�Э�麯���ͱ���
//    4  * ����޸�����: 20121204
//    5  *
//    6  *
//    7  * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ USB.c
//    8  *    �ڱ��ļ��н�USB_Init�����Ƴ�
//    9  *    ��USB_EP_OUT_SizeCheck�����еĻ�����ݳ��Ȳ��ֽ������޸�
//   10  *    ��USB_Reset_Handler�����е�gu8USB_Toogle_flags�����޸�Ϊ0xFE��ԭ����˴���BUG��ʹ�˵��ٽ���һ���ֽ�
//   11  */
//   12 #include "USB.h"
//   13 #include "USB_Desc.h"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Device_Descriptor[18]
Device_Descriptor:
        DATA
        DC8 18, 1, 0, 2, 2, 0, 0, 64, 162, 21, 15, 165, 0, 2, 1, 2, 3, 1, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const String_Descriptor0[4]
String_Descriptor0:
        DATA
        DC8 4, 3, 9, 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const String_Descriptor1[20]
String_Descriptor1:
        DATA
        DC8 20, 3, 76, 0, 97, 0, 112, 0, 108, 0, 101, 0, 110, 0, 100, 0, 101, 0
        DC8 110, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const String_Descriptor2[18]
String_Descriptor2:
        DATA
        DC8 18, 3, 85, 0, 83, 0, 66, 0, 45, 0, 85, 0, 65, 0, 82, 0, 84, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const String_Descriptor3[18]
String_Descriptor3:
        DATA
        DC8 18, 3, 84, 0, 69, 0, 83, 0, 84, 0, 95, 0, 49, 0, 46, 0, 49, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Configuration_Descriptor[67]
Configuration_Descriptor:
        DATA
        DC8 9, 2, 67, 0, 2, 1, 0, 192, 50, 9, 4, 0, 0, 1, 2, 2, 1, 1, 5, 36, 0
        DC8 16, 1, 5, 36, 1, 0, 1, 4, 36, 2, 0, 5, 36, 6, 0, 1, 7, 5, 129, 3
        DC8 64, 0, 2, 9, 4, 1, 0, 2, 10, 0, 0, 1, 7, 5, 130, 2, 64, 0, 0, 7, 5
        DC8 3, 2, 64, 0, 0, 0
//   14 
//   15 //����USB ����������
//   16 //USB������������512�ֽڶ���
//   17 #pragma data_alignment=512
//   18 

        SECTION `.bss`:DATA:REORDER:NOROOT(9)
//   19 tBDT tBDTtable[16]; //Ϊ16�����������仺����������
tBDTtable:
        DS8 128
//   20 
//   21 //����˵�0������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 UINT8 gu8EP0_OUT_ODD_Buffer[EP0_SIZE];
gu8EP0_OUT_ODD_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 UINT8 gu8EP0_OUT_EVEN_Buffer[EP0_SIZE];
gu8EP0_OUT_EVEN_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 UINT8 gu8EP0_IN_ODD_Buffer[EP0_SIZE];
gu8EP0_IN_ODD_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 UINT8 gu8EP0_IN_EVEN_Buffer[EP0_SIZE];
gu8EP0_IN_EVEN_Buffer:
        DS8 64
//   26 //����˵�1������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 UINT8 gu8EP1_OUT_ODD_Buffer[EP1_SIZE];
gu8EP1_OUT_ODD_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 UINT8 gu8EP1_OUT_EVEN_Buffer[EP1_SIZE];
gu8EP1_OUT_EVEN_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 UINT8 gu8EP1_IN_ODD_Buffer[EP1_SIZE];
gu8EP1_IN_ODD_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   30 UINT8 gu8EP1_IN_EVEN_Buffer[EP1_SIZE];
gu8EP1_IN_EVEN_Buffer:
        DS8 64
//   31 //����˵�2������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   32 UINT8 gu8EP2_OUT_ODD_Buffer[EP2_SIZE];
gu8EP2_OUT_ODD_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 UINT8 gu8EP2_OUT_EVEN_Buffer[EP2_SIZE];
gu8EP2_OUT_EVEN_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 UINT8 gu8EP2_IN_ODD_Buffer[EP2_SIZE];
gu8EP2_IN_ODD_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   35 UINT8 gu8EP2_IN_EVEN_Buffer[EP2_SIZE];
gu8EP2_IN_EVEN_Buffer:
        DS8 64
//   36 //����˵�3������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 UINT8 gu8EP3_OUT_ODD_Buffer[EP3_SIZE];
gu8EP3_OUT_ODD_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 UINT8 gu8EP3_OUT_EVEN_Buffer[EP3_SIZE];
gu8EP3_OUT_EVEN_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 UINT8 gu8EP3_IN_ODD_Buffer[EP3_SIZE];
gu8EP3_IN_ODD_Buffer:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   40 UINT8 gu8EP3_IN_EVEN_Buffer[EP3_SIZE];
gu8EP3_IN_EVEN_Buffer:
        DS8 64
//   41 //����˵㻺����ָ��

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   42 UINT8 *BufferPointer[]=
BufferPointer:
        DATA
        DC32 gu8EP0_OUT_ODD_Buffer, gu8EP0_OUT_EVEN_Buffer
        DC32 gu8EP0_IN_ODD_Buffer, gu8EP0_IN_EVEN_Buffer, gu8EP1_OUT_ODD_Buffer
        DC32 gu8EP1_OUT_EVEN_Buffer, gu8EP1_IN_ODD_Buffer
        DC32 gu8EP1_IN_EVEN_Buffer, gu8EP2_OUT_ODD_Buffer
        DC32 gu8EP2_OUT_EVEN_Buffer, gu8EP2_IN_ODD_Buffer
        DC32 gu8EP2_IN_EVEN_Buffer, gu8EP3_OUT_ODD_Buffer
        DC32 gu8EP3_OUT_EVEN_Buffer, gu8EP3_IN_ODD_Buffer
        DC32 gu8EP3_IN_EVEN_Buffer
//   43 {
//   44     gu8EP0_OUT_ODD_Buffer,
//   45     gu8EP0_OUT_EVEN_Buffer,
//   46     gu8EP0_IN_ODD_Buffer,
//   47     gu8EP0_IN_EVEN_Buffer,
//   48     gu8EP1_OUT_ODD_Buffer,
//   49     gu8EP1_OUT_EVEN_Buffer,
//   50     gu8EP1_IN_ODD_Buffer,
//   51     gu8EP1_IN_EVEN_Buffer,
//   52     gu8EP2_OUT_ODD_Buffer,
//   53     gu8EP2_OUT_EVEN_Buffer,
//   54     gu8EP2_IN_ODD_Buffer,
//   55     gu8EP2_IN_EVEN_Buffer,
//   56     gu8EP3_OUT_ODD_Buffer,
//   57     gu8EP3_OUT_EVEN_Buffer,
//   58     gu8EP3_IN_ODD_Buffer,
//   59     gu8EP3_IN_EVEN_Buffer
//   60 };
//   61 //����˵㻺��������

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   62 const UINT8 cEP_Size[]=
cEP_Size:
        DATA
        DC8 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64
//   63 {
//   64     EP0_SIZE,    
//   65     EP0_SIZE,    
//   66     EP0_SIZE,    
//   67     EP0_SIZE,    
//   68     EP1_SIZE,    
//   69     EP1_SIZE,    
//   70     EP1_SIZE,    
//   71     EP1_SIZE,    
//   72     EP2_SIZE,    
//   73     EP2_SIZE,    
//   74     EP2_SIZE,    
//   75     EP2_SIZE,    
//   76     EP3_SIZE,
//   77     EP3_SIZE,
//   78     EP3_SIZE,
//   79     EP3_SIZE
//   80 };
//   81 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   82 const UINT8* String_Table[4]=
String_Table:
        DATA
        DC32 String_Descriptor0, String_Descriptor1, String_Descriptor2
        DC32 String_Descriptor3
//   83 {
//   84     String_Descriptor0,
//   85     String_Descriptor1,
//   86     String_Descriptor2,
//   87     String_Descriptor3
//   88 };
//   89 
//   90 
//   91 /* Global Variables for USB Handling */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   92 UINT8 gu8USB_Flags;        //USB������ɱ�־λ
gu8USB_Flags:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   93 UINT8 gu8USBClearFlags;
gu8USBClearFlags:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   94 UINT8 *pu8IN_DataPointer; //USB���뻺����ָ��
pu8IN_DataPointer:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   95 UINT8 gu8IN_Counter;
gu8IN_Counter:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   96 UINT8 gu8USB_Toogle_flags;//USB���ݷ�ת��־λ
gu8USB_Toogle_flags:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   97 UINT8 gu8Dummy;
gu8Dummy:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   98 UINT16 gu8Status;
gu8Status:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   99 UINT8 gu8Interface;       //USB�ӿڱ�־λ
gu8Interface:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  100 UINT8 gu8HALT_EP;         //USB�˵�ֹͣ��־λ
gu8HALT_EP:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  101 UINT8 gu8USB_State;       //USB���̱�־λ
gu8USB_State:
        DS8 1
//  102 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  103 tUSB_Setup *Setup_Pkt;//����setup���ݰ�ָ��
Setup_Pkt:
        DS8 4
//  104  

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  105 USB_REV_CALLBACK usb_rev_data_isr;
usb_rev_data_isr:
        DS8 4
//  106 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 void USB_Rev_SetIsr(USB_REV_CALLBACK isr)
//  108 {
//  109   usb_rev_data_isr = isr; 
USB_Rev_SetIsr:
        LDR.W    R1,??DataTable14
        STR      R0,[R1, #+0]
//  110 }
        BX       LR               ;; return
//  111 
//  112 /*
//  113 * EP_IN_Transfer
//  114 *   �˵�IN���ͣ��ڲ�ͬUSBģʽ��IN�ĺ��岻ͬ
//  115 *     ��USB����ģʽ�£�USB host��  IN��ʾ  USB Host���� USB Device�����ݰ�
//  116 *     ��USB�豸ģʽ�£�USB Device��IN��ʾ  USB Host�� USB Device�������ݰ�
//  117 *   ��ǰ��USB Deviceģʽ�£��ú�����������Device�豸�������ݰ�
//  118 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 void EP_IN_Transfer(UINT8 u8EP,UINT8 *pu8DataPointer,UINT8 u8DataSize)
//  120 {
EP_IN_Transfer:
        PUSH     {R4,R5}
//  121   UINT8 *pu8EPBuffer;
//  122   UINT8 u8EPSize;     //�˵�����ݳ���
//  123   UINT16 u16Lenght=0;    
        MOVS     R5,#+0
//  124   UINT8 u8EndPointFlag;    
//  125   
//  126   /*������ǰ��������λ��*/
//  127   u8EndPointFlag=u8EP;
        MOVS     R3,R0
//  128   if(u8EP)   //������Ƕ˵�0,
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EP_IN_Transfer_0
//  129     u8EP=(UINT8)(u8EP<<2);
        LSLS     R0,R0,#+2
//  130   u8EP+=2; //EPֵ��2
??EP_IN_Transfer_0:
        ADDS     R0,R0,#+2
//  131   
//  132   pu8EPBuffer=BufferPointer[u8EP];   //����EP��BUFFER��ַ��pu8EPBuffer
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable14_1
        LDR      R4,[R4, R0, LSL #+2]
//  133   
//  134   if(FLAG_CHK(fIN,gu8USBClearFlags)) //���gu8USBClearFlags = 1
        LDR.W    R5,??DataTable14_2
        LDRB     R5,[R5, #+0]
        LSLS     R5,R5,#+31
        BPL.N    ??EP_IN_Transfer_1
//  135   {
//  136       pu8IN_DataPointer = pu8DataPointer; //���û����ݴ洢�����׵�ַ��pu8IN_DataPointer
        LDR.W    R5,??DataTable14_3
        STR      R1,[R5, #+0]
//  137       gu8IN_Counter = u8DataSize;         //���û����ݳ��ȸ�gu8IN_Counter
        LDR.W    R1,??DataTable14_4
        STRB     R2,[R1, #+0]
//  138 
//  139       u16Lenght=(Setup_Pkt->wLength_h<<8)+Setup_Pkt->wLength_l ;//��setup���ݵĳ��ȸ�u16Lenght
        LDR.W    R1,??DataTable14_5
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+7]
        LSLS     R1,R1,#+8
        LDR.W    R5,??DataTable14_5
        LDR      R5,[R5, #+0]
        LDRB     R5,[R5, #+6]
        ADDS     R5,R1,R5
//  140       if((u16Lenght < u8DataSize) && (u8EP==2)) //��������͵����ݳ��ȴ���setup���趨�ĳ��� ͬʱ �˵�ֵ == 2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R5,R2
        BCS.N    ??EP_IN_Transfer_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??EP_IN_Transfer_1
//  141       {
//  142           gu8IN_Counter=Setup_Pkt->wLength_l; //ֻ����setup�еĵ�8λ����
        LDR.W    R1,??DataTable14_5
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+6]
        LDR.W    R2,??DataTable14_4
        STRB     R1,[R2, #+0]
//  143       }
//  144   }
//  145   /*��鷢�ͳ���*/
//  146   if(gu8IN_Counter > cEP_Size[u8EP]) //����������ݰ��ĳ��� ����32�ֽ�ʱ
??EP_IN_Transfer_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable14_6
        LDRB     R1,[R0, R1]
        LDR.W    R2,??DataTable14_4
        LDRB     R2,[R2, #+0]
        CMP      R1,R2
        BCS.N    ??EP_IN_Transfer_2
//  147   {
//  148       u8EPSize = cEP_Size[u8EP];     //����ʱ�˵�ĳ��������ڶ˵��Ĭ�ϳ���
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable14_6
        LDRB     R1,[R0, R1]
//  149       gu8IN_Counter-=cEP_Size[u8EP]; //�����ݰ��ĳ��ȼ���EP_Size
        LDR.W    R2,??DataTable14_4
        LDRB     R2,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R5,??DataTable14_6
        LDRB     R5,[R0, R5]
        SUBS     R2,R2,R5
        LDR.W    R5,??DataTable14_4
        STRB     R2,[R5, #+0]
//  150       FLAG_CLR(fIN,gu8USBClearFlags);//��gu8USBClearFlags����
        LDR.W    R2,??DataTable14_2
        LDRB     R2,[R2, #+0]
        ANDS     R2,R2,#0xFE
        LDR.W    R5,??DataTable14_2
        STRB     R2,[R5, #+0]
        B.N      ??EP_IN_Transfer_3
//  151   }
//  152   else
//  153   { 
//  154       u8EPSize = gu8IN_Counter;      //���С��
??EP_IN_Transfer_2:
        LDR.W    R1,??DataTable14_4
        LDRB     R1,[R1, #+0]
//  155       gu8IN_Counter=0;            
        MOVS     R2,#+0
        LDR.W    R5,??DataTable14_4
        STRB     R2,[R5, #+0]
//  156       FLAG_SET(fIN,gu8USBClearFlags);//��gu8USBClearFlags��һ
        LDR.W    R2,??DataTable14_2
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R5,??DataTable14_2
        STRB     R2,[R5, #+0]
//  157   }
//  158 
//  159   /*���û����������ֵ���Ƶ�EP ��������׼������*/
//  160   tBDTtable[u8EP].Cnt=(u8EPSize);    //������Ҫ���͵����ݳ���
??EP_IN_Transfer_3:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable14_7
        ADDS     R2,R2,R0, LSL #+3
        STRH     R1,[R2, #+2]
        B.N      ??EP_IN_Transfer_4
//  161   
//  162   while(u8EPSize--)
//  163        *pu8EPBuffer++=*pu8IN_DataPointer++; //���û������ݸ�ֵ��EP�洢��
??EP_IN_Transfer_5:
        LDR.W    R2,??DataTable14_3
        LDR      R2,[R2, #+0]
        LDRB     R2,[R2, #+0]
        STRB     R2,[R4, #+0]
        LDR.W    R2,??DataTable14_3
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1
        LDR.W    R5,??DataTable14_3
        STR      R2,[R5, #+0]
        ADDS     R4,R4,#+1
??EP_IN_Transfer_4:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??EP_IN_Transfer_5
//  164                                                            
//  165   if(FLAG_CHK(u8EndPointFlag,gu8USB_Toogle_flags)) //�����Ӧ�˵��gu8USB_Toogle_flags == 1
        LDR.W    R1,??DataTable14_8
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+1
        LSLS     R2,R2,R3
        TST      R1,R2
        BEQ.N    ??EP_IN_Transfer_6
//  166   {
//  167       tBDTtable[u8EP].Stat._byte= kUDATA0;         
        MOVS     R1,#+136
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable14_7
        STRB     R1,[R2, R0, LSL #+3]
//  168       FLAG_CLR(u8EndPointFlag,gu8USB_Toogle_flags);//������Ӧ�˵��gu8USB_Toogle_flags
        LDR.W    R0,??DataTable14_8
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R3
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable14_8
        STRB     R0,[R1, #+0]
        B.N      ??EP_IN_Transfer_7
//  169   } 
//  170   else
//  171   {
//  172       tBDTtable[u8EP].Stat._byte= kUDATA1;          
??EP_IN_Transfer_6:
        MOVS     R1,#+200
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable14_7
        STRB     R1,[R2, R0, LSL #+3]
//  173       FLAG_SET(u8EndPointFlag,gu8USB_Toogle_flags);//��λgu8USB_Toogle_flags
        LDR.W    R0,??DataTable14_8
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R3
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable14_8
        STRB     R0,[R1, #+0]
//  174   }
//  175 }
??EP_IN_Transfer_7:
        POP      {R4,R5}
        BX       LR               ;; return
//  176 
//  177 /*
//  178 * EP_OUT_Transfer
//  179 *   �˵�OUT���ͣ��ڲ�ͬUSBģʽ��OUT�ĺ��岻ͬ
//  180 *     ��USB����ģʽ�£�USB host��  OUT��ʾ  USB Host�� USB Device�������ݰ�
//  181 *     ��USB�豸ģʽ�£�USB Device��OUT��ʾ  USB Host�� USB Device�������ݰ�
//  182 *   ��ǰ��USB Deviceģʽ�£��ú�����������Device�豸�������ݰ�
//  183 *   ����ֵ�����ؽ��յ������ݵĳ���
//  184 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 UINT8 EP_OUT_Transfer(UINT8 u8EP,UINT8 *pu8DataPointer)
//  186 {
EP_OUT_Transfer:
        PUSH     {R4}
//  187     UINT8 *pu8EPBuffer;
//  188     UINT8 u8EPSize; 
//  189     /* ������������λ�� */
//  190     u8EP++;
        ADDS     R0,R0,#+1
//  191     /* ������ʵ�EP���壬EP0�ǿ��Ƶ㣬EP1Ϊ�����жϵ㣬EP2������BULK�� */
//  192     pu8EPBuffer=BufferPointer[u8EP];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable14_1
        LDR      R2,[R2, R0, LSL #+2]
//  193     
//  194     u8EPSize=tBDTtable[u8EP].Cnt;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable14_7
        ADDS     R0,R3,R0, LSL #+3
        LDRH     R3,[R0, #+2]
//  195     u8EP=u8EPSize;
        MOVS     R0,R3
        B.N      ??EP_OUT_Transfer_0
//  196     /* ��EP��������ݸ��Ƹ��û��� */
//  197     while(u8EPSize--)
//  198       *pu8DataPointer++=*pu8EPBuffer++;
??EP_OUT_Transfer_1:
        LDRB     R4,[R2, #+0]
        STRB     R4,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??EP_OUT_Transfer_0:
        MOVS     R4,R3
        SUBS     R3,R4,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??EP_OUT_Transfer_1
//  199     return(u8EP);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  200 }
//  201 
//  202 /*
//  203 * USB_EP_OUT_SizeCheck
//  204 *   �˵��������ݳ��ȼ��
//  205 *
//  206 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  207 UINT16 USB_EP_OUT_SizeCheck(UINT8 u8EP)
//  208 {
//  209   UINT8 u8EPSize; 
//  210    /* ��ȡ�������ĳ��� */
//  211   u8EPSize = tBDTtable[u8EP<<2].Cnt;
USB_EP_OUT_SizeCheck:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+2
        LDR.W    R1,??DataTable14_7
        ADDS     R0,R1,R0, LSL #+3
        LDRH     R0,[R0, #+2]
//  212   //u8EPSize=SWAP16(tBDTtable[u8EP<<2].Cnt);
//  213   return(u8EPSize & 0x03FF);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  214 }
//  215 
//  216 /*
//  217 * USB_Set_Interface
//  218 *   USB���ö˵㺯��
//  219 *
//  220 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  221 void USB_Set_Interface(void)
//  222 {
//  223   /* �˵�Ĵ������� */
//  224   USB0_ENDPT1= EP1_VALUE | USB_ENDPT_EPHSHK_MASK; //���ö˵�1Ϊ�ж϶˵�                       
USB_Set_Interface:
        MOVS     R0,#+5
        LDR.W    R1,??DataTable14_9  ;; 0x400720c4
        STRB     R0,[R1, #+0]
//  225   USB0_ENDPT2= EP2_VALUE | USB_ENDPT_EPHSHK_MASK; //���ö˵�2Ϊ���� BULK�˵�                     
        MOVS     R0,#+5
        LDR.W    R1,??DataTable14_10  ;; 0x400720c8
        STRB     R0,[R1, #+0]
//  226   USB0_ENDPT3= EP3_VALUE | USB_ENDPT_EPHSHK_MASK; //���ö˵�3Ϊ��� BULK�˵�                         
        MOVS     R0,#+9
        LDR.W    R1,??DataTable14_11  ;; 0x400720cc
        STRB     R0,[R1, #+0]
//  227   USB0_ENDPT4= EP4_VALUE | USB_ENDPT_EPHSHK_MASK; //��ֹ�˵�                        
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_12  ;; 0x400720d0
        STRB     R0,[R1, #+0]
//  228   USB0_ENDPT5= EP5_VALUE | USB_ENDPT_EPHSHK_MASK; //��ֹ�˵�                         
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_13  ;; 0x400720d4
        STRB     R0,[R1, #+0]
//  229   USB0_ENDPT6= EP6_VALUE | USB_ENDPT_EPHSHK_MASK; //��ֹ�˵�                         
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_14  ;; 0x400720d8
        STRB     R0,[R1, #+0]
//  230 
//  231   /* �˵� 1 BDT ����*/
//  232   tBDTtable[bEP1IN_ODD].Stat._byte= kMCU;//USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_7
        STRB     R0,[R1, #+48]
//  233                                          //����DATA0�����ͻ��߽���
//  234   tBDTtable[bEP1IN_ODD].Cnt = 0x00;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_7
        STRH     R0,[R1, #+50]
//  235   tBDTtable[bEP1IN_ODD].Addr =(UINT32)gu8EP1_IN_ODD_Buffer;
        LDR.W    R0,??DataTable14_15
        LDR.W    R1,??DataTable14_7
        STR      R0,[R1, #+52]
//  236 
//  237   /* �˵� 2 BDT ����*/
//  238   tBDTtable[bEP2IN_ODD].Stat._byte= kMCU;//USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_7
        STRB     R0,[R1, #+80]
//  239                                          //����DATA0�����ͻ��߽���  
//  240   tBDTtable[bEP2IN_ODD].Cnt = 0x00;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_7
        STRH     R0,[R1, #+82]
//  241   tBDTtable[bEP2IN_ODD].Addr =(UINT32)gu8EP2_IN_ODD_Buffer;            
        LDR.W    R0,??DataTable14_16
        LDR.W    R1,??DataTable14_7
        STR      R0,[R1, #+84]
//  242 
//  243   /* �˵� 3 BDT ����*/
//  244   tBDTtable[bEP3OUT_ODD].Stat._byte= kSIE;//USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+128
        LDR.W    R1,??DataTable14_7
        STRB     R0,[R1, #+96]
//  245                                           //ʹ��USB-FSȥ�������ݷ�תͬ��
//  246                                           //����DATA0�����ͻ��߽��� 
//  247   tBDTtable[bEP3OUT_ODD].Cnt = 0xFF;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable14_7
        STRH     R0,[R1, #+98]
//  248   tBDTtable[bEP3OUT_ODD].Addr =(UINT32)gu8EP3_OUT_ODD_Buffer;            
        LDR.W    R0,??DataTable14_17
        LDR.W    R1,??DataTable14_7
        STR      R0,[R1, #+100]
//  249 }
        BX       LR               ;; return
//  250 
//  251 
//  252 /*
//  253 * USB_StdReq_Handler
//  254 *   ���USB���յ�Setup��������ʽʱ�豸���󣨱�׼������ʽ
//  255 *   ���뵽��׼�����жϷ�������
//  256 *
//  257 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  258 void USB_StdReq_Handler(void)
//  259 {
USB_StdReq_Handler:
        PUSH     {R7,LR}
//  260   switch(Setup_Pkt->bRequest) //�жϸ�������ʽ�����ݰ��е�����
        LDR.W    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??USB_StdReq_Handler_0
        CMP      R0,#+5
        BEQ.N    ??USB_StdReq_Handler_1
        CMP      R0,#+6
        BEQ.N    ??USB_StdReq_Handler_2
        CMP      R0,#+8
        BEQ.N    ??USB_StdReq_Handler_3
        CMP      R0,#+9
        BEQ.N    ??USB_StdReq_Handler_4
        B.N      ??USB_StdReq_Handler_5
//  261   {
//  262     case mSET_ADDRESS:          //USB device���õ�ַ����
//  263         EP_IN_Transfer(EP0,0,0);//�˵�0��ʼ�����Լ��ĵ�ַ
??USB_StdReq_Handler_1:
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  264         gu8USB_State=uADDRESS;  //��USB��״̬λ��Ϊ�����õ�ַ״̬
        MOVS     R0,#+3
        LDR.W    R1,??DataTable14_18
        STRB     R0,[R1, #+0]
//  265         break;
        B.N      ??USB_StdReq_Handler_6
//  266   
//  267     case mGET_DESC:             //PC���USB��������������
//  268         switch(Setup_Pkt->wValue_h) //�ж�Setup���ݰ��е�Ҫ���͵�������
??USB_StdReq_Handler_2:
        LDR.W    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        CMP      R0,#+1
        BEQ.N    ??USB_StdReq_Handler_7
        BCC.N    ??USB_StdReq_Handler_8
        CMP      R0,#+3
        BEQ.N    ??USB_StdReq_Handler_9
        BCC.N    ??USB_StdReq_Handler_10
        B.N      ??USB_StdReq_Handler_8
//  269         {
//  270             case mDEVICE:           //Ҫ��ײ��豸�����豸������
//  271                 EP_IN_Transfer(EP0,(UINT8*)Device_Descriptor,sizeof(Device_Descriptor));
??USB_StdReq_Handler_7:
        MOVS     R2,#+18
        LDR.W    R1,??DataTable14_19
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  272                 break;
        B.N      ??USB_StdReq_Handler_11
//  273                 
//  274             case mCONFIGURATION:    //Ҫ��������������
//  275                 EP_IN_Transfer(EP0,(UINT8*)Configuration_Descriptor,sizeof(Configuration_Descriptor));
??USB_StdReq_Handler_10:
        MOVS     R2,#+67
        LDR.W    R1,??DataTable14_20
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  276                 break;
        B.N      ??USB_StdReq_Handler_11
//  277     
//  278             case mSTRING:           //Ҫ�����ַ���������
//  279                 EP_IN_Transfer(EP0,(UINT8*)String_Table[Setup_Pkt->wValue_l],String_Table[Setup_Pkt->wValue_l][0]);
??USB_StdReq_Handler_9:
        LDR.W    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        LDR.W    R1,??DataTable14_21
        LDR      R0,[R1, R0, LSL #+2]
        LDRB     R2,[R0, #+0]
        LDR.W    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        LDR.W    R1,??DataTable14_21
        LDR      R1,[R1, R0, LSL #+2]
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  280                 break;
        B.N      ??USB_StdReq_Handler_11
//  281 
//  282             default:               
//  283                 USB_EP0_Stall();   //��������ǣ�תΪ�˵�0 stall��ֹͣ��ģʽ
??USB_StdReq_Handler_8:
        BL       USB_EP0_Stall
//  284                 break;  
//  285         }
//  286         break;
??USB_StdReq_Handler_11:
        B.N      ??USB_StdReq_Handler_6
//  287 
//  288     case mSET_CONFIG:                             //USB device�豸��������
//  289         gu8Dummy=Setup_Pkt->wValue_h+Setup_Pkt->wValue_l; //��ϳ�16λ����
??USB_StdReq_Handler_4:
        LDR.W    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        LDR.W    R1,??DataTable14_5
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+2]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable14_22
        STRB     R0,[R1, #+0]
//  290         if(Setup_Pkt->wValue_h+Setup_Pkt->wValue_l) 
        LDR.W    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        LDR.W    R1,??DataTable14_5
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+2]
        ADDS     R0,R1,R0
        CMP      R0,#+0
        BEQ.N    ??USB_StdReq_Handler_12
//  291         {
//  292             USB_Set_Interface();                  // ����USB device���ж϶˵㡢bulk�˵�                    
        BL       USB_Set_Interface
//  293             EP_IN_Transfer(EP0,0,0);              // �˵�0��ʼ����
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  294             gu8USB_State=uENUMERATED;             // ����USB��״̬Ϊ�Ա�ö��״̬
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_18
        STRB     R0,[R1, #+0]
//  295         }
//  296         break;
??USB_StdReq_Handler_12:
        B.N      ??USB_StdReq_Handler_6
//  297   
//  298     case mGET_CONFIG:                             //PC���USB���豸��������  
//  299         EP_IN_Transfer(EP0,(UINT8*)&gu8Dummy,1);  //�˵�0������϶��ɵ�16λ����
??USB_StdReq_Handler_3:
        MOVS     R2,#+1
        LDR.W    R1,??DataTable14_22
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  300         break;
        B.N      ??USB_StdReq_Handler_6
//  301 
//  302     case mGET_STATUS:                             //PC���USB��״̬����
//  303         gu8Status=0;                              //����gu8Status = 0
??USB_StdReq_Handler_0:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_23
        STRH     R0,[R1, #+0]
//  304         EP_IN_Transfer(EP0,(UINT8*)&gu8Status,2); //�˵�0����״2���ֽڵ�״̬
        MOVS     R2,#+2
        LDR.W    R1,??DataTable14_23
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  305         break;
        B.N      ??USB_StdReq_Handler_6
//  306 
//  307     default:
//  308         USB_EP0_Stall();                          //��������ǣ�תΪ�˵�0 stall��ֹͣ��ģʽ                                                   
??USB_StdReq_Handler_5:
        BL       USB_EP0_Stall
//  309         break;
//  310   }
//  311 }
??USB_StdReq_Handler_6:
        POP      {R0,PC}          ;; return
//  312 
//  313 
//  314 /*
//  315 * USB_Setup_Handler
//  316 *  USB SETUP�жϣ���ʾһ�ο��ƴ���Ŀ�ʼ��
//  317 *  SETUP�ǿ��ƴ���ĵ�һ�׶Σ�
//  318 *  ��������һ�������ϵͳ����Ŀ��USB�豸��
//  319 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  320 void USB_Setup_Handler(void)
//  321 {
USB_Setup_Handler:
        PUSH     {R7,LR}
//  322   UINT8 u8State;
//  323   FLAG_CLR(0,gu8USB_Toogle_flags);        //��gu8USB_Toogle_flags = 0
        LDR.W    R0,??DataTable14_8
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.W    R1,??DataTable14_8
        STRB     R0,[R1, #+0]
//  324   switch(Setup_Pkt->bmRequestType & 0x1F) //�ж�Setup���ݰ����������ʽ
        LDR.W    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1F
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??USB_Setup_Handler_0
        CMP      R0,#+2
        BEQ.N    ??USB_Setup_Handler_1
        BCC.N    ??USB_Setup_Handler_2
        B.N      ??USB_Setup_Handler_3
//  325   {
//  326       case DEVICE_REQ: //������豸������ʽ
//  327           if((Setup_Pkt->bmRequestType & 0x1F)== STANDARD_REQ) //�豸������ʽ���ڱ�׼������ʽ
??USB_Setup_Handler_0:
        LDR.W    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+31
        TST      R0,R1
        BNE.N    ??USB_Setup_Handler_4
//  328           {            
//  329               USB_StdReq_Handler(); //��׼�����жϷ�����           
        BL       USB_StdReq_Handler
//  330           }
//  331           tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
??USB_Setup_Handler_4:
        MOVS     R0,#+136
        LDR.W    R1,??DataTable14_7
        STRB     R0,[R1, #+0]
//  332           break;        
        B.N      ??USB_Setup_Handler_5
//  333   
//  334       case INTERFACE_REQ://����ǽӿ�������ʽ
//  335           u8State = USB_InterfaceReq_Handler(); //��ǰ�ӿ�����ΪCDC������   
??USB_Setup_Handler_2:
        BL       CDC_InterfaceReq_Handler
//  336   
//  337           if(u8State==uSETUP)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??USB_Setup_Handler_6
//  338               tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
        MOVS     R0,#+136
        LDR.W    R1,??DataTable14_7
        STRB     R0,[R1, #+0]
        B.N      ??USB_Setup_Handler_7
//  339           else
//  340               tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA1;            
??USB_Setup_Handler_6:
        MOVS     R0,#+200
        LDR.W    R1,??DataTable14_7
        STRB     R0,[R1, #+0]
//  341           break;        
??USB_Setup_Handler_7:
        B.N      ??USB_Setup_Handler_5
//  342   
//  343       case ENDPOINT_REQ://����Ƕ˵�����
//  344           USB_Endpoint_Setup_Handler();
??USB_Setup_Handler_1:
        BL       USB_Endpoint_Setup_Handler
//  345           tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
        MOVS     R0,#+136
        LDR.W    R1,??DataTable14_7
        STRB     R0,[R1, #+0]
//  346           break;        
        B.N      ??USB_Setup_Handler_5
//  347   
//  348       default:
//  349           USB_EP0_Stall();  //stall����
??USB_Setup_Handler_3:
        BL       USB_EP0_Stall
//  350           break;        
//  351   }
//  352   FLAG_CLR(USB_CTL_TXSUSPENDTOKENBUSY_SHIFT,USB0_CTL);
??USB_Setup_Handler_5:
        LDR.W    R0,??DataTable14_24  ;; 0x40072094
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xDF
        LDR.W    R1,??DataTable14_24  ;; 0x40072094
        STRB     R0,[R1, #+0]
//  353 }
        POP      {R0,PC}          ;; return
//  354 
//  355 
//  356 /*
//  357 * USB_Endpoint_Setup_Handler
//  358 *   USB�˵�Setup�жϴ�����
//  359 *
//  360 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  361 void USB_Endpoint_Setup_Handler(void)
//  362 {
USB_Endpoint_Setup_Handler:
        PUSH     {R7,LR}
//  363   UINT16 u16Status;
//  364   switch(Setup_Pkt->bRequest)
        LDR.N    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??USB_Endpoint_Setup_Handler_0
        CMP      R0,#+1
        BEQ.N    ??USB_Endpoint_Setup_Handler_1
        CMP      R0,#+3
        BEQ.N    ??USB_Endpoint_Setup_Handler_2
        B.N      ??USB_Endpoint_Setup_Handler_3
//  365   {        
//  366     case GET_STATUS: //��ȡ��ǰ״̬
//  367         if(FLAG_CHK(Setup_Pkt->wIndex_h,gu8HALT_EP))//�ж�gu8HALT_EP�˵�HALT�Ƿ�Ϊ1
??USB_Endpoint_Setup_Handler_0:
        LDR.W    R0,??DataTable14_25
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable14_5
        LDR      R2,[R2, #+0]
        LDRSB    R2,[R2, #+5]
        LSLS     R1,R1,R2
        TST      R0,R1
        BEQ.N    ??USB_Endpoint_Setup_Handler_4
//  368             u16Status=0x0100;
        MOV      R0,#+256
        STRH     R0,[SP, #+0]
        B.N      ??USB_Endpoint_Setup_Handler_5
//  369         else
//  370             u16Status=0x0000;
??USB_Endpoint_Setup_Handler_4:
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
//  371         
//  372         EP_IN_Transfer(EP0,(UINT8*)&u16Status,2); //ͨ���˵�0��PC����״̬
??USB_Endpoint_Setup_Handler_5:
        MOVS     R2,#+2
        ADD      R1,SP,#+0
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  373         break;
        B.N      ??USB_Endpoint_Setup_Handler_6
//  374     
//  375     case CLEAR_FEATURE:
//  376         FLAG_CLR(Setup_Pkt->wIndex_h,gu8HALT_EP); //gu8HALT_EP = 0
??USB_Endpoint_Setup_Handler_1:
        LDR.N    R0,??DataTable14_25
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable14_5
        LDR      R2,[R2, #+0]
        LDRSB    R2,[R2, #+5]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable14_25
        STRB     R0,[R1, #+0]
//  377         EP_IN_Transfer(EP0,0,0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  378         break;
        B.N      ??USB_Endpoint_Setup_Handler_6
//  379     
//  380     case SET_FEATURE:
//  381         FLAG_SET(Setup_Pkt->wIndex_h,gu8HALT_EP); //gu8HALT_EP = 1
??USB_Endpoint_Setup_Handler_2:
        LDR.N    R0,??DataTable14_25
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable14_5
        LDR      R2,[R2, #+0]
        LDRSB    R2,[R2, #+5]
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable14_25
        STRB     R0,[R1, #+0]
//  382         EP_IN_Transfer(EP0,0,0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  383         break;
        B.N      ??USB_Endpoint_Setup_Handler_6
//  384     
//  385     default:
//  386         break;
//  387   }
//  388 }
??USB_Endpoint_Setup_Handler_3:
??USB_Endpoint_Setup_Handler_6:
        POP      {R0,PC}          ;; return
//  389 
//  390 
//  391 /*
//  392 * USB_Handler
//  393 *  USB�����жϷ�����
//  394 *
//  395 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  396 void USB_Handler(void)
//  397 {
USB_Handler:
        PUSH     {R7,LR}
//  398   UINT8 u8EndPoint;
//  399   UINT8 u8IN;
//  400   
//  401   u8IN = USB0_STAT & 0x08;    //��õ�ǰ�Ĵ���״̬��1���ͣ�0����
        LDR.N    R0,??DataTable14_26  ;; 0x40072090
        LDRB     R0,[R0, #+0]
        ANDS     R1,R0,#0x8
//  402   u8EndPoint = USB0_STAT >> 4;//��õ�ǰ�������ƵĶ˵��ַ
        LDR.N    R0,??DataTable14_26  ;; 0x40072090
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
//  403   
//  404   //�˵㷢��PC����ģʽ��ʾ��Ŀ���豸���͵�PC��
//  405   //�˵����PC����ģʽ��ʾPC����Ŀ���豸����
//  406   
//  407   /* Data EndPoints */
//  408   if(u8EndPoint) //��������ʾ�����ݶ˵㣬��Ϊ�˵�0��Ϊ���ƶ˵�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??USB_Handler_0
//  409   {
//  410     if(!u8IN)    //����Ƕ˵����ģʽ
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??USB_Handler_1
//  411     {
//  412       usbMCU_CONTROL(u8EndPoint);         //ת���ɵ�Ƭ������BDT
        MOVS     R1,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+2
        LDR.N    R3,??DataTable14_7
        STRB     R1,[R3, R2, LSL #+3]
//  413       FLAG_SET(u8EndPoint,gu8USB_Flags);  //���� gu8USB_Flags = 1   
        LDR.N    R1,??DataTable14_27
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+1
        LSLS     R0,R2,R0
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable14_27
        STRB     R0,[R1, #+0]
//  414 
//  415       if(usb_rev_data_isr !=(USB_REV_CALLBACK)0)
        LDR.N    R0,??DataTable14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??USB_Handler_1
//  416         usb_rev_data_isr();      
        LDR.N    R0,??DataTable14
        LDR      R0,[R0, #+0]
        BLX      R0
        B.N      ??USB_Handler_1
//  417     }
//  418   }
//  419   /* Control EndPoint */
//  420   else       //����Ƕ˵�0���˵�0��Ϊ���ƶ˵�
//  421   {
//  422     if(u8IN)    //����Ƕ˵㷢��PC����
??USB_Handler_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??USB_Handler_2
//  423     {
//  424       USB_EP0_IN_Handler();  
        BL       USB_EP0_IN_Handler
        B.N      ??USB_Handler_1
//  425     }
//  426     else       //����Ƕ˵����PC����ģʽ
//  427     {
//  428       if(tBDTtable[bEP0OUT_ODD].Stat.RecPid.PID == mSETUP_TOKEN) //������յ�����������
??USB_Handler_2:
        LDR.N    R0,??DataTable14_7
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+13
        BNE.N    ??USB_Handler_3
//  429           USB_Setup_Handler();
        BL       USB_Setup_Handler
        B.N      ??USB_Handler_1
//  430       else     //������յĲ�����������
//  431           USB_EP0_OUT_Handler();
??USB_Handler_3:
        BL       USB_EP0_OUT_Handler
//  432     }
//  433   }
//  434 }
??USB_Handler_1:
        POP      {R0,PC}          ;; return
//  435 
//  436 
//  437 /*
//  438 * USB_EP0_IN_Handler
//  439 *   �˵�0����PC����ģʽ�жϷ���������ʱ�˵�0�ǿ��ƶ˵㣬
//  440 *
//  441 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  442 void USB_EP0_IN_Handler(void)
//  443 {
USB_EP0_IN_Handler:
        PUSH     {R7,LR}
//  444   if(gu8USB_State == uADDRESS)        //�����ǰUSB���ڵ�ַ״̬
        LDR.N    R0,??DataTable14_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??USB_EP0_IN_Handler_0
//  445   {
//  446     USB0_ADDR = Setup_Pkt->wValue_l; //��Setup_Pkt��ֵ��USB��ַ�Ĵ���
        LDR.N    R0,??DataTable14_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        LDR.N    R1,??DataTable14_28  ;; 0x40072098
        STRB     R0,[R1, #+0]
//  447     gu8USB_State = uREADY;           //�ı䵱ǰUSB״̬
        MOVS     R0,#+4
        LDR.N    R1,??DataTable14_18
        STRB     R0,[R1, #+0]
//  448     FLAG_SET(fIN,gu8USBClearFlags);  //��gu8USBClearFlags����Ϊ1
        LDR.N    R0,??DataTable14_2
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable14_2
        STRB     R0,[R1, #+0]
//  449   }
//  450   EP_IN_Transfer(0,0,0);             //�˵�0��ʼ����
??USB_EP0_IN_Handler_0:
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       EP_IN_Transfer
//  451 }
        POP      {R0,PC}          ;; return
//  452 
//  453 
//  454 /*
//  455 * USB_EP0_Stall
//  456 *   �˵�0 stallֹͣ����
//  457 *
//  458 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  459 void USB_EP0_Stall(void)
//  460 {
//  461   FLAG_SET(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);  // USB0_ENDPT0�� STALL =1                
USB_EP0_Stall:
        LDR.N    R0,??DataTable14_29  ;; 0x400720c0
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable14_29  ;; 0x400720c0
        STRB     R0,[R1, #+0]
//  462   tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0;    // USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+136
        LDR.N    R1,??DataTable14_7
        STRB     R0,[R1, #+0]
//  463                                                   //ʹ��USB-FSȥ�������ݷ�תͬ��
//  464                                                   //����DATA1�����ͻ��߽��� 
//  465   tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;          //����EP0�ĳ���32�ֽ�
        MOVS     R0,#+64
        LDR.N    R1,??DataTable14_7
        STRH     R0,[R1, #+2]
//  466 }
        BX       LR               ;; return
//  467 
//  468 
//  469 /*
//  470 * USB_EP0_OUT_Handler
//  471 *   �˵�0����PC���������жϷ�����
//  472 *
//  473 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  474 void USB_EP0_OUT_Handler(void)
//  475 {   
//  476   FLAG_SET(0,gu8USB_Flags);   //��EP0��gu8USB_Flags��1
USB_EP0_OUT_Handler:
        LDR.N    R0,??DataTable14_27
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable14_27
        STRB     R0,[R1, #+0]
//  477   tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0;   //USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+136
        LDR.N    R1,??DataTable14_7
        STRB     R0,[R1, #+0]
//  478                                                  //ʹ��USB-FSȥ�������ݷ�תͬ��
//  479                                                  //����DATA1�����ͻ��߽���  
//  480 }
        BX       LR               ;; return
//  481 
//  482 
//  483 /*
//  484 *   USB_Stall_Handler
//  485 *     ���USB������Deviceģʽ��������stall֤�������䲻����ɴ��䡣
//  486 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  487 void USB_Stall_Handler(void) 
//  488 {
//  489   if(FLAG_CHK(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0)) //���USB�Ķ˵�0��stallλ�Ƿ���λ
USB_Stall_Handler:
        LDR.N    R0,??DataTable14_29  ;; 0x400720c0
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??USB_Stall_Handler_0
//  490       FLAG_CLR(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);//��ն˵�0��stallλ
        LDR.N    R0,??DataTable14_29  ;; 0x400720c0
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFD
        LDR.N    R1,??DataTable14_29  ;; 0x400720c0
        STRB     R0,[R1, #+0]
//  491   FLAG_SET(USB_ISTAT_STALL_SHIFT,USB0_ISTAT);       //���ȫ��״̬�Ĵ����е�Stallλ
??USB_Stall_Handler_0:
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable14_30  ;; 0x40072080
        STRB     R0,[R1, #+0]
//  492 }
        BX       LR               ;; return
//  493 
//  494 
//  495 /*
//  496 *   USB_Reset_Handler
//  497 *     USB��λ�жϷ�����,�ڸú����н������������־λ��
//  498 *   ��ֹ����EP(�˵�Ĵ���)��ͬʱ��EP0��ʼΪ���ƶ˵�
//  499 *   ����EP0�����롢�����ż������г�ʼ����
//  500 *   ����USB�����жϡ�USB��һ֡�����жϡ�USB�����жϡ�USB��λ�ж�
//  501 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  502 void USB_Reset_Handler(void)
//  503 {
//  504   /*���������־λ*/
//  505   gu8USBClearFlags=0xFF;
USB_Reset_Handler:
        MOVS     R0,#+255
        LDR.N    R1,??DataTable14_2
        STRB     R0,[R1, #+0]
//  506   gu8USB_Toogle_flags=0xFE;
        MOVS     R0,#+254
        LDR.N    R1,??DataTable14_8
        STRB     R0,[R1, #+0]
//  507   
//  508   /*��ֹ����EP�Ĵ���*/
//  509   USB0_ENDPT1=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_9  ;; 0x400720c4
        STRB     R0,[R1, #+0]
//  510   USB0_ENDPT2=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_10  ;; 0x400720c8
        STRB     R0,[R1, #+0]
//  511   USB0_ENDPT3=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_11  ;; 0x400720cc
        STRB     R0,[R1, #+0]
//  512   USB0_ENDPT4=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_12  ;; 0x400720d0
        STRB     R0,[R1, #+0]
//  513   USB0_ENDPT5=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_13  ;; 0x400720d4
        STRB     R0,[R1, #+0]
//  514   USB0_ENDPT6=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_14  ;; 0x400720d8
        STRB     R0,[R1, #+0]
//  515 
//  516   /*�˵�0 BDT �����˵�����*/
//  517   tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;   // EP0 OUT BDT ����
        MOVS     R0,#+64
        LDR.N    R1,??DataTable14_7
        STRH     R0,[R1, #+2]
//  518   tBDTtable[bEP0OUT_ODD].Addr =(UINT32)gu8EP0_OUT_ODD_Buffer;
        LDR.N    R0,??DataTable14_31
        LDR.N    R1,??DataTable14_7
        STR      R0,[R1, #+4]
//  519   tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA1;//USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+200
        LDR.N    R1,??DataTable14_7
        STRB     R0,[R1, #+0]
//  520                                               //ʹ��USB-FSȥ�������ݷ�תͬ��
//  521                                               //����DATA1�����ͻ��߽���        
//  522    
//  523   tBDTtable[bEP0OUT_EVEN].Cnt = EP0_SIZE; // EP0 OUT BDT ����
        MOVS     R0,#+64
        LDR.N    R1,??DataTable14_7
        STRH     R0,[R1, #+10]
//  524   tBDTtable[bEP0OUT_EVEN].Addr =(UINT32)gu8EP0_OUT_EVEN_Buffer;
        LDR.N    R0,??DataTable14_32
        LDR.N    R1,??DataTable14_7
        STR      R0,[R1, #+12]
//  525   tBDTtable[bEP0OUT_EVEN].Stat._byte = kUDATA1;//USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+200
        LDR.N    R1,??DataTable14_7
        STRB     R0,[R1, #+8]
//  526                                                //ʹ��USB-FSȥ�������ݷ�תͬ��
//  527                                                //����DATA1�����ͻ��߽���       
//  528    
//  529   tBDTtable[bEP0IN_ODD].Cnt = EP0_SIZE;   // EP0 IN BDT ����     
        MOVS     R0,#+64
        LDR.N    R1,??DataTable14_7
        STRH     R0,[R1, #+18]
//  530   tBDTtable[bEP0IN_ODD].Addr =(UINT32)gu8EP0_IN_ODD_Buffer;      
        LDR.N    R0,??DataTable14_33
        LDR.N    R1,??DataTable14_7
        STR      R0,[R1, #+20]
//  531   tBDTtable[bEP0IN_ODD].Stat._byte = kUDATA0;//USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+136
        LDR.N    R1,??DataTable14_7
        STRB     R0,[R1, #+16]
//  532                                              //ʹ��USB-FSȥ�������ݷ�תͬ��
//  533                                              //����DATA0�����ͻ��߽��� 
//  534    
//  535   tBDTtable[bEP0IN_EVEN].Cnt = EP0_SIZE;  // EP0 IN BDT ����            
        MOVS     R0,#+64
        LDR.N    R1,??DataTable14_7
        STRH     R0,[R1, #+26]
//  536   tBDTtable[bEP0IN_EVEN].Addr =(UINT32)gu8EP0_IN_EVEN_Buffer;      
        LDR.N    R0,??DataTable14_34
        LDR.N    R1,??DataTable14_7
        STR      R0,[R1, #+28]
//  537   tBDTtable[bEP0IN_EVEN].Stat._byte = kUDATA0;//USB-FS ��ר��Ȩ���� BD
        MOVS     R0,#+136
        LDR.N    R1,??DataTable14_7
        STRB     R0,[R1, #+24]
//  538                                               //ʹ��USB-FSȥ�������ݷ�תͬ��
//  539                                               //����DATA0�����ͻ��߽���        
//  540   
//  541   USB0_ENDPT0=0x0D; //ʹ�ܶ˵�0
        MOVS     R0,#+13
        LDR.N    R1,??DataTable14_29  ;; 0x400720c0
        STRB     R0,[R1, #+0]
//  542   
//  543   USB0_ERRSTAT=0xFF;//������д����־λ
        MOVS     R0,#+255
        LDR.N    R1,??DataTable14_35  ;; 0x40072088
        STRB     R0,[R1, #+0]
//  544   
//  545   USB0_ISTAT=0xFF;  //�������USB�жϱ�־λ
        MOVS     R0,#+255
        LDR.N    R1,??DataTable14_30  ;; 0x40072080
        STRB     R0,[R1, #+0]
//  546 
//  547   USB0_ADDR=0x00;   // ����USBȱʡ��ֵΪ0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_28  ;; 0x40072098
        STRB     R0,[R1, #+0]
//  548 
//  549   USB0_ERREN=0xFF;  // ʹ�����д����ж�Դ
        MOVS     R0,#+255
        LDR.N    R1,??DataTable14_36  ;; 0x4007208c
        STRB     R0,[R1, #+0]
//  550 
//  551   /*ʹ��USB�ж�*/
//  552   FLAG_SET(USB_INTEN_TOKDNEEN_SHIFT,USB0_INTEN);  //ʹ��USB TOKDNE�ж� 
        LDR.N    R0,??DataTable14_37  ;; 0x40072084
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable14_37  ;; 0x40072084
        STRB     R0,[R1, #+0]
//  553   FLAG_SET(USB_INTEN_SOFTOKEN_SHIFT,USB0_INTEN);  //ʹ��USB SOFTOK�ж� 
        LDR.N    R0,??DataTable14_37  ;; 0x40072084
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable14_37  ;; 0x40072084
        STRB     R0,[R1, #+0]
//  554   FLAG_SET(USB_INTEN_ERROREN_SHIFT,USB0_INTEN);   //ʹ��USB�����ж� 
        LDR.N    R0,??DataTable14_37  ;; 0x40072084
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable14_37  ;; 0x40072084
        STRB     R0,[R1, #+0]
//  555   FLAG_SET(USB_INTEN_USBRSTEN_SHIFT,USB0_INTEN);  //ʹ��USB��λ�ж�  
        LDR.N    R0,??DataTable14_37  ;; 0x40072084
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable14_37  ;; 0x40072084
        STRB     R0,[R1, #+0]
//  556 }
        BX       LR               ;; return
//  557 
//  558 
//  559 /*
//  560 * USB_Protocol_Handler
//  561 *   USBЭ���жϷ�����
//  562 *      �ڸú����е���USB�ĵײ�Э��
//  563 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  564 void USB_Protocol_Handler(void)
//  565 {
USB_Protocol_Handler:
        PUSH     {R7,LR}
//  566   uint8 err;
//  567   FLAG_SET(1,GPIOC_PDOR);
        LDR.N    R0,??DataTable14_38  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable14_38  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  568   /*USB �����ʼ��������Ƚ��븴λ�ж� */
//  569   if(FLAG_CHK(USB_ISTAT_USBRST_SHIFT,USB0_ISTAT))//����USB��λ�ж�
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??USB_Protocol_Handler_0
//  570   { 
//  571     USB_Reset_Handler();                         //����USB��λ�жϷ�����
        BL       USB_Reset_Handler
//  572     return;
        B.N      ??USB_Protocol_Handler_1
//  573   }
//  574   if(FLAG_CHK(USB_ISTAT_SOFTOK_SHIFT,USB0_ISTAT))//����USB SOFTOK�ж�
??USB_Protocol_Handler_0:
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??USB_Protocol_Handler_2
//  575   {
//  576     USB0_ISTAT = USB_ISTAT_SOFTOK_MASK;          //���SOFTOK��־λ
        MOVS     R0,#+4
        LDR.N    R1,??DataTable14_30  ;; 0x40072080
        STRB     R0,[R1, #+0]
//  577   }
//  578   if(FLAG_CHK(USB_ISTAT_STALL_SHIFT,USB0_ISTAT)) //����USBֹͣ�����ݴ���
??USB_Protocol_Handler_2:
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??USB_Protocol_Handler_3
//  579   {
//  580     USB_Stall_Handler();                         //����Stall�жϷ�����
        BL       USB_Stall_Handler
//  581   }
//  582   if(FLAG_CHK(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT))//����USB�����ж�
??USB_Protocol_Handler_3:
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??USB_Protocol_Handler_4
//  583   {
//  584     FLAG_SET(USB_CTL_ODDRST_SHIFT,USB0_CTL);     //��λ����BDT ODD��Ȼ���������EVEN BDT
        LDR.N    R0,??DataTable14_24  ;; 0x40072094
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable14_24  ;; 0x40072094
        STRB     R0,[R1, #+0]
//  585     USB_Handler();
        BL       USB_Handler
//  586     FLAG_SET(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT); //����USB���Ʊ�־λ
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable14_30  ;; 0x40072080
        STRB     R0,[R1, #+0]
//  587   }
//  588   if(FLAG_CHK(USB_ISTAT_SLEEP_SHIFT,USB0_ISTAT)) 
??USB_Protocol_Handler_4:
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??USB_Protocol_Handler_5
//  589   {
//  590     FLAG_SET(USB_ISTAT_SLEEP_SHIFT,USB0_ISTAT);   
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable14_30  ;; 0x40072080
        STRB     R0,[R1, #+0]
//  591   }
//  592   if(FLAG_CHK(USB_ISTAT_ERROR_SHIFT,USB0_ISTAT)) 
??USB_Protocol_Handler_5:
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??USB_Protocol_Handler_6
//  593   {
//  594     err = USB0_ERRSTAT;
        LDR.N    R0,??DataTable14_35  ;; 0x40072088
        LDRB     R0,[R0, #+0]
//  595     if(err==0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??USB_Protocol_Handler_7
//  596       asm("nop");
        nop
//  597     FLAG_CHK(USB_ISTAT_ERROR_SHIFT,USB0_ISTAT);
??USB_Protocol_Handler_7:
        LDR.N    R0,??DataTable14_30  ;; 0x40072080
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x2
//  598   }
//  599 }
??USB_Protocol_Handler_6:
??USB_Protocol_Handler_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     usb_rev_data_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     BufferPointer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     gu8USBClearFlags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     pu8IN_DataPointer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     gu8IN_Counter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     Setup_Pkt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     cEP_Size

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     tBDTtable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     gu8USB_Toogle_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     0x400720c4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     0x400720c8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     0x400720cc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     0x400720d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     0x400720d4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     0x400720d8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_15:
        DC32     gu8EP1_IN_ODD_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_16:
        DC32     gu8EP2_IN_ODD_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_17:
        DC32     gu8EP3_OUT_ODD_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_18:
        DC32     gu8USB_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_19:
        DC32     Device_Descriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_20:
        DC32     Configuration_Descriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_21:
        DC32     String_Table

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_22:
        DC32     gu8Dummy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_23:
        DC32     gu8Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_24:
        DC32     0x40072094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_25:
        DC32     gu8HALT_EP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_26:
        DC32     0x40072090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_27:
        DC32     gu8USB_Flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_28:
        DC32     0x40072098

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_29:
        DC32     0x400720c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_30:
        DC32     0x40072080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_31:
        DC32     gu8EP0_OUT_ODD_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_32:
        DC32     gu8EP0_OUT_EVEN_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_33:
        DC32     gu8EP0_IN_ODD_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_34:
        DC32     gu8EP0_IN_EVEN_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_35:
        DC32     0x40072088

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_36:
        DC32     0x4007208c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_37:
        DC32     0x40072084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_38:
        DC32     0x400ff080

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  600 
// 
// 1 174 bytes in section .bss
//    80 bytes in section .data
//   168 bytes in section .rodata
// 1 828 bytes in section .text
// 
// 1 828 bytes of CODE  memory
//   168 bytes of CONST memory
// 1 254 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
