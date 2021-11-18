@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.56.1
set fn=rust-%ver%-x86_64-pc-windows-gnu.msi

%archivespath%\%fn% /quiet /qn /norestart