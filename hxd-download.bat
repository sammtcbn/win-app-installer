@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=HxDSetup.zip
set url=https://mh-nexus.de/downloads/%fn%

call utils\curl-dl.bat "%url%" %fn%
