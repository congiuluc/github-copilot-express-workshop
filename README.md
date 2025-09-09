# GitHub Copilot Workshops

## 📋 Overview

This repository includes streamlined GitHub Copilot workshops, designed for:
- **Rapid learning** with immediate practical results
- **Local development** without Docker dependencies
- **Focus on GitHub Copilot mastery** rather than infrastructure setup
- **Maximum productivity** in minimal time

## 🚀 Workshop Versions

### Available Workshops
| Language | Framework | Database | Auth | Deployment |
|----------|-----------|----------|------|------------|
| [.NET Express](workshop-dotnet.md) | ASP.NET Core 8 | SQLite + EF Core | JWT | Azure App Service |
| [Python Express](workshop-python.md) | FastAPI | SQLite + SQLAlchemy | JWT | Azure Container Apps |
| [JavaScript Express](workshop-javascript.md) | Express + TypeScript | SQLite + Prisma | JWT | Azure App Service |
| [Java Express](workshop-java.md) | Spring Boot 3 | H2 + JPA | JWT + Spring Security | Azure App Service |

## 🎯 Workshop Features

These workshops include:
- **No Docker** - Local development only
- **Lightweight databases** - SQLite/H2 for quick setup
- **Essential features** - Core CRUD, Auth, Testing, Deployment
- **Rapid deployment** - Direct Azure deployment
- **Focused scope** - Task management API
- **Immediate results** - Working application quickly
- **DevContainer support** - Complete development environment

## 🎯 When to Use These Workshops

### Choose these workshops when:
- ✅ You want to **learn GitHub Copilot quickly**
- ✅ You have **limited time** (lunch break, after work)
- ✅ You want **immediate results** and working code
- ✅ You're **new to the technology stack**
- ✅ You want to **compare multiple languages** quickly
- ✅ You prefer **simple local development** setup
- ✅ You want **essential features** without complexity

## 📊 Workshop Overview

| Feature | Workshop |
|---------|----------|
| **Setup Time** | 10-15 min |
| **Docker Required** | ❌ No (DevContainer optional) |
| **Database** | SQLite/H2 |
| **Architecture** | Simple 3-layer |
| **Testing** | Basic unit tests |
| **Security** | JWT authentication |
| **Deployment** | Direct Azure |
| **Documentation** | Basic Swagger |
| **Difficulty** | Beginner-Intermediate |

## 🏆 Gamification & Achievements

These workshops include:
- **Point-based scoring** system
- **Achievement badges** for completed tasks
- **Speed bonuses** for fast completion
- **Skill-specific challenges** for each technology
- **Competition elements** for group workshops

### Workshop Achievements
- **🥉 Bronze (5-10 points)**: Setup and basic features
- **🥈 Silver (15-20 points)**: Core development
- **🥇 Gold (25-30 points)**: Advanced features and deployment

## 🚀 Getting Started

### 🐳 DevContainer Quick Start (Recommended)

The fastest way to get started is using our pre-configured DevContainers that include all tools, extensions, and dependencies:

| Workshop | DevContainer | One-Click Start |
|----------|--------------|-----------------|
| .NET | [`.devcontainer/dotnet`](.devcontainer/dotnet) | [![Open in DevContainer](https://img.shields.io/badge/Open%20in-DevContainer-blue?style=flat-square&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/your-repo-url.git&workspace=.devcontainer/dotnet/devcontainer.json) |
| Python | [`.devcontainer/python`](.devcontainer/python) | [![Open in DevContainer](https://img.shields.io/badge/Open%20in-DevContainer-blue?style=flat-square&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/your-repo-url.git&workspace=.devcontainer/python/devcontainer.json) |
| JavaScript | [`.devcontainer/javascript`](.devcontainer/javascript) | [![Open in DevContainer](https://img.shields.io/badge/Open%20in-DevContainer-blue?style=flat-square&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/your-repo-url.git&workspace=.devcontainer/javascript/devcontainer.json) |
| Java | [`.devcontainer/java`](.devcontainer/java) | [![Open in DevContainer](https://img.shields.io/badge/Open%20in-DevContainer-blue?style=flat-square&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/your-repo-url.git&workspace=.devcontainer/java/devcontainer.json) |

**DevContainer Benefits:**
- ✅ **Zero setup time** - Everything pre-configured
- ✅ **Consistent environment** - Same for everyone
- ✅ **All tools included** - SDKs, extensions, CLI tools
- ✅ **Works anywhere** - Local, cloud, or browser

[📚 DevContainer Setup Guide](.devcontainer/README.md)

### 🛠️ Alternative: Quick Setup Scripts

For local development with DevContainers, use our setup scripts:

**Windows:**
```bash
cd local-setup
setup.bat
```

**macOS/Linux:**
```bash
cd local-setup
chmod +x setup.sh
./setup.sh
```

These scripts will:
1. ✅ Check Docker Desktop is running
2. ✅ Verify VS Code installation
3. ✅ Install required extensions
4. ✅ Let you choose your workshop
5. ✅ Open the appropriate DevContainer

### For These Workshops (Recommended for beginners):
1. **Choose your preferred language/framework**
2. **Ensure prerequisites are installed** (language runtime + VS Code + Copilot)
3. **Follow the workshop guide**
4. **Deploy to Azure and share your results**

## 📝 Workshop Prerequisites Summary

### All Workshops Require:
- **GitHub Copilot** subscription and VS Code extension
- **Git** for version control
- **Azure account** (free tier sufficient)

### Language-Specific Requirements:

#### .NET Workshops
- **.NET 8 SDK**
- **C# Dev Kit** VS Code extension

#### Python Workshops
- **Python 3.11+**
- **Python** VS Code extension

#### JavaScript/TypeScript Workshops
- **Node.js 20 (LTS)**
- **TypeScript** support in VS Code

#### Java Workshops
- **Java 17 or 21**
- **Extension Pack for Java** VS Code extension

## 🎓 Learning Outcomes

After completing any workshop, you'll be able to:

### GitHub Copilot Mastery
- ✅ **Effective prompting** for code generation
- ✅ **Copilot Chat** for complex problem solving
- ✅ **Context-aware development** with AI assistance
- ✅ **Code explanation and refactoring** with AI
- ✅ **Testing and documentation** generation

### Technology-Specific Skills
- ✅ **REST API development** with proper patterns
- ✅ **Database integration** and ORM usage
- ✅ **Authentication and security** implementation
- ✅ **Testing strategies** and best practices
- ✅ **Cloud deployment** to Azure
- ✅ **API documentation** generation

## 🔄 Workshop Evolution

These workshops are continuously updated with:
- **Latest framework versions** and best practices
- **New GitHub Copilot features** as they're released
- **Community feedback** and improvements
- **Additional language support** based on demand

## 🤝 Contributing

We welcome contributions to improve these workshops:
- **Bug fixes** and corrections
- **New features** and exercises
- **Additional languages** and frameworks
- **Improved explanations** and examples

## 📞 Support

If you need help during the workshops:
1. **Check the troubleshooting section** in each workshop
2. **Use GitHub Copilot Chat** for specific coding questions
3. **Review the prerequisites** to ensure proper setup
4. **Ask questions** in workshop sessions or forums

---

**🎉 Ready to accelerate your development skills with GitHub Copilot?**

Choose your adventure:
- **Quick start**: Pick a workshop and begin coding
- **Compare technologies**: Try multiple workshops
- **Challenge yourself**: Complete all workshops for maximum skill gain!

**Happy coding with GitHub Copilot! 🚀**
