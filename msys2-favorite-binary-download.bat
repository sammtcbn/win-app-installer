@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.0.2
set fn=msys2-favorite-binary-%ver%.zip
set url=https://github.com/sammtcbn/msys2-favorite-binary/releases/download/%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%