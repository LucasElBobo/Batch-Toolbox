@echo off
title Password Generator
echo.
echo This tool generates a random password.
echo.
pause
cls

setlocal enabledelayedexpansion
:loop
set /a length=12
set "chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()"
set "password="
for /l %%i in (1,1,%length%) do (
    set /a rand=!random! %% 72
    set "password=!password!!chars:~!rand!,1!"
)
echo Generated Password: !password!

set /p more="Do you want to generate another password? (y/n): "
if /i "%more%"=="y" goto loop

pause
start "" toolbox.bat
exit
