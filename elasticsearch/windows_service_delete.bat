@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

net stop elasticsearch-service-x64
sc delete elasticsearch-service-x64

:END
echo bye
timeout /t 3
