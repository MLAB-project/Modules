/******************** (C) COPYRIGHT 2009 STMicroelectronics ********************
* File Name          : Files.h
* Author             : MCD Application Team
* Version            : v2.1.0
* Date               : 11/02/2009
* Description        : Defines the Files DLL interface
********************************************************************************
* THE PRESENT SOFTWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*******************************************************************************/


#if !defined(AFX_FILES_H__E07F909F_97B4_4295_8B8F_5EA1A83ECA92__INCLUDED_)
#define AFX_FILES_H__E07F909F_97B4_4295_8B8F_5EA1A83ECA92__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols
#include "FilesInc.h"
#include "Image.h"
#include "Errors.h"
//#include "IniFile.h"


/////////////////////////////////////////////////////////////////////////////
// CFilesApp
// See Files.cpp for the implementation of this class
//

class CFilesApp : public CWinApp
{
public:
	CFilesApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFilesApp)
	//}}AFX_VIRTUAL

	//{{AFX_MSG(CFilesApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};
	

extern "C" DWORD EXPORT FILES_OpenExistingFile(PSTR pPathFile, PHANDLE phFile, PWORD pVid, PWORD pPid, PWORD pBcd,PBYTE pNbImages);
extern "C" DWORD EXPORT FILES_CreateNewFile(PSTR pPathFile, PHANDLE phFile, WORD Vid, WORD Pid, WORD Bcd);
extern "C" DWORD EXPORT FILES_CloseFile(HANDLE hFile);

extern "C" DWORD EXPORT FILES_AppendImageToFile(HANDLE hFile, HANDLE Image);
extern "C" DWORD EXPORT FILES_ReadImageFromFile(HANDLE hFile, int Rank, PHANDLE pImage);

extern "C" DWORD EXPORT FILES_ImageFromFile(PSTR pPathFile, PHANDLE pImage, BYTE nAlternate);
extern "C" DWORD EXPORT FILES_ImageToFile(PSTR pPathFile, HANDLE Image);

extern "C" DWORD EXPORT FILES_CreateImage(PHANDLE pHandle, BYTE nAlternate);
extern "C" DWORD EXPORT FILES_CreateImageFromMapping(PHANDLE pHandle, PMAPPING pMapping);
extern "C" DWORD EXPORT FILES_DuplicateImage(HANDLE hSource, PHANDLE pDest);

extern "C" DWORD EXPORT FILES_FilterImageForOperation(HANDLE Handle, PMAPPING pMapping, DWORD Operation, BOOL bTruncateLeadFFForUpgrade);
extern "C" DWORD EXPORT FILES_DestroyImageElement(HANDLE Handle, DWORD dwRank);
extern "C" DWORD EXPORT FILES_DestroyImage(PHANDLE pHandle);

extern "C" DWORD EXPORT FILES_GetImageAlternate(HANDLE Handle, PBYTE pAlternate);
extern "C" DWORD EXPORT FILES_GetImageNbElement(HANDLE Handle, PDWORD pNbElements);
extern "C" DWORD EXPORT FILES_GetImageName(HANDLE Handle, PSTR Name);
extern "C" DWORD EXPORT FILES_SetImageName(HANDLE Handle, PSTR Name);

extern "C" DWORD EXPORT FILES_SetImageElement(HANDLE Handle, DWORD dwRank, BOOL bInsert, IMAGEELEMENT Element);
extern "C" DWORD EXPORT FILES_GetImageElement(HANDLE Handle, DWORD dwRank, PIMAGEELEMENT pElement);
extern "C" DWORD EXPORT FILES_GetMemoryMapping(PSTR pPathFile, PWORD Size, PSTR MapName, PWORD PacketSize, PMAPPING pMapping, PBYTE PagesPerSector);

/*FILES_OpenExistingFile
  FILES_CreateNewFile
  FILES_CloseFile
  FILES_AppendImageToFile
  FILES_ReadImageFromFile*/

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILES_H__E07F909F_97B4_4295_8B8F_5EA1A83ECA92__INCLUDED_)


/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE******/
