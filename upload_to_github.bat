@echo off
set /p username="Enter your GitHub Username: "
set /p repo="Enter your Repository Name: "

echo.
echo Initializing Git...
git init

echo.
echo Adding files...
:: This ignores node_modules automatically if a .gitignore exists,
:: but we'll make sure to only add what is needed.
git add .

echo.
echo Committing changes...
git commit -m "Deploying Prem International Website"

echo.
echo Setting branch to main...
git branch -M main

echo.
echo Connecting to GitHub...
git remote add origin https://github.com/%username%/%repo%.git

echo.
echo Pushing to GitHub...
git push -u origin main

echo.
echo Done! Your website is now on GitHub.
pause
