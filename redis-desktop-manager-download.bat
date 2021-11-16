@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=0.9.3.817
set fn=redis-desktop-manager-%ver%.exe
set url=https://github.com/uglide/RedisDesktopManager/releases/download/0.9.3/%fn%

call utils\curl-dl.bat "%url%" %fn%