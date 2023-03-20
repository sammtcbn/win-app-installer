@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

rem set ver=
set fn=vs2022_community.exe

rem %archivespath%\%fn% --quiet --norestart
%archivespath%\%fn% --nocache --wait --noUpdateInstaller --noWeb --allWorkloads --includeRecommended --includeOptional --quiet --norestart

rem refer to https://silentinstallhq.com/visual-studio-community-2022-silent-install-how-to-guide/
