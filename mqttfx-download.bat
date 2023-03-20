@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.7.1
set fn=mqttfx-%ver%-windows-x64.exe
@rem set url=http://jensd.de/apps/mqttfx/%ver%/%fn%
set url=https://web.archive.org/web/20210928134701/https://www.jensd.de/apps/mqttfx/%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%
