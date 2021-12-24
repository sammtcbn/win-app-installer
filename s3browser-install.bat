@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=10-3-1
set fn=s3browser-%ver%.exe

%archivespath%\%fn% /VERYSILENT /NORESTART
