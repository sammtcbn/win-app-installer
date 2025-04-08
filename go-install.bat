@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.24.2
set fn=go%ver%.windows-amd64.msi

%archivespath%\%fn% /quiet /qn /norestart
