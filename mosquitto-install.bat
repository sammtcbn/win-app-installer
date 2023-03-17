@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=2.0.15
set fn=mosquitto-%ver%-install-windows-x64.exe

%archivespath%\%fn% /S

net start mosquitto
