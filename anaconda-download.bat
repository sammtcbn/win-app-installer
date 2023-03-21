@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=2022.10
set fn=Anaconda3-%ver%-Windows-x86_64.exe
set url=https://repo.anaconda.com/archive/%fn%

call utils\curl-dl.bat "%url%" %fn%
