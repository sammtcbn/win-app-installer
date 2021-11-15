@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.7.572.0
set fn=Microsoft.WindowsTerminalPreview_%ver%_8wekyb3d8bbwe.msixbundle

start /wait powershell.exe -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "Add-AppxPackage %archivespath%\%fn%"