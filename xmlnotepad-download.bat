@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=2.9.0.16
set fn=XmlNotepad-%ver%-Setup.zip
set url=https://github.com/microsoft/XmlNotepad/releases/download/%ver%/XmlNotepadSetup.zip

call utils\curl-dl.bat "%url%" %fn%
