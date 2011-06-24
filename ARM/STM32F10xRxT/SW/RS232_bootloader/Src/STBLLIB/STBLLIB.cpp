/******************** (C) COPYRIGHT 2010 STMicroelectronics ********************
* File Name          : STBLLIB.cpp
* Author             : MCD Application Team
* Version            : v2.2.0
* Date               : 05/03/2010
* Description        : Implements the System memory boot loader protocol interface
********************************************************************************
* THE PRESENT SOFTWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*******************************************************************************/


#include <malloc.h>
#include "stdafx.h"
#include "STBLLIB.h"


/************************************************************************************/
/* Generic BL API types
/*
/*
/************************************************************************************/

typedef BYTE virt_GetProgress(LPBYTE progress);  
typedef BYTE virt_GetActivityTime(LPDWORD time);  
typedef BYTE virt_SetActivityTime(DWORD time); 
typedef BYTE virt_TARGET_GetFlashSize(DWORD Addr, LPWORD val);
typedef BYTE virt_TARGET_GetMemoryAddress(DWORD Addr, LPBYTE val);
typedef BYTE virt_TARGET_GetRDPOptionByte(LPBYTE RDP);
typedef BYTE virt_TARGET_GetWRPOptionBytes(LPBYTE WRP0, LPBYTE WRP1, LPBYTE WRP2, LPBYTE WRP3);
typedef BYTE virt_Send_RQ(LPSTBL_Request pRQ);
typedef BYTE virt_SetCOMSettings(int numPort, long speedInBaud, int nbBit, int parity, float nbStopBit);
typedef BYTE virt_COM_Open();
typedef BYTE virt_COM_Close();
typedef BYTE virt_STBL_SetSpeed(DWORD speed);
typedef BYTE virt_STBL_Init_BL();
typedef BYTE virt_STBL_GET(LPBYTE Version, LPCommands pCmds);                      
typedef BYTE virt_STBL_GET_VER_ROPS(LPBYTE Version, LPBYTE ROPEnabled, LPBYTE ROPDisabled);             
typedef BYTE virt_STBL_GET_ID(LPBYTE size, LPBYTE pID);                   
typedef BYTE virt_STBL_READ(DWORD Address, BYTE Size, LPBYTE pData);                     
typedef BYTE virt_STBL_GO(DWORD Address);                       
typedef BYTE virt_STBL_WRITE(DWORD address, BYTE size, LPBYTE pData);                    
typedef BYTE virt_STBL_ERASE(WORD NbSectors, LPBYTE pSectors);                      
typedef BYTE virt_STBL_WRITE_PROTECT(BYTE NbSectors, LPBYTE pSectors);            
typedef BYTE virt_STBL_WRITE_TEMP_UNPROTECT();     
typedef BYTE virt_STBL_WRITE_PERM_UNPROTECT();     
typedef BYTE virt_STBL_READOUT_PROTECT();     
typedef BYTE virt_STBL_READOUT_TEMP_UNPROTECT();   
typedef BYTE virt_STBL_READOUT_PERM_UNPROTECT();   
typedef BYTE virt_STBL_UPLOAD(DWORD Address, LPBYTE pData, DWORD Length);  
typedef BYTE virt_STBL_VERIFY(DWORD Address, LPBYTE pData, DWORD Length,BOOL bTruncateLeadFFForDnLoad); 
typedef BYTE virt_STBL_DNLOAD(DWORD Address, LPBYTE pData, DWORD Length,BOOL bTruncateLeadFFForDnLoad);   
typedef BYTE virt_SetPaketSize(BYTE size);
typedef BYTE virt_GetPaketSize(LPBYTE size);
typedef ACKS virt_GetAckValue();
typedef BOOL virt_COM_is_Open();
typedef BYTE virt_SetTimeOut(DWORD vms);
typedef BYTE virt_TARGET_GetUserOptionByte(LPBYTE User);
typedef BYTE virt_TARGET_GetDataOptionByte(LPBYTE Data0, LPBYTE Data1);
typedef BYTE virt_TARGET_SetSIFData(BYTE User, BYTE RDP, BYTE Data0, BYTE Data1, BYTE WRP0, BYTE WRP1, BYTE WRP2, BYTE WRP3);
typedef BYTE virt_TARGET_GetSIFData(LPBYTE User, LPBYTE RDP, LPBYTE Data0, LPBYTE Data1, LPBYTE WRP0, LPBYTE WRP1, LPBYTE WRP2, LPBYTE WRP3);
typedef BYTE virt_STBL_SetRts(BOOL Val);
typedef BYTE virt_STBL_SetDtr(BOOL Val);
typedef BYTE virt_STBL_setTxd(BOOL val);	
typedef BYTE virt_STBL_getCts(BOOL* pval);					
typedef BYTE virt_STBL_getDtr(BOOL* pval);	
typedef BYTE virt_STBL_getRi(BOOL* pval);					
typedef BYTE virt_STBL_getCd(BOOL* pval);
typedef BYTE virt_STBL_SetEcho(int val);
typedef BYTE virt_STBL_SetFlowControl(int Val);    

