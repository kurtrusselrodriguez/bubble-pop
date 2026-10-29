@echo off
setlocal
cd /d "%~dp0"

where py >nul 2>&1
if not errorlevel 1 goto use_py

where python >nul 2>&1
if not errorlevel 1 goto use_python

echo Python was not found. Install Python and try again.
pause
exit /b 1

:use_py
py BUBBLEPOP
goto finish

:use_python
python BUBBLEPOP

:finish
if errorlevel 1 (
    echo.
    echo Bubble Pop exited with an error.
    pause
    exit /b 1
)

endlocal