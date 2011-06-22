/******************** (C) COPYRIGHT 2009 STMicroelectronics ********************
* File Name          : FilesInc.h
* Author             : MCD Application Team
* Version            : v2.1.0
* Date               : 11/02/2009
* Description        : Defines the struct types used by Files DLL
********************************************************************************
* THE PRESENT SOFTWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*******************************************************************************/

#ifndef FILES_INC_H
#define FILES_INC_H

#define OPERATION_DETACH	0
#define OPERATION_RETURN	1
#define OPERATION_UPLOAD	2
#define OPERATION_ERASE		3
#define	OPERATION_DNLOAD	4
	

#ifndef TYPE_STATUS
typedef struct  
{
	UCHAR bStatus;
	UCHAR bwPollTimeout[3];
	UCHAR bState;
	UCHAR iString;
}	STATUS,  *PSTATUS;
#endif

#define BIT_READABLE	1
#define BIT_ERASABLE	2
#define BIT_WRITEABLE	4

typedef struct {
	char*       Name;
    DWORD		dwStartAddress;
	DWORD		dwAliasedAddress;
	DWORD		dwSectorIndex;
	DWORD		dwSectorSize;
	BYTE		bSectorType;
	BOOL		UseForOperation;
	BOOL        UseForErase;
	BOOL        UseForUpload;
	BOOL        UseForWriteProtect;
} MAPPINGSECTOR, *PMAPPINGSECTOR;

typedef struct {
	BYTE			nAlternate;
	char			Name[MAX_PATH];
	DWORD			NbSectors;
	PMAPPINGSECTOR	pSectors;	
} MAPPING, *PMAPPING;

typedef struct {
	DWORD		dwAddress;
	DWORD		dwDataLength;
	PBYTE		Data;
} IMAGEELEMENT, *PIMAGEELEMENT;


#endif

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE******/
