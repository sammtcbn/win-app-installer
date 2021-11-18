@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=10-2-3
set fn=s3browser-%ver%.exe
set url=https://s3browser.com/download/%fn%

call utils\curl-dl.bat "%url%" %fn%