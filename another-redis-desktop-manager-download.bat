@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.4.9
set fn=Another-Redis-Desktop-Manager.%ver%.exe
set url=https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%
