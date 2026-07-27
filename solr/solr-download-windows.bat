@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

set dlver=9.3.0
set dlfile=solr-%dlver%.tgz
set dlurl=https://archive.apache.org/dist/solr/solr/%dlver%/%dlfile%
set foldername=solr-%dlver%

rem if not exist "C:\Program Files\7-Zip\7z.exe" (
rem     echo Please install 7-Zip first.
rem 	pause
rem 	got End
rem )

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

rem powershell -command "Expand-Archive -Force %dlfile% ."
tar zxfv %dlfile%

if not exist %foldername%\bin\solr (
    echo Fail to extract %dlfile%
    pause
    goto End
)

rename %foldername% solr

:END
echo bye
timeout /t 3