/************************************************************************************/
/* Generic BL API references
/*
/*
/************************************************************************************/

virt_GetProgress					*pt_GetProgress;						//(LPBYTE progress);  
virt_GetActivityTime				*pt_GetActivityTime;					//(LPDWORD time);  
virt_SetActivityTime				*pt_SetActivityTime;					//(DWORD time); 
virt_TARGET_GetFlashSize			*pt_TARGET_GetFlashSize;				//(DWORD Addr, LPWORD val);
virt_TARGET_GetMemoryAddress		*pt_TARGET_GetMemoryAddress;			//(DWORD Addr, LPWORD val);
virt_TARGET_GetRDPOptionByte		*pt_TARGET_GetRDPOptionByte;			//(LPBYTE RDP);
virt_TARGET_GetWRPOptionBytes		*pt_TARGET_GetWRPOptionBytes;		//(LPBYTE WRP0, LPBYTE WRP1, LPBYTE WRP2, LPBYTE WRP3);
virt_Send_RQ						*pt_Send_RQ;							//(LPSTBL_Request pRQ);
virt_SetCOMSettings					*pt_SetCOMSettings;					//(int numPort, long speedInBaud, int nbBit, int parity, float nbStopBit);
virt_COM_Open						*pt_COM_Open;						//();
virt_COM_Close						*pt_COM_Close;						//();
virt_STBL_SetSpeed					*pt_STBL_SetSpeed;					//(DWORD speed);
virt_STBL_Init_BL					*pt_STBL_Init_BL;					//();
virt_STBL_GET						*pt_STBL_GET;						//(LPBYTE Version, LPCommands pCmds);                      
virt_STBL_GET_VER_ROPS				*pt_STBL_GET_VER_ROPS;				//(LPBYTE Version, LPBYTE ROPEnabled, LPBYTE ROPDisabled);             
virt_STBL_GET_ID					*pt_STBL_GET_ID;						//(LPBYTE size, LPBYTE pID);                   
virt_STBL_READ						*pt_STBL_READ;						//(DWORD Address, BYTE Size, LPBYTE pData);                     
virt_STBL_GO						*pt_STBL_GO;							//(DWORD Address);                       
virt_STBL_WRITE						*pt_STBL_WRITE;						//(DWORD address, BYTE size, LPBYTE pData);                    
virt_STBL_ERASE						*pt_STBL_ERASE;						//(BYTE NbSectors, LPBYTE pSectors);                     
virt_STBL_WRITE_PROTECT				*pt_STBL_WRITE_PROTECT;				//(BYTE NbSectors, LPBYTE pSectors);            
virt_STBL_WRITE_TEMP_UNPROTECT		*pt_STBL_WRITE_TEMP_UNPROTECT;		//();     
virt_STBL_WRITE_PERM_UNPROTECT		*pt_STBL_WRITE_PERM_UNPROTECT;		//();     
virt_STBL_READOUT_PROTECT			*pt_STBL_READOUT_PROTECT;			//();     
virt_STBL_READOUT_TEMP_UNPROTECT	*pt_STBL_READOUT_TEMP_UNPROTECT;		//();   
virt_STBL_READOUT_PERM_UNPROTECT	*pt_STBL_READOUT_PERM_UNPROTECT;		//();   
virt_STBL_UPLOAD					*pt_STBL_UPLOAD;						//(DWORD Address, LPBYTE pData, DWORD Length);  
virt_STBL_VERIFY					*pt_STBL_VERIFY;						//(DWORD Address, LPBYTE pData, DWORD Length,BOOL bTruncateLeadFFForDnLoad); 
virt_STBL_DNLOAD					*pt_STBL_DNLOAD;						//(DWORD Address, LPBYTE pData, DWORD Length,BOOL bTruncateLeadFFForDnLoad);   
virt_SetPaketSize					*pt_SetPaketSize;					//(BYTE size);
virt_GetPaketSize					*pt_GetPaketSize;					//(LPBYTE size);
virt_GetAckValue					*pt_GetAckValue;						//();
virt_COM_is_Open					*pt_COM_is_Open;						//();
virt_SetTimeOut						*pt_SetTimeOut;						//(DWORD vms);
virt_TARGET_GetUserOptionByte		*pt_TARGET_GetUserOptionByte;		//(LPBYTE User);
virt_TARGET_GetDataOptionByte		*pt_TARGET_GetDataOptionByte;		//(LPBYTE Data0, LPBYTE Data1);
virt_TARGET_SetSIFData				*pt_TARGET_SetSIFData;				//(BYTE User, BYTE RDP, BYTE Data0, BYTE Data1, BYTE WRP0, BYTE WRP1, BYTE WRP2, BYTE WRP3);
virt_TARGET_GetSIFData				*pt_TARGET_GetSIFData;				//(LPBYTE User, LPBYTE RDP, LPBYTE Data0, LPBYTE Data1, LPBYTE WRP0, LPBYTE WRP1, LPBYTE WRP2, LPBYTE WRP3);
virt_STBL_SetRts					*pt_STBL_SetRts;						//(BOOL val);
virt_STBL_SetDtr					*pt_STBL_SetDtr;						//(BOOL val);
virt_STBL_setTxd					*pt_STBL_setTxd;						//(BOOL val);	
virt_STBL_getCts					*pt_STBL_getCts;						//(BOOL* pval);					
virt_STBL_getDtr					*pt_STBL_getDtr;						//(BOOL* pval);	
virt_STBL_getRi						*pt_STBL_getRi;						//(BOOL* pval);					
virt_STBL_getCd						*pt_STBL_getCd;						//(BOOL* pval);
virt_STBL_SetEcho                   *pt_STBL_SetEcho ;                  //(int val);
virt_STBL_SetFlowControl            *pt_STBL_SetFlowControl ;                  //(bool val);




