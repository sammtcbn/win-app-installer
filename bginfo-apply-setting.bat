@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

WHERE bginfo64
if /I %ERRORLEVEL% NEQ 0 (
    goto END
)

bginfo64.exe "%currpath%\bginfo-setting.bgi" /timer:0 /nolicprompt /silent

:END