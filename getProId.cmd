@echo off
for /f "delims=" %%t in ('getProInfo') do set str=%%t
echo %str%

rem �ر�adb.exe����
for /f " tokens=2 delims= " %%i in ('getProInfo') do set id=%%i
taskkill /f /pid %id%

rem �ر�cmd����
for /f " tokens=2 delims= " %%i in ('getCMDProInfo') do taskkill /f /pid %%i

pause