@echo off
setlocal enabledelayedexpansion

echo 🚀 GitHub Copilot Workshops - DevContainer Setup
echo ==================================================
echo.

REM Check if Docker is running
docker info >nul 2>&1
if errorlevel 1 (
    echo ❌ Docker is not running. Please start Docker Desktop and try again.
    pause
    exit /b 1
)

echo ✅ Docker is running
echo.

REM Check if VS Code is installed
where code >nul 2>&1
if errorlevel 1 (
    echo ❌ VS Code is not installed or not in PATH.
    echo Please install VS Code from: https://code.visualstudio.com/
    pause
    exit /b 1
)

echo ✅ VS Code is available
echo.

REM Check for Remote-Containers extension
echo 📦 Checking VS Code extensions...
code --list-extensions | findstr "ms-vscode-remote.remote-containers" >nul
if errorlevel 1 (
    echo ⚠️  Remote-Containers extension not found. Installing...
    code --install-extension ms-vscode-remote.remote-containers
) else (
    echo ✅ Remote-Containers extension is installed
)

code --list-extensions | findstr "GitHub.copilot" >nul
if errorlevel 1 (
    echo ⚠️  GitHub Copilot extension not found. Installing...
    code --install-extension GitHub.copilot
) else (
    echo ✅ GitHub Copilot extension is installed
)

code --list-extensions | findstr "GitHub.copilot-chat" >nul
if errorlevel 1 (
    echo ⚠️  GitHub Copilot Chat extension not found. Installing...
    code --install-extension GitHub.copilot-chat
) else (
    echo ✅ GitHub Copilot Chat extension is installed
)

echo.
echo 🎯 Choose your workshop:
echo 1^) .NET / C# Workshop
echo 2^) Python / FastAPI Workshop
echo 3^) JavaScript/TypeScript / Node.js Workshop
echo 4^) Java / Spring Boot Workshop
echo 5^) Show all workshops
echo.

set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" (
    echo 🔷 Starting .NET Workshop DevContainer...
    code ..\.devcontainer\dotnet
) else if "%choice%"=="2" (
    echo 🐍 Starting Python Workshop DevContainer...
    code ..\.devcontainer\python
) else if "%choice%"=="3" (
    echo 🟨 Starting JavaScript/TypeScript Workshop DevContainer...
    code ..\.devcontainer\javascript
) else if "%choice%"=="4" (
    echo ☕ Starting Java Workshop DevContainer...
    code ..\.devcontainer\java
) else if "%choice%"=="5" (
    echo 📚 Opening workspace with all workshops...
    code ..\github-copilot-workshops.code-workspace
) else (
    echo ❌ Invalid choice. Please run the script again.
    pause
    exit /b 1
)

echo.
echo 🎉 Setup complete! VS Code should open with your chosen environment.
echo.
echo 📋 Next Steps:
echo 1. Wait for the DevContainer to build ^(first time only^)
echo 2. Open the workshop file ^(.md^) for your chosen language
echo 3. Follow the workshop instructions
echo 4. Start coding with GitHub Copilot!
echo.
echo 📚 Need help? Check the DevContainer README: ..\.devcontainer\README.md
echo.
echo Happy coding! 🚀
pause
