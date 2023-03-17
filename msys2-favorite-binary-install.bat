@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.0.3
set fn=msys2-favorite-binary-%ver%.zip

call utils\zip-extract.bat %archivespath%\%fn% %tmppath%
call %tmppath%\msys2-favorite-binary\00-install.bat
rmdir /s /q %tmppath%\msys2-favorite-binary
