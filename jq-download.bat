@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.6
set fn=jq.exe
set url=https://github.com/stedolan/jq/releases/download/jq-%ver%/jq-win64.exe

call utils\curl-dl.bat "%url%" %fn%