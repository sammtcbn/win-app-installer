@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=vc_redist-2013.x64.exe
set url=https://aka.ms/highdpimfc2013x64enu

call utils\curl-dl.bat "%url%" %fn%
