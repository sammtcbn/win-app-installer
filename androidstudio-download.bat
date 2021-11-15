@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=android-studio-ide-201.7199119-windows.exe
set url=https://redirector.gvt1.com/edgedl/android/studio/install/4.1.3.0/%fn%

call utils\curl-dl.bat "%url%" %fn%