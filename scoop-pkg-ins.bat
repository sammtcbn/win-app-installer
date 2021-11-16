@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

if "%~1"=="" goto END

WHERE scoop
if /I %ERRORLEVEL% NEQ 0 (
    goto END
)

scoop install %*

:END