DWORD   MAX_DATA_SIZE       = 0xFF;   // Packet size(in byte)
BYTE    ACK                 = 0x79;
BYTE    NACK                = 0x1F;

ACKS ACK_VALUE          = ST79;
LPTARGET_DESCRIPTOR Target;
CRS232 Cur_COM;
ACKS   McuTarget;
DWORD  Progress;
DWORD  ActivityTime ;

HINSTANCE ST_BL_Lib_Hdle = NULL;


BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    switch (ul_reason_for_call)
	{
		case DLL_PROCESS_ATTACH :{
			                        McuTarget = UNDEFINED;
								    Target = (LPTARGET_DESCRIPTOR)malloc(sizeof(TARGET_DESCRIPTOR));
								    
									Target->Version                    = 0x00;
									Target->CmdCount                   = 0x00;
									Target->PIDLen                     = 0x00;
									Target->PID                        = (LPBYTE)malloc(1);
									Target->ROPE                       = 0x00;
									Target->ROPD                       = 0x00; 

									Target->GET_CMD                    = FALSE    ; //Get the version and the allowed commands supported by the current version of the boot loader
									Target->GET_VER_ROPS_CMD           = FALSE    ; //Get the BL version and the Read Protection status of the NVM
									Target->GET_ID_CMD                 = FALSE    ; //Get the chip ID
									Target->READ_CMD                   = FALSE    ; //Read up to 256 bytes of memory starting from an address specified by the user
									Target->GO_CMD                     = FALSE    ; //Jump to an address specified by the user to execute (a loaded) code
									Target->WRITE_CMD                  = FALSE    ; //Write maximum 256 bytes to the RAM or the NVM starting from an address specified by the user
									Target->ERASE_CMD                  = FALSE    ; //Erase from one to all the NVM sectors
									Target->ERASE_EXT_CMD              = FALSE    ; //Erase from one to all the NVM sectors
									Target->WRITE_PROTECT_CMD          = FALSE    ; //Enable the write protection in a permanent way for some sectors
									Target->WRITE_TEMP_UNPROTECT_CMD   = FALSE    ; //Disable the write protection in a temporary way for all NVM sectors
									Target->WRITE_PERM_UNPROTECT_CMD   = FALSE    ; //Disable the write protection in a permanent way for all NVM sectors
									Target->READOUT_PERM_PROTECT_CMD   = FALSE    ; //Enable the readout protection in a permanent way
									Target->READOUT_TEMP_UNPROTECT_CMD = FALSE    ; //Disable the readout protection in a temporary way
									Target->READOUT_PERM_UNPROTECT_CMD = FALSE    ; //Disable the readout protection in a permanent way
								 }break;
		case DLL_THREAD_ATTACH  :{ 
			                        /*McuTarget = UNDEFINED;
								    Target = (LPTARGET_DESCRIPTOR)malloc(sizeof(TARGET_DESCRIPTOR));

								   	Target->Version                    = 0x00;
									Target->CmdCount                   = 0x00;
									Target->PIDLen                     = 0x00;
									Target->PID                        = (LPBYTE)malloc(1);
									Target->ROPE                       = 0x00;
									Target->ROPD                       = 0x00; 

									Target->GET_CMD                    = FALSE    ; //Get the version and the allowed commands supported by the current version of the boot loader
									Target->GET_VER_ROPS_CMD           = FALSE    ; //Get the BL version and the Read Protection status of the NVM
									Target->GET_ID_CMD                 = FALSE    ; //Get the chip ID
									Target->READ_CMD                   = FALSE    ; //Read up to 256 bytes of memory starting from an address specified by the user
									Target->GO_CMD                     = FALSE    ; //Jump to an address specified by the user to execute (a loaded) code
									Target->WRITE_CMD                  = FALSE    ; //Write maximum 256 bytes to the RAM or the NVM starting from an address specified by the user
									Target->ERASE_CMD                  = FALSE    ; //Erase from one to all the NVM sectors
									Target->WRITE_PROTECT_CMD          = FALSE    ; //Enable the write protection in a permanent way for some sectors
									Target->WRITE_TEMP_UNPROTECT_CMD   = FALSE    ; //Disable the write protection in a temporary way for all NVM sectors
									Target->WRITE_PERM_UNPROTECT_CMD   = FALSE    ; //Disable the write protection in a permanent way for all NVM sectors
									Target->READOUT_PERM_PROTECT_CMD   = FALSE    ; //Enable the readout protection in a permanent way
									Target->READOUT_TEMP_UNPROTECT_CMD = FALSE    ; //Disable the readout protection in a temporary way
									Target->READOUT_PERM_UNPROTECT_CMD = FALSE    ; //Disable the readout protection in a permanent way
								 */}break;
		case DLL_THREAD_DETACH  :{}break;
		case DLL_PROCESS_DETACH :{}break;
    }
    return TRUE;
}

