#include <stdint.h>

#include <rthw.h>
#include <rtthread.h>
#include <stdlib.h>
#include <stdio.h>

#define printf    rt_kprintf

void _mem_test(uint32_t address, uint32_t size )
{
    uint32_t i;

    printf("memtest,address: 0x%08X size: 0x%08X\r\n", address, size);

    /**< 8bit test */
    {
        uint8_t * p_uint8_t = (uint8_t *)address;
        for(i=0; i<size/sizeof(uint8_t); i++)
        {
            *p_uint8_t++ = (uint8_t)i;
        }

        p_uint8_t = (uint8_t *)address;
        for(i=0; i<size/sizeof(uint8_t); i++)
        {
            if( *p_uint8_t != (uint8_t)i )
            {
                printf("8bit test fail @ 0x%08X\r\nsystem halt!!!!!",(uint32_t)p_uint8_t);
                while(1);
            }
            p_uint8_t++;
        }
        printf("8bit test pass!!\r\n");
    }

    /**< 16bit test */
    {
        uint16_t * p_uint16_t = (uint16_t *)address;
        for(i=0; i<size/sizeof(uint16_t); i++)
        {
            *p_uint16_t++ = (uint16_t)i;
        }

        p_uint16_t = (uint16_t *)address;
        for(i=0; i<size/sizeof(uint16_t); i++)
        {
            if( *p_uint16_t != (uint16_t)i )
            {
                printf("16bit test fail @ 0x%08X\r\nsystem halt!!!!!",(uint32_t)p_uint16_t);
                while(1);
            }
            p_uint16_t++;
        }
        printf("16bit test pass!!\r\n");
    }

    /**< 32bit test */
    {
        uint32_t * p_uint32_t = (uint32_t *)address;
        for(i=0; i<size/sizeof(uint32_t); i++)
        {
            *p_uint32_t++ = (uint32_t)i;
        }

        p_uint32_t = (uint32_t *)address;
        for(i=0; i<size/sizeof(uint32_t); i++)
        {
            if( *p_uint32_t != (uint32_t)i )
            {
                printf("32bit test fail @ 0x%08X\r\nsystem halt!!!!!",(uint32_t)p_uint32_t);
                while(1);
            }
            p_uint32_t++;
        }
        printf("32bit test pass!!\r\n");
    }

    /**< 32bit Loopback test */
    {
        uint32_t * p_uint32_t = (uint32_t *)address;
        for(i=0; i<size/sizeof(uint32_t); i++)
        {
            *p_uint32_t  = (uint32_t)p_uint32_t;
            *p_uint32_t++;
        }

        p_uint32_t = (uint32_t *)address;
        for(i=0; i<size/sizeof(uint32_t); i++)
        {
            if( *p_uint32_t != (uint32_t)p_uint32_t )
            {
                printf("32bit Loopback test fail @ 0x%08X", (uint32_t)p_uint32_t);
                printf(" data:0x%08X \r\n", (uint32_t)*p_uint32_t);
                printf("system halt!!!!!",(uint32_t)p_uint32_t);
                while(1);
            }
            p_uint32_t++;
        }
        printf("32bit Loopback test pass!!\r\n");
    }
}


int mem_test(int argc, char ** argv)
{
    uint32_t addr;
    uint32_t size;
    if(argc == 3)
    {
        addr = strtoul(argv[1], 0, 0);
        size = strtoul(argv[2], 0, 0);
        _mem_test(addr, size);
    }
    return 0;
}


#ifdef RT_USING_FINSH
#include <finsh.h>
MSH_CMD_EXPORT(mem_test, mem_test(0xA0000000, 0x00100000)  );
#endif
