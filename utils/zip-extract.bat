@echo off
set zip_extract_script_path=%~dp0
IF "%zip_extract_script_path:~-1%"=="\" SET zip_extract_script_path=%zip_extract_script_path:~0,-1%
cd /d "%zip_extract_script_path%"
for /f "delims=" %%x in (env.txt) do (set "%%x")

set zipfile=%1
set destdir=%2

call "%zip_extract_script_path%\folder-create.bat" %destdir%

if exist "C:\Program Files\7-Zip\7z.exe" (
	"C:\Program Files\7-Zip\7z" x %zipfile% -o%destdir%
) else (
	powershell -command "Expand-Archive -Force %zipfile% %destdir%"
)