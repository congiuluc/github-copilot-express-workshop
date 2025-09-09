#!/bin/bash

# GitHub Copilot Workshops - Quick Setup Script
# This script helps you choose and start the appropriate workshop environment

set -e

echo "🚀 GitHub Copilot Workshops - DevContainer Setup"
echo "=================================================="
echo ""

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker Desktop and try again."
    exit 1
fi

echo "✅ Docker is running"
echo ""

# Check if VS Code is installed
if ! command -v code > /dev/null 2>&1; then
    echo "❌ VS Code is not installed or not in PATH."
    echo "Please install VS Code from: https://code.visualstudio.com/"
    exit 1
fi

echo "✅ VS Code is available"
echo ""

# Check for Remote-Containers extension
echo "📦 Checking VS Code extensions..."
if ! code --list-extensions | grep -q "ms-vscode-remote.remote-containers"; then
    echo "⚠️  Remote-Containers extension not found. Installing..."
    code --install-extension ms-vscode-remote.remote-containers
else
    echo "✅ Remote-Containers extension is installed"
fi

if ! code --list-extensions | grep -q "GitHub.copilot"; then
    echo "⚠️  GitHub Copilot extension not found. Installing..."
    code --install-extension GitHub.copilot
else
    echo "✅ GitHub Copilot extension is installed"
fi

if ! code --list-extensions | grep -q "GitHub.copilot-chat"; then
    echo "⚠️  GitHub Copilot Chat extension not found. Installing..."
    code --install-extension GitHub.copilot-chat
else
    echo "✅ GitHub Copilot Chat extension is installed"
fi

echo ""
echo "🎯 Choose your workshop:"
echo "1) .NET / C# Workshop"
echo "2) Python / FastAPI Workshop"
echo "3) JavaScript/TypeScript / Node.js Workshop"
echo "4) Java / Spring Boot Workshop"
echo "5) Show all workshops"
echo ""

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "🔷 Starting .NET Workshop DevContainer..."
        code ../.devcontainer/dotnet
        ;;
    2)
        echo "🐍 Starting Python Workshop DevContainer..."
        code ../.devcontainer/python
        ;;
    3)
        echo "🟨 Starting JavaScript/TypeScript Workshop DevContainer..."
        code ../.devcontainer/javascript
        ;;
    4)
        echo "☕ Starting Java Workshop DevContainer..."
        code ../.devcontainer/java
        ;;
    5)
        echo "📚 Opening workspace with all workshops..."
        code ../github-copilot-workshops.code-workspace
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac

echo ""
echo "🎉 Setup complete! VS Code should open with your chosen environment."
echo ""
echo "📋 Next Steps:"
echo "1. Wait for the DevContainer to build (first time only)"
echo "2. Open the workshop file (.md) for your chosen language"
echo "3. Follow the workshop instructions"
echo "4. Start coding with GitHub Copilot!"
echo ""
echo "📚 Need help? Check the DevContainer README: ../.devcontainer/README.md"
echo ""
echo "Happy coding! 🚀"
