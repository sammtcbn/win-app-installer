@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.26.9
set fn=Npackd64-%ver%.msi
set url=https://github.com/npackd/npackd-cpp/releases/download/version_%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%
