@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=CD-548
set fn=fritzing-%ver%.zip

call utils\zip-extract.bat %archivespath%\%fn% %tmppath%
@rem rmdir /s /q %tmppath%\forzip
