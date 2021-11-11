@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1620
set fn=K-Lite_Codec_Pack_%ver%_Full.exe

%archivespath%\%fn% /VERYSILENT /NORESTART