@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

set dlver=8.4.1
set dlfile=elasticsearch-%dlver%-windows-x86_64.zip
set dlurl=https://artifacts.elastic.co/downloads/elasticsearch/%dlfile%
set foldername=elasticsearch-%dlver%

curl --fail --output %dlfile% %dlurl%
if %errorlevel% neq 0 (
    echo Fail to download %dlfile%
    pause
    goto End
)

if not exist %dlfile% (
    echo %dlfile% not found
    pause
    goto End
)

powershell -command "Expand-Archive -Force %dlfile% ."

if not exist %foldername%\bin\elasticsearch (
    echo Fail to extract %dlfile%
    pause
    goto End
)

rename %foldername% elasticsearch

:END
echo bye
timeout /t 3
