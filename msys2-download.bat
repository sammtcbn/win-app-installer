@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=20230318
set fn=msys2-x86_64-%ver%.exe
set url=https://github.com/msys2/msys2-installer/releases/download/2023-03-18/%fn%

call utils\curl-dl.bat "%url%" %fn%
