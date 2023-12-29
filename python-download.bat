@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=3.12.1
set fn=python-%ver%-amd64.exe
set url=https://www.python.org/ftp/python/%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%
