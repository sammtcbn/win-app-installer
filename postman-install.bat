@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=10.19.7
set fn=Postman-win64-%ver%-Setup.exe

%archivespath%\%fn% -s