@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=8.2.3
set fn=grafana-%ver%.windows-amd64.msi
set url=https://dl.grafana.com/oss/release/%fn%

call utils\curl-dl.bat "%url%" %fn%