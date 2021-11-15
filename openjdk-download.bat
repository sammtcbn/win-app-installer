@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=15.0.2
set fn=openjdk-%ver%_windows-x64_bin.zip
set url=https://download.java.net/java/GA/jdk%ver%/0d1cfde4252546c6931946de8db48ee2/7/GPL/%fn%

call utils\curl-dl.bat "%url%" %fn%