/******************** (C) COPYRIGHT 2010 STMicroelectronics ********************
* File Name          : rs232.cpp
* Author             : MCD Application Team
* Version            : v2.2.0
* Date               : 05/03/2010
* Description        : Implements the RS232 class for COM communication 
********************************************************************************
* THE PRESENT SOFTWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*******************************************************************************/

#include <windows.h>
#include <stdio.h>
#include <string.h>
#include "rs232.h"




///  set serial communication over COM1 with 115200 Bauds, 8 bitand no parity.  
CRS232::CRS232()
{
	hcom = NULL;	
	bufferSize = 2048;	

	numPort     = 1; 
	speedInBaud = 115200; 
	nbBit       = 8; 
	parity      = 2; 
	nbStopBit   = 1;

	isConnected = FALSE;
	bEcho =0;
	FlowControl = FALSE;
}
CRS232::~CRS232()
{
	if(hcom != NULL)
		closeCom();
}


void CRS232::SetComSettings(int _numPort, long _speedInBaud, int _nbBit, int _parity, float _nbStopBit)
{
	 numPort     = _numPort; 
	 speedInBaud = _speedInBaud; 
	 nbBit       = _nbBit; 
	 parity      = _parity; 
	 nbStopBit   = _nbStopBit;
}



bool CRS232::open()
{	
	
	char buf[] = "\\\\.\\COM1";

			
	if(numPort<1 || numPort>999)		
		return false;

	if(speedInBaud<1)		
		return false;

	if(nbBit<5 || nbBit > 9)
		return false;

	if(parity<0 || parity > 2)
		return false;

	if(nbStopBit<1 || nbStopBit > 2)
		return false;



	itoa(numPort, &buf[7], 10); 


	hcom=CreateFile(buf, GENERIC_READ | GENERIC_WRITE , 0, NULL, OPEN_EXISTING , 0, NULL);
  

	if (hcom==0 || hcom==INVALID_HANDLE_VALUE)
		return false;

	isConnected = TRUE;


	setTimeOut(5000);


	if ( !SetupComm(hcom, bufferSize, bufferSize) )     
	    return false;


    if ( !GetCommState(hcom, &dcb))
		return false;


	dcb.BaudRate = speedInBaud;


	dcb.ByteSize = nbBit;
	

	if(nbStopBit == 1)
		dcb.StopBits = ONESTOPBIT;
	if(nbStopBit == 1.5)
		dcb.StopBits = ONE5STOPBITS;
	if(nbStopBit == 2)
		dcb.StopBits = TWOSTOPBITS;
	

	if(parity == 0)
		dcb.Parity = NOPARITY;
	if(parity == 1)
		dcb.Parity = ODDPARITY;
	if(parity == 2)
		dcb.Parity = EVENPARITY;



    if ( FlowControl == true)
    {
      dcb.fDtrControl = DTR_CONTROL_ENABLE;   
	  dcb.fRtsControl = RTS_CONTROL_ENABLE;  
    }
	else 
	{

	  dcb.fDtrControl = DTR_CONTROL_DISABLE;   
	  dcb.fRtsControl = RTS_CONTROL_DISABLE;  
	
	}



	  if (!SetCommState(hcom, &dcb))
		return false;
	  else
		return true;



}

void CRS232::closeCom()
{
	CloseHandle(hcom);
	hcom = NULL;
	isConnected = FALSE;
}

bool CRS232::setTimeOut(DWORD ms)
{

	if( ms<0)
		return false;

	ct.ReadIntervalTimeout = ms;
	ct.ReadTotalTimeoutMultiplier = ms;	
	ct.ReadTotalTimeoutConstant = ms;
	ct.WriteTotalTimeoutMultiplier = ms;
	ct.WriteTotalTimeoutConstant = ms;
	if ( !SetCommTimeouts(hcom, &ct) )      
		return false;

	return false;
	//MSDN: The SetCommTimeouts function sets the time-out parameters for all read and write operations on a specified communications device.
}

bool CRS232::setSpeed(DWORD baudrate)
{
	
	if( baudrate<1)
		return false;


	if (!GetCommState(hcom, &dcb))
		return FALSE;

	dcb.BaudRate = baudrate;

	if (!SetCommState(hcom, &dcb))
		return FALSE;
	else 
		return TRUE;


	

	//MSDN: The SetCommState function configures a communications device according to the specifications in a device-control block (a DCB structure). The function reinitializes all hardware and control settings, but it does not empty output or input queues.
}

int  CRS232::sendData(string* data)
{
	
	if( data == NULL )
		return false;

	return sendData((DWORD)data->size(), (LPBYTE)data->data());
}

int CRS232::sendData(DWORD lg, LPBYTE data)
{
	DWORD result=0;
	DWORD result1=0;
	DWORD counter =0;

	
	if( lg<0 || data==NULL)
		return false;



    if  ( bEcho == 2)
	{


	   for ( counter =0 ; counter <  lg ; counter ++)

		 {
		 
		 
		   	if ( !WriteFile(hcom, data+counter, 1, &result1, 0) )
			return -1;	

		   	if( lg<0 || data==NULL)
		    return false;


		     if (!ReadFile(hcom, data+counter, 1, &result, 0))
			 return -1;
		 
		 }

		 return (counter);



    }

	else 
	{

	  if ( !WriteFile(hcom, data, lg, &result, 0) )
		return -1;
	  else
		return (int)result;
    }




	//MSDN:  The WriteFile function writes data to a file and is designed for both synchronous
	//		and asynchronous operation. The function starts writing data to the file at the 
	//		position indicated by the file pointer. After the write operation has been completed
	//		, the file pointer is adjusted by the number of bytes actually written, except when
	//		the file is opened with FILE_FLAG_OVERLAPPED. If the file handle was created for 
	//		overlapped input and output (I/O), the application must adjust the position of the
	//		file pointer after the write operation is finished.
    //       This function is designed for both synchronous and asynchronous operation. 
	//		The WriteFileEx function is designed solely for asynchronous operation. 
	//		It lets an application perform other processing during a file write operation.

}

