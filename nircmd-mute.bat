@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

WHERE nircmd
if /I %ERRORLEVEL% NEQ 0 (
    goto END
)

nircmd setsysvolume 0

:END

@rem refer to https://www.nirsoft.net/utils/nircmd.html