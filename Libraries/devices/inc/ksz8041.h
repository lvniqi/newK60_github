/**
  ******************************************************************************
  * @file    ksz8041.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */
#ifndef __KSZ8041_H__
#define __KSZ8041_H__

#include <stdbool.h>




//!< API
int ksz8041_init(int chip_addr);
bool ksz8041_is_linked(void);
bool ksz8041_is_phy_full_dpx(void);
bool ksz8041_is_phy_10m_speed(void);


#endif


