#include "my_gui.h"
#include "bitmap.h"
#include <stdint.h>

/************************************** ���UI�������ȫ�ֱ��� ********************************************/
//ȫ�ֱ���������




BUTTON_Handle  hButton_mainmenu[9];//������İ�ť���
TEXT_Handle hText; //ʱ����ʾ
GUI_PID_STATE  TouchPoint[2];
uint16_t TouchSum = 0; //�ۼƴӴ������ͷŻ����ľ��룬�����ж��ǻ������ǵ㴥�����ǻ�����ִ�в�����
uint8_t TouchCmd = 0;  //��־���ǵ㴥���ǻ���������
uint8_t TouchFlag = 0; //������־��
uint8_t Menu_ID  = 0;  //�˵������ID
GUI_COLOR  ThemeColor = GUI_BLUE;
GUI_COLOR  DesktopColor = GUI_BLACK;
SingleList  MainMenu_pHead;     /* ������Ŀؼ�����ͷָ��          */
SingleList  OtherMenu_pHead;    /* ��������Ŀؼ������ͷָ��      */
MenuInfo    OtherMenu_Info;
/*��������Ĳ˵��ؼ���Ϣ����Ҫ�Ǽ�¼��һ���ؼ������һ���ؼ��ľ���������ж��Ƿ񻬶���������˺���Ͷˣ�
**ʵ�ֱ�Ҫ�Ļص�Ч��
*/
//���滬��������ֹ�������ڲ˵������Ͻ����Ի���ĳ��ϣ���ֹ�����Ի����ͬʱ�˵�����Ҳ�õ���Ӧ��
//ʹ��ʱҪע��Ի������йرհ�ť�������¹رհ�ť�򲻻Ὣ��ֵ��0�������Ļ��˵����潫��Զ������Ӧ�ˡ�
uint8_t MenuDisnable = 0;   

