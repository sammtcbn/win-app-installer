@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=8.6.2
set fn=npp.%ver%.Installer.x64.exe
set url=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%
