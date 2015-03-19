/*
 * File:        common.h
 * Purpose:     File to be included by all project files
 *
 * Notes:
 */

#ifndef _COMMON_H_
#define _COMMON_H_

/********************************************************************/

/*
 * Debug prints ON (#define) or OFF (#undef)
 */
#define DEBUG
#define DEBUG_PRINT

/* 
 * Include the generic CPU header file 
 */
#include "arm_cm4.h"

/* 
 * Include the platform specific header file 
 */
#if (defined(TWR_K40X256))
  #include "k40_tower.h"
#elif (defined(LPLD_K60))
 #include "k60_card.h"
#elif (defined(TWR_K53N512))
 #include "k53_tower.h"
#else
  #error "No valid platform defined"
#endif

/* 
 * Include the cpu specific header file 
 */
#if (defined(CPU_MK40N512VMD100))
//  #include "MK40N512VMD100.h"
  #include "MK40DZ10.h"
#elif (defined(CPU_MK60N512VMD100))
//  #include "MK60N512VMD100.h"
  #include "MK60DZ10.h"
#elif (defined(CPU_MK53N512CMD100))
//  #include "MK53N512CMD100.h"
  #include "MK53DZ10.h"
#else
  #error "No valid CPU defined"
#endif


/* 
 * Include any toolchain specfic header files 
 */
#if (defined(CW))
  #include "cw.h"
#elif (defined(IAR))
  #include "iar.h"
#else
#warning "No toolchain specific header included"
#endif
typedef	union
{
	uint32	DW;
	uint16	W[2];
	uint8	B[4];
	struct
	{
		uint32 b0:1; uint32 b1:1; uint32 b2:1; uint32 b3:1; uint32 b4:1; uint32 b5:1; uint32 b6:1; uint32 b7:1; 
		uint32 b8:1; uint32 b9:1; uint32 b10:1;uint32 b11:1;uint32 b12:1;uint32 b13:1;uint32 b14:1;uint32 b15:1;
		uint32 b16:1;uint32 b17:1;uint32 b18:1;uint32 b19:1;uint32 b20:1;uint32 b21:1;uint32 b22:1;uint32 b23:1;
		uint32 b24:1;uint32 b25:1;uint32 b26:1;uint32 b27:1;uint32 b28:1;uint32 b29:1;uint32 b30:1;uint32 b31:1;
	};
}Dtype;		//sizeof(Dtype)	Ϊ 4 
/* 
 * Include common utilities
 */
#include "assert.h"
#include "io.h"
#include "startup.h"
#include "stdlib.h"

#if (defined(IAR))
	#include "intrinsics.h"
#endif

/********************************************************************/

#endif /* _COMMON_H_ */
