@echo off

if "%~1"=="" (
    echo missing package name
	timeout /t 2
    goto END
)

where /q choco
if errorlevel 1 (
    echo choco not found
	timeout /t 2
    goto END
)

echo choco install -y %*
choco install -y %*

:END