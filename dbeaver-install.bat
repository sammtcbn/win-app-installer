@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=21.2.4
set fn=dbeaver-ce-%ver%-x86_64-setup.exe

%archivespath%\%fn% /S /allusers