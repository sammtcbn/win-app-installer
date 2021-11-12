@echo off
where /q choco
if errorlevel 1 (
    rem echo choco not found
    exit /b 1
) else (
    rem echo choco found
    exit /b 0
)