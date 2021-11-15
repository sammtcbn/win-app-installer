@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=17
set fn=jdk-%ver%_windows-x64_bin.exe
set url=https://download.oracle.com/java/%ver%/latest/%fn%

call utils\curl-dl.bat "%url%" %fn%