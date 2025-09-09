# DevContainers for GitHub Copilot Workshops

This directory contains pre-configured development environments for each workshop, providing a consistent and hassle-free setup experience.

## 🐳 What are DevContainers?

DevContainers provide a complete development environment in a Docker container, including:
- ✅ **Pre-installed runtime and tools** (SDKs, frameworks, CLI tools)
- ✅ **VS Code extensions** (GitHub Copilot, language support, Azure tools)
- ✅ **Configured settings** (formatting, IntelliSense, debugging)
- ✅ **Port forwarding** for local development
- ✅ **Consistent environment** across different machines

## 🚀 Quick Start Options

### Option 1: One-Click in Browser (Easiest)
Click the "Open in DevContainer" button in any workshop file to start immediately in a browser-based VS Code environment.

### Option 2: Local Development
1. **Install Docker Desktop** - [Download here](https://docker.com/products/docker-desktop)
2. **Install VS Code** with "Remote - Containers" extension
3. **Clone this repository**
4. **Open specific workshop folder**:
   - `.devcontainer/dotnet` for .NET workshop
   - `.devcontainer/python` for Python workshop  
   - `.devcontainer/javascript` for JavaScript/TypeScript workshop
   - `.devcontainer/java` for Java workshop
5. **Command Palette**: `Remote-Containers: Reopen in Container`

## 📁 DevContainer Configurations

### .NET DevContainer (`.devcontainer/dotnet`)
- **Base**: .NET 8 SDK on Debian
- **Extensions**: C# Dev Kit, GitHub Copilot, Azure Tools
- **Ports**: 5000, 5001, 7000, 7001
- **Tools**: Azure CLI, GitHub CLI, Docker-in-Docker

### Python DevContainer (`.devcontainer/python`)
- **Base**: Python 3.11 on Debian
- **Extensions**: Python, Pylint, Black, GitHub Copilot, Azure Tools
- **Ports**: 8000, 8080
- **Pre-installed**: FastAPI, SQLAlchemy, Pytest, JWT libraries
- **Tools**: Azure CLI, GitHub CLI, Docker-in-Docker

### JavaScript/TypeScript DevContainer (`.devcontainer/javascript`)
- **Base**: Node.js 20 LTS on Debian
- **Extensions**: TypeScript, ESLint, Prettier, GitHub Copilot, Azure Tools
- **Ports**: 3000, 8080
- **Pre-installed**: TypeScript, Jest, global dev tools
- **Tools**: Azure CLI, GitHub CLI, Docker-in-Docker

### Java DevContainer (`.devcontainer/java`)
- **Base**: Java 21 on Debian
- **Extensions**: Extension Pack for Java, Spring Boot, GitHub Copilot, Azure Tools
- **Ports**: 8080, 8081
- **Pre-installed**: Maven, Spring Boot CLI
- **Tools**: Azure CLI, GitHub CLI, Docker-in-Docker

## 🔧 Customization

Each `devcontainer.json` can be customized. For local development and testing, check the [`local-setup`](../local-setup) folder which contains:

- **Individual Dockerfiles** for each workshop
- **Docker Compose** configuration for multi-container testing  
- **Setup scripts** for automated environment setup

### DevContainer Configuration
```json
{
  "name": "Custom Workshop Environment",
  "image": "base-image",
  "features": {
    "ghcr.io/devcontainers/features/azure-cli:1": {}
  },
  "customizations": {
    "vscode": {
      "extensions": ["GitHub.copilot"],
      "settings": {}
    }
  },
  "forwardPorts": [8080],
  "postCreateCommand": "echo 'Container ready!'"
}
```

## 🛠️ Troubleshooting

### Common Issues

**1. Docker Desktop not running**
- Start Docker Desktop before opening DevContainer
- Check Docker status: `docker --version`

**2. Container build fails**
- Clear Docker cache: `docker system prune -a`
- Rebuild container: `Remote-Containers: Rebuild Container`

**3. Extensions not loading**
- Wait for container to fully initialize
- Check "Extensions" tab for installation progress

**4. Port conflicts**
- Modify `forwardPorts` in `devcontainer.json`
- Use different ports for multiple workshops

### Performance Tips

**For Better Performance:**
- Allocate more memory to Docker (8GB+ recommended)
- Use local workspace mount for large repositories
- Close unused VS Code windows

**For Slower Machines:**
- Use simpler base images (comment out non-essential features)
- Reduce number of pre-installed extensions
- Skip `postCreateCommand` for faster startup

## 🌐 Remote Development Options

### GitHub Codespaces
Use these devcontainers directly in GitHub Codespaces:
1. Fork this repository
2. Click "Code" → "Create codespace on main"
3. Select appropriate devcontainer configuration

### Azure Container Instances
Deploy devcontainers to Azure for team workshops:
```bash
az container create \
  --resource-group workshop-rg \
  --name copilot-workshop \
  --image mcr.microsoft.com/devcontainers/dotnet:8.0
```

## 🎯 Workshop-Specific Notes

### .NET Workshop
- EF Core tools pre-installed for database migrations
- Multiple port mappings for HTTP/HTTPS development
- Optimized for ASP.NET Core development

### Python Workshop  
- FastAPI and async libraries pre-installed
- Configured for pytest and async testing
- Python formatting and linting ready

### JavaScript Workshop
- TypeScript compiler and Node.js tools ready
- ESLint and Prettier configured
- Jest testing framework pre-installed

### Java Workshop
- Spring Boot development tools ready
- Maven wrapper and build tools configured
- JUnit 5 and Spring Boot testing ready

## 📚 Learning Resources

- [DevContainers Documentation](https://containers.dev/)
- [VS Code Remote Development](https://code.visualstudio.com/docs/remote/remote-overview)
- [Docker Best Practices](https://docs.docker.com/develop/best-practices/)

---

**🎉 Ready to start your workshop? Choose your devcontainer and begin coding with GitHub Copilot!**
