@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=3.12.2
set fn=DB.Browser.for.SQLite-%ver%-win64.msi

%archivespath%\%fn% /quiet /qn /norestart