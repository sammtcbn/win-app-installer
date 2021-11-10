@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set dlver=
set dlurl=https://brave-browser-downloads.s3.brave.com/latest
set dlfn=brave_installer-x64.exe
set dlfullurl="%dlurl%/%dlfn%"
set dlout=%dlfn%

call utils\curl-dl.bat "%dlfullurl%" %dlout%