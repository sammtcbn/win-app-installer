@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=sam-git-utils.zip

call utils\zip-extract.bat %archivespath%\%fn% %tmppath%
call %tmppath%\git-utils-master\win_setup.bat
rmdir /s /q %tmppath%\git-utils-master