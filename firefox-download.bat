@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=94.0.1
set fn=Firefox-Setup-94.0.1-x64.exe
set url=https://download.mozilla.org/?product=firefox-%ver%-ssl&os=win64&lang=en-US

call utils\curl-dl.bat "%url%" %fn%