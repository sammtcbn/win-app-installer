@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

set NGROK_VER=3
set zipfile=ngrok-v%NGROK_VER%-stable-windows-amd64.zip
set NGROK_FOLDER_NAME=ngrok

curl --fail --output %zipfile% https://bin.equinox.io/c/bNyj1mQVY4c/%zipfile%
if %errorlevel% neq 0 (
    echo Fail to download %zipfile%
    pause
    goto End
)

if not exist %zipfile% (
    echo %zipfile% not found
    pause
    goto End
)

powershell -command "Expand-Archive -Force %zipfile% ."

if not exist ngrok.exe (
    echo Fail to extract %zipfile%
    pause
    goto End
)

mkdir %NGROK_FOLDER_NAME%
move ngrok.exe %NGROK_FOLDER_NAME%

:END
echo bye
timeout /t 5
