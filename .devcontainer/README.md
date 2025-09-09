# GitHub Codespaces Setup for GitHub Copilot Express Workshop

This repository is pre-configured to work seamlessly with GitHub Codespaces, providing you with a complete cloud development environment.

## 🚀 Quick Start

1. **Click the Codespaces badge** in any workshop file or use the button below
2. **Wait 2-3 minutes** for the environment to initialize
3. **Start coding immediately** - all tools are pre-installed!

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?quickstart=1)

## 🛠️ What's Pre-installed

Our Codespace includes everything you need for all workshop tracks:

### Development Tools
- ✅ **Visual Studio Code** (in browser or desktop)
- ✅ **GitHub Copilot** and **GitHub Copilot Chat**
- ✅ **Git** for version control
- ✅ **Azure CLI** for cloud deployment
- ✅ **GitHub CLI** for repository management

### Language Runtimes
- ✅ **.NET 8 SDK** (for .NET workshop)
- ✅ **Python 3.11+** (for Python workshop)
- ✅ **Node.js 20 LTS** with npm (for JavaScript workshop)
- ✅ **Java 17** with Maven (for Java workshop)

### VS Code Extensions
- ✅ **GitHub Copilot & Chat**
- ✅ **C# Dev Kit** (.NET development)
- ✅ **Python Extension Pack** 
- ✅ **TypeScript support**
- ✅ **Java Extension Pack**
- ✅ **Azure Tools**
- ✅ **Prettier** (code formatting)

## 🎯 Workshop Selection

Once your Codespace is ready:

1. **Choose your preferred workshop**:
   - [`workshop-dotnet.md`](../workshop-dotnet.md) - ASP.NET Core 8
   - [`workshop-python.md`](../workshop-python.md) - FastAPI
   - [`workshop-javascript.md`](../workshop-javascript.md) - Express + TypeScript
   - [`workshop-java.md`](../workshop-java.md) - Spring Boot 3

2. **Follow the workshop guide** - everything is ready to go!

## 💰 GitHub Codespaces Usage

### Free Tier
- **Personal accounts**: 60 hours/month free
- **Perfect for workshops**: Each workshop takes 2-3 hours

### Usage Tips
- **Stop your Codespace** when not in use to save hours
- **Use the browser version** to save on compute time
- **Delete old Codespaces** you no longer need

## 🔧 Configuration Details

The Codespace configuration is defined in [`.devcontainer/devcontainer.json`](devcontainer.json):

- **Base image**: Universal development container
- **Port forwarding**: 3000, 5000, 8000, 8080 (for web apps)
- **Auto-formatting**: Enabled on save
- **GitHub Copilot**: Pre-configured and enabled

## 🚀 Alternative: Local Development

If you prefer local development:

1. **Clone this repository**
2. **Install the prerequisites** for your chosen workshop:
   - .NET 8 SDK, Python 3.11+, Node.js 20, or Java 17
   - Visual Studio Code with GitHub Copilot extension
3. **Open the workshop file** and follow the setup instructions

## 🤝 Support

If you encounter any issues with Codespaces:

1. **Check GitHub Status**: [status.github.com](https://status.github.com)
2. **Restart your Codespace**: Sometimes a fresh start helps
3. **Try incognito/private browsing**: Clears any browser cache issues
4. **Use VS Code desktop**: Download the Codespace to VS Code desktop

---

**Happy coding with GitHub Copilot in the cloud! ☁️🚀**
