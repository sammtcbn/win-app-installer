@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=vs2022_community.exe
set url=https://aka.ms/vs/17/release/vs_community.exe

call utils\curl-dl.bat "%url%" %fn%
