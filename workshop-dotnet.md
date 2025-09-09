# GitHub Copilot Workshop - .NET Edition (Express)
*Master GitHub Copilot by building a complete Task Management API with ASP.NET Core*

## 🚀 Quick Start with DevContainer

Ready to dive in? Use our pre-configured development environment with all tools and extensions ready to go!

[![Open in DevContainer](https://img.shields.io/badge/Open%20in-DevContainer-blue?style=for-the-badge&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/your-repo-url.git&workspace=.devcontainer/dotnet/devcontainer.json)

**Or manually:** 
1. Open VS Code
2. Install the "Remote - Containers" extension
3. Use Command Palette: `Remote-Containers: Reopen in Container`
4. Select the `.devcontainer/dotnet` folder

## ⏱️ Workshop Overview
**Duration**: Flexible (typically 2-3 hours)
**Format**: Local development (no Docker required)
**Focus**: Practical GitHub Copilot usage with immediate results

## 🎮 Gamification Elements
**Welcome to the .NET Copilot Speed Challenge!** Complete tasks to earn points:

### 🏆 Achievement System
- **🥉 Bronze Tasks (5-10 points)**: Quick setup and basic features
- **🥈 Silver Tasks (15-20 points)**: Core development and integration
- **🥇 Gold Tasks (25-30 points)**: Advanced features and deployment

### 📊 Progress Tracking (Express Focus)
- [ ] **Quick Starter** (Bronze) - Complete setup in 15 minutes
- [ ] **Copilot Companion** (Bronze) - First successful AI-generated code
- [ ] **API Builder** (Silver) - Complete CRUD API endpoints
- [ ] **Data Master** (Silver) - Working database integration
- [ ] **Test Creator** (Silver) - Basic testing implementation
- [ ] **Security Guardian** (Gold) - Authentication working
- [ ] **Cloud Deployer** (Gold) - Live deployment to Azure

### 🎯 Speed Bonuses
- **Lightning Setup**: Complete Phase 1 in under 15 minutes (+10 points)
- **Copilot Master**: Generate 80%+ code with AI assistance (+15 points)
- **Zero Errors**: No compilation errors throughout (+20 points)

## 🎯 Project: Task Management API

We'll build a focused task management system featuring:
- **ASP.NET Core 8** - Web API with minimal APIs
- **Entity Framework Core** - SQLite for quick setup
- **JWT Authentication** - Simple but secure auth
- **Basic Testing** - Essential unit tests
- **API Documentation** - Auto-generated Swagger docs
- **Azure Deployment** - Quick cloud deployment

## 📋 Prerequisites (Keep It Simple)

### Required Software
- **.NET 8 SDK** - [Download here](https://dotnet.microsoft.com/download)
- **Visual Studio Code** with extensions:
  - **C# Dev Kit** - Core C# support
  - **GitHub Copilot** - AI assistance
  - **GitHub Copilot Chat** - AI conversation
- **Git** - Version control

### Knowledge Required
- **Basic C#** - Classes, methods, properties
- **REST APIs** - HTTP methods understanding
- **Basic SQL** - Simple queries

### Verification
Test your setup:
```bash
dotnet --version  # Should show 8.0.x
code --version    # Should show VS Code version
```

## 🚀 Phase 1: Rapid Setup (20 minutes)

### Step 1.1: Project Creation (10 minutes)

#### **1.1.1 Create Repository (3 minutes)**
1. Create new folder: `task-manager-api`
2. Open in VS Code: `code task-manager-api`
3. Initialize Git:
   ```bash
   git init
   git branch -m main
   ```

#### **1.1.2 Create .NET Project (4 minutes)**
Use GitHub Copilot Chat to help:

**🤖 Copilot Chat Prompt:**
```
Create a new ASP.NET Core Web API project for task management with:
- Minimal API style
- Entity Framework Core with SQLite
- Authentication ready
- Swagger documentation
- Clean project structure

Show me the exact commands to run.
```

Execute the commands:
```bash
dotnet new webapi -n TaskManager.API --use-minimal-apis
cd TaskManager.API

# Add required packages
dotnet add package Microsoft.EntityFrameworkCore.Sqlite
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Microsoft.AspNetCore.Authentication.JwtBearer
dotnet add package Microsoft.AspNetCore.Identity.EntityFrameworkCore
```

#### **1.1.3 Initial Git Commit (3 minutes)**
```bash
# Create .gitignore
dotnet new gitignore

# Commit initial structure
git add .
git commit -m "Initial project setup with ASP.NET Core 8"
```

**🏅 Achievement Unlocked**: Quick Starter (Bronze) - +5 points

### Step 1.2: Core Models with Copilot (10 minutes)

#### **1.2.1 Create Models (5 minutes)**

Create `Models/TaskItem.cs` with Copilot assistance:

**🤖 Copilot Prompt (in file comment):**
```csharp
// Task management entity with the following properties:
// - Id (Guid, primary key)
// - Title (string, required, max 200 characters)
// - Description (string, optional, max 1000 characters)
// - IsCompleted (bool, default false)
// - Priority (enum: Low, Medium, High)
// - DueDate (DateTime, optional)
// - CreatedAt (DateTime, auto-set)
// - UpdatedAt (DateTime, auto-updated)
// - UserId (string, foreign key for user)
// Include data annotations for validation
```

Let Copilot generate the complete model.

Create `Models/Priority.cs`:
```csharp
// Priority enumeration for tasks with Low, Medium, High values
```

#### **1.2.2 Database Context (5 minutes)**

Create `Data/TaskContext.cs`:

**🤖 Copilot Prompt:**
```csharp
// Entity Framework DbContext for task management with:
// - TaskItems DbSet
// - User identity integration
// - SQLite configuration
// - Automatic timestamps configuration
// - Seed data for testing
```

Let Copilot generate the complete DbContext with proper configuration.

**🏅 Achievement Unlocked**: Data Master (Silver) - +15 points

## 🏗️ Phase 2: Core API Development (40 minutes)

### Step 2.1: Database Setup (10 minutes)

#### **2.1.1 Configure Database (5 minutes)**

Update `Program.cs` with Copilot:

**🤖 Copilot Prompt:**
```csharp
// Configure ASP.NET Core minimal API with:
// - Entity Framework with SQLite connection
// - Identity integration for users
// - Swagger/OpenAPI documentation
// - CORS for development
// - Authentication middleware setup
// - Automatic database migration on startup
```

#### **2.1.2 Create Database (5 minutes)**
```bash
# Create and apply migration
dotnet ef migrations add InitialCreate
dotnet ef database update
```

### Step 2.2: API Endpoints with Copilot Magic (20 minutes)

#### **2.2.1 Task CRUD Operations (15 minutes)**

Create `Controllers/TasksController.cs` or add to `Program.cs` if using minimal APIs:

**🤖 Copilot Chat Prompt:**
```
Create a complete REST API for task management with these endpoints:
- GET /api/tasks - List all tasks with filtering and pagination
- GET /api/tasks/{id} - Get specific task
- POST /api/tasks - Create new task with validation
- PUT /api/tasks/{id} - Update existing task
- DELETE /api/tasks/{id} - Delete task
- PATCH /api/tasks/{id}/complete - Toggle completion status

Include:
- Proper HTTP status codes
- Input validation
- Error handling
- Async/await patterns
- Comprehensive documentation attributes

Use Entity Framework Core with dependency injection.
```

Let Copilot generate the complete controller or minimal API endpoints.

#### **2.2.2 Authentication Endpoints (5 minutes)**

Add authentication endpoints:

**🤖 Copilot Prompt:**
```csharp
// Add user authentication endpoints:
// - POST /api/auth/register - User registration
// - POST /api/auth/login - User login with JWT token
// - Include proper password hashing and JWT generation
```

**🏅 Achievement Unlocked**: API Builder (Silver) - +20 points

### Step 2.3: Testing the API (10 minutes)

#### **2.3.1 Test with Swagger (5 minutes)**
1. Run the application:
   ```bash
   dotnet run
   ```
2. Open browser: `https://localhost:7xxx/swagger`
3. Test each endpoint with sample data

#### **2.3.2 Create Test Data (5 minutes)**

Use Copilot Chat:
```
Create a data seeding method that adds sample tasks for testing the API. Include tasks with different priorities and completion states.
```

## 🧪 Phase 3: Testing & Security (30 minutes)

### Step 3.1: Unit Testing (15 minutes)

#### **3.1.1 Create Test Project (5 minutes)**
```bash
# Create test project
dotnet new xunit -n TaskManager.Tests
dotnet add TaskManager.Tests reference TaskManager.API
cd TaskManager.Tests

# Add testing packages
dotnet add package Microsoft.EntityFrameworkCore.InMemory
dotnet add package Microsoft.AspNetCore.Mvc.Testing
```

#### **3.1.2 Write Tests with Copilot (10 minutes)**

Create `TaskControllerTests.cs`:

**🤖 Copilot Chat Prompt:**
```
Create comprehensive unit tests for the TaskController including:
- Test for creating a new task (POST)
- Test for getting all tasks (GET)
- Test for getting specific task by ID (GET)
- Test for updating a task (PUT)
- Test for deleting a task (DELETE)
- Test for marking task as complete (PATCH)

Use:
- xUnit framework
- InMemory Entity Framework provider
- Arrange-Act-Assert pattern
- Meaningful test names and assertions
- Mock data setup
```

**🏅 Achievement Unlocked**: Test Creator (Silver) - +20 points

### Step 3.2: Security Implementation (15 minutes)

#### **3.2.1 JWT Authentication (10 minutes)**

Use Copilot to enhance authentication:

**🤖 Copilot Chat Prompt:**
```
Implement comprehensive JWT authentication for the task management API:
- JWT token generation with user claims
- Token validation middleware
- Protected endpoints with [Authorize] attributes
- User-specific task filtering (users can only see their own tasks)
- Token expiration and refresh logic
- Secure password hashing with ASP.NET Core Identity
```

#### **3.2.2 Security Testing (5 minutes)**

Test authentication:
1. Register a new user via API
2. Login to get JWT token
3. Test protected endpoints with and without token
4. Verify user isolation (users only see their tasks)

**🏅 Achievement Unlocked**: Security Guardian (Gold) - +25 points

## 🚀 Phase 4: Deployment & Documentation (30 minutes)

### Step 4.1: API Documentation (10 minutes)

#### **4.1.1 Enhance Swagger Documentation (10 minutes)**

Use Copilot to improve documentation:

**🤖 Copilot Chat Prompt:**
```
Enhance the Swagger/OpenAPI documentation for the task management API:
- Add comprehensive XML documentation comments to all endpoints
- Include request/response examples
- Document authentication requirements
- Add proper status code documentation
- Include detailed parameter descriptions
- Add API versioning information
- Configure Swagger UI with custom styling and authentication
```

### Step 4.2: Azure Deployment (20 minutes)

#### **4.2.1 Prepare for Deployment (10 minutes)**

Create deployment configuration:

**🤖 Copilot Chat Prompt:**
```
Prepare the ASP.NET Core API for Azure deployment:
- Create appsettings.Production.json with Azure configurations
- Configure connection strings for Azure SQL Database
- Set up environment-specific settings
- Add health checks for monitoring
- Configure logging for Azure Application Insights
- Add necessary Azure-specific NuGet packages
```

#### **4.2.2 Deploy to Azure (10 minutes)**

Use Copilot to create deployment script:

**🤖 Copilot Chat Prompt:**
```
Create Azure CLI commands to deploy the ASP.NET Core API:
- Create Azure Resource Group
- Create Azure App Service Plan
- Create Azure Web App
- Configure application settings and connection strings
- Deploy the application code
- Set up custom domain and SSL (optional)

Provide step-by-step Azure CLI commands for deployment.
```

Execute the generated commands to deploy your application.

**🏅 Achievement Unlocked**: Cloud Deployer (Gold) - +30 points

## 📝 Quick Exercises (Use Remaining Time)

### Exercise 1: Feature Enhancement (10 minutes)
Use GitHub Copilot to add:
- Task categories/tags
- Search functionality
- Task sorting options

### Exercise 2: Performance Optimization (10 minutes)
Implement with Copilot:
- Response caching
- Database query optimization
- API rate limiting

### Exercise 3: Monitoring (10 minutes)
Add with Copilot assistance:
- Application metrics
- Error logging
- Health check endpoints

## 🎓 GitHub Copilot Best Practices (Quick Reference)

### 💡 Effective Prompting
- **Be Specific**: "Create ASP.NET Core controller with validation" vs "Create controller"
- **Provide Context**: Include file names, frameworks, and requirements
- **Iterate**: Use Copilot suggestions as starting points, then refine

### 🤖 Copilot Chat Power Tips
```
// Good prompts:
@workspace Explain the authentication flow in this project
Create unit tests for the TaskController using xUnit and InMemory database
Add validation attributes to the TaskItem model following .NET conventions

// Context-aware requests:
Show me how to add pagination to the GET /api/tasks endpoint
Implement error handling middleware for the entire application
Create a repository pattern for the task management operations
```

### ⚡ Speed Coding with Copilot
1. **Comments First**: Write detailed comments, let Copilot generate code
2. **Tab Accept**: Use Tab to accept suggestions quickly
3. **Multiple Options**: Use Ctrl+→ for alternative suggestions
4. **Chat Integration**: Use Chat for complex explanations and refactoring

## 🔍 Troubleshooting Guide

### Common Issues & Quick Fixes

**Issue**: Copilot not suggesting code
- **Fix**: Ensure file has `.cs` extension and Copilot is enabled
- **Check**: GitHub authentication in VS Code

**Issue**: Database connection errors
- **Fix**: Verify SQLite file path and permissions
- **Alternative**: Use InMemory database for testing

**Issue**: JWT authentication not working
- **Fix**: Check JWT secret configuration in appsettings.json
- **Verify**: Token format and expiration settings

**Issue**: Azure deployment fails
- **Fix**: Check Azure CLI login and subscription
- **Verify**: Application settings and connection strings

## ✅ Express Workshop Checklist

### Phase 1 (20 min) ✓
- [ ] Project created and configured
- [ ] Git repository initialized
- [ ] Core models defined
- [ ] Database context created

### Phase 2 (40 min) ✓
- [ ] Database migrations applied
- [ ] CRUD API endpoints implemented
- [ ] Authentication endpoints created
- [ ] API tested with Swagger

### Phase 3 (30 min) ✓
- [ ] Unit tests written and passing
- [ ] JWT authentication implemented
- [ ] Security testing completed

### Phase 4 (30 min) ✓
- [ ] API documentation enhanced
- [ ] Azure deployment configured
- [ ] Application deployed and accessible

## 🎉 Congratulations! Workshop Complete!

### 🏆 Final Score Calculation
**Your Achievement Points:**
- Bronze Tasks: ___ × 5-10 points = ___
- Silver Tasks: ___ × 15-20 points = ___
- Gold Tasks: ___ × 25-30 points = ___
- Speed Bonuses: ___ points
- **Total Score**: ___ points

### 🥇 Achievement Levels (Express Edition)
- **⭐ Copilot Rookie**: 0-40 points
- **🌟 Copilot Practitioner**: 41-80 points  
- **💫 Copilot Expert**: 81-120 points
- **🏆 Copilot Speed Master**: 121+ points

### 🎯 What You've Accomplished
✅ **Built a complete REST API** with ASP.NET Core 8  
✅ **Mastered GitHub Copilot** for rapid development  
✅ **Implemented authentication** with JWT tokens  
✅ **Created unit tests** with xUnit framework  
✅ **Deployed to Azure** with cloud-ready configuration  
✅ **Generated documentation** with Swagger/OpenAPI  

### 🚀 Next Steps
- **Expand the API**: Add more features using Copilot
- **Explore other workshops**: Try Python, JavaScript, or Java versions
- **Share your work**: Deploy publicly and add to your portfolio
- **Challenge colleagues**: See who can complete it fastest!

---

**🎉 Congratulations! You've completed the GitHub Copilot .NET Express Workshop!**

You now have hands-on experience using GitHub Copilot to build professional APIs quickly and efficiently. The skills you've learned will accelerate your daily development work significantly.

**Share your success**: Tweet your completion with #GitHubCopilot #DotNet #2HourChallenge
