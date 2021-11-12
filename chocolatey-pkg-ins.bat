@echo off

if "%~1"=="" (
    echo missing package name
	timeout /t 2
    goto bye
)

where /q choco
if errorlevel 1 (
    echo choco not found
	timeout /t 2
    goto bye
)

echo choco install -y %*
choco install -y %*

:bye