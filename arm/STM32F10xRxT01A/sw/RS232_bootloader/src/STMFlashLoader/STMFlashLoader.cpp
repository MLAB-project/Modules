/******************** (C) COPYRIGHT 2010 STMicroelectronics ********************
* File Name          : STMFlashLoader.cpp
* Author             : MCD Application Team
* Version            : v2.2.0
* Date               : 05/03/2010
* Description        : STM Flash Loader command line version
********************************************************************************
* THE PRESENT SOFTWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*******************************************************************************/

#include "stdafx.h"
#include "string.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <dos.h>

#include "../STBLLIB/STBLLIB.h"
#include "../Files/Files.h"
#include "ini.h"


#define NONE = 0;
#define ODD  = 1;
#define EVEN = 2;

typedef enum STATE {OK,KO};

char MapFile[256];
PMAPPING pmMapping;

int TimeBO = 100;

BOOL SHOW_OK = TRUE;  // Set to TRUE/FALSE to show/hide OK status  messages
BOOL SHOW_KO = TRUE;  // Set to TRUE/FALSE to show/hide KO status  messages

/*******************************************************************************************/
/* Function    : FileExist                                                                 */
/* IN          : file name                                                                 */
/* OUT         : boolean                                                                   */
/* Description : verify if the given file exists                                           */
/*******************************************************************************************/
BOOL FileExist(LPCTSTR filename)
{
	// Data structure for FindFirstFile
	WIN32_FIND_DATA findData;

	// Clear find structure
	ZeroMemory(&findData, sizeof(findData));

	// Search the file
	HANDLE hFind = FindFirstFile( filename, &findData );
	if ( hFind == INVALID_HANDLE_VALUE )
	{
	// File not found
	return false;
	}

	// File found

	// Release find handle
	FindClose( hFind );
	hFind = NULL;

	// The file exists
	return true;
}

/*******************************************************************************************/
/* Function    : void man()                                                                */
/* IN          :                                                                           */
/* OUT         :                                                                           */
/* Description : print the manual on the standard output                                   */
/*******************************************************************************************/
void man()
{
	printf("STMicroelectronics UART Flash Loader command line v2.2.0.MLAB \n\n");
	printf(" Usage : \n\n");
	printf(" STMFlashLoader.exe [options] [Agrument][[options] [Agrument]...] \n\n");
    
	printf("  -?                   (Show this help) \n");
	printf("  -c                   (Establish connection to the COM port) \n");
	printf("     --pn  port_nb     : e.g: 1, 2 ..., default 1 \n");
	printf("     --br  baud_rate   : e.g: 115200, 57600 ..., default 57600 \n");
	printf("     --db  data_bits   : value in {5,6,7,8} ..., default 8 \n");
	printf("     --pr  parity      : value in {NONE,ODD,EVEN} ..., default EVEN \n");
	printf("     --sb  stop_bits   : value in {1,1.5,2} ..., default 1 \n");
    printf("     --ec  echo        : value OFF or ECHO or LISTEN ..., default is OFF \n");	
	printf("     --co  control     : Enable or Disable RTS and DTR outputs control  \n");
	printf("                       : value OFF or ON ..., default is OFF \n");
	printf("     --to  time_out    : (ms) e.g 1000, 2000, 3000 ..., default 5000 \n");

	printf("  -Rts                 (set Rts line to Hi, Lo)\n");
	printf("     --State           : State in {Hi, Lo} \n");
	printf("  -Dtr                 (Set Rts line to Hi, Lo)\n");
	printf("     --State           : State in {Hi, Lo}\n");

	printf("  -Auto                (Set Rts and Dtr line Automatically)\n");

	printf("  -i  device_name      (e.g STM32_Low-density_16K, [See the Map directory]) \n");

	printf("  -e                   (erase flash pages\n");
	printf("     --all all pages   : erase all pages\n");
	printf("     --sec number_of_pages_group pages_group_codes : erase specified group pages \n");

	printf("  -u                   (Upload flash contents to a .bin, .hex or .s19 file )\n");
	printf("     --fn  file_name   : full path name of the file \n");

	printf("  -d                   (Download the content of a file into MCU flash) \n");
	printf("     --a   address(hex): start @ in hex ; ignored if it is not a binary file \n");
	printf("     --fn  file_name   : full path name (.bin, .hex or .s19 file) \n");
	printf("     --v               : verify after download \n");
	printf("     --o               : optimize; removes FFs data \n");


    printf("  -r                   (Run the flash code at the specified address \n");
	printf("     --a address(hex)  : address in hexadecimal) \n");


	printf("  -p        (Enable or Disable protections) \n");
	printf("     --ewp  : enable write protection for sector codes (e.g 1,2,etc.) \n");
	printf("     --dwp  : disable write protection \n");
	printf("     --drp  : disable read protection \n");
    printf("     --erp  : enable read protection, all arguments following this one will fail \n");


	printf("  -o                   (Get or Set STM32 option bytes: use -d command for STM8!) \n");              
	printf("     --get --fn file_name : get option bytes from the device \n");
    printf("                            and write it in the specified file \n");
	printf("     --set --fn file_name : load option bytes from the specified file \n");
    printf("                            and write it to the device \n");
	printf("     --set --vals --OPB hex_val : set the specified option byte; OPB in: User, \n");
    printf("                                  RDP, Data0, Data1, WRP0, WRP1, WRP2, WRP3 \n");


}





/*******************************************************************************************/
/* Function    : ParityToInt                                                               */
/* IN          : parity as string (NONE, ODD, EVEN)                                        */
/* OUT         : integer                                                                   */
/* Description : Get the integer representation of the given parity                        */
/*******************************************************************************************/
int ParityToInt(char* parity)
{
    if (strcmp(parity,"NONE")==0) return 0;
    else if(strcmp(parity,"ODD")==0) return 1;
    else if(strcmp(parity,"EVEN")==0) return 2;
    else return 2;
}


/*******************************************************************************************/
/* Function    : ModeToInt                                                                 */
/* IN          : Mode as string (OFF, ECHO, LISTEN)                                        */
/* OUT         : int                                                                      */
/* Description : Get the int representation of the given string Mode                       */
/*******************************************************************************************/
int ModeToInt(char* status)
{
    if (strcmp(status,"OFF")==0) return 0;
	else if(strcmp(status,"ECHO")==0) return 1;
	else if(strcmp(status,"LISTEN")==0) return 2;
    else return 0;
}

/*******************************************************************************************/
/* Function    : StatusToBool                                                              */
/* IN          : Status as string (ON, OFF)                                                */
/* OUT         : Bool                                                                      */
/* Description : Get the boolean representation of the given string ON/OFF                 */
/*******************************************************************************************/
bool StatusToBool(char* status)
{
    if (strcmp(status,"OFF")==0) return false;
	else if(strcmp(status,"ON")==0) return true;
    else return false;
}


