@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=76
set fn=FSViewerSetup%ver%.exe
set url=https://www.faststonesoft.net/DN/%fn%

call utils\curl-dl.bat "%url%" %fn%
