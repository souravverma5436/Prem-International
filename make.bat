@echo off
title Prem International Project Runner
cd /d "H:\websites\prem_international-main\prem_international-main\project"

echo Checking for node_modules...
if not exist "node_modules\" (
    echo node_modules not found. Installing dependencies...
    call npm install
)

echo Starting the website in development mode...
call npm run dev

pause