/************************************************************************************/
/* SET COMMUNICATION INTERFACE TYPE
/* UART - CAN - ...
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_SetComIntType(BYTE com_int_type)
{
	//com_int_type = 0; //  This is reserved for Future, When the CANtoUSB Bridge will be available
	                  //  The CAN module and DLL should be used in com_int_type =1

	switch (com_int_type)
	{
		case 0:{
					ST_BL_Lib_Hdle = GetModuleHandle("STUARTBLLIB");
					if ( ST_BL_Lib_Hdle == NULL )
					{
						ST_BL_Lib_Hdle = LoadLibrary("STUARTBLLIB") ;
					}
		   }break;
		case 1:{
					ST_BL_Lib_Hdle = GetModuleHandle("STCANBLLIB");
					if ( ST_BL_Lib_Hdle == NULL )
					{
						ST_BL_Lib_Hdle = LoadLibrary("STCANBLLIB") ;
					}
		   }break;
	}


	pt_GetProgress					= (virt_GetProgress*)GetProcAddress(ST_BL_Lib_Hdle,"GetProgress");
	pt_GetActivityTime 				= (virt_GetActivityTime*)GetProcAddress(ST_BL_Lib_Hdle,"GetActivityTime");			//(LPDWORD time);  
	pt_SetActivityTime				= (virt_SetActivityTime*)GetProcAddress(ST_BL_Lib_Hdle,"SetActivityTime");				//(DWORD time); 
	pt_TARGET_GetFlashSize			= (virt_TARGET_GetFlashSize*)GetProcAddress(ST_BL_Lib_Hdle,"TARGET_GetFlashSize");
	pt_TARGET_GetMemoryAddress		= (virt_TARGET_GetMemoryAddress*)GetProcAddress(ST_BL_Lib_Hdle,"TARGET_GetMemoryAddress");
	pt_TARGET_GetRDPOptionByte		= (virt_TARGET_GetRDPOptionByte*)GetProcAddress(ST_BL_Lib_Hdle,"TARGET_GetRDPOptionByte");
	pt_TARGET_GetWRPOptionBytes		= (virt_TARGET_GetWRPOptionBytes*)GetProcAddress(ST_BL_Lib_Hdle,"TARGET_GetWRPOptionBytes");
	pt_Send_RQ						= (virt_Send_RQ*)GetProcAddress(ST_BL_Lib_Hdle,"Send_RQ");
	pt_SetCOMSettings				= (virt_SetCOMSettings*)GetProcAddress(ST_BL_Lib_Hdle,"SetCOMSettings");
	pt_COM_Open						= (virt_COM_Open*)GetProcAddress(ST_BL_Lib_Hdle,"COM_Open");
	pt_COM_Close					= (virt_COM_Close*)GetProcAddress(ST_BL_Lib_Hdle,"COM_Close");
	pt_STBL_SetSpeed				= (virt_STBL_SetSpeed*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_SetSpeed");
	pt_STBL_Init_BL					= (virt_STBL_Init_BL*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_Init_BL");
	pt_STBL_GET						= (virt_STBL_GET*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_GET");                   
	pt_STBL_GET_VER_ROPS			= (virt_STBL_GET_VER_ROPS*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_GET_VER_ROPS");          
	pt_STBL_GET_ID					= (virt_STBL_GET_ID*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_GET_ID");              
	pt_STBL_READ					= (virt_STBL_READ*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_READ");                   
	pt_STBL_GO						= (virt_STBL_GO*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_GO");                    
	pt_STBL_WRITE					= (virt_STBL_WRITE*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_WRITE");                  
	pt_STBL_ERASE					= (virt_STBL_ERASE*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_ERASE");     
	pt_STBL_WRITE_PROTECT			= (virt_STBL_WRITE_PROTECT*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_WRITE_PROTECT");          
	pt_STBL_WRITE_TEMP_UNPROTECT	= (virt_STBL_WRITE_TEMP_UNPROTECT*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_WRITE_TEMP_UNPROTECT"); 
	pt_STBL_WRITE_PERM_UNPROTECT	= (virt_STBL_WRITE_PERM_UNPROTECT*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_WRITE_PERM_UNPROTECT"); 
	pt_STBL_READOUT_PROTECT			= (virt_STBL_READOUT_PROTECT*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_READOUT_PROTECT");     
	pt_STBL_READOUT_TEMP_UNPROTECT	= (virt_STBL_READOUT_TEMP_UNPROTECT*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_READOUT_TEMP_UNPROTECT"); 
	pt_STBL_READOUT_PERM_UNPROTECT	= (virt_STBL_READOUT_PERM_UNPROTECT*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_READOUT_PERM_UNPROTECT");
	pt_STBL_UPLOAD					= (virt_STBL_UPLOAD*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_UPLOAD");
	pt_STBL_VERIFY					= (virt_STBL_VERIFY*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_VERIFY");
	pt_STBL_DNLOAD					= (virt_STBL_DNLOAD*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_DNLOAD"); 
	pt_SetPaketSize					= (virt_SetPaketSize*)GetProcAddress(ST_BL_Lib_Hdle,"SetPaketSize");
	pt_GetPaketSize					= (virt_GetPaketSize*)GetProcAddress(ST_BL_Lib_Hdle,"GetPaketSize");
	pt_GetAckValue					= (virt_GetAckValue*)GetProcAddress(ST_BL_Lib_Hdle,"GetAckValue");
	pt_COM_is_Open					= (virt_COM_is_Open*)GetProcAddress(ST_BL_Lib_Hdle,"COM_is_Open");
	pt_SetTimeOut					= (virt_SetTimeOut*)GetProcAddress(ST_BL_Lib_Hdle,"SetTimeOut");
	pt_TARGET_GetUserOptionByte		= (virt_TARGET_GetUserOptionByte*)GetProcAddress(ST_BL_Lib_Hdle,"TARGET_GetUserOptionByte");
	pt_TARGET_GetDataOptionByte		= (virt_TARGET_GetDataOptionByte*)GetProcAddress(ST_BL_Lib_Hdle,"TARGET_GetDataOptionByte");
	pt_TARGET_SetSIFData			= (virt_TARGET_SetSIFData*)GetProcAddress(ST_BL_Lib_Hdle,"TARGET_SetSIFData");
	pt_TARGET_GetSIFData			= (virt_TARGET_GetSIFData*)GetProcAddress(ST_BL_Lib_Hdle,"TARGET_GetSIFData");
	pt_STBL_SetRts					= (virt_STBL_SetRts*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_SetRts");
	pt_STBL_SetDtr					= (virt_STBL_SetDtr*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_SetDtr");
	pt_STBL_setTxd					= (virt_STBL_setTxd*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_setTxd");
	pt_STBL_getCts					= (virt_STBL_getCts*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_getCts");				
	pt_STBL_getDtr					= (virt_STBL_getDtr*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_getDtr");
	pt_STBL_getRi					= (virt_STBL_getRi*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_getRi");				
	pt_STBL_getCd					= (virt_STBL_getCd*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_getCd");
    pt_STBL_SetEcho					= (virt_STBL_SetEcho*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_SetEcho");
	pt_STBL_SetFlowControl			= (virt_STBL_SetFlowControl*)GetProcAddress(ST_BL_Lib_Hdle,"STBL_SetFlowControl");
	return 0;
}

/************************************************************************************/
/*Set the communication settings for UART, CAN, ...
/* UART - numPort, speedInBaud, nbBit,  parity, nbStopBit
/* CAN  - only : speedInBaud
/************************************************************************************/
STBLLIB_API BYTE SetCOMSettings(int numPort, long speedInBaud, int nbBit,
	                            int parity, float nbStopBit)
{
	if(pt_SetCOMSettings)
		return pt_SetCOMSettings(numPort, speedInBaud, nbBit, parity, nbStopBit);
	else 
		return LIB_LOADING_ERROR;
}

