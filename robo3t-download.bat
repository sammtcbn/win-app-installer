@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.4.4
set fn=robo3t-%ver%-windows-x86_64-e6ac9ec5.exe
set url=https://github.com/Studio3T/robomongo/releases/download/v%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%