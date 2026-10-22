@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo Node.js was not found on this computer.
  echo.
  echo You can still use Tempo by opening index.html directly.
  echo In-app reminders will work, but desktop notifications need a local web address.
  echo.
  echo To enable notifications, install Node.js from https://nodejs.org
  echo or serve this folder with any static web server.
  echo.
  pause
  exit /b 1
)

node serve.js
if errorlevel 1 pause
