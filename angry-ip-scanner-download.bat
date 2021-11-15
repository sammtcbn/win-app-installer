@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=3.7.6
set fn=ipscan-%ver%-setup.exe
set url=https://github.com/angryip/ipscan/releases/download/%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%