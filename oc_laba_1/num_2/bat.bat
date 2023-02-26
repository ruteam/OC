@echo off
set count=0
set "path=%1"
if not defined path set "path=."
for /f %%a in ('dir /b /a-d %path%\*.sys') do (
  set /a count+=1
  echo %cd%\%%a
)
echo Count of .sys files in %path%: %count%
pause