# GitHub Copilot Workshop - Python Edition (Express)
*Master GitHub Copilot by building a complete Task Management API with FastAPI*

## 🚀 Quick Start with GitHub Codespaces

Ready to dive in? Use our optimized Python development environment with all tools and extensions ready to go!

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?devcontainer_path=.devcontainer/python)

**What's included in your Python Codespace:**
- ✅ **Python 3.11+** - Latest stable version with pip
- ✅ **Python Extensions** - Pylint, Black formatter, IntelliSense
- ✅ **GitHub Copilot** - AI-powered code completion
- ✅ **Azure CLI** - Deploy to Azure Container Apps
- ✅ **Port forwarding** - Test your FastAPI instantly (ports 8000, 8080, 5000)

**Setup time:** ~45 seconds (vs 2-3 minutes for multi-language environment)

## ⏱️ Workshop Overview
**Duration**: Flexible (typically 2-3 hours)
**Format**: Local development (no Docker required)
**Focus**: Practical GitHub Copilot usage with immediate results

## 🎮 Gamification Elements
**Welcome to the Python Copilot Speed Challenge!** Complete tasks to earn points:

### 🏆 Achievement System
- **🥉 Bronze Tasks (5-10 points)**: Quick setup and basic features
- **🥈 Silver Tasks (15-20 points)**: Core development and integration
- **🥇 Gold Tasks (25-30 points)**: Advanced features and deployment

### 📊 Progress Tracking (Express Focus)
- [ ] **Environment Expert** (Bronze) - Python setup in 10 minutes
- [ ] **Copilot Companion** (Bronze) - First AI-generated Python functions
- [ ] **FastAPI Master** (Silver) - Complete REST API with FastAPI
- [ ] **Database Developer** (Silver) - SQLAlchemy integration working
- [ ] **Async Ace** (Silver) - Async/await patterns implemented
- [ ] **Test Virtuoso** (Gold) - Pytest suite created and passing
- [ ] **Security Specialist** (Gold) - JWT authentication working
- [ ] **Deployment Dynamo** (Gold) - Live Azure deployment

### 🎯 Speed Bonuses
- **Python Speedster**: Complete Phase 1 in under 12 minutes (+10 points)
- **Type Hint Hero**: Use comprehensive type hints throughout (+15 points)
- **Pythonic Code**: Follow PEP 8 perfectly with Copilot (+20 points)

## 🎯 Project: Task Management API

We'll build a focused task management system featuring:
- **FastAPI** - Modern, high-performance Python web framework
- **SQLAlchemy** - Async ORM with SQLite for quick setup
- **Pydantic** - Data validation and serialization
- **JWT Authentication** - Secure user authentication
- **Pytest** - Comprehensive testing framework
- **Auto-documentation** - Interactive OpenAPI docs
- **Azure Deployment** - Cloud deployment ready

## 📋 Prerequisites (Keep It Simple)

