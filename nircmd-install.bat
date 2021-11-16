@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=nircmd-x64.zip

call utils\zip-extract.bat %archivespath%\%fn% %tmppath%
call utils\install-to-exec-path.bat %tmppath%\nircmd.exe
call utils\install-to-exec-path.bat %tmppath%\nircmdc.exe
del /f/q %tmppath%\NirCmd.chm
del /f/q %tmppath%\nircmd.exe
del /f/q %tmppath%\nircmdc.exe