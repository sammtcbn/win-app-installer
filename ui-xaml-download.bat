@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=2.8.6
set fn=Microsoft.UI.Xaml.%ver%.x64.appx
set url=https://github.com/microsoft/microsoft-ui-xaml/releases/download/v%ver%/Microsoft.UI.Xaml.2.8.x64.appx
call utils\curl-dl.bat "%url%" %fn%
