#ifndef _My_UI_h
#define _My_UI_h
#include <stdio.h>
#include <stdlib.h>
#include "GUI.H"
#include "BUTTON.h"
#include "progbar.h"
#include "framewin.h"
#include "TEXT.h"
#include "WM.h"
#include "LISTBOX.h"
#include "MULTIEDIT.h"
#include "LISTVIEW.h"
#include <stdint.h>

#define _folder   1
#define _mp3      2
#define _txt      3
#define _bmp      4

#define TouchUnPress    0   //�״μ�⵽û�а���
#define TouchUnPressed  1   //û�а���
#define TouchPress      2   //�״μ�⵽����
#define TouchPressed    3   //����
/*   �˵��������ֵ�ID��   */
#define BanMenu             200
#define MainMenu_ID         1 
#define MusicPlayeMenu_ID   3 
#define FileBrowseMenu_ID   5
#define SetMenu_ID          10
#define TextMenu_ID         15
#define ComPortMenu_ID      20

#define  Button_ID0   0x17a
#define  Button_ID1   0x17b
#define  Button_ID2   0x17c
#define  Button_ID3   0x17d
#define  Button_ID4   0x17e
#define  Button_ID5   0x17f
#define  Button_ID6   160
#define  Button_ID7   170
#define  Button_ID8   180
#define  Button_ID9   190
#define  Button_ID10  200
#define  Button_ID11  210
#define  Button_ID12  220
#define  Button_ID13  230
#define  Button_ID14  231
#define  Button_ID15  232
#define  Button_ID16  233
// #define _up   1
// #define _down 2

typedef struct SingleListNode {
	WM_HMEM                  handle;
	struct SingleListNode   *next;

}SingleListNode;                                                      /* ����SingleListNodeΪ�µ�������*/
typedef SingleListNode    *SingleList;                                /* ����ָ������                  */

typedef struct {
	WM_HMEM                  FirstHandle;
	WM_HMEM                  EndHandle;
}MenuInfo;                 


/************************************** ���UI�������ȫ�ֱ��� ********************************************/
//��������
#define MAX_FILE_CNT 30
extern uint16_t  FileCnt;

extern BUTTON_Handle  hButton_mainmenu[9];//������İ�ť���
extern TEXT_Handle hText; //ʱ����ʾ
extern GUI_PID_STATE  TouchPoint[2];
extern uint16_t TouchSum ; //�ۼƴӴ������ͷŻ����ľ��룬�����ж��ǻ������ǵ㴥�����ǻ�����ִ�в�����
extern uint8_t TouchCmd;  //��־���ǵ㴥���ǻ���������
extern uint8_t TouchFlag; //������־��
extern uint8_t Menu_ID;  //�˵������ID
extern GUI_COLOR  ThemeColor;
extern GUI_COLOR  DesktopColor;
extern SingleList  MainMenu_pHead;     /* ������Ŀؼ�����ͷָ��          */
extern SingleList  OtherMenu_pHead;    /* ��������Ŀؼ������ͷָ��      */
extern MenuInfo    OtherMenu_Info;
/*��������Ĳ˵��ؼ���Ϣ����Ҫ�Ǽ�¼��һ���ؼ������һ���ؼ��ľ���������ж��Ƿ񻬶���������˺���Ͷˣ�
**ʵ�ֱ�Ҫ�Ļص�Ч��
*/
//���滬��������ֹ�������ڲ˵������Ͻ����Ի���ĳ��ϣ���ֹ�����Ի����ͬʱ�˵�����Ҳ�õ���Ӧ��
//ʹ��ʱҪע��Ի������йرհ�ť�������¹رհ�ť�򲻻Ὣ��ֵ��0�������Ļ��˵����潫��Զ������Ӧ�ˡ�
extern uint8_t MenuDisnable;   
extern const GUI_FONT GUI_FontHZ_MicrosoftFont_13;
extern WM_HWIN hDesktopWindow;//����ľ��
/**********************************************************************************************************/

SingleList SingleListNodeCreate(void);
SingleList SingleListInsert(SingleList pList,SingleList pos,WM_HMEM x);
void SingleListFree(SingleList pHead);
void ClearStruct(unsigned char *pta, int size ) ;

uint8_t CheckFile(char *buf);

void MainMenu_Init(void); /* �������ʼ��*/
void Go_MainMenu(void);   /* �ص�������*/
void Out_MainMenu(void);  /*�˳������棬ע��������ֻ�ǲ�����Ļ����ʾ���ѣ�����Ȼ���ڣ�����Ļ��ʾ����֮��*/
void Out_OtherMenu(void);

void MyCreatDialog(int16_t x,int16_t y,WM_HWIN WM_Handle);
void MyDeleteDialog(WM_HWIN WM_Handle);
void ViscousWM(SingleList pHead);

void WM_MoveCtrl(void);   /* �˵�����Ļ�������*/
void WM_GoTop(void);      /* �ؽ��涥��*/
void WM_Move(SingleList pHead ,int dx,int dy); /* ʵ�������ڵ����пؼ�����*/
void SetThemeColor(GUI_COLOR color);
uint8_t FATAPI_OpenFile(uint8_t *filename);
//��������
static uint8_t CreateNextFilePath(char *buf);
static uint8_t CreateLastFilePath(void);
#endif
