@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.59.0
set fn=VSCodeUserSetup-x64-%ver%.exe
set url=https://update.code.visualstudio.com/%ver%/win32-x64-user/stable

call utils\curl-dl.bat "%url%" %fn%

@rem download url refer to https://code.visualstudio.com/updates/