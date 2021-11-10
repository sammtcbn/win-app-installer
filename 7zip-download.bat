@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1900
set fn=7z%ver%-x64.exe
set url=https://www.7-zip.org/a/%fn%

call utils\curl-dl.bat "%url%" %fn%