WM_HWIN hDesktopWindow;//����ľ��
/**********************************************************************************************************/
uint8_t CheckFile(char *buf)
{
	while(*buf++){
		if(*buf == '.') break;
	}
	if(*buf == '\0') return _folder;
	else if(*(buf+1) == 'M' && *(buf+2) == 'P' && *(buf+3) == '3') return _mp3;
	else if(*(buf+1) == 'T' && *(buf+2) == 'X' && *(buf+3) == 'T') return _txt;
	else if(*(buf+1) == 'B' && *(buf+2) == 'M' && *(buf+3) == 'P') return _bmp;
  return 0;
}
/********************************************************************************************************** 
** Function name:      MainMenu_Init
** Descriptions:       ������˵���ʼ��
** input parameters:   ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void MainMenu_Init(void)
{
	uint8_t i = 0;
	SingleList   pos   = NULL;
	MainMenu_pHead = SingleListNodeCreate();  /* �������������ͷ�ڵ㣬���������Զ���ᱻ����    */
	pos = MainMenu_pHead;
	Menu_ID = MainMenu_ID;
	/***********************һЩĬ������****************************/
    FRAMEWIN_SetDefaultFont(&GUI_Font16B_1);
	FRAMEWIN_SetDefaultTitleHeight(19);	
	FRAMEWIN_SetDefaultBarColor(1, ThemeColor); 
	SCROLLBAR_SetDefaultWidth(18);
	LISTBOX_SetDefaultFont(&GUI_Font16B_1);
	LISTBOX_SetDefaultBkColor(2, ThemeColor);
	BUTTON_SetDefaultFont(&GUI_Font16B_1);
	GUI_SetBkColor(GUI_BLACK); 	
	GUI_SetColor(GUI_BLACK);
	WM_SetDesktopColor(DesktopColor); 
	hDesktopWindow = WM_GetDesktopWindow();//��ȡ����ľ��
	/**************************************************************/
	 /* Create the button*/   
    hButton_mainmenu[0] = BUTTON_Create(5, 25+220, 90, 90, GUI_ID_BUTTON0, WM_CF_SHOW);   
	hButton_mainmenu[1] = BUTTON_Create(100, 25+220, 90, 90, GUI_ID_BUTTON1, WM_CF_SHOW);
	hButton_mainmenu[2] = BUTTON_Create(5, 120+220, 90, 90, GUI_ID_BUTTON2, WM_CF_SHOW);   
	hButton_mainmenu[3] = BUTTON_Create(100, 120+220, 90, 90, GUI_ID_BUTTON3, WM_CF_SHOW);
	hButton_mainmenu[4] = BUTTON_Create(5, 215+220, 185, 90, GUI_ID_BUTTON4, WM_CF_SHOW);
	
    hButton_mainmenu[5] = BUTTON_Create(5, 310+220, 90, 90, GUI_ID_BUTTON5, WM_CF_SHOW); 
	hButton_mainmenu[6] = BUTTON_Create(100, 310+220, 90, 90, GUI_ID_BUTTON6, WM_CF_SHOW); 
	hButton_mainmenu[7] = BUTTON_Create(5, 405+220, 185, 90, GUI_ID_BUTTON7, WM_CF_SHOW); 
	
	for (i = 0;i < 8;i++) 
    {
        BUTTON_SetTextAlign(hButton_mainmenu[i],GUI_TA_BOTTOM | GUI_TA_LEFT);
        BUTTON_SetTextColor(hButton_mainmenu[i],0,GUI_WHITE);
        BUTTON_SetBkColor  (hButton_mainmenu[i],0,ThemeColor);
        BUTTON_SetBkColor  (hButton_mainmenu[i],1,GUI_GRAY);
        pos = SingleListInsert(MainMenu_pHead,pos,hButton_mainmenu[i]);//�����������水ť�����������
	}
  /* Set the button text */  
	
	BUTTON_SetFont(hButton_mainmenu[0],&GUI_Font16B_1);
	BUTTON_SetFont(hButton_mainmenu[1],&GUI_Font16B_1);
	BUTTON_SetFont(hButton_mainmenu[2],&GUI_Font16B_1);
	BUTTON_SetFont(hButton_mainmenu[3],&GUI_Font16B_1);
	BUTTON_SetFont(hButton_mainmenu[4],&GUI_Font16B_1);
	BUTTON_SetFont(hButton_mainmenu[5],&GUI_Font16B_1);
	BUTTON_SetFont(hButton_mainmenu[6],&GUI_Font16B_1);
	BUTTON_SetFont(hButton_mainmenu[7],&GUI_Font16B_1);
	BUTTON_SetText(hButton_mainmenu[0],"Music");
	BUTTON_SetText(hButton_mainmenu[1],"MemDev");
	BUTTON_SetText(hButton_mainmenu[2],"Text");
	BUTTON_SetText(hButton_mainmenu[3],"Settings");
	BUTTON_SetText(hButton_mainmenu[4],"Picture");
	BUTTON_SetText(hButton_mainmenu[5],"FFT");
	BUTTON_SetText(hButton_mainmenu[6],"UART");
	BUTTON_SetText(hButton_mainmenu[7],"Oscieiler");
	
	BUTTON_SetBitmapEx (hButton_mainmenu[0],0, &bmmusic4pp, 25, 15);
	BUTTON_SetBitmapEx (hButton_mainmenu[1],0, &bmmemo4pp, 25, 15);
	BUTTON_SetBitmapEx (hButton_mainmenu[3],0, &bmset4pp, 25, 15);
	BUTTON_SetBitmapEx (hButton_mainmenu[4],0, &bmphotobitmap, 110, 15);
	BUTTON_SetBitmapEx (hButton_mainmenu[5],0, &bmFFT1pp, 20, 15);
	BUTTON_SetBitmapEx (hButton_mainmenu[6],0, &bmgame4pp, 25, 15);
	BUTTON_SetBitmapEx (hButton_mainmenu[7],0, &bmoscilloscope1pp, 85, 15);
    while(WM_GetWindowOrgY(hButton_mainmenu[0]) > 25)
    {
        if(WM_GetWindowOrgY(hButton_mainmenu[0]) > 55 )
        {
            WM_Move(MainMenu_pHead,0,-30);
        }
        else 
        {
            WM_Move(MainMenu_pHead,0,-7);
		}
    }
   // hText = TEXT_Create(200, 2,39, 16, GUI_ID_TEXT0, WM_CF_SHOW, "",TEXT_CF_RIGHT);
	//TEXT_SetFont(hText,&GUI_Font13_ASCII);
	//TEXT_SetTextColor(hText,GUI_WHITE);
	
	/* ���еĴ����Զ���ʹ�ô洢�豸 */
