@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=11.3.0.6295
set fn=HeidiSQL_%ver%_Setup.exe

%archivespath%\%fn% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-