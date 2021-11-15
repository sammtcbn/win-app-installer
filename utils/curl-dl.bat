@echo off
set currpath=%cd%
set curl_script_path=%~dp0
IF "%curl_script_path:~-1%"=="\" SET curl_script_path=%curl_script_path:~0,-1%
cd /d "%curl_script_path%"
for /f "delims=" %%x in (env.txt) do (set "%%x")

set url=%1
set targetFileName=%2

if exist %archivespath%\%targetFileName% (
  echo %targetFileName% exist in %archivespath%
  goto :bye
)

cd "%curl_script_path%"
call "%curl_script_path%\folder-create.bat" %archivespath%

curl -k --fail --output %archivespath%\%targetFileName% -L %url%
if %ERRORLEVEL% neq 0 (
  echo Fail to download %url%
  timeout /t 5
  exit /b 1
)

:bye
cd /d "%currpath%"