@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.17.1
set fn=go%ver%.windows-amd64.msi
set url=https://golang.org/dl/%fn%

call utils\curl-dl.bat "%url%" %fn%