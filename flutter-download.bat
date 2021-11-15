@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=2.3.0-16.0.pre
set fn=flutter_windows_%ver%-dev.zip
set url=https://storage.googleapis.com/flutter_infra/releases/dev/windows/%fn%

call utils\curl-dl.bat "%url%" %fn%