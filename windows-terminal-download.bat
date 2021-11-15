@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.7.572.0
set fn=Microsoft.WindowsTerminalPreview_%ver%_8wekyb3d8bbwe.msixbundle
set url=https://github.com/microsoft/terminal/releases/download/v%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%