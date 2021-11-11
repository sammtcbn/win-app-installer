@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=3.0.16
set fn=vlc-%ver%-win64.exe

%archivespath%\%fn% /L=1033 /S

@rem refer to https://wiki.videolan.org/Documentation:Installing_VLC/