@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

WHERE pip
if /I %ERRORLEVEL% NEQ 0 (
	echo pip not found in path
    timeout /t 3	
) else (
    rem pip install --upgrade pip
	pip install --upgrade pip --user
)

:bye
