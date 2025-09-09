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
- **GitHub Codespaces support** - Complete cloud development environment

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
| **Docker Required** | ❌ No (GitHub Codespaces available) |
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

### ☁️ GitHub Codespaces Quick Start (Recommended)

Choose your language-specific development environment for faster startup and optimized tooling:

| Workshop | Language-Specific Codespace | Startup Time | One-Click Start |
|----------|------------------------------|--------------|-----------------|
| .NET | ASP.NET Core 8 + C# Tools | ~60 seconds | [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/dotnet) |
| Python | Python 3.11 + FastAPI Tools | ~45 seconds | [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/python) |
| JavaScript | Node.js 20 + TypeScript Tools | ~50 seconds | [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/javascript) |
| Java | Java 17 + Spring Boot Tools | ~75 seconds | [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/java) |

**Language-Specific Benefits:**
- ✅ **Faster startup** - Only installs tools you need (45-75 seconds vs 2-3 minutes)
- ✅ **Optimized environment** - Language-specific extensions and settings
- ✅ **Better performance** - Smaller container size, faster operations
- ✅ **Focused workspace** - No unnecessary tools cluttering your environment
- ✅ **Free tier friendly** - Uses less compute time

**🤖 Automation Options:**
- **Language-specific URLs**: 
  - .NET: `https://codespaces.new/your-repo?devcontainer_path=.devcontainer/dotnet`
  - Python: `https://codespaces.new/your-repo?devcontainer_path=.devcontainer/python`
  - JavaScript: `https://codespaces.new/your-repo?devcontainer_path=.devcontainer/javascript`
  - Java: `https://codespaces.new/your-repo?devcontainer_path=.devcontainer/java`
- **GitHub CLI**: `gh codespace create --repo your-repo --devcontainer-path .devcontainer/python`
- **Prebuilds**: Enable in repository settings for 15-30 second startup
- **Bulk creation**: Create multiple language-specific Codespaces for workshops
- **Automation scripts**: Updated for language-specific creation

### 🏫 For Workshop Facilitators
Updated automation scripts support language-specific Codespace creation:

- **Bash**: `./scripts/create-workshop-codespaces.sh -l python` (Linux/macOS)
- **PowerShell**: `.\scripts\create-workshop-codespaces.ps1 -Language dotnet` (Windows)
- **Cleanup**: `./scripts/cleanup-codespaces.sh` (post-workshop cleanup)

Example: Create 10 Python-specific Codespaces:
```bash
# Linux/macOS
./scripts/create-workshop-codespaces.sh -l python -c 10

# Windows PowerShell
.\scripts\create-workshop-codespaces.ps1 -Language python -ParticipantCount 10
```

[📚 GitHub Codespaces Setup Guide](.devcontainer/README.md)

### 🛠️ Alternative: Local Development Setup

For local development, you can set up your environment manually:

**Prerequisites for Each Workshop:**
- **GitHub Copilot** subscription and VS Code extension
- **Git** for version control
- **Language-specific runtime** (see requirements below)

Choose your preferred setup method:
1. **Direct local setup** - Install prerequisites manually
2. **GitHub Codespaces** - Use cloud development environment (recommended)

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
