@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=SetDefaultBrowser.zip

call utils\zip-extract.bat %archivespath%\%fn% %tmppath%
call utils\install-to-exec-path.bat %tmppath%\SetDefaultBrowser\SetDefaultBrowser.exe
call "%currpath%\utils\folder-remove.bat" %tmppath%\SetDefaultBrowser