@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

call C:\elasticsearch\bin\elasticsearch-service.bat install

:END
echo bye
timeout /t 3