/*******************************************************************************************/
/* Function    : Is_Option                                                                 */
/* IN          : option as string                                                          */
/* OUT         : boolean                                                                   */
/* Description : Verify if the given string present an option                              */
/*******************************************************************************************/
bool Is_Option(char* option)
{
	if (strcmp(option,"-?")==0) return true;
	else if (strcmp(option,"-c")==0) return true;
	else if (strcmp(option,"-i")==0) return true;
	else if (strcmp(option,"-e")==0) return true;
	else if (strcmp(option,"-u")==0) return true;
	else if (strcmp(option,"-d")==0) return true;
	else if (strcmp(option,"-v")==0) return true;
	else if (strcmp(option,"-p")==0) return true;
	else if (strcmp(option,"-r")==0) return true;
	else if (strcmp(option,"-o")==0) return true;
	else if (strcmp(option,"-Rts")==0) return true;
	else if (strcmp(option,"-Dtr")==0) return true;
	else if (strcmp(option,"-Auto")==0) return true;
    else return false;
}

/*******************************************************************************************/
/* Function    : Is_SubOption                                                              */
/* IN          : sub-option as string                                                      */
/* OUT         : boolean                                                                   */
/* Description : Verify if the given string present a sub-option                           */
/*******************************************************************************************/
bool Is_SubOption(char* suboption)
{
	if (strcmp(suboption,"--pn")==0) return true;  
	else if (strcmp(suboption,"--br")==0) return true;  
	else if (strcmp(suboption,"--db")==0) return true;  
	else if (strcmp(suboption,"--pr")==0) return true;  
	else if (strcmp(suboption,"--sb")==0) return true;
	else if (strcmp(suboption,"--ec")==0) return true;
	else if (strcmp(suboption,"--co")==0) return true;
	else if (strcmp(suboption,"--to")==0) return true;  
	else if (strcmp(suboption,"--lcs")==0) return true; 
	else if (strcmp(suboption,"--all")==0) return true; 
	else if (strcmp(suboption,"--sec")==0) return true; 
	else if (strcmp(suboption,"--a")==0) return true;
	else if (strcmp(suboption,"--s")==0) return true;
	else if (strcmp(suboption,"--fn")==0) return true;
	else if (strcmp(suboption,"--v")==0) return true;
	else if (strcmp(suboption,"--o")==0) return true;
	else if (strcmp(suboption,"--erp")==0) return true;
	else if (strcmp(suboption,"--drp")==0) return true;
	else if (strcmp(suboption,"--ewp")==0) return true;
	else if (strcmp(suboption,"--dwp")==0) return true;
	else if (strcmp(suboption,"--get")==0) return true;
	else if (strcmp(suboption,"--set")==0) return true;
	else if (strcmp(suboption,"--vals")==0) return true;
	else if (strcmp(suboption,"--RDP")==0) return true;
	else if (strcmp(suboption,"--User")==0) return true;
	else if (strcmp(suboption,"--Data0")==0) return true;
	else if (strcmp(suboption,"--Data1")==0) return true;
	else if (strcmp(suboption,"--WRP0")==0) return true;
	else if (strcmp(suboption,"--WRP1")==0) return true;
	else if (strcmp(suboption,"--WRP2")==0) return true;
	else if (strcmp(suboption,"--WRP3")==0) return true;
	else if (strcmp(suboption,"--Hi")==0) return true;
	else if (strcmp(suboption,"--Lo")==0) return true;
	else return false;
}

/*******************************************************************************************/
/* Function    : write_debug_info                                                          */
/* IN          :                                                                           */
/* OUT         :                                                                           */
/* Description : print the output messages on the standart output                          */
/*******************************************************************************************/
void write_debug_info(char *msg, int page, DWORD addr, float size, STATE status)
{
	char d_info[256];

	if((page==0) && (addr==0) && (size==0))
	{
		if(status == OK) 
		   sprintf(d_info, "%s \t\t\t\t [OK] \n", msg);  
	    else 
		   sprintf(d_info, "%s \t\t\t\t [KO] \n", msg); 
	}
	else if(status == OK) 
		sprintf(d_info, "%s \t page %i \t @0x %8X \t size %.2f(KB) \t [OK] \n", msg, page, addr, (float)size);  
	else 
		sprintf(d_info, "%s \t page %i \t @0x %8X \t size %.2f(KB) \t [KO] \n", msg, page, addr, (float)size); 

	if((SHOW_OK && (status == OK)) || (SHOW_KO && (status == KO))) printf(d_info);
}

