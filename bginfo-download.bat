@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=BGInfo.zip
set url=https://download.sysinternals.com/files/%fn%

call utils\curl-dl.bat "%url%" %fn%