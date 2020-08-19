

echo off
cls

for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j


if "%version%" == "10.0" set result=true
if "%version%" == "6.3" set result=true
if "%version%" == "6.2" set result=true
if "%version%" == "6.1" set result=true
if "%version%" == "6.0" set result=true

if not "%result%" == "true" (
echo.
title This version of Windows is not supported.  -  VM setup tool by Leo Takacs // Scam Baiting
echo This version of Windows is not supported.
pause>nul
exit
)





set filepath=%~dp0%
cd %filepath%

del /s /q %filepath%\message.vbs
del /s /q C:\Users\%username%\AppData\Local\message.vbs
del /s /q C:\Users\%username%\AppData\Local\launch.bat

set file2launch=

title VM setup tool by Leo Takacs // Scam Baiting

cls
echo.
echo VM setup tool by Leo Takacs // Scam Baiting
echo https://youtube.com/c/LeoTakacs
echo.
echo Compatible with Windows 7, 8, 8.1, and 10.
echo NOT compatible with Vista or older.
echo Windows 7 64bit virtual machine recommended
echo.
echo.
echo The following .bat and .exe files were found:
echo.
echo ==============================================
if exist *.exe (
dir /b *exe
) else (
REM
)

if exist *.bat (
dir /b *bat
) else (
REM
)
echo ==============================================
echo.
echo Enter one of the following. It will replace system applications.
echo.
echo MSG - allows you to replace applications with a popup message
echo WS - allows you to replace applications with a website
echo Program Name: allows you to replace applications with 
echo.any .bat or .exe in the current directory ^( %cd% ^)
echo.
set /p file2launch=:: 

if %file2launch%==MSG (
goto domsg
) else (
REM
)

if %file2launch%==WS (
goto dows
) else (
goto cont
)

:dows
set /p url=Enter URL: 
echo start "C:\Program Files\Internet Explorer\iexplore.exe" %url% >>urlstart.bat
echo exit >>urlstart.bat
set file2launch=urlstart.bat
goto cont

:domsg
set /p ems=Enter Message: 
echo msgbox "%ems%" > message.vbs
set file2launch=message.vbs

:cont

cls
copy %file2launch% C:\Users\%username%\AppData\Local\
del /s /q %file2launch%

echo echo off >>launch.bat
echo cls >>launch.bat
echo start C:\Users\%username%\AppData\Local\%file2launch% >>launch.bat
echo exit >>launch.bat

cd C:\Windows\System32\

del /s /q msinfo32*
del /s /q msconfig*
del /s /q syskey*
del /s /q taskmgr*
del /s /q eventvwr*
del /s /q mspaint*
del /s /q dxdiag*
del /s /q tree*
del /s /q ipconfig*
del /s /q netstat*
del /s /q notepad*
del /s /q SystemProperties*
del /s /q systeminfo*
del /s /q appwiz.cpl

cd %filepath%

copy launch.bat C:\Windows\System32\msinfo32.bat
copy launch.bat C:\Windows\System32\msconfig.bat
copy launch.bat C:\Windows\System32\syskey.bat
copy launch.bat C:\Windows\System32\taskmgr.bat
copy launch.bat C:\Windows\System32\eventvwr.bat
copy launch.bat C:\Windows\System32\mspaint.bat
copy launch.bat C:\Windows\System32\dxdiag.bat
copy launch.bat C:\Windows\System32\tree.bat
copy launch.bat C:\Windows\System32\ipconfig.bat
copy launch.bat C:\Windows\System32\netstat.bat
copy launch.bat C:\Windows\System32\notepad.bat

:am

C:
cd C:\Windows\System32
fsutil file createnew blankfile 300000000000
del /s /q %filepath%\launch.bat

cd %filepath%

copy togglega.bat C:\Windows\System32\ >nul
copy togglesf.bat C:\Windows\System32\ >nul

if exist desktopfiles (
cd desktopfiles
copy * C:\Users\%username%\Desktop\
cd..
) else (
REM
)

mkdir "C:\Users\%username%\Desktop\Bank info"
mkdir "C:\Users\%username%\Desktop\Personal files"
echo.>>"C:\Users\%username%\Desktop\Home Video #1.mp4"
echo.>>"C:\Users\%username%\Desktop\Family Picture.jpg"

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Oracle VM VirtualBox Guest Additions" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f


reg add "HKLM\HARDWARE\DESCRIPTION\System" /v SystemBiosVersion /t REG_MULTI_SZ /d MICROSOFT-PC /f
reg add "HKLM\HARDWARE\DESCRIPTION\System" /v VideoBiosVersion /t REG_MULTI_SZ /d MICROSOFT-PC /f


ren "C:\Program Files\Oracle\" "Microsoft Word"
net use x: /delete
timeout 1 /nobreak >nul
taskkill /IM explorer.exe /F
timeout 1 /nobreak >nul
start explorer.exe
timeout 1 /nobreak >nul
explorer.exe /e,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
C:
cd %filepath%
del /s /q message.vbs
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