STBLLIB_API BYTE Send_RQ(LPSTBL_Request pRQ)
{
	if(pt_Send_RQ)
		return pt_Send_RQ(pRQ);
	else 
		return LIB_LOADING_ERROR;	
}

STBLLIB_API BYTE COM_Open()
{
	if(pt_COM_Open)
		return pt_COM_Open();
	else 
		return LIB_LOADING_ERROR;
}

STBLLIB_API BYTE COM_Close()
{
	if(pt_COM_Close)
		return pt_COM_Close();
	else 
		return LIB_LOADING_ERROR;
}

STBLLIB_API BYTE STBL_SetSpeed(DWORD speed)
{
	if(pt_STBL_SetSpeed)
		return pt_STBL_SetSpeed(speed);
	else 
		return LIB_LOADING_ERROR;
}

STBLLIB_API BYTE STBL_Init_BL()
{
	if(pt_STBL_Init_BL)
		return pt_STBL_Init_BL();
	else 
		return LIB_LOADING_ERROR;
}
/******************************************************************************************/
/* Boot Loader commands implementation                     
/******************************************************************************************/                                                                                   
STBLLIB_API BYTE STBL_GET(LPBYTE Version, LPCommands pCmds)
{
	if(pt_STBL_GET)
		return pt_STBL_GET(Version, pCmds);
	else 
		return LIB_LOADING_ERROR;
}
                                                                                    
