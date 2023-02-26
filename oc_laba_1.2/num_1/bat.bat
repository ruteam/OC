@echo off
set count=0
set "path=%1"
if not defined path set "path=."
for /d %%a in ("%path%\*") do set /a count+=1
echo Count of catalogs in %path%: %count%
pause