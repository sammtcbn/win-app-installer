@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=22.14.0
set fn=node-v%ver%-x64.msi
set url=https://nodejs.org/dist/v%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%
