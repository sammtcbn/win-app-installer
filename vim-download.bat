@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=9.0.2009
set fn=gvim_%ver%_x64.exe
set url=https://github.com/vim/vim-win32-installer/releases/download/v%ver%/%fn%

call utils\curl-dl.bat "%url%" %fn%
