# GitHub Codespaces Setup for GitHub Copilot Express Workshop

This repository is configured with **language-specific** GitHub Codespaces for optimal performance and faster startup times.

## 🎯 Choose Your Language-Specific Environment

Instead of waiting for a multi-language environment to load, select your specific workshop track:

| Language | Optimized Environment | Startup Time | Direct Link |
|----------|----------------------|--------------|-------------|
| **.NET** | ASP.NET Core 8, C# Dev Kit | ~60 seconds | [![.NET Codespace](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/dotnet) |
| **Python** | Python 3.11, FastAPI tools | ~45 seconds | [![Python Codespace](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/python) |
| **JavaScript** | Node.js 20, TypeScript | ~50 seconds | [![JavaScript Codespace](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/javascript) |
| **Java** | Java 17, Spring Boot | ~75 seconds | [![Java Codespace](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/java) |

## ⚡ Benefits of Language-Specific Codespaces

### **Performance Benefits:**
- ✅ **3x faster startup** - 45-75 seconds vs 2-3 minutes
- ✅ **Smaller containers** - Only your language tools
- ✅ **Better performance** - Less memory usage, faster operations
- ✅ **Free tier friendly** - Uses significantly less compute time

### **Developer Experience:**
- ✅ **Focused environment** - No unnecessary tools cluttering workspace
- ✅ **Optimized extensions** - Only relevant VS Code extensions
- ✅ **Language-specific settings** - Pre-configured for each technology
- ✅ **Faster IntelliSense** - Language-specific tooling optimization

## 🤖 Automated Codespace Creation

### Method 1: Direct URL Parameters (Recommended)
You can create Codespaces instantly using URL parameters:

```
https://codespaces.new/your-username/github-copilot-express-workshop?quickstart=1&machine=basicLinux32gb
```

**URL Parameters:**
- `quickstart=1` - Skip setup prompts
- `machine=basicLinux32gb` - Set machine type (2-core, 8GB RAM)
- `devcontainer_path=.devcontainer` - Use our pre-configured environment

### Method 2: GitHub CLI Automation
Create Codespaces programmatically with GitHub CLI:

```bash
# Install GitHub CLI first: https://cli.github.com
gh auth login
gh codespace create --repo your-username/github-copilot-express-workshop --machine basicLinux32gb
```

### Method 3: Workshop-Specific Quick Links
For workshop facilitators, here are direct links for each track:

| Workshop | Direct Codespace Link |
|----------|----------------------|
| .NET | [Create .NET Codespace](https://codespaces.new/your-username/github-copilot-express-workshop?quickstart=1&machine=basicLinux32gb&devcontainer_path=.devcontainer) |
| Python | [Create Python Codespace](https://codespaces.new/your-username/github-copilot-express-workshop?quickstart=1&machine=basicLinux32gb&devcontainer_path=.devcontainer) |
| JavaScript | [Create JavaScript Codespace](https://codespaces.new/your-username/github-copilot-express-workshop?quickstart=1&machine=basicLinux32gb&devcontainer_path=.devcontainer) |
| Java | [Create Java Codespace](https://codespaces.new/your-username/github-copilot-express-workshop?quickstart=1&machine=basicLinux32gb&devcontainer_path=.devcontainer) |

### Method 4: Prebuilds for Instant Startup
For even faster creation, enable Codespaces Prebuilds in your repository settings:

1. Go to **Settings** → **Codespaces** in your repository
2. Click **Set up prebuild**
3. Configure prebuild triggers (push to main, schedule)
4. Codespaces will start in 10-30 seconds instead of 2-3 minutes

### Method 5: Workshop Facilitator Automation
For workshop organizers managing multiple participants:

```bash
# Create multiple Codespaces for participants
for i in {1..10}; do
  gh codespace create \
    --repo your-username/github-copilot-express-workshop \
    --machine basicLinux32gb \
    --display-name "Workshop-Participant-$i"
done
```

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
