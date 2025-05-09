@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=CD-548
set fn=fritzing-%ver%.zip
set url=https://github.com/fritzing/fritzing-app/releases/download/%ver%/fritzing-3d61c58421bdb63ca903bb5d11310a257f1ec0ed-develop-548.windows.64.zip

call utils\curl-dl.bat "%url%" %fn%