int CRS232::receiveData(string* data)
{	char buffer[1025];
	int nbChar=0;


	if( data==NULL)
		return false;

	nbChar = receiveData(1024, (LPBYTE)buffer);
	buffer[nbChar] = 0;
	data->assign(buffer);
	return nbChar;
}

int CRS232::receiveData(DWORD lg, LPBYTE data)
{
	DWORD result=0;
    DWORD result1=0;
	DWORD counter =0;

	
	if( lg<0 || data==NULL)
		return false;


    if  ( bEcho == 0)
	{
		if (!ReadFile(hcom, data, lg, &result, 0))
			return -1;
		else
			return (int)result;
	}
    
	
	else if  ( bEcho == 1)
	{
	
	     for ( counter =0 ; counter <  lg ; counter ++)

		 {
		 
		 
		   if (!ReadFile(hcom, data+counter, 1, &result, 0))
				return -1;

		   	if( lg<0 || data==NULL)
		    return false;

		   if ( !WriteFile(hcom, data+counter, 1, &result1, 0) )
			    return -1;					
		 
		 }

		 return (counter);
		
		
	}

	else if  ( bEcho == 2)
	{
		if (!ReadFile(hcom, data, lg, &result, 0))
			return -1;
		else
			return (int)result;
	}


	else
	{
		
		/* TODO */

		return -1;
	
	}



	//MSDN:   The ReadFile function reads data from a file, starting at the position indicated 
	//		 by the file pointer. After the read operation has been completed, the file pointer
	//		 is adjusted by the number of bytes actually read, unless the file handle is 
	//		 created with the overlapped attribute. If the file handle is created for 
	//		 overlapped input and output (I/O), the application must adjust the position of 
	//		 the file pointer after the read operation.
	//        This function is designed for both synchronous and asynchronous operation. 
	//		 The ReadFileEx function is designed solely for asynchronous operation. It lets 
	//		 an application perform other processing during a file read operation.

}

/**************************** SetRts(val) **************************************************/

bool CRS232::setRts(bool val)				
{ 
	if(val)
	  { 
		  if(EscapeCommFunction(hcom, SETRTS) == TRUE )
			  return true;
	  }
	else
	  { 
		  if(EscapeCommFunction(hcom, CLRRTS) == TRUE )
			  return true;
	  }

   return false;
}

/**************************** SetTxd(val) ***************************************************/
bool CRS232::setTxd(bool val)				
{ 
	if(val)
	  { 
		  if( EscapeCommFunction(hcom, SETBREAK) == TRUE )
			  return true;
	  }
	else
	  { 
		  if( EscapeCommFunction(hcom, CLRBREAK) == TRUE )
			  return true;
	  }
   return false;
}
	
/**************************** SetDtr(val) ************************************************** */
bool CRS232::setDtr(bool val)						
{ 
	if(val)
	  {
		  if( EscapeCommFunction(hcom, SETDTR) == TRUE )
			  return true;
	  }
	else
	  { 
		  if( EscapeCommFunction(hcom, CLRDTR) == TRUE )
			  return false;
	  }
    return false;
}

/********************** GetCts() ***********************/
bool CRS232::getCts()						
{ 
	DWORD result;
		GetCommModemStatus(hcom, &result);
		if(result & MS_CTS_ON)
			return true;
		else
			return false;
}

/********************** GetDtr() ***********************/
bool CRS232::getDtr()						
{ 
  DWORD result;
		GetCommModemStatus(hcom, &result);
		if(result & MS_DSR_ON)
			return true;
		else
			return false;
}

/********************** GetRi() ***********************/
bool CRS232::getRi()						
{ 
  DWORD result;
		GetCommModemStatus(hcom, &result);
		if(result & MS_RING_ON)
			return true;
		else
			return false;
}


/********************** GetCd() ***********************/
bool CRS232::getCd()						
{ int err=0;
  DWORD result;
		err = GetCommModemStatus(hcom, &result);
		if(result & MS_RLSD_ON)
			return true;
		else
			return false;
}




string CRS232::getErrorMsg()
{
	LPVOID lpMsgBuf;
	string sErreur = "";

	if ( FormatMessage( FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
							NULL, GetLastError(),
							MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
							(LPTSTR) &lpMsgBuf, 0, NULL ))
	{
		sErreur.assign((LPCTSTR)lpMsgBuf);
	}

	return sErreur;
}




void CRS232::SetParity(int _parity)
{
	
	if(_parity == 0)
		dcb.Parity = NOPARITY;
	if(_parity == 1)
		dcb.Parity = ODDPARITY;
	if(_parity == 2)
		dcb.Parity = EVENPARITY;



	SetCommState(hcom, &dcb);
}

/******************* (C) COPYRIGHT 2010 STMicroelectronics *****END OF FILE******/
