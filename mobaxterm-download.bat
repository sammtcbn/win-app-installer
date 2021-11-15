@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=21.4
set fn=MobaXterm_Installer_v%ver%.zip
set url=https://download.mobatek.net/2142021091974654/%fn%

call utils\curl-dl.bat "%url%" %fn%