@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=typora-setup-x64.exe
set url=https://typora.io/windows/%fn%

call utils\curl-dl.bat "%url%" %fn%