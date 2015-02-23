

#include "DIALOG.h"
#include "gui_image.h"

#define ID_FRAMEWIN_0       (GUI_ID_USER + 0x00)
#define ID_IMAGE_0          (GUI_ID_USER + 0x04)

static const GUI_WIDGET_CREATE_INFO _aDialogCreate[] = {
    { FRAMEWIN_CreateIndirect, "Image", ID_FRAMEWIN_0, 0, 0, 240/2, 320/2, 0, FRAMEWIN_CF_MOVEABLE, 0 },
    { IMAGE_CreateIndirect, "Image", ID_IMAGE_0, 0, 0, 50, 50, 0, IMAGE_CF_AUTOSIZE|IMAGE_CF_TILE | IMAGE_CF_ALPHA, 0 },
};

static WM_HWIN hImage;
static WM_HWIN hWin;
static WM_HWIN hParent;

static void _cbDialog(WM_MESSAGE * pMsg) {
    WM_HWIN      hItem;
    int     NCode;
    int     Id;
    static int _x;
    //rt_kprintf("pMsg->MsgId:%d\r\n",pMsg->MsgId);
   
   // rt_kprintf("X:%d Y:%d\r\n", WM_GetWindowSizeX(hImage), WM_GetWindowSizeY(hImage));
  switch (pMsg->MsgId) {
  case WM_INIT_DIALOG:
    hItem = pMsg->hWin;
    hWin = pMsg->hWin;
    FRAMEWIN_SetFont(hItem, GUI_FONT_13B_1);
    //FRAMEWIN_SetMoveable(hItem, 1);
    FRAMEWIN_AddCloseButton(hItem, FRAMEWIN_BUTTON_RIGHT, 0);
    FRAMEWIN_AddMaxButton(hItem, FRAMEWIN_BUTTON_RIGHT, 0);
    WM_ShowWindow(hItem);
    /* FIXEME:
        it seems scrollbar can not active callback 
    */
    //SCROLLBAR_CreateAttached(hItem, 0);
    //SCROLLBAR_CreateAttached(hItem, SCROLLBAR_CF_VERTICAL);
  
    hItem = WM_GetDialogItem(pMsg->hWin, ID_IMAGE_0);
    hImage = hItem;
    break;

  case WM_NOTIFY_PARENT:
    Id    = WM_GetId(pMsg->hWinSrc);
    NCode = pMsg->Data.v;
    switch(Id)
    {
        case ID_IMAGE_0:

            switch(NCode)
            {
                case WM_NOTIFICATION_CHILD_DELETED:
                    hImage = NULL;
                    WM_ShowWindow(hParent);
                break;
            }
    }
    if(NCode == WM_NOTIFICATION_VALUE_CHANGED) 
    {
        /*
        WM_SCROLL_STATE ScrollState;
        if (WM_GetId(pMsg->hWinSrc) == GUI_ID_HSCROLL)
        {
            WM_GetScrollState(pMsg->hWinSrc, &ScrollState);
            WM_MoveWindow(hImage ,_x-ScrollState.v, 0);
            _x = ScrollState.v;
        }
        */
         
    }
    break;
  default:
    WM_DefaultProc(pMsg);
    break; 
  }
}


WM_HWIN GUI_IMAGE_CreateWidget(WM_HWIN hWin)
{
    WM_HWIN hWinImage;
    hParent = hWin;
    hWinImage = GUI_CreateDialogBox(_aDialogCreate, GUI_COUNTOF(_aDialogCreate), _cbDialog, WM_HBKWIN, 0, 0);
    return hWinImage;
}

void GUI_IMAGE_DisplayImage(void* pData, U32 Size, U32 type)
{
    U32 ImageSizeX;
    U32 ImageSizeY;
    /* no image widget, create one */
    if(hImage == NULL)
    {
        //GUI_IMAGE_CreateWidget();
        return;
    }
    switch(type)
    {
        case GUI_IMAGE_BMP:
            ImageSizeX = GUI_BMP_GetXSize(pData);
            ImageSizeY = GUI_BMP_GetYSize(pData);
            IMAGE_SetBMP(hImage, pData, Size);
            break;
        case GUI_IMAGE_JPG:
        case GUI_IMAGE_JPEG:
        {
            GUI_JPEG_INFO Info;
            GUI_JPEG_GetInfo(pData, Size,&Info);
            ImageSizeX = Info.XSize;
            ImageSizeY = Info.YSize;
            IMAGE_SetJPEG(hImage, pData, Size);
            break;
        }
    }
    /* resize window*/
    if(ImageSizeX > 240) ImageSizeX = 240;
    if(ImageSizeY > 320) ImageSizeY = 320;
    WM_SetSize(hWin, ImageSizeX, ImageSizeY);
}

