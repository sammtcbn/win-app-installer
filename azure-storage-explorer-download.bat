@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=StorageExplorer.exe
set url=https://go.microsoft.com/fwlink/?LinkId=708343

call utils\curl-dl.bat "%url%" %fn%