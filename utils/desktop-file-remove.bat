@echo off
set targetFileName=%*

set targetPath="C:\Users\Public\Desktop\%targetFileName%"
if exist %targetPath% (
  del /f/q %targetPath%
)

set targetPath="C:\Users\%UserName%\Desktop\%targetFileName%"
if exist %targetPath% (
  del /f/q %targetPath%
)