### Required Software
- **Python 3.11+** - [Download here](https://python.org/downloads)
- **pip** - Package manager (comes with Python)
- **Visual Studio Code** with extensions:
  - **Python** (Microsoft) - Core Python support
  - **Pylance** - Advanced Python IntelliSense
  - **GitHub Copilot** - AI assistance
  - **GitHub Copilot Chat** - AI conversation
- **Git** - Version control

### Knowledge Required
- **Basic Python** - Functions, classes, decorators
- **REST APIs** - HTTP methods understanding
- **Basic SQL** - Simple queries

### Verification
Test your setup:
```bash
python --version  # Should show 3.11+ 
pip --version     # Should show pip version
code --version    # Should show VS Code version
```

## 🚀 Phase 1: Rapid Setup (15 minutes)

### Step 1.1: Project Creation (8 minutes)

#### **1.1.1 Create Repository (2 minutes)**
1. Create new folder: `task-manager-fastapi`
2. Open in VS Code: `code task-manager-fastapi`
3. Open integrated terminal: `Ctrl+`` ` ``

#### **1.1.2 Python Environment Setup (4 minutes)**

**🤖 Copilot Chat Prompt:**
```
Set up a Python FastAPI project with virtual environment:
- Create virtual environment
- Install FastAPI, SQLAlchemy, and other essential packages
- Create proper project structure
- Show me the exact commands for Windows and Linux/Mac
```

Execute the commands:
```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate
# Linux/Mac:
source venv/bin/activate

# Install packages
pip install fastapi[all] sqlalchemy aiosqlite python-jose[cryptography] passlib[bcrypt] pytest pytest-asyncio httpx python-multipart
```

#### **1.1.3 Project Structure (2 minutes)**
Create basic structure:
```bash
mkdir app
mkdir app/models
mkdir app/routers
mkdir app/core
mkdir tests
touch app/__init__.py
touch app/main.py
touch app/database.py
touch requirements.txt
```

**🏅 Achievement Unlocked**: Environment Expert (Bronze) - +5 points

### Step 1.2: Core Setup with Copilot (7 minutes)

#### **1.2.1 Requirements File (1 minute)**
Create `requirements.txt`:

**🤖 Copilot Prompt:**
```python
# FastAPI task management API requirements with:
# - FastAPI with all extras for development
# - SQLAlchemy with async support
# - Authentication libraries (JWT, password hashing)
# - Testing framework
# - Database driver for SQLite
# - Data validation with Pydantic
```

#### **1.2.2 Database Configuration (3 minutes)**
Create `app/database.py`:

**🤖 Copilot Prompt:**
```python
# SQLAlchemy async database configuration for FastAPI with:
# - Async SQLite database connection
# - SQLAlchemy Base class for models
# - Database session dependency for FastAPI
# - Async session factory
# - Database initialization function
```

#### **1.2.3 Main Application (3 minutes)**
Create `app/main.py`:

**🤖 Copilot Prompt:**
```python
# FastAPI main application with:
# - FastAPI app instance with metadata
# - CORS middleware for development
# - Database table creation on startup
# - Health check endpoint
# - Include routers for tasks and authentication
# - Auto-generated OpenAPI documentation
```

**🏅 Achievement Unlocked**: Copilot Companion (Bronze) - +10 points

## 🏗️ Phase 2: Core API Development (50 minutes)

### Step 2.1: Data Models (15 minutes)

#### **2.1.1 Pydantic Models (8 minutes)**
Create `app/models/task.py`:

**🤖 Copilot Prompt:**
```python
# Pydantic models for task management with:
# - TaskBase with common fields (title, description, priority, due_date)
# - TaskCreate for input validation (inherits from TaskBase)
# - TaskUpdate for partial updates (optional fields)
# - TaskResponse for API responses (includes id, created_at, updated_at)
# - Priority enum (LOW, MEDIUM, HIGH)
# - Comprehensive field validation and examples
# - Type hints throughout
```

Create `app/models/user.py`:

**🤖 Copilot Prompt:**
```python
# User authentication Pydantic models with:
# - UserBase with email and username
# - UserCreate with password validation
# - UserLogin for authentication
# - UserResponse for API responses (no password)
# - Token models for JWT authentication
# - Email validation and password strength requirements
```

#### **2.1.2 SQLAlchemy Models (7 minutes)**
Create `app/models/database.py`:

**🤖 Copilot Chat Prompt:**
```
Create SQLAlchemy models for the task management system:
- Task model with id, title, description, is_completed, priority, due_date, created_at, updated_at, user_id
- User model with id, email, username, hashed_password, created_at
- Proper relationships between User and Task (one-to-many)
- Use SQLAlchemy 2.0 async syntax
- Include proper indexes and constraints
- Add timestamp automation for created_at and updated_at
```

**🏅 Achievement Unlocked**: Database Developer (Silver) - +15 points

### Step 2.2: Authentication System (15 minutes)

#### **2.2.1 Security Utilities (8 minutes)**
Create `app/core/security.py`:

**🤖 Copilot Chat Prompt:**
```
Create a comprehensive authentication system for FastAPI:
- Password hashing using bcrypt
- JWT token creation and verification
- OAuth2 password bearer for FastAPI
- User authentication dependency
- Password verification functions
- Token expiration handling
- Secure random secret key generation for development

Include proper error handling and type hints.
```

#### **2.2.2 Authentication Router (7 minutes)**
Create `app/routers/auth.py`:

**🤖 Copilot Prompt:**
```python
# FastAPI authentication router with:
# - POST /register endpoint for user registration
# - POST /login endpoint with JWT token response
# - Password hashing before storing in database
# - User existence validation
# - Proper HTTP status codes and error responses
# - Async database operations
# - Comprehensive error handling for authentication failures
```

**🏅 Achievement Unlocked**: Security Specialist (Gold) - +25 points

### Step 2.3: Task Management API (20 minutes)

#### **2.3.1 Task Router (20 minutes)**
Create `app/routers/tasks.py`:

**🤖 Copilot Chat Prompt:**
```
Create a complete FastAPI router for task management with these endpoints:

1. GET /tasks - List user's tasks with optional filtering by:
   - completion status (completed/pending)
   - priority level
   - due date range
   Include pagination with limit and offset

2. POST /tasks - Create new task with validation

3. GET /tasks/{task_id} - Get specific task (only if owned by user)

4. PUT /tasks/{task_id} - Update entire task

5. PATCH /tasks/{task_id} - Partial task update

6. DELETE /tasks/{task_id} - Delete task

7. PATCH /tasks/{task_id}/complete - Toggle completion status

Requirements:
- All endpoints require authentication (protect with current_user dependency)
- Users can only access their own tasks
- Proper HTTP status codes (200, 201, 404, 403, 422)
- Comprehensive error handling
- Async database operations with SQLAlchemy
- Type hints and response models
- OpenAPI documentation with examples
```

**🏅 Achievement Unlocked**: FastAPI Master (Silver) - +20 points

## 🧪 Phase 3: Testing & Optimization (35 minutes)

### Step 3.1: Testing Setup (20 minutes)

#### **3.1.1 Test Configuration (5 minutes)**
Create `tests/conftest.py`:

**🤖 Copilot Prompt:**
```python
# Pytest configuration for FastAPI testing with:
# - Test database setup with SQLite in-memory
# - Async test client factory
# - Test user creation fixture
# - Test authentication token fixture
# - Database cleanup after each test
# - Async pytest configuration
```

#### **3.1.2 API Tests (15 minutes)**
Create `tests/test_tasks.py`:

**🤖 Copilot Chat Prompt:**
```
Create comprehensive pytest tests for the task management API:

Test coverage needed:
1. Test task creation (POST /tasks)
2. Test task listing with authentication (GET /tasks)
3. Test task retrieval by ID (GET /tasks/{id})
4. Test task updates (PUT /tasks/{id})
5. Test task deletion (DELETE /tasks/{id})
6. Test task completion toggle (PATCH /tasks/{id}/complete)
7. Test user isolation (users can't access other users' tasks)
8. Test authentication required for all endpoints
9. Test validation errors with invalid data
10. Test filtering and pagination

Use:
- pytest-asyncio for async tests
- httpx for async HTTP client
- Proper test data setup and cleanup
- Meaningful assertions
- Test both success and error scenarios
```

Create `tests/test_auth.py`:

**🤖 Copilot Prompt:**
```python
# Authentication tests with:
# - User registration testing
# - User login with valid/invalid credentials
# - JWT token validation
# - Protected endpoint access without token
# - Password hashing verification
```

Run tests:
```bash
pytest -v
```

**🏅 Achievement Unlocked**: Test Virtuoso (Gold) - +30 points

### Step 3.2: Performance & Documentation (15 minutes)

#### **3.2.1 Async Optimization (8 minutes)**

Use Copilot to optimize:

**🤖 Copilot Chat Prompt:**
```
Review the FastAPI application for async/await optimization:
- Ensure all database operations are properly async
- Check for any blocking operations that should be async
- Optimize database queries to avoid N+1 problems
- Add connection pooling if needed
- Suggest caching strategies for frequently accessed data
- Review error handling for async operations
```

#### **3.2.2 API Documentation Enhancement (7 minutes)**

**🤖 Copilot Chat Prompt:**
```
Enhance the FastAPI OpenAPI documentation:
- Add comprehensive descriptions to all endpoints
- Include request/response examples for each endpoint
- Add proper tags for endpoint grouping
- Configure API metadata (title, description, version)
- Add authentication documentation
- Include error response examples
- Set up custom OpenAPI schema customization
```

**🏅 Achievement Unlocked**: Async Ace (Silver) - +20 points

## 🚀 Phase 4: Deployment (20 minutes)

### Step 4.1: Deployment Preparation (10 minutes)

#### **4.1.1 Production Configuration (5 minutes)**
Create `app/core/config.py`:

**🤖 Copilot Prompt:**
```python
# FastAPI configuration management with:
# - Environment variables for different environments
# - Database URL configuration for production
# - JWT secret configuration
# - CORS settings for production
# - Logging configuration
# - Azure-specific settings
# - Settings validation with Pydantic
```

#### **4.1.2 Azure Deployment Files (5 minutes)**

**🤖 Copilot Chat Prompt:**
```
Prepare FastAPI application for Azure deployment:
- Create startup.sh script for Azure App Service
- Create requirements.txt with exact versions
- Add Azure-specific environment variable configuration
- Create simple Dockerfile for container deployment (optional)
- Configure logging for Azure Application Insights
- Set up health check endpoint for Azure monitoring
```

### Step 4.2: Deploy to Azure (10 minutes)

#### **4.2.1 Azure CLI Deployment (10 minutes)**

**🤖 Copilot Chat Prompt:**
```
Create Azure CLI commands to deploy the FastAPI application:

Steps needed:
1. Create Azure Resource Group
2. Create Azure App Service Plan (Free or Basic tier)
3. Create Azure Web App with Python runtime
4. Configure application settings and environment variables
5. Deploy application code using Azure CLI or Git deployment
6. Set up custom domain and SSL (optional)

Provide step-by-step Azure CLI commands for deployment.
Include commands to:
- Set up Azure CLI authentication
- Create all necessary Azure resources
- Configure environment variables for production
- Deploy the application
- Check deployment status and logs
```

Execute the deployment commands:
```bash
# Example commands (generated by Copilot)
az login
az group create --name task-manager-rg --location eastus
az appservice plan create --name task-manager-plan --resource-group task-manager-rg --sku FREE
az webapp create --name your-unique-app-name --resource-group task-manager-rg --plan task-manager-plan --runtime "python|3.11"
# ... additional commands from Copilot
```

Test your live deployment!

**🏅 Achievement Unlocked**: Deployment Dynamo (Gold) - +30 points

## 📝 Quick Exercises (Use Remaining Time)

### Exercise 1: Feature Enhancement (10 minutes)
Use GitHub Copilot to add:
- Task categories or labels
- Search functionality with full-text search
- Task statistics endpoint (count by status, priority)

### Exercise 2: Advanced Features (10 minutes)
Implement with Copilot:
- Task sharing between users
- Task comments or notes
- File attachments to tasks

### Exercise 3: Performance Monitoring (10 minutes)
Add with Copilot assistance:
- Request/response logging middleware
- Performance metrics collection
- Database query monitoring

## 🎓 Python & Copilot Best Practices (Quick Reference)

### 💡 Effective Python Prompting
- **Be Pythonic**: "Create a Python function following PEP 8 standards"
- **Specify Framework**: "FastAPI endpoint with async/await" vs "Flask route"
- **Include Type Hints**: Ask for comprehensive type annotations

### 🤖 Copilot Chat Power Tips for Python
```python
# Good prompts for Python:
@workspace Explain the async/await usage in this FastAPI application
Create a Pydantic model with comprehensive validation for user input
Add comprehensive error handling to this FastAPI router following best practices

# Context-aware requests:
Show me how to add database indexes to improve query performance
Implement response caching for this FastAPI endpoint
Create a custom middleware for request logging and error handling
```

### ⚡ Speed Python Coding with Copilot
1. **Docstrings First**: Write detailed docstrings, let Copilot generate functions
2. **Type Hints**: Start with type hints, Copilot will generate typed code
3. **Comments**: Use descriptive comments for complex logic
4. **Framework Context**: Keep framework imports visible

### 🐍 Python-Specific Copilot Features
- **PEP 8 Compliance**: Copilot follows Python style guidelines
- **Async Patterns**: Excellent at generating async/await code
- **Error Handling**: Good at Python exception patterns
- **Data Validation**: Strong with Pydantic model generation

## 🔍 Troubleshooting Guide

### Common Issues & Quick Fixes

**Issue**: FastAPI not starting
- **Fix**: Check Python version (3.11+) and virtual environment activation
- **Verify**: All required packages installed with `pip list`

**Issue**: Database connection errors
- **Fix**: Check SQLite file permissions and path
- **Alternative**: Use in-memory database for testing

**Issue**: JWT authentication not working
- **Fix**: Verify JWT_SECRET in environment variables
- **Check**: Token format and expiration settings

**Issue**: Tests failing
- **Fix**: Ensure test database isolation and proper async setup
- **Verify**: pytest-asyncio plugin installed

**Issue**: Azure deployment fails
- **Fix**: Check Python runtime version compatibility
- **Verify**: All environment variables set correctly

## ✅ Express Python Workshop Checklist

### Phase 1 (15 min) ✓
- [ ] Python environment and packages installed
- [ ] Project structure created
- [ ] Basic FastAPI app running
- [ ] Database configuration complete

### Phase 2 (50 min) ✓
- [ ] Pydantic and SQLAlchemy models created
- [ ] Authentication system implemented
- [ ] Complete task CRUD API working
- [ ] JWT authentication protecting endpoints

### Phase 3 (35 min) ✓
- [ ] Comprehensive test suite written
- [ ] Tests passing with good coverage
- [ ] Async optimization completed
- [ ] API documentation enhanced

### Phase 4 (20 min) ✓
- [ ] Production configuration ready
- [ ] Azure deployment configured
- [ ] Application deployed and accessible
- [ ] Live API tested and working

## 🎉 Congratulations! Workshop Complete!

### 🏆 Final Score Calculation
**Your Achievement Points:**
- Bronze Tasks: ___ × 5-10 points = ___
- Silver Tasks: ___ × 15-20 points = ___
- Gold Tasks: ___ × 25-30 points = ___
- Speed Bonuses: ___ points
- **Total Score**: ___ points

### 🥇 Achievement Levels (Express Python Edition)
- **🐍 Python Apprentice**: 0-45 points
- **⚡ FastAPI Practitioner**: 46-90 points  
- **🚀 Python API Expert**: 91-135 points
- **🏆 Python Copilot Master**: 136+ points

### 🎯 What You've Accomplished
✅ **Built a complete REST API** with FastAPI and async Python  
✅ **Mastered GitHub Copilot** for Python development  
✅ **Implemented JWT authentication** with secure password hashing  
✅ **Created comprehensive tests** with pytest and async testing  
✅ **Deployed to Azure** with production-ready configuration  
✅ **Generated auto-documentation** with OpenAPI/Swagger  
✅ **Used modern Python** with type hints and async/await  

### 🚀 Next Steps
- **Extend the API**: Add more features like file uploads, email notifications
- **Explore frameworks**: Try Django REST, Flask, or other Python frameworks
- **Database scaling**: Move to PostgreSQL or other production databases
- **Microservices**: Break into multiple FastAPI services
- **Challenge others**: Share your workshop completion time!

### 🌟 Python-Specific Skills Gained
- **Async Programming**: Modern Python async/await patterns
- **Type Safety**: Comprehensive type hints with mypy compatibility
- **Data Validation**: Pydantic models with automatic validation
- **Testing**: pytest with async support and comprehensive coverage
- **API Design**: RESTful API design with OpenAPI documentation

---

**🎉 Congratulations! You've completed the GitHub Copilot Python Express Workshop!**

You now have hands-on experience using GitHub Copilot to build professional Python APIs quickly and efficiently. The async programming patterns and FastAPI skills you've learned are highly valuable in modern Python development.

**Share your success**: Tweet your completion with #GitHubCopilot #Python #FastAPI #2HourChallenge