/*******************************************************************************************/
/* Function    : main                                                                      */
/* IN          :                                                                           */
/* OUT         :                                                                           */
/* Description :                                                                           */
/*******************************************************************************************/
int main(int argc, char* argv[])
{
    START:

	BYTE Res = SUCCESS;
	BYTE User, RDP, Data0, Data1, WRP0, WRP1, WRP2, WRP3;
	bool WaitForMoreSubOpt = TRUE;

	//Initializing default serial connection parameters
	int    portname   = 1;
	long   BaudRate   = 57600 ;
	int    DataBits   = 8;
	int    parity     = ParityToInt("EVEN"); 
	double nbStopBit  = 1;
	int    timeout    = 5000;
	bool   control    = false;

	int    nsec     = 0;
	DWORD  address  = 0x00000000;
	DWORD  size     = 0x00000000;
	char*  filename;
	char   devname[256] = "STM32_Low-density_32K.STmap";
	bool   Verify = FALSE;
	bool   optimize = FALSE;
	int    becho = 0;

	char Drive[3], Dir[256], Fname[256], Ext[256];
	char *ptr;

	bool bAuto = false;


	if (argc == 1)  // wrong parameters
		man();
	else
	{
		int arg_index = 1;

		while(arg_index < argc)
		{
			if(!Is_Option(argv[arg_index])) 
			{
			  if (arg_index < argc - 1) 
				  printf("bad parameter [%s] \n", argv[arg_index]);

			   if(COM_is_Open())  
				  COM_Close();

			   if (bAuto)
					goto Done_Success;

			  printf("\n Press any key to continue ..."); 
			  getchar(); 
			  return 1;
			}

			//============================ Show the man =========================================
			if (strcmp(argv[arg_index],"-?")==0) 
			{
				man(); 
				return 0;
			}
			//=============================== connect ============================================
			else if (strcmp(argv[arg_index],"-c")==0)
			{
			   while(arg_index < argc)
			   {
			     if (arg_index< argc-1) 
					 arg_index++;
			     else 
					 break;

				 if(Is_Option(argv[arg_index])) // Set default connection settings and continue with the next option
					 break;
				 
				 else if(Is_SubOption(argv[arg_index])) // Get connection settings
				 {
					 if (arg_index< argc-1) 
						 arg_index++;
			         else 
						 break;

					 if (strcmp(argv[arg_index-1],"--pn")==0)       portname = atoi(argv[arg_index]);//port name  (e.g COM1, COM2 ..., default COM1) \n");
					 else if (strcmp(argv[arg_index-1],"--br")==0)  BaudRate = atoi(argv[arg_index]);//baud reate (e.g 115200, 128000 ..., default 57600) \n");
					 else if (strcmp(argv[arg_index-1],"--db")==0)  DataBits = atoi(argv[arg_index]);//data bits  (in {5,6,7,8} ..., default 8) \n");
					 else if (strcmp(argv[arg_index-1],"--pr")==0)  parity   = ParityToInt(argv[arg_index]); //parity     (in {NONE,ODD,EVEN} ..., default EVEN) \n");
					 else if (strcmp(argv[arg_index-1],"--sb")==0)  nbStopBit= atof(argv[arg_index]);//stop bits  (in {1,1.5,2} ..., default 1) \n");
					 else if (strcmp(argv[arg_index-1],"--to")==0)  timeout  = atoi(argv[arg_index]);//time out   (e.g 1000, 2000, 3000 ..., default 5) \n");
				     else if (strcmp(argv[arg_index-1],"--ec")==0)  becho  = ModeToInt(argv[arg_index]); // Echo back mode, default is OFF \n");
				     else if (strcmp(argv[arg_index-1],"--co")==0)  control  = StatusToBool(argv[arg_index]); // Outputs Control ON/OFF, default is OFF \n");
				 
				 }
				 else 
				 {
					 if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }
			   }



			   // Apply serial connection settings
			   TARGET_SetComIntType(0);
			   SetCOMSettings(portname, BaudRate, DataBits, parity, nbStopBit);
			   STBL_SetFlowControl(control);


			   // Opening serial connection
			   Res = COM_Open();
			   SetTimeOut(1000);

			   if ((Res != SUCCESS) && (Res != COM_ALREADY_OPENED)) 
			   {
				    write_debug_info("Opening Port", 0 ,0, 0, KO);
					printf("Cannot open the com port, the port may \n be used by another application \n");

					if(COM_is_Open())  
						COM_Close(); 

					printf("\n Press any key to continue ..."); 
					getchar(); 
					return 1;
			   }
			   else 			   write_debug_info("Opening Port", 0 ,0, 0, OK);


			  
		   
			   STBL_SetEcho(becho);  // Setting Echo back mode

			}


            //============================ Auto option =======================================
			else if (strcmp(argv[arg_index],"-Auto")==0)
			{
			   if (arg_index< argc) 
				   arg_index++;
			   else 
				   break;

				bAuto = true;
				
				// BOOT0 = High
				STBL_SetDtr(TRUE);
				Sleep(100);
				// Reset = Low
				STBL_SetRts(TRUE); 

				Sleep(100);

				// Reset = High
				STBL_SetRts(FALSE); 
				Sleep(100);
				
				STBL_SetDtr(FALSE); 
				Sleep(100);

				COM_Close();     
				COM_Open();

				STBL_SetDtr(TRUE);
				Sleep(100);
				// Reset = Low
				STBL_SetRts(TRUE); 

				Sleep(100);

				// Reset = High
				STBL_SetRts(FALSE); 
				Sleep(100);

				STBL_SetDtr(FALSE); 
				Sleep(500);

				write_debug_info("Setting device to BOOT0", 0 ,0, 0, OK);
			}



            //============================ command RTS pin =======================================
			else if (strcmp(argv[arg_index],"-Rts")==0)
			{
				//_sleep(1000);
			   while(arg_index < argc)
			   {
			     if (arg_index< argc-1) arg_index++;
			     else break;

				 if(Is_Option(argv[arg_index])) break;
				 else if(Is_SubOption(argv[arg_index]))
				 {
					 
					 
					 
					 if (strcmp(argv[arg_index],"--Hi")==0) 
					 {
						 write_debug_info("Set Rts line", 0 ,0, 0,OK);
						 STBL_SetRts(TRUE); 



					 }
					 else if (strcmp(argv[arg_index],"--Lo")==0)  
					 {
						 write_debug_info("Reset Rts line", 0 ,0, 0,OK);
						 STBL_SetRts(FALSE);
					 }
					 else 
					 {
						 write_debug_info("bad parameter [Set Rts line] should be Hi or Lo ", 0 ,0, 0,KO);

						 if (arg_index < argc - 1) 
							printf("bad parameter [%s] \n", argv[arg_index]);

						 if(COM_is_Open()) 
							COM_Close(); 

						 printf("\n Press any key to continue ..."); 
						 getchar(); 
						 return 1;
					 }
				 }
				 else 
				 {
					 if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }
			   }
			}
            //============================ command DTR pin =======================================
			else if (strcmp(argv[arg_index],"-Dtr")==0)
			{
			   while(arg_index < argc)
			   {
			     if (arg_index< argc-1) 
					 arg_index++;
			     else 
					 break;

				 if(Is_Option(argv[arg_index])) 
					 break;

				 else if(Is_SubOption(argv[arg_index]))
				 {
					 if (strcmp(argv[arg_index],"--Hi")==0) 
					 {
						 write_debug_info("Set Dtr line", 0 ,0, 0,OK);
						 STBL_SetDtr(TRUE);

					 }
					 else if (strcmp(argv[arg_index],"--Lo")==0)  
					 {
						 write_debug_info("Reset Dtr line", 0 ,0, 0,OK);
						 STBL_SetDtr(FALSE);
					 }
					 else 
					 {
						 write_debug_info("bad parameter [Set Dtr line] should be Hi or Lo ", 0 ,0, 0,KO);

						 if (arg_index < argc - 1) 
							printf("bad parameter [%s] \n", argv[arg_index]);

						 if(COM_is_Open())  
							COM_Close(); 

						 printf("\n Press any key to continue ..."); 
						 getchar(); 
						 return 1;
					 }
				 }
				 else 
				 {
                     if (arg_index < argc - 1) printf("bad parameter [%s] \n", argv[arg_index]);
					 if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }
			   }
			}
            //============================ ERASE =================================================
			else if (strcmp(argv[arg_index],"-e")==0)
			{
			   	
			   while(arg_index < argc)
			   {
				 if (!WaitForMoreSubOpt) 
					 break;
				 
			     if (arg_index< argc-1) 
					 arg_index++;
			     else 
					 break;

				 if(Is_Option(argv[arg_index])) 
					 break;

				 else if(Is_SubOption(argv[arg_index]))
				 {
					 if (arg_index< argc) 
						 arg_index++;
			         else 
						 break;

					   //******************** This section is only for STM8 boot loader *******************
					   BYTE Version;
					   Commands pCmds;
					   CString m_Version;
					   if (STBL_GET(&Version, &pCmds) == SUCCESS)
					   {
							m_Version.Format("%x.%x",Version/16, Version & 0x0F)  ;
					   }	
					   CIni Ini((LPCSTR)MapFile);

					   if(Ini.IsKeyExist((LPCTSTR)"Product",(LPCTSTR)m_Version))
					   {
						   CString E_W_ROUTINEs = Ini.GetString((LPCTSTR)"Product",(LPCTSTR)m_Version, "");
						   CString Path(*__argv);

						   char fullPath [MAX_PATH];

						   GetModuleFileName(0, fullPath, (MAX_PATH));

						   Path=fullPath;

						   int j=Path.ReverseFind('\\')+1;
						   if(j) Path=Path.Left(j);

						   CString ToFind;

						   ToFind.Format("%s%s%s", Path, "STM8_Routines\\", E_W_ROUTINEs);

						   if(!E_W_ROUTINEs.IsEmpty())
						   {
							   if(!FileExist((LPCTSTR)ToFind))
							   {
								   printf("\n!WARNING the erase or download operation may fail \n EW routines file is missing [%s]\n", ToFind); 
							   }
							   else
							   {
									HANDLE Image;
									if (FILES_ImageFromFile((LPSTR)(LPCSTR)ToFind,&Image, 1)== FILES_NOERROR)
									{
										FILES_SetImageName(Image,(LPSTR)(LPCSTR)ToFind);

										DWORD NbElements; 
										if (FILES_GetImageNbElement(Image, &NbElements) == FILES_NOERROR)
										{
											for (int el=0; el< (int)NbElements;el++)
											{
												IMAGEELEMENT Element={0};
												if (FILES_GetImageElement(Image, el, &Element) == FILES_NOERROR)
												{	   
													Element.Data=new BYTE[Element.dwDataLength];
													if (FILES_GetImageElement(Image, el, &Element) == FILES_NOERROR)
													{
														if (STBL_DNLOAD(Element.dwAddress, Element.Data, Element.dwDataLength, FALSE) != SUCCESS)
														{
															  
														}
													}
												}
											}

											// Verify writen data
											BOOL VerifySuccess = TRUE;
											_sleep(100);;

#ifndef _VS6_USED
											int el;
#endif
											for (el=0; el< (int)NbElements;el++)
											{
												IMAGEELEMENT Element={0};
												if (FILES_GetImageElement(Image, el, &Element) == FILES_NOERROR)
												{
													Element.Data=new BYTE[Element.dwDataLength];
													if (FILES_GetImageElement(Image, el, &Element) == FILES_NOERROR)
													{
														if (STBL_VERIFY(Element.dwAddress, Element.Data, Element.dwDataLength, FALSE) != SUCCESS)
														{
															VerifySuccess = FALSE;
															char str[255];
															sprintf(str, "%s at address :0x%X. \n%s \nPlease disable the write protection then try agin.", "Data not matching ", Element.dwAddress, "The page may be write protected.");   
															AfxMessageBox(str, MB_OK|MB_ICONEXCLAMATION);
															return 1;
														}
													}
												}
											}
										}
									}
        							else
									{
										 AfxMessageBox("Unable to load data from this file " + ToFind + " ...");
										 return -1;
									}
							   }
						   }
					   }
					   else
					   {
						   int family = Ini.GetInt((LPCTSTR)"Product",(LPCTSTR)"family", 0);
						   if(family == 3)
						   {
							   printf("\n!WARNING the erase or download operation may fail \n EW routines file is missing\n"); 
						   }
					   }
					   //End****************** This section is only for STM8 boot loader *******************

					 //End****************** This section is only for STM8 boot loader *******************

					   printf("\n ERASING ... \n");
					 if (strcmp(argv[arg_index-1],"--all")==0)   
					 {
						 
						 WaitForMoreSubOpt = false;
						 Res = STBL_ERASE(0xFFFF, NULL);



						 if (Res != SUCCESS) 
							 write_debug_info("erasing all pages", 0 ,0, 0, KO);
						 else 
							 write_debug_info("erasing all pages", 0 ,0, 0, OK);
					 }
					 else if (strcmp(argv[arg_index-1],"--sec")==0) 
					 {
						 WaitForMoreSubOpt = true;

						 nsec = atoi(argv[arg_index]);
						 LPWORD sectors = (LPWORD)malloc(nsec *2 + 2);


					 	 sectors[0] = 0;
				 		 for(int i = 1; i<= nsec; i++)
						 {
							sectors[0]++;
							arg_index++;
							sectors[sectors[0]] = atoi(argv[arg_index]);
						 }

						 WaitForMoreSubOpt = false;

						 printf("\nerasing %i sectors : ", sectors[0]);

#ifndef _VS6_USED
						int i;
#endif

						 for(i = 1; i<= nsec; i++)
						 {
							printf("<%i>", sectors[i]);
						 }
						 printf("\n");

						 Res = STBL_ERASE(nsec, (LPBYTE)sectors+2);
						 if (Res != SUCCESS)  
						 {
							 write_debug_info("erasing", 0 ,0, 0, KO);
							 
							 if(COM_is_Open())  
								 COM_Close(); 
							 
							 printf("\n Press any key to continue ..."); 
							 getchar(); 
							 return 1;
						 }
						 else 
							 write_debug_info("erasing", 0 ,0, 0, OK);

						 arg_index++;
					 }
				 }
				 else 
				 {
                     if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }
			   }
			}
			//============================ UPLOAD ===============================================
			else if (strcmp(argv[arg_index],"-u")==0)
			{
				while(arg_index < argc)
				{
			     if (arg_index< argc-1) 
					 arg_index++;
			     else 
					 break;

				 if(Is_Option(argv[arg_index])) 
					 break;

				 else if(Is_SubOption(argv[arg_index]))
				 {
					 if (arg_index< argc) 
						 arg_index++;
			         else 
						 break;

					 /*if (strcmp(argv[arg_index-1],"--a")==0)   
					 {
						 address = _tcstoul(argv[arg_index], 0, 16) ;
					 }
					 else if (strcmp(argv[arg_index-1],"--s")==0) 
					 {
						 size = _tcstoul(argv[arg_index], 0, 16) ;
					 }
					 else */if (strcmp(argv[arg_index-1],"--fn")==0) 
					 {
						 filename = argv[arg_index];
					 }
				 }
				 else 
				 {
                     if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }
			   }

			   printf("\n UPLOADING ... \n\n");

			   HANDLE Handle;
			   FILES_CreateImage(&Handle, 0);

			   FILES_CreateImageFromMapping(&Handle,pmMapping);

			   DWORD NbElements = 0;
               if (FILES_GetImageNbElement(Handle, &NbElements) == FILES_NOERROR)
			   {
				   if (NbElements > 0)
				   {
							for(int i = 0; i< (int)NbElements; i++)
							{
								IMAGEELEMENT Element={0};
								// Get element data size
								if (FILES_GetImageElement(Handle, i, &Element) == FILES_NOERROR)
								{
									//Upload element data
									Element.Data = (LPBYTE)malloc(Element.dwDataLength);
									if (STBL_UPLOAD(Element.dwAddress, Element.Data, Element.dwDataLength) == SUCCESS)
									{
									   //Insert elment in the Image
									   write_debug_info("Uploading", i ,Element.dwAddress, (float)Element.dwDataLength/(float)1024, OK);
									   FILES_SetImageElement(Handle,i,FALSE,Element);
									}
									else 
									{
										write_debug_info("Uploading", i ,Element.dwAddress, (float)Element.dwDataLength/(float)1024, KO);
										
										if(COM_is_Open())  
											COM_Close(); 
										
										printf("\n Press any key to continue ..."); 
										getchar(); 
										return 1;
									}
								}
							}
				   }
			   }

			   if(!FileExist((LPCTSTR)filename))
			   {
                      printf( "file %s does not exist .. Creating file\n", filename);
					  FILE* fp = fopen((LPCTSTR)filename, "a+");
					  fclose(fp);
			   }

			   printf( "Writing data ...\n");

			   if (FILES_ImageToFile((LPSTR)(LPCSTR)filename,Handle) != FILES_NOERROR)
			   {
                     printf( "cannot write to file %s \n", filename);
					 
					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
			   }
			   else
                   printf("\n Uploaded data is dumped on %s", filename); 
			}



			//============================ Get Device map file name ==============================
			else if (strcmp(argv[arg_index],"-i")==0)
			{
			   if (arg_index< argc) 
				   arg_index++;
			   else 
				   break;


			   sprintf(devname,"%s.STmap", argv[arg_index]);

			   char Drive[3], Dir[256], Fname[256], Ext[256];
			   _splitpath(argv[0],Drive,Dir,Fname,Ext);
					
			   sprintf(MapFile, "%s%s%s%s", Drive, Dir , "Map\\", devname);

			   pmMapping = NULL;
			   WORD size = 0;

			   WORD PacketSize = 0;
			   pmMapping = NULL;
			   WORD Size = 0;
			   char MapName[256]; 
			   // Get the number of sectors in the flash target: pmMapping should be NULL
			   // number of sectors is returned in the Size value
			   BYTE PagePerSector = 0;

			   if (!FileExist((LPCTSTR)MapFile))
			   {
					printf("This version is not intended to support the <%s> target\n", argv[arg_index]);
				   
				    if(COM_is_Open())  
						COM_Close();

					printf("\n Press any key to continue ..."); 
					getchar(); 
					return 1;
			   }

			   FILES_GetMemoryMapping((LPSTR)(LPCTSTR)MapFile, &Size, (LPSTR)MapName, &PacketSize, pmMapping, &PagePerSector);
			   // Allocate the mapping structure memory
			   pmMapping = (PMAPPING)malloc(sizeof(MAPPING));
			   pmMapping->NbSectors = 0;
			   pmMapping->pSectors = (PMAPPINGSECTOR) malloc((Size) * sizeof(MAPPINGSECTOR));

			   // Get the mapping info
			   FILES_GetMemoryMapping((LPSTR)(LPCTSTR)MapFile, &Size, (LPSTR)(LPCTSTR)MapName, &PacketSize, pmMapping, &PagePerSector);
				   
			   SetPaketSize(PacketSize);



			                  //sending BL config byte (0x7F) & identifing target



			   Res = STBL_Init_BL();

			   if (Res == UNREOGNIZED_DEVICE)
			   {
				    write_debug_info("Activating device", 0 ,0, 0, KO);

			 	    if(COM_is_Open()) 
						COM_Close();

					printf("Unrecognized device... Please, reset your device then try again \n");

					if(COM_is_Open()) 
						COM_Close(); 
					
					printf("Please, reset your device then press any key to continue \n");
					printf("\n Press any key to continue ..."); 
					getchar();
					goto START;
			   }
			   else if (Res != SUCCESS) 		
			   {
				    write_debug_info("Activating device", 0 ,0, 0, KO);
					printf("No response from the target, the Boot loader can not be started. \nPlease, verify the boot mode configuration, reset your device then try again. \n");
					
					if(COM_is_Open()) 
						COM_Close(); 
					
					printf("Please, reset your device then then press any key to continue \n");
					printf("\n Press any key to continue ..."); 
					getchar();
					goto START;
			   }

			   _sleep(TimeBO);
			   
               write_debug_info("Activating device", 0 ,0, 0, OK);
			   //Getting Target informations (version, available commands)
			   BYTE Version ;
			   Commands pCmds;

			   Res = STBL_GET(&Version, &pCmds);
		       if (Res != SUCCESS)
			   {
					if(COM_is_Open()) 
						COM_Close(); 

					printf("\n Press any key to continue ..."); 
					getchar(); 
					return 1; 
			   }

			   SetTimeOut(timeout);

				if (arg_index< argc) 
					arg_index++;
			    else 
					break;
			}
			//============================ DOWNLOAD ==============================================
			else if (strcmp(argv[arg_index],"-d")==0)
			{
				while(arg_index < argc)
				{
			     if (arg_index< argc-1) 
					 arg_index++;
			     else 
					 break;

				 if(Is_Option(argv[arg_index])) 
					 break;

				 else if(Is_SubOption(argv[arg_index]))
				 {
					 if (arg_index< argc) 
						 arg_index++;
			         else 
						 break;

					 if (strcmp(argv[arg_index-1],"--a")==0)   
					 {
						 address = _tcstoul(argv[arg_index], 0, 16) ;
					 }
					 else if (strcmp(argv[arg_index-1],"--v")==0) 
					 {
						 Verify = true;
						 arg_index--;
					 }
					 else if (strcmp(argv[arg_index-1],"--o")==0) 
					 {
						 optimize = TRUE;
						 arg_index--;
					 }
					 else if (strcmp(argv[arg_index-1],"--fn")==0) 
					 {
						 filename = argv[arg_index];
						 _splitpath(filename,Drive,Dir,Fname,Ext);
	                     ptr=strupr(Ext);
	                     strcpy(Ext, ptr);
					 }
				 }
				 else 
				 {
                     if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }
			   }

			   PMAPPINGSECTOR pSector = pmMapping->pSectors;
			   for(int i = 1; i<= (int)pmMapping->NbSectors; i++)
			   {
				   if ((strcmp(Ext, ".BIN")!=0) && (i==0))
			          address = pSector->dwStartAddress;

			       pSector->UseForOperation = TRUE;
			       pSector++;
			   }

			   if(!FileExist((LPCTSTR)filename))
			   {
                     printf( "file does not exist %s \n", filename);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
			   }
   
			   //****************** This section is only for STM8 boot loader *******************
			   BYTE Version;
			   Commands pCmds;
			   CString m_Version;
			   if (STBL_GET(&Version, &pCmds) == SUCCESS)
			   {
					m_Version.Format("%x.%x",Version/16, Version & 0x0F)  ;
			   }	
			   CIni Ini((LPCSTR)MapFile);

			   if(Ini.IsKeyExist((LPCTSTR)"Product",(LPCTSTR)m_Version))
			   {
				   CString E_W_ROUTINEs = Ini.GetString((LPCTSTR)"Product",(LPCTSTR)m_Version, "");
				   CString Path(*__argv);
				   int j=Path.ReverseFind('\\')+1;
				   if(j) Path=Path.Left(j);

				   CString ToFind;

				   ToFind.Format("%s%s%s", Path, "STM8_Routines\\", E_W_ROUTINEs);

				   if(!E_W_ROUTINEs.IsEmpty())
				   {
					   if(!FileExist((LPCTSTR)ToFind))
					   {
						   printf("\n!WARNING the erase or download operation may fail \n EW routines file is missing [%s]\n", ToFind); 
					   }
					   else
					   {
							HANDLE Image;
							if (FILES_ImageFromFile((LPSTR)(LPCSTR)ToFind,&Image, 1)== FILES_NOERROR)
							{
								FILES_SetImageName(Image,(LPSTR)(LPCSTR)ToFind);

								DWORD NbElements; 
								if (FILES_GetImageNbElement(Image, &NbElements) == FILES_NOERROR)
								{
									for (int el=0; el< (int)NbElements;el++)
									{
										IMAGEELEMENT Element={0};
										if (FILES_GetImageElement(Image, el, &Element) == FILES_NOERROR)
										{	   
											Element.Data=new BYTE[Element.dwDataLength];
											if (FILES_GetImageElement(Image, el, &Element) == FILES_NOERROR)
											{
												if (STBL_DNLOAD(Element.dwAddress, Element.Data, Element.dwDataLength, FALSE) != SUCCESS)
												{
													  
												}
											}
										}
									}

									// Verify writen data
									BOOL VerifySuccess = TRUE;
									_sleep(100);

#ifndef _VS6_USED
									int el;
#endif

									for (el=0; el< (int)NbElements;el++)
									{
										IMAGEELEMENT Element={0};
										if (FILES_GetImageElement(Image, el, &Element) == FILES_NOERROR)
										{
											Element.Data=new BYTE[Element.dwDataLength];
											if (FILES_GetImageElement(Image, el, &Element) == FILES_NOERROR)
											{
												if (STBL_VERIFY(Element.dwAddress, Element.Data, Element.dwDataLength, FALSE) != SUCCESS)
												{
													VerifySuccess = FALSE;
													char str[255];
													sprintf(str, "%s at address :0x%X. \n%s \nPlease disable the write protection then try agin.", "Data not matching ", Element.dwAddress, "The page may be write protected.");   
													AfxMessageBox(str, MB_OK|MB_ICONEXCLAMATION);
													return 1;
												}
											}
										}
									}
								}
							}
        					else
							{
								 AfxMessageBox("Unable to load data from this file " + ToFind + " ...");
								 return -1;
							}
					   }
				   }
			   }
			   else
			   {
				   int family = Ini.GetInt((LPCTSTR)"Product",(LPCTSTR)"family", 0);
				   if(family == 3)
				   {
						printf("\n!WARNING the erase or download operation may fail \n EW routines file is missing\n"); 
				   }
			   }
			   //End****************** This section is only for STM8 boot loader *******************

			   printf("\n DOWNLOADING ... \n\n");

			   HANDLE Handle;
			   if (FILES_ImageFromFile((LPSTR)(LPCSTR)filename,&Handle, 1) == FILES_NOERROR)
			   {
			      FILES_SetImageName(Handle,(LPSTR)(LPCSTR)filename);

				  DWORD NbElements = 0;
				  if (FILES_GetImageNbElement(Handle, &NbElements) == FILES_NOERROR)
				  {
						if ( NbElements > 0 )
						{   // if binary file -> change the elemnts address
							if (strcmp(Ext, ".BIN")==0)
							{
								for (int i=0;i< (int)NbElements;i++)
								{
									IMAGEELEMENT Element={0};
									if (FILES_GetImageElement(Handle, i, &Element) == FILES_NOERROR)
									{
									   Element.Data= (LPBYTE)malloc(Element.dwDataLength);
									   if (FILES_GetImageElement(Handle, i, &Element) == FILES_NOERROR)
									   {
										   Element.dwAddress = Element.dwAddress + address; 
										   FILES_SetImageElement(Handle, i, FALSE, Element);
									   }
									}
								}
							}
						}
				  }

				  FILES_FilterImageForOperation(Handle, pmMapping, OPERATION_UPLOAD, optimize);
			   }
			   else 
			   {  
					printf("cannot open file %s \n", filename);

					if(COM_is_Open())  
						COM_Close(); 

					printf("\n Press any key to continue ..."); 
					getchar(); 
					return 1;
			   }

			   DWORD NbElements = 0;
               if (FILES_GetImageNbElement(Handle, &NbElements) == FILES_NOERROR)
			   {
				   for (int el=0; el< (int)NbElements;el++)
				   {
						IMAGEELEMENT Element={0};
						if (FILES_GetImageElement(Handle, el, &Element) == FILES_NOERROR)
						{	   
						   Element.Data= (LPBYTE)malloc(Element.dwDataLength);
						   if (FILES_GetImageElement(Handle, el, &Element) == FILES_NOERROR)
						   {
							  if ((strcmp(Ext, ".BIN")==0) && (el==0)) 
							      Element.dwAddress = address;
							  
							  if (STBL_DNLOAD(Element.dwAddress, Element.Data, Element.dwDataLength, optimize) != SUCCESS)
							  {
								  write_debug_info( "downloading", el ,Element.dwAddress, (float)Element.dwDataLength/(float)1024, KO);
								  write_debug_info("The flash may be read protected; use -p --drp to disable write protection." , 0, 0, 0, KO);
								  
								  if(COM_is_Open())
									  COM_Close(); 
								  
								  printf("\n Press any key to continue ..."); 
								  getchar(); 
								  return 1;
							  }

							  write_debug_info( "downloading", el ,Element.dwAddress, (float)Element.dwDataLength/(float)1024, OK);
						   }
						}
				   }
			   }

			   bool VerifySuccess = true;
			   if (Verify)
			   {
				   printf("\n VERIFYING ... \n\n");


					for (int el=0; el< (int)NbElements;el++)
					{
						IMAGEELEMENT Element={0};
					    if (FILES_GetImageElement(Handle, el, &Element) == FILES_NOERROR)
						{
							Element.Data=(LPBYTE)malloc(Element.dwDataLength);
							if (FILES_GetImageElement(Handle, el, &Element) == FILES_NOERROR)
							{
								if ((strcmp(Ext, ".BIN")==0) && (el==0)) 
							        Element.dwAddress = address;

								if (STBL_VERIFY(Element.dwAddress, Element.Data, Element.dwDataLength, optimize) != SUCCESS)
								{
									VerifySuccess = false;
									write_debug_info("verifying" ,el ,Element.dwAddress, (float)Element.dwDataLength/(float)1024, KO);
                                    write_debug_info("some pages may be write protected; use -p --dwp to disable write protection." , 0, 0, 0, KO);
									
									if(COM_is_Open())  
										COM_Close(); 
									
									printf("\n Press any key to continue ..."); 
									getchar(); 
									return 1;
								}

								write_debug_info("verifying" ,el ,Element.dwAddress, (float)Element.dwDataLength/(float)1024, OK);
							}
						}
					}
			   }

			}
			//============================ VERIFY ================================================
			else if (strcmp(argv[arg_index],"-v")==0)
			{
				if (arg_index< argc) 
					arg_index++;
			    else 
					break;
			}
			//============================ Program option bytes ==================================
			else if (strcmp(argv[arg_index],"-o")==0)
			{
				while(arg_index < argc)
				{
			     if (arg_index< argc-1) 
					 arg_index++;
			     else 
					 break;

				 if(Is_Option(argv[arg_index])) 
					 break;

				 else if(Is_SubOption(argv[arg_index]))
				 {
					 if (arg_index< argc) 
						 arg_index++;
			         else 
						 break;

					 if (strcmp(argv[arg_index-1],"--get")==0) 
					 {
						 if (arg_index< argc) 
							 arg_index++;
			             else 
							 break;
                           
                         if (strcmp(argv[arg_index-1],"--fn")==0) 
					       filename = argv[arg_index];
						 
						 if(TARGET_GetSIFData(&User, &RDP, &Data0, &Data1, &WRP0, &WRP1, &WRP2, &WRP3) == SUCCESS)
						 {
						   write_debug_info("Getting Option bytes  data" ,0 ,0, 0, OK);

					       HANDLE Image;
						   if (FILES_CreateImage(&Image, 1) == FILES_NOERROR)
						   {
								IMAGEELEMENT Element={0};
								Element.dwAddress   = 0x1FFFF800;
								Element.dwDataLength = 16;
								Element.Data = (LPBYTE)malloc(Element.dwDataLength);

								{
									Element.Data[0]  = RDP;
									Element.Data[1]  = ~RDP;
									Element.Data[2]  = User;
									Element.Data[3]  = ~User;
									Element.Data[4]  = Data0;
									Element.Data[5]  = ~Data0;
									Element.Data[6]  = Data1;
									Element.Data[7]  = ~Data1;
									Element.Data[8]  = WRP0;
									Element.Data[9]  = ~WRP0;
									Element.Data[10] = WRP1;
									Element.Data[11] = ~WRP1;
									Element.Data[12] = WRP2;
									Element.Data[13] = ~WRP2;
									Element.Data[14] = WRP3;
									Element.Data[15] = ~WRP3;
								}

								FILES_SetImageElement(Image,0,TRUE,Element);
								if (FILES_ImageToFile((LPSTR)(LPCSTR)filename,Image) != FILES_NOERROR)
								{
								    write_debug_info("Saving Option bytes  data",0 ,0, 0, KO);
								}
								else  write_debug_info("Saving Option bytes  data",0 ,0, 0, OK); 
						   }
						 }
						 else write_debug_info("Getting Option bytes  data" ,0 ,0, 0, KO);
					 }
					 else if (strcmp(argv[arg_index-1],"--set")==0) 
					 {
						 if (arg_index< argc) arg_index++;
			             else break;
                           
                         if (strcmp(argv[arg_index-1],"--fn")==0) 
						 {
					           filename = argv[arg_index];

							   HANDLE OPBImage;

							   if(!FileExist((LPCTSTR)filename))
							   {
									  printf( "file does not exist %s \n", filename);
									  
									  if(COM_is_Open())  
										  COM_Close(); 
									  
									  printf("\n Press any key to continue ..."); 
									  getchar(); 
									  return 1;
							   }

							   if (FILES_ImageFromFile((LPSTR)(LPCSTR)filename, &OPBImage, 0) == FILES_NOERROR)
							   {
								   DWORD NbElements = 0;
								   if (FILES_GetImageNbElement(OPBImage, &NbElements) == FILES_NOERROR)
								   {
									   if ( NbElements == 1 )
									   {
										  IMAGEELEMENT Element={0};
										  if (FILES_GetImageElement(OPBImage, 0, &Element) == FILES_NOERROR)
										  {
											  Element.Data= (LPBYTE)malloc(Element.dwDataLength);
											  if (FILES_GetImageElement(OPBImage, 0, &Element) == FILES_NOERROR)
											  {
												  RDP   = Element.Data[0] ;
												  User  = Element.Data[2] ;
												  Data0 = Element.Data[4] ;
												  Data1 = Element.Data[6] ;
												  WRP0  = Element.Data[8] ;
												  WRP1  = Element.Data[10];
												  WRP2  = Element.Data[12];
												  WRP3  = Element.Data[14];

												  
												  if (TARGET_SetSIFData(User, RDP, Data0, Data1, WRP0, WRP1, WRP2, WRP3) == SUCCESS)
												  {
													  write_debug_info("Setting Option bytes  data" ,0 ,0, 0, OK);

													  if(COM_is_Open())  
														  COM_Close();

													  COM_Open();

													  if(STBL_Init_BL() != SUCCESS) 
														  write_debug_info("Resetting device" ,0 ,0, 0, KO);
													  else 
														  write_debug_info("Resetting device" ,0 ,0, 0, OK);
												  }
												  else 
													  write_debug_info("Setting Option bytes  data" ,0 ,0, 0, KO);
											  }
										  }
									   }
								   }
							   }
						 }
						 else if (strcmp(argv[arg_index-1],"--vals")==0) 
						 {
							   TARGET_GetSIFData(&User, &RDP, &Data0, &Data1, &WRP0, &WRP1, &WRP2, &WRP3);
                               
							   while(arg_index< argc)
							   {
								   if(Is_Option(argv[arg_index])) 
									   break;
				                   else if(Is_SubOption(argv[arg_index]))
								   {
									   arg_index++;
									   if(strcmp(argv[arg_index-1],"--RDP")==0)       { RDP   = _tcstoul(argv[arg_index], 0, 16);arg_index++;}
									   else if(strcmp(argv[arg_index-1],"--User")==0) { User  = _tcstoul(argv[arg_index], 0, 16);arg_index++;} 
									   else if(strcmp(argv[arg_index-1],"--data0")==0){ Data0 = _tcstoul(argv[arg_index], 0, 16);arg_index++;}
									   else if(strcmp(argv[arg_index-1],"--data1")==0){ Data1 = _tcstoul(argv[arg_index], 0, 16);arg_index++;} 
									   else if(strcmp(argv[arg_index-1],"--WRP0")==0) { WRP0  = _tcstoul(argv[arg_index], 0, 16);arg_index++;} 
									   else if(strcmp(argv[arg_index-1],"--WRP1")==0) { WRP1  = _tcstoul(argv[arg_index], 0, 16);arg_index++;}
									   else if(strcmp(argv[arg_index-1],"--WRP2")==0) { WRP2  = _tcstoul(argv[arg_index], 0, 16);arg_index++;}
									   else if(strcmp(argv[arg_index-1],"--WRP3")==0) { WRP3  = _tcstoul(argv[arg_index], 0, 16);arg_index++;}
								   }
							   }
                               if (TARGET_SetSIFData(User, RDP, Data0, Data1, WRP0, WRP1, WRP2, WRP3) != SUCCESS)
								   write_debug_info("Setting Option bytes  data" ,0 ,0, 0, KO);
							   else
							   {
								    write_debug_info("Setting Option bytes  data" ,0 ,0, 0, OK);

									if(COM_is_Open())  
										COM_Close();

									COM_Open();

									if(STBL_Init_BL() != SUCCESS) 
										write_debug_info("Resetting device" ,0 ,0, 0, KO);
									else 
										write_debug_info("Resetting device" ,0 ,0, 0, OK);
							   }
							   arg_index--;
						 }
					 }
				 }
				 else 
				 {
                     if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }
			   }
			}
			//============================ Set/Unset R/W protection ==========================
			else if (strcmp(argv[arg_index],"-p")==0)
			{
				while(arg_index < argc)
				{
			     if (arg_index< argc-1) 
					 arg_index++;
			     else 
					 break;

				 if(Is_Option(argv[arg_index])) 
					 break;

				 else if(Is_SubOption(argv[arg_index]))
				 {
					 if (arg_index< argc) 
						 arg_index++;
			         else 
						 break;

					 if (strcmp(argv[arg_index-1],"--erp")==0) 
					 {
						 if(STBL_READOUT_PROTECT() != SUCCESS) 
							 write_debug_info( "enabling read protection", 0 , 0, 0, KO);
						 else 
							 write_debug_info( "enabling read protection", 0 , 0, 0, OK);
					
						 _sleep(TimeBO);

		                 if(STBL_Init_BL() != SUCCESS) 
							 write_debug_info( "reseting device", 0 , 0, 0, KO);
						 else 
							 write_debug_info( "reseting device", 0 , 0, 0, OK);

						 arg_index--;
					 }
					 else if (strcmp(argv[arg_index-1],"--drp")==0) 
					 {
						 if(STBL_READOUT_PERM_UNPROTECT() == SUCCESS) 
						 {
							 write_debug_info( "disabling read protection", 0 , 0, 0, OK);

							 _sleep(TimeBO);

		                     if(STBL_Init_BL() != SUCCESS) 
								 write_debug_info( "reseting device", 0 , 0, 0, KO);
						     else 
								 write_debug_info( "reseting device", 0 , 0, 0, OK);
						 }
						 else 
							 write_debug_info( "disabling read protection", 0 , 0, 0, KO);
						 
						 arg_index--;
					 }
					 else if (strcmp(argv[arg_index-1],"--ewp")==0) 
					 {
						 LPBYTE sectors;
						 if(Is_Option(argv[arg_index])) break;

						 nsec = atoi(argv[arg_index]);
						 sectors = (LPBYTE)malloc(nsec + 1);


					 	 sectors[0] = 0;
				 		 for(int i = 1; i<= nsec; i++)
						 {
								sectors[0]++;
								arg_index++;
								sectors[sectors[0]] = atoi(argv[arg_index]);
						 }


						 printf("\nenabling write protection %i sectors : ", sectors[0]);

#ifndef _VS6_USED
						int i;
#endif

						 for(i = 1; i<= nsec; i++)
						 {
							printf("<%i>", sectors[i]);
						 }
						 printf("\n");

						 if(STBL_WRITE_PROTECT(((LPBYTE)sectors)[0],&((LPBYTE)sectors)[1]) != SUCCESS) 
							 write_debug_info( "enabling write protection", 0 , 0, 0, KO);
						 else 
							 write_debug_info( "enabling write protection", 0 , 0, 0, OK);
						 
						 _sleep(TimeBO);

		                 if(STBL_Init_BL() != SUCCESS) 
							 write_debug_info( "reseting device", 0 , 0, 0, KO);
						 else 
							 write_debug_info( "reseting device", 0 , 0, 0, OK);
					 }
					 else if (strcmp(argv[arg_index-1],"--dwp")==0) 
					 {
						 if(STBL_WRITE_PERM_UNPROTECT() != SUCCESS) 
							 write_debug_info( "disabling write protection", 0 , 0, 0, KO);
						 else 
							 write_debug_info( "disabling write protection", 0 , 0, 0, OK);
						 
						 _sleep(TimeBO);

		                 if(STBL_Init_BL() != SUCCESS) 
							 write_debug_info( "reseting device", 0 , 0, 0, KO);
						 else 
							 write_debug_info( "reseting device", 0 , 0, 0, OK);
						 arg_index--;
					 }
				 }
				 else 
				 {
                     if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }
			   }
			}
			//============================ Run at address ========================================
			else if (strcmp(argv[arg_index],"-r")==0)
			{
				while(arg_index < argc)
				{
			     if (arg_index< argc-1) 
					 arg_index++;
			     else 
					 break;

				 if(Is_Option(argv[arg_index])) 
					 break;

				 else if(Is_SubOption(argv[arg_index]))
				 {
					 if (arg_index< argc) 
						 arg_index++;
			         else 
						 break;

					 PMAPPINGSECTOR pSector = pmMapping->pSectors;
				     address = pSector->dwStartAddress;

					 if (strcmp(argv[arg_index-1],"--a")==0)   
					 {
						 address = _tcstoul(argv[arg_index], 0, 16) ;
					 }
				 }
				 else 
				 {
                     if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

					 if(COM_is_Open())  
						COM_Close(); 

					 printf("\n Press any key to continue ..."); 
				     getchar(); 
				     return 1;
				 }

				 if (STBL_GO(address) == SUCCESS)
				 {
					 printf("Your code is running...\n");
				 }
				 else
				 {
					 printf( "run fails \n");
				 }
			   }
			}
			else
			{
				if (arg_index < argc - 1) 
						printf("bad parameter [%s] \n", argv[arg_index]);

				if(COM_is_Open())  
					COM_Close(); 

				printf("\n Press any key to continue ..."); 
				getchar(); 
				return 1;
			}
		}
	}

Done_Success:
	if (bAuto)
	{
		// commented 
		STBL_SetDtr(FALSE); 
		Sleep(50);

	    if(COM_is_Open()) 
			   COM_Close();
		COM_Open();

		// Reset = Low
		STBL_SetRts(TRUE); 
		Sleep(50);
		write_debug_info("Unset BOOT0 & RESET    ", 0 ,0, 0, OK);
		// Reset = High
		STBL_SetRts(FALSE); 
	}

	printf("\nFlashing done. Enjoy ... \n"); 

    if(COM_is_Open()) 
    		COM_Close();

	return 0;
}


/******************* (C) COPYRIGHT 2010 STMicroelectronics *****END OF FILE******/
