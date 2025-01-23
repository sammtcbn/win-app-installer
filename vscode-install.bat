@echo off
set currpath=%~dp0
if "%currpath:~-1%"=="\" set currpath=%currpath:~0,-1%
cd /d "%currpath%"
for /f "delims=" %%x in (utils\env.txt) do (set "%%x")

set ver=1.96.4
set fn=VSCodeUserSetup-x64-%ver%.exe

%archivespath%\%fn% /verysilent /suppressmsgboxes /NORESTART /MERGETASKS=!runcode

@rem refer to https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-sandbox/windows-sandbox-configure-using-wsb-file
@rem refer to https://silentinstallhq.com/visual-studio-code-silent-install-how-to-guide/