STBLLIB_API BYTE STBL_GET_VER_ROPS(LPBYTE Version, LPBYTE ROPEnabled, LPBYTE ROPDisabled)
{
	if(pt_STBL_GET_VER_ROPS)
		return pt_STBL_GET_VER_ROPS(Version, ROPEnabled, ROPDisabled);
	else 
		return LIB_LOADING_ERROR;
}              
                                                                                    
STBLLIB_API BYTE STBL_GET_ID(LPBYTE size, LPBYTE pID) 
{
	if(pt_STBL_GET_ID)
		return pt_STBL_GET_ID(size, pID);
	else 
		return LIB_LOADING_ERROR;
}                   
                                                                                     
STBLLIB_API BYTE STBL_READ(DWORD Address, BYTE Size, LPBYTE pData) 
{
	if(pt_STBL_READ)
		return pt_STBL_READ(Address, Size, pData); 
	else 
		return LIB_LOADING_ERROR;
}                     
                                                                                    
STBLLIB_API BYTE STBL_GO(DWORD Address) 
{
	if(pt_STBL_GO)
		return pt_STBL_GO(Address); 
	else 
		return LIB_LOADING_ERROR;
}                       
                                                                                     
STBLLIB_API BYTE STBL_WRITE(DWORD address, BYTE size, LPBYTE pData)
{
	if(pt_STBL_WRITE)
		return pt_STBL_WRITE(address, size, pData);
	else 
		return LIB_LOADING_ERROR;
}                     
                                                                                    
STBLLIB_API BYTE STBL_ERASE(WORD NbSectors, LPBYTE pSectors)
{
	if(pt_STBL_ERASE)
		return pt_STBL_ERASE(NbSectors, pSectors);
	else 
		return LIB_LOADING_ERROR;
}    
                  
                                                                                    
STBLLIB_API BYTE STBL_WRITE_PROTECT(BYTE NbSectors, LPBYTE pSectors)
{
	if(pt_STBL_WRITE_PROTECT)
		return pt_STBL_WRITE_PROTECT(NbSectors, pSectors);
	else 
		return LIB_LOADING_ERROR;
}             
                                                                                    
STBLLIB_API BYTE STBL_WRITE_TEMP_UNPROTECT() 
{
	if(pt_STBL_WRITE_TEMP_UNPROTECT)
		return pt_STBL_WRITE_TEMP_UNPROTECT(); 
	else 
		return LIB_LOADING_ERROR;
}     
                                                                                    
STBLLIB_API BYTE STBL_WRITE_PERM_UNPROTECT() 
{
	if(pt_STBL_WRITE_PERM_UNPROTECT)
		return pt_STBL_WRITE_PERM_UNPROTECT(); 
	else 
		return LIB_LOADING_ERROR;
}     
                                                                                    
STBLLIB_API BYTE STBL_READOUT_PROTECT() 
{
	if(pt_STBL_READOUT_PROTECT)
		return pt_STBL_READOUT_PROTECT(); 
	else 
		return LIB_LOADING_ERROR;
}     
                                                                                    
STBLLIB_API BYTE STBL_READOUT_TEMP_UNPROTECT()  
{
	if(pt_STBL_READOUT_TEMP_UNPROTECT)
		return pt_STBL_READOUT_TEMP_UNPROTECT();  
	else 
		return LIB_LOADING_ERROR;
}  
    
