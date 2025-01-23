@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=2.47.1
set fn=Git-%ver%-64-bit.exe
set url=https://github.com/git-for-windows/git/releases/download/v%ver%.windows.1/%fn%

call utils\curl-dl.bat "%url%" %fn%
