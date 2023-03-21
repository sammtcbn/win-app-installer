@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=20230318
set fn=msys2-x86_64-%ver%.exe

%archivespath%\%fn% in --confirm-command --accept-messages --root C:/msys64
