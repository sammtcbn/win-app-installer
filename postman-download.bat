@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=8.10.0
set fn=Postman-win64-%ver%-Setup.exe
set url=https://dl.pstmn.io/download/version/%ver%/windows64

call utils\curl-dl.bat "%url%" %fn%