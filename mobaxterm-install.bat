@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=21.4
set fn=MobaXterm_Installer_v%ver%.zip

call utils\zip-extract.bat %archivespath%\%fn% %tmppath%

%tmppath%\MobaXterm_installer_%ver%.msi /qn /norestart

del /f/q %tmppath%\MobaXterm_installer*