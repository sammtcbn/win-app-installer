@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=3.0.18
set fn=vlc-%ver%-win64.exe
set url=https://get.videolan.org/vlc/%ver%/win64/%fn%

call utils\curl-dl.bat "%url%" %fn%
