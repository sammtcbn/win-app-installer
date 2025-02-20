@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.23.10353.0
set fn=Microsoft.WindowsTerminalPreview_%ver%_8wekyb3d8bbwe.msixbundle

@rem Online install Windows.UI.Xaml 2.8 package for WindowsTerminalPreview 1.23.10353.0
@rem It is not necessary for WindowsTerminalPreview 1.7.572.0
@rem start /wait powershell.exe -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx -OutFile $env:TEMP\Microsoft.UI.Xaml.2.8.x64.appx"
@rem start /wait powershell.exe -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "Add-AppxPackage $env:TEMP\Microsoft.UI.Xaml.2.8.x64.appx"

start /wait powershell.exe -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "Add-AppxPackage %archivespath%\%fn%"