//   WM_SetCreateFlags(WM_CF_MEMDEV);
}
/********************************************************************************************************** 
** Function name:      Go_MainMenu
** Descriptions:       ����������˵�
** input parameters:   ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void Go_MainMenu(void)
{
	WM_Move(MainMenu_pHead,-445,0);
	while(WM_GetWindowOrgX(hButton_mainmenu[0]) < 5) {
		if(WM_GetWindowOrgX(hButton_mainmenu[0]) < -35 ) {
			WM_Move(MainMenu_pHead,30,0);
		} else {
			WM_Move(MainMenu_pHead,5 - WM_GetWindowOrgX(hButton_mainmenu[0]),0);
		}
  }
	Menu_ID = MainMenu_ID;
}
/********************************************************************************************************** 
** Function name:      Out_MainMenu
** Descriptions:       �˳�������˵�
** input parameters:   ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void Out_MainMenu(void)
{ 
	while(WM_GetWindowOrgX(hButton_mainmenu[0]) < 240) {
		WM_Move(MainMenu_pHead,30,0);
  }
}
/********************************************************************************************************** 
** Function name:      MyCreatDialog
** Descriptions:       ʵ�ֶԻ��򴴽���������һ��������Ч��
** input parameters:   int16_t x,int16_t y,�����մﵽ�����꣨�Ի������Ͻǵ����꣩
                       WM_HWIN WM_Handle���Ի���ľ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void MyCreatDialog(int16_t x,int16_t y,WM_HWIN WM_Handle)
{
	while(WM_GetWindowOrgX(WM_Handle) < x) {
		WM_MoveWindow (WM_Handle,30, 0);
		GUI_Exec();//�ػ�
	}
	WM_MoveWindow (WM_Handle,x - WM_GetWindowOrgX(WM_Handle), 0);	
	GUI_Exec();//�ػ�
}
/********************************************************************************************************** 
** Function name:      MyDeleteDialog
** Descriptions:       ʵ�ֶԻ���ɾ����������һ����Ƴ���Ч��
** input parameters:   WM_HWIN WM_Handle���Ի���ľ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
// void MyDeleteDialog(WM_HWIN WM_Handle)
// {
// 	while(WM_GetWindowOrgX(WM_Handle) < 240) {
// 		WM_MoveWindow (WM_Handle,30, 0);
// 		GUI_Exec();//�ػ�
// 	}
// 	WM_DeleteWindow(WM_Handle);
// }
/********************************************************************************************************** 
** Function name:      Out_OtherMenu
** Descriptions:       �˳������ķ�������˵���ɾ����Ҫ�˳�����������пؼ���
** input parameters:   ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void Out_OtherMenu(void)
{
	uint8_t i = 0;
	SingleList   pos = OtherMenu_pHead;
	for(;i < 6;i++)
	WM_Move(OtherMenu_pHead,40,0);//�����˳�
	
	while(pos) {
	  WM_DeleteWindow(pos -> handle);  //ɾ�������еĿؼ�
		pos = pos->next;
	}
	SingleListFree(OtherMenu_pHead);     //�ͷ�����
}
/********************************************************************************************************** 
** Function name:      ViscousWM
** Descriptions:       ʵ�ֽ����л��Ļص�Ч����ճ��Ч��
** input parameters:   ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void ViscousWM(SingleList pHead)
{
  WM_Move(pHead,-20,0);
	WM_Move(pHead,5,0);
	WM_Move(pHead,5,0);
	WM_Move(pHead,5,0);
	WM_Move(pHead,5,0);
}
/********************************************************************************************************** 
** Function name:      WM_Move
** Descriptions:       ���������ڵ����пؼ�
** input parameters:   SingleList pHead�������ͷָ��
                       int dx,int dy ��Ҫ�ƶ���λ����
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void WM_Move(SingleList pHead ,int dx,int dy)
{
    SingleList   pos = pHead;
    if(dy < 0)
    {
        TouchSum += -dy;
    }
    else
    {
        TouchSum +=  dy;
    }
    while(pos)
    {
        WM_MoveWindow (pos -> handle, dx, dy);
        pos = pos->next;
    }
}
/********************************************************************************************************** 
** Function name:      WM_GoTop
** Descriptions:       �ص����涥��
** input parameters:   ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
// void WM_GoTop(void)
// {
// 	while(WM_GetWindowOrgY(OtherMenu_Info.FirstHandle) < 20) {
// 	while(WM_GetWindowOrgY(OtherMenu_Info.FirstHandle) < 0)
// 		WM_Move(OtherMenu_pHead,0,20);
// 		while(20 - WM_GetWindowOrgY(OtherMenu_Info.FirstHandle) > 5)
// 				WM_Move(OtherMenu_pHead,0,5);
// 		WM_Move(OtherMenu_pHead,0,20 - WM_GetWindowOrgY(OtherMenu_Info.FirstHandle));
// 	}
// }
/********************************************************************************************************** 
** Function name:      WM_MoveCtrl
** Descriptions:       ���滬������
** input parameters:   ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void WM_MoveCtrl(void)
{
	SingleList MenuHandle;
	MenuInfo   Menu_Info;
	int i = 0;
	//���������û�б����£���ֱ�ӷ��ء�
	if (TouchFlag == TouchUnPressed) return;
	switch (Menu_ID) {
		
		case MainMenu_ID:
			MenuHandle = MainMenu_pHead;
            Menu_Info.FirstHandle = hButton_mainmenu[0];
            Menu_Info.EndHandle = hButton_mainmenu[7];
			break;
		case SetMenu_ID:
		case TextMenu_ID:
		case FileBrowseMenu_ID:
		case MusicPlayeMenu_ID:
		case ComPortMenu_ID:
            MenuHandle = OtherMenu_pHead;
            Menu_Info.FirstHandle = OtherMenu_Info.FirstHandle;
            Menu_Info.EndHandle = OtherMenu_Info.EndHandle;
		  break;
		case BanMenu:          //��ʹ��MYUIʱ����Menu_ID = BanMenu��
			TouchCmd = 0;
			if(MenuDisnable == 0) {
				TouchCmd = 1;
			} else {	
			//	GUI_Exec();   //�ػ�
				GUI_GetKey(); //����GUI��Ӧ�ļ�ֵ��������Ӧ��ֵ
			}
			return;
		default:
			return;
	}
	if (TouchFlag == TouchPress) {
	  TouchFlag = TouchPressed;
		TouchSum = 0;
	  while (TouchPoint[0].Pressed == 0){
		  GUI_TOUCH_GetState(&TouchPoint[0]);
	  }
  }
  GUI_TOUCH_GetState(&TouchPoint[1]);
	if (TouchFlag == TouchPressed && TouchPoint[1].Pressed && MenuDisnable == 0) {  //����������
		if(TouchPoint[1].y == TouchPoint[0].y) {
		} else {
			WM_Move(MenuHandle,0,TouchPoint[1].y - TouchPoint[0].y);
			TouchPoint[0].y = TouchPoint[1].y ;
			TouchPoint[0].x = TouchPoint[1].x ;
		}
	} 
	if (TouchFlag == TouchUnPress) {
		TouchFlag = TouchUnPressed;	
		if (TouchSum <= 5 && MenuDisnable == 0){    //�����滬������С��5��������������
		  TouchCmd = 1;
		} else {
			TouchCmd = 0;
			//GUI_Exec();   //�ػ�
			GUI_GetKey(); //����GUI��Ӧ�ļ�ֵ����Ϊʵ�������ǻ������������Ǳ���ֹ�Ĳ�����������Ӧ��ֵ
		}
		/* ʵ�ֻ�����������ϵĻص�Ч�� */
		while(WM_GetWindowOrgY(Menu_Info.FirstHandle) > 20) {
			while(WM_GetWindowOrgY(Menu_Info.FirstHandle) > 35)
				WM_Move(MenuHandle,0,-15);
			while(WM_GetWindowOrgY(Menu_Info.FirstHandle) - 20 > 5)
				WM_Move(MenuHandle,0,-5);
			WM_Move(MenuHandle,0,20 - WM_GetWindowOrgY(Menu_Info.FirstHandle));
		}
	  if(WM_GetWindowSizeY(Menu_Info.EndHandle) + WM_GetWindowOrgY(Menu_Info.EndHandle) - WM_GetWindowOrgY(Menu_Info.FirstHandle) < 290){
		} else {
		  i = 320 - WM_GetWindowSizeY(Menu_Info.EndHandle) - 5;
	    /* ʵ�ֻ�������ײ����ϵĻص�Ч�� */	
		  while(WM_GetWindowOrgY(Menu_Info.EndHandle) < i) {
			  while(i - WM_GetWindowOrgY(Menu_Info.EndHandle) > 15)
				  WM_Move(MenuHandle,0,15);
			  while(i - WM_GetWindowOrgY(Menu_Info.EndHandle) > 5)
				  WM_Move(MenuHandle,0,5);			
		  	WM_Move(MenuHandle,0, i - WM_GetWindowOrgY(Menu_Info.EndHandle));
		  }
    }
		ClearStruct((unsigned char *)&TouchPoint[0],sizeof(TouchPoint));
	}
}
/********************************************************************************************************** 
** Function name:      SetThemeColor
** Descriptions:       �ı����������ɫ
** input parameters:   GUI_COLOR color����ɫֵ
** output parameters:  ��
** Returned value:     ��
**********************************************************************************************************/
void SetThemeColor(GUI_COLOR color)
{
	uint8_t i = 8 ;
	while(i){
	  BUTTON_SetBkColor(hButton_mainmenu[i-1],0,color);
	  i--;
	}
	LISTBOX_SetDefaultBkColor(2, color);
	FRAMEWIN_SetDefaultBarColor(1, color);
	ThemeColor = color;
}
/********************************************************************************************************** 
** Function name:      SingleListNodeCreate
** Descriptions:       �������������ͷ�ڵ�
** input parameters:   ��
** output parameters:  
** Returned value:     ����ͷָ��
**********************************************************************************************************/
SingleList SingleListNodeCreate ()
{
	SingleList pHead = (SingleList)malloc(sizeof(SingleListNode));
	pHead->next=NULL;
	return pHead;
}
/********************************************************************************************************* 
** Function name:      SingleListInsert
** Descriptions:       ���������������
** input parameters:   SingleList pList: Ҫ���������
                       SingleList pos: Ҫ����Ľڵ�
                       WM_HMEM x: Ҫ�������ֵ
** output parameters:  
** Returned value:     ����ڵ��ָ��
**********************************************************************************************************/
SingleList SingleListInsert (SingleList pList,SingleList pos, WM_HMEM x)
{
	SingleList ptr = (SingleList)malloc(sizeof(SingleListNode));
	ptr->handle    = x;
	ptr->next      = pos->next;
	pos->next      = ptr;
	return ptr;
}
/********************************************************************************************************** 
** Function name:      SingleListFree
** Descriptions:       �ͷ�����ռ�õĿռ�
** input parameters:   CharIn pHead: ����ͷָ��
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void SingleListFree (SingleList pHead)
{
	SingleList p = pHead;
	while(p) {
		pHead = pHead->next;
		free(p);
		p = pHead;
	}
}
/********************************************************************************************************** 
** Function name:      ClearStruct
** Descriptions:       ���ṹ����0
** input parameters:   unsigned char *pta���ṹ�����ָ��
                       int size���ṹ��Ĵ�С
** output parameters:  
** Returned value:     ��
**********************************************************************************************************/
void ClearStruct(unsigned char *pta, int size )  
{  
  while(size){  
    *pta++ = 0;  
    size--;  
  }  
}  
