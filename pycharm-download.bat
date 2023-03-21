@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=2022.3.3
set fn=pycharm-community-%ver%.exe
set url=https://download.jetbrains.com/python/%fn%

call utils\curl-dl.bat "%url%" %fn%
