@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=8.2.3
set fn=grafana-%ver%.windows-amd64.msi

%archivespath%\%fn% /quiet /qn /norestart

copy /Y Grafana.html C:\Users\%UserName%\Desktop