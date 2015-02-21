#ifndef __BLUETOOTH_H_
#define __BLUETOOTH_H_ 

extern unsigned int  OutData[4]; 



unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT);

void OutPut_Data(void);

#endif