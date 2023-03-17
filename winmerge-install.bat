@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=2.16.26
set fn=WinMerge-%ver%-x64-Setup.exe

%archivespath%\%fn% /VERYSILENT /SP- /NORESTART