/************************************************************************************/
/* READOUT_PERM_UNPROTECT
/*
/*
/************************************************************************************/                                                                                 
STBLLIB_API BYTE STBL_READOUT_PERM_UNPROTECT()  
{
    if(pt_STBL_READOUT_PERM_UNPROTECT)
		return pt_STBL_READOUT_PERM_UNPROTECT();  
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* UPLOAD
/*
/*
/************************************************************************************/
STBLLIB_API BYTE STBL_UPLOAD(DWORD Address, LPBYTE pData, DWORD Length)
{
	if(pt_STBL_UPLOAD)
		return pt_STBL_UPLOAD(Address, pData, Length);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* VERIFY
/*
/*
/************************************************************************************/
STBLLIB_API BYTE STBL_VERIFY(DWORD Address, LPBYTE pData, DWORD Length,BOOL bTruncateLeadFFForDnLoad)
{
	if(pt_STBL_VERIFY)
		return pt_STBL_VERIFY(Address, pData, Length,bTruncateLeadFFForDnLoad);
	else 
		return LIB_LOADING_ERROR;
}
/************************************************************************************/
/* DNLOAD - this command uses the STBL_WRITE function to download a big block of data
/*
/*
/************************************************************************************/
STBLLIB_API BYTE STBL_DNLOAD(DWORD Address, LPBYTE pData, DWORD Length,BOOL bTruncateLeadFFForDnLoad)
{
	if(pt_STBL_DNLOAD)
		return pt_STBL_DNLOAD(Address, pData, Length,bTruncateLeadFFForDnLoad);
	else 
		return LIB_LOADING_ERROR;
}
/************************************************************************************/
/* SET PACKET SIZE
/*
/*
/************************************************************************************/
STBLLIB_API BYTE SetPaketSize(BYTE size)
{
	if(pt_SetPaketSize)
		return pt_SetPaketSize(size);
	else 
		return LIB_LOADING_ERROR;
}
 
/************************************************************************************/
/* GET PACKET SIZE
/*
/*
/************************************************************************************/
STBLLIB_API BYTE GetPaketSize(LPBYTE size)
{
	if(pt_GetPaketSize)
		return pt_GetPaketSize(size);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* GetAckValue
/*
/*
/************************************************************************************/
STBLLIB_API ACKS GetAckValue()
{
  	if(pt_GetAckValue)
		return pt_GetAckValue();
	else 
		return UNDEFINED;	
}

/************************************************************************************/
/* IsConnected
/*
/*
/************************************************************************************/
STBLLIB_API BOOL COM_is_Open()
{
	if(pt_COM_is_Open)
		return pt_COM_is_Open();
	else 
		return FALSE;
}

/************************************************************************************/
/* SetTimeOut
/*
/*
/************************************************************************************/
STBLLIB_API BYTE SetTimeOut(DWORD vms)
{
    if(pt_SetTimeOut)
		return pt_SetTimeOut(vms);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* GetFlashSize
/*
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_GetFlashSize(DWORD Addr, LPWORD val)
{
	if(pt_TARGET_GetFlashSize)
		return pt_TARGET_GetFlashSize(Addr, val);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* GetMemoryAddress
/*
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_GetMemoryAddress(DWORD Addr, LPBYTE val)
{
	if(pt_TARGET_GetMemoryAddress)
		return pt_TARGET_GetMemoryAddress(Addr, val);
	else 
		return LIB_LOADING_ERROR;
}


/************************************************************************************/
/* GetRDPOptionByte
/*
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_GetRDPOptionByte(LPBYTE RDP)
{
	if(pt_TARGET_GetRDPOptionByte)
		return pt_TARGET_GetRDPOptionByte(RDP);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* GetWRPOptionBytes
/*
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_GetWRPOptionBytes(LPBYTE WRP0, LPBYTE WRP1, LPBYTE WRP2, LPBYTE WRP3)
{
	if(pt_TARGET_GetWRPOptionBytes)
		return pt_TARGET_GetWRPOptionBytes(WRP0, WRP1, WRP2, WRP3);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* GetUserOptionByte
/*
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_GetUserOptionByte(LPBYTE User)
{
	if(pt_TARGET_GetUserOptionByte)
		return pt_TARGET_GetUserOptionByte(User);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* GetDataOptionByte
/*
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_GetDataOptionByte(LPBYTE Data0, LPBYTE Data1)
{
	if(pt_TARGET_GetDataOptionByte)
		return pt_TARGET_GetDataOptionByte(Data0, Data1);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* SetSIFData
/*
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_SetSIFData(BYTE User, BYTE RDP, BYTE Data0, BYTE Data1, 
								   BYTE WRP0, BYTE WRP1, BYTE WRP2, BYTE WRP3)
{
	if(pt_TARGET_SetSIFData)
		return pt_TARGET_SetSIFData(User, RDP, Data0, Data1, WRP0, WRP1, WRP2, WRP3);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* SetSIFData
/*
/*
/************************************************************************************/
STBLLIB_API BYTE TARGET_GetSIFData(LPBYTE User, LPBYTE RDP, LPBYTE Data0, LPBYTE Data1, 
								   LPBYTE WRP0, LPBYTE WRP1, LPBYTE WRP2, LPBYTE WRP3)
{
	if(pt_TARGET_GetSIFData)
		return pt_TARGET_GetSIFData(User, RDP, Data0, Data1, WRP0, WRP1, WRP2, WRP3);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/* GET PROGRESS STATE
/*
/*
/************************************************************************************/
STBLLIB_API BYTE GetProgress(LPBYTE progress)
{
   	if(pt_GetProgress)
		return pt_GetProgress(progress);
	else 
		return LIB_LOADING_ERROR;
}
/************************************************************************************/
/* Get activity time
/*
/*
/************************************************************************************/
STBLLIB_API BYTE GetActivityTime(LPDWORD time)
{
  	if(pt_GetActivityTime)
		return pt_GetActivityTime(time);
	else 
		return LIB_LOADING_ERROR;
}  

/************************************************************************************/
/* Set activity time
/*
/*
/************************************************************************************/
STBLLIB_API BYTE SetActivityTime(DWORD time)
{
   	if(pt_SetActivityTime)
		return pt_SetActivityTime(time);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/*   Set Rts Line State
/*   High = TRUE
/*   Low  = FALSE
/************************************************************************************/
STBLLIB_API BYTE STBL_SetRts(BOOL Val)
{
	if(pt_STBL_SetRts)
		return pt_STBL_SetRts(Val);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/*   Set Dtr Line State
/*   High = TRUE
/*   Low  = FALSE
/************************************************************************************/
STBLLIB_API BYTE STBL_SetDtr(BOOL Val)
{
    if(pt_Send_RQ)
		return pt_STBL_SetDtr(Val);
	else 
		return LIB_LOADING_ERROR;
}

/************************************************************************************/
/*   Set the state of TXD. Return: true if success.
/*   High = TRUE
/*   Low  = FALSE
/************************************************************************************/
STBLLIB_API BYTE STBL_setTxd(BOOL val)
{
	if(pt_STBL_setTxd)
		return pt_STBL_setTxd(val);
	else 
		return LIB_LOADING_ERROR;
}
		
/************************************************************************************/
/*   Return: The state of CTS.
/*   High = TRUE
/*   Low  = FALSE
/************************************************************************************/
STBLLIB_API BYTE STBL_getCts(BOOL* pval)	
{
   	if(pt_STBL_getCts)
		return pt_STBL_getCts(pval);
	else 
		return LIB_LOADING_ERROR;
}				
			
/************************************************************************************/
/*   Return: The state of DTR.
/*   High = TRUE
/*   Low  = FALSE
/************************************************************************************/
STBLLIB_API BYTE STBL_getDtr(BOOL* pval)	
{
  	if(pt_STBL_getDtr)
		return pt_STBL_getDtr(pval);
	else 
		return LIB_LOADING_ERROR;
}
					
/************************************************************************************/
/*   Return: The state of RI.
/*   High = TRUE
/*   Low  = FALSE
/************************************************************************************/
STBLLIB_API BYTE STBL_getRi(BOOL* pval)
{
   	if(pt_STBL_getRi)
		return pt_STBL_getRi(pval);
	else 
		return LIB_LOADING_ERROR;
}					
	
/************************************************************************************/
/*   Return: The state of DTR.
/*   High = TRUE
/*   Low  = FALSE
/************************************************************************************/
STBLLIB_API BYTE STBL_getCd(BOOL* pval)	
{
   	if(pt_STBL_getCd)
		return pt_STBL_getCd(pval);
	else 
		return LIB_LOADING_ERROR;
}



/************************************************************************************/
/* Set Echo back Mode
/*   0   =  Echo Disabled
/*   1   =  Echo Back Enabled
/*   2   =  Listen Echo Enabled
/************************************************************************************/
STBLLIB_API BYTE STBL_SetEcho(int val)
{

	if(pt_STBL_SetEcho)
		return pt_STBL_SetEcho(val);
	else 
		return LIB_LOADING_ERROR;
}


/************************************************************************************/
/* SetFlowControl : Enable/Disable Flow Control of DTR and RTS
/* FALSE   =   Disabled
/* TRUE    =   Enabled
/************************************************************************************/
STBLLIB_API BYTE STBL_SetFlowControl(bool val)
{

	if(pt_STBL_SetFlowControl)
		return pt_STBL_SetFlowControl(val);
	else 
		return LIB_LOADING_ERROR;
}

/******************* (C) COPYRIGHT 2010 STMicroelectronics *****END OF FILE******/

