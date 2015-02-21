#include "gpio.h"
#include "uart.h"
#include "systick.h"
#include "shell.h"


int CMD_GPIO(int argc, char *const argv[])
{
    printf("enter CMD_GPIO function\r\n");
    while(argc--)
    {
        printf("argv:%s\r\n", argv[argc]);
    }
    return 0;
}

int main(void)
{
    DelayInit();
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    printf("HelloWorld\r\n");
    /* ��ʼ��shell֮ǰ һ��Ҫʵ��stdout �� stdin */
    /* ����Ҫ�� Linker �� MiscControl�ж��壺 --keep __fsym_* �Ա����� __fsym��ͷ�ı��������� */
    /* IAR �û������������ļ��м��� keep { section FSymTab }; �Ա������ű� */
    shell_init();

    while(1)
    {
        shell_main_loop("SHELL>>");
    }
}

/*  ע���û�shell���� */
SHELL_EXPORT_CMD(CMD_GPIO, gpio ,help of GPIO);


