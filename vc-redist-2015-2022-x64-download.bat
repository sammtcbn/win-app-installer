@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=vc_redist-2015-2022.x64.exe
set url=https://aka.ms/vs/17/release/vc_redist.x64.exe

call utils\curl-dl.bat "%url%" %fn%