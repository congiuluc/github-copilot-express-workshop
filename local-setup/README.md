# Local DevContainer Setup Files

This folder contains all the files needed for local DevContainer development and testing.

## 📁 Contents

### Setup Scripts
- **`setup.sh`** - Linux/macOS setup script
- **`setup.bat`** - Windows setup script

### Docker Files
- **`docker-compose.yml`** - Multi-container setup for testing all workshops
- **`Dockerfile.dotnet`** - .NET 8 development environment
- **`Dockerfile.python`** - Python 3.11 + FastAPI environment
- **`Dockerfile.javascript`** - Node.js 20 + TypeScript environment
- **`Dockerfile.java`** - Java 21 + Spring Boot environment

## 🚀 Quick Start

### Option 1: Use Setup Scripts (Recommended)

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

### Option 2: Docker Compose (for testing)

Run all workshop environments simultaneously:
```bash
cd local-setup
docker-compose up -d
```

This will start all four workshop containers:
- .NET workshop: `http://localhost:5000-5001, 7000-7001`
- Python workshop: `http://localhost:8000-8001`
- JavaScript workshop: `http://localhost:3000-3001`
- Java workshop: `http://localhost:8080-8081`

### Option 3: Individual Containers

Build and run specific workshop container:

**.NET:**
```bash
docker build -f Dockerfile.dotnet -t copilot-workshop-dotnet .
docker run -p 5000:5000 -v $(pwd):/workspace copilot-workshop-dotnet
```

**Python:**
```bash
docker build -f Dockerfile.python -t copilot-workshop-python .
docker run -p 8000:8000 -v $(pwd):/workspace copilot-workshop-python
```

**JavaScript:**
```bash
docker build -f Dockerfile.javascript -t copilot-workshop-js .
docker run -p 3000:3000 -v $(pwd):/workspace copilot-workshop-js
```

**Java:**
```bash
docker build -f Dockerfile.java -t copilot-workshop-java .
docker run -p 8080:8080 -v $(pwd):/workspace copilot-workshop-java
```

## 🛠️ Prerequisites

- **Docker Desktop** - [Download here](https://docker.com/products/docker-desktop)
- **VS Code** with Remote-Containers extension
- **GitHub Copilot** subscription and extensions

## 📚 Usage Notes

### Setup Scripts
The setup scripts will:
1. ✅ Check Docker Desktop is running
2. ✅ Verify VS Code installation
3. ✅ Install required VS Code extensions
4. ✅ Let you choose your workshop
5. ✅ Open the appropriate DevContainer

### Docker Compose
- **Development**: Use for testing multiple environments
- **Workshops**: Each container runs indefinitely for development
- **Volumes**: Source code is mounted for live editing
- **Networks**: All containers can communicate with each other

### Individual Dockerfiles
- **Standalone**: Each can be used independently
- **Optimized**: Contains only necessary tools for each language
- **Extensible**: Easy to modify for specific needs

## 🔧 Customization

### Adding New Tools
Edit the appropriate Dockerfile to add new tools:
```dockerfile
# Add to any Dockerfile
RUN apt-get update && apt-get install -y \
    your-new-tool \
    another-tool
```

### Changing Ports
Update `docker-compose.yml` port mappings:
```yaml
services:
  your-service:
    ports:
      - "new-port:container-port"
```

### Adding Environment Variables
Add to `docker-compose.yml`:
```yaml
services:
  your-service:
    environment:
      - YOUR_VAR=value
```

## 🐛 Troubleshooting

### Docker Issues
- **Container won't start**: Check Docker Desktop is running
- **Port conflicts**: Change port mappings in docker-compose.yml
- **Build fails**: Clear Docker cache with `docker system prune -a`

### VS Code Issues
- **Extensions not loading**: Wait for container initialization
- **DevContainer not found**: Ensure you're in the correct folder
- **Performance issues**: Allocate more memory to Docker

### Permission Issues (Linux/macOS)
```bash
# Make scripts executable
chmod +x setup.sh

# Fix Docker permissions
sudo usermod -aG docker $USER
```

## 📖 Related Documentation

- [Main DevContainer README](../.devcontainer/README.md)
- [Workshop Documentation](../README-workshops.md)
- [Docker Documentation](https://docs.docker.com/)
- [VS Code DevContainers](https://code.visualstudio.com/docs/remote/containers)

---

**🎯 Ready to start? Run a setup script and choose your workshop!**
