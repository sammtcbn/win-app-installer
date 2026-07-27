@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

C:\solr\bin\nssm install solr "solr.cmd"
C:\solr\bin\nssm set solr AppDirectory "C:\solr\bin"
C:\solr\bin\nssm set solr AppParameters "start -f -p 8983"
C:\solr\bin\nssm start solr

:END
echo bye
timeout /t 3
