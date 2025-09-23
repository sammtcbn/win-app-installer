@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=3.13.7
set fn=python-%ver%-amd64.exe

%archivespath%\%fn% /quiet PrependPath=1 Include_test=0

rem %archivespath%\%fn% /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
rem refer to https://docs.python.org/3/using/windows.html
