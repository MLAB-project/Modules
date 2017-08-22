@echo off
FT_Prog-CmdLine.exe SCAN
echo.
echo Is the XVC MLAB Module device 0 ?
echo If not press CTRL-C
pause 
    FT_Prog-CmdLine.exe SCAN PROG 0 XVC_FT220X.xml
rem FT_Prog-CmdLine.exe SCAN PROG 0 XVC_FT230X.xml
