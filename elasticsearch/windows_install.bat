@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

set installpath=C:\elasticsearch

call elasticsearch-download-windows.bat

robocopy elasticsearch %installpath% /E

copy /Y "%currdir%\windows_service_create.bat" %installpath%
copy /Y "%currdir%\windows_service_delete.bat" %installpath%
copy /Y "%currdir%\windows_uninstall.bat" %installpath%
copy /Y "%currdir%\passwords-reset-elastic-user.bat" %installpath%
copy /Y "%currdir%\passwords-setup-interactive.bat" %installpath%

call windows_service_create.bat

:END
echo bye
timeout /t 3