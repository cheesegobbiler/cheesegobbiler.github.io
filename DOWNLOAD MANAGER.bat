@echo off
title pineapple security installer
color 0E

echo ==========================================
echo        pineapple security installer
echo ==========================================
echo.

:: Check for Python
python --version >nul 2>&1

if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not added to PATH.
    echo.
    echo Download Python from:
    echo https://www.python.org/downloads/
    echo.
    pause
    exit
)

echo [OK] Python detected.
echo.

echo Installing required Python packages...
echo.

pip install pygame
pip install playwright

echo.
echo Installing Playwright Chrome browser...
echo.

playwright install chrome

echo.
echo ==========================================
echo Installation complete!
echo ==========================================
echo.

pause