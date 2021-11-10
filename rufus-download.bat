@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set dlver=3.17
set dlurl=https://github.com/pbatard/rufus/releases/download/v%dlver%
set dlfn=rufus-%dlver%.exe
set dlfullurl="%dlurl%/%dlfn%"
set dlout=%dlfn%

call utils\curl-dl.bat "%dlfullurl%" %dlout%