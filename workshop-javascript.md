# GitHub Copilot Workshop - JavaScript/TypeScript Edition (Express)
*Master GitHub Copilot by building a complete Task Management API with Node.js and Express*

## 🚀 Quick Start with DevContainer

Ready to dive in? Use our pre-configured development environment with all tools and extensions ready to go!

[![Open in DevContainer](https://img.shields.io/badge/Open%20in-DevContainer-blue?style=for-the-badge&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/your-repo-url.git&workspace=.devcontainer/javascript/devcontainer.json)

**Or manually:** 
1. Open VS Code
2. Install the "Remote - Containers" extension
3. Use Command Palette: `Remote-Containers: Reopen in Container`
4. Select the `.devcontainer/javascript` folder

## ⏱️ Workshop Overview
**Duration**: Flexible (typically 2-3 hours)
**Format**: Local development (no Docker required)
**Focus**: Practical GitHub Copilot usage with immediate results

## 🎮 Gamification Elements
**Welcome to the JavaScript/TypeScript Copilot Speed Challenge!** Complete tasks to earn points:

### 🏆 Achievement System
- **🥉 Bronze Tasks (5-10 points)**: Quick setup and basic features
- **🥈 Silver Tasks (15-20 points)**: Core development and integration
- **🥇 Gold Tasks (25-30 points)**: Advanced features and deployment

### 📊 Progress Tracking (Express Focus)
- [ ] **Node.js Navigator** (Bronze) - Node.js setup in 10 minutes
- [ ] **TypeScript Trailblazer** (Bronze) - TypeScript configuration complete
- [ ] **Express Expert** (Silver) - Complete REST API with Express
- [ ] **Database Developer** (Silver) - Database integration working
- [ ] **Async Astronaut** (Silver) - Promises and async/await mastered
- [ ] **Test Tactician** (Gold) - Jest test suite created and passing
- [ ] **Security Specialist** (Gold) - JWT authentication implemented
- [ ] **Cloud Conductor** (Gold) - Live Azure deployment

### 🎯 Speed Bonuses
- **TypeScript Speedster**: Complete Phase 1 in under 12 minutes (+10 points)
- **Zero ESLint Errors**: Perfect code quality throughout (+15 points)
- **Type Safety Champion**: 100% TypeScript strict mode (+20 points)

## 🎯 Project: Task Management API

We'll build a focused task management system featuring:
- **Node.js 20** - Latest LTS with modern JavaScript features
- **Express.js** - Fast, minimalist web framework
- **TypeScript** - Type-safe development with strict mode
- **SQLite with Prisma** - Modern database toolkit for quick setup
- **JWT Authentication** - Secure user authentication
- **Jest Testing** - Comprehensive testing framework
- **Auto-documentation** - OpenAPI/Swagger integration
- **Azure Deployment** - Cloud deployment ready

## 📋 Prerequisites (Keep It Simple)

### Required Software
- **Node.js 20 (LTS)** - [Download here](https://nodejs.org)
- **npm** - Package manager (comes with Node.js)
- **Visual Studio Code** with extensions:
  - **TypeScript and JavaScript Language Features** - Built-in support
  - **ESLint** - Code quality and formatting
  - **GitHub Copilot** - AI assistance
  - **GitHub Copilot Chat** - AI conversation
- **Git** - Version control

### Knowledge Required
- **JavaScript Basics** - Functions, objects, promises, async/await
- **Node.js Fundamentals** - Modules, npm, basic server concepts
- **REST APIs** - HTTP methods understanding
- **Basic SQL** - Simple queries

### Verification
Test your setup:
```bash
node --version  # Should show v20.x.x or v18.x.x
npm --version   # Should show npm version
code --version  # Should show VS Code version
```

## 🚀 Phase 1: Rapid Setup (15 minutes)

### Step 1.1: Project Creation (8 minutes)

#### **1.1.1 Create Repository (2 minutes)**
1. Create new folder: `task-manager-express`
2. Open in VS Code: `code task-manager-express`
3. Open integrated terminal: `Ctrl+`` ` ``

#### **1.1.2 Node.js Project Setup (4 minutes)**

**🤖 Copilot Chat Prompt:**
```
Initialize a Node.js TypeScript project for a task management API with:
- package.json with proper scripts for development and production
- TypeScript configuration with strict mode
- ESLint and Prettier for code quality
- Express.js and required middleware
- Prisma for database management
- JWT authentication libraries
- Jest for testing
- Development tools and hot reload

Show me the exact commands to run.
```

Execute the commands:
```bash
# Initialize project
npm init -y

# Install dependencies
npm install express cors helmet morgan dotenv jsonwebtoken bcryptjs
npm install @prisma/client prisma

# Install dev dependencies
npm install -D typescript @types/node @types/express @types/cors @types/jsonwebtoken @types/bcryptjs
npm install -D nodemon ts-node eslint prettier jest @types/jest ts-jest supertest @types/supertest
npm install -D eslint-config-prettier eslint-plugin-prettier @typescript-eslint/eslint-plugin @typescript-eslint/parser
```

#### **1.1.3 Configuration Files (2 minutes)**

Create TypeScript config:
```bash
npx tsc --init
```

**🤖 Copilot Prompt for `tsconfig.json`:**
```json
// TypeScript configuration for Node.js Express API with:
// - Strict mode enabled for type safety
// - Modern target (ES2022) with Node.js compatibility
// - Path mapping for clean imports
// - Source maps for debugging
// - Experimental decorators for future features
```

**🏅 Achievement Unlocked**: Node.js Navigator (Bronze) - +5 points

### Step 1.2: Project Structure & Configuration (7 minutes)

#### **1.2.1 Create Project Structure (3 minutes)**
```bash
mkdir src
mkdir src/controllers
mkdir src/models
mkdir src/middleware
mkdir src/routes
mkdir src/services
mkdir src/types
mkdir tests
mkdir prisma
```

#### **1.2.2 Environment Configuration (2 minutes)**
Create `.env`:

**🤖 Copilot Prompt:**
```bash
# Environment variables for task management API with:
# - Database connection URL for SQLite
# - JWT secret key for authentication
# - Server port configuration
# - Node environment setting
# - CORS origin configuration for development
```

#### **1.2.3 ESLint and Prettier Setup (2 minutes)**

**🤖 Copilot Chat Prompt:**
```
Create ESLint and Prettier configuration for TypeScript Node.js project:
- ESLint config with TypeScript support and strict rules
- Prettier config for consistent code formatting
- Package.json scripts for linting and formatting
- VS Code settings for automatic formatting on save
- Ignore files for node_modules and build output
```

**🏅 Achievement Unlocked**: TypeScript Trailblazer (Bronze) - +10 points

## 🏗️ Phase 2: Core API Development (55 minutes)

### Step 2.1: Database Setup with Prisma (15 minutes)

#### **2.1.1 Prisma Schema (8 minutes)**
Create `prisma/schema.prisma`:

**🤖 Copilot Chat Prompt:**
```
Create a Prisma schema for task management with:
- SQLite database provider for quick setup
- User model with id, email, username, password, createdAt
- Task model with id, title, description, isCompleted, priority, dueDate, createdAt, updatedAt, userId
- Priority enum with LOW, MEDIUM, HIGH values
- One-to-many relationship between User and Task
- Proper indexes for performance
- Unique constraints where needed
```

#### **2.1.2 Database Migration (4 minutes)**
```bash
# Generate Prisma client
npx prisma generate

# Create and apply migration
npx prisma migrate dev --name init

# Optional: Open Prisma Studio to view data
npx prisma studio
```

#### **2.1.3 Database Service (3 minutes)**
Create `src/services/database.ts`:

**🤖 Copilot Prompt:**
```typescript
// Prisma database service with:
// - PrismaClient singleton instance
// - Connection management and error handling
// - Database connection health check
// - Graceful shutdown handling
// - TypeScript types from Prisma schema
```

**🏅 Achievement Unlocked**: Database Developer (Silver) - +15 points

### Step 2.2: Type Definitions & Models (10 minutes)

#### **2.2.1 TypeScript Types (5 minutes)**
Create `src/types/index.ts`:

**🤖 Copilot Prompt:**
```typescript
// TypeScript type definitions for task management API with:
// - User types (CreateUser, LoginUser, UserResponse)
// - Task types (CreateTask, UpdateTask, TaskResponse, TaskFilter)
// - Authentication types (AuthToken, JWTPayload)
// - API response types (ApiResponse, PaginatedResponse)
// - Express request extensions for authenticated user
// - Utility types for partial updates and optional fields
```

#### **2.2.2 Request/Response Models (5 minutes)**
Create `src/models/task.ts` and `src/models/user.ts`:

**🤖 Copilot Chat Prompt:**
```
Create comprehensive validation models for the API:
- Input validation functions for user registration and login
- Task creation and update validation with proper constraints
- Email format validation and password strength checking
- Data sanitization functions to prevent injection attacks
- Error response standardization with proper HTTP status codes
- Type guards for runtime type checking

Use built-in JavaScript validation or a lightweight library.
```

### Step 2.3: Authentication System (15 minutes)

#### **2.3.1 Authentication Service (8 minutes)**
Create `src/services/auth.ts`:

**🤖 Copilot Chat Prompt:**
```
Create a comprehensive authentication service for Express.js:
- Password hashing using bcryptjs with proper salt rounds
- JWT token generation and verification with expiration
- User registration with duplicate email checking
- User login with credential validation
- Password comparison with secure timing
- Token refresh logic for extended sessions
- TypeScript interfaces for all auth operations

Include proper error handling and security best practices.
```

#### **2.3.2 Authentication Middleware (7 minutes)**
Create `src/middleware/auth.ts`:

**🤖 Copilot Prompt:**
```typescript
// Express authentication middleware with:
// - JWT token extraction from Authorization header
// - Token verification and user lookup
// - Request object extension with authenticated user
// - Error handling for invalid/expired tokens
// - Optional authentication for public endpoints
// - TypeScript types for authenticated requests
```

**🏅 Achievement Unlocked**: Security Specialist (Gold) - +25 points

### Step 2.4: API Routes & Controllers (15 minutes)

#### **2.4.1 User Authentication Routes (7 minutes)**
Create `src/routes/auth.ts`:

**🤖 Copilot Prompt:**
```typescript
// Express authentication routes with:
// - POST /auth/register - User registration with validation
// - POST /auth/login - User login with JWT token response
// - Comprehensive input validation and error handling
// - Proper HTTP status codes (201, 200, 400, 401, 409)
// - Password strength requirements
// - Email format validation
// - Rate limiting considerations for auth endpoints
```

#### **2.4.2 Task Management Routes (8 minutes)**
Create `src/routes/tasks.ts`:

**🤖 Copilot Chat Prompt:**
```
Create a complete Express router for task management with these endpoints:

1. GET /tasks - List user's tasks with filtering:
   - Query parameters: completed, priority, limit, offset
   - User-specific tasks only (based on authenticated user)
   - Pagination support

2. POST /tasks - Create new task with validation

3. GET /tasks/:id - Get specific task (user ownership check)

4. PUT /tasks/:id - Update entire task

5. PATCH /tasks/:id - Partial task update

6. DELETE /tasks/:id - Delete task

7. PATCH /tasks/:id/complete - Toggle completion status

Requirements:
- Authentication required for all endpoints
- User can only access their own tasks
- Proper HTTP status codes and error responses
- Input validation and sanitization
- TypeScript types throughout
- Comprehensive error handling
```

### Step 2.5: Main Application Setup (10 minutes)

#### **2.5.1 Express App Configuration (10 minutes)**
Create `src/app.ts`:

**🤖 Copilot Chat Prompt:**
```
Create the main Express application with:
- Express app setup with TypeScript
- Essential middleware (cors, helmet, morgan, express.json)
- Route registration for auth and tasks
- Global error handling middleware
- 404 handler for undefined routes
- Request logging and security headers
- CORS configuration for development
- Environment-based configuration
- Health check endpoint
- Graceful shutdown handling

Also create src/server.ts for starting the server with proper error handling.
```

Test the application:
```bash
npm run dev
```

Visit `http://localhost:3000` to verify it's working.

**🏅 Achievement Unlocked**: Express Expert (Silver) - +20 points

## 🧪 Phase 3: Testing & Quality (30 minutes)

### Step 3.1: Testing Setup (15 minutes)

#### **3.1.1 Jest Configuration (5 minutes)**
Create `jest.config.js`:

**🤖 Copilot Prompt:**
```javascript
// Jest configuration for TypeScript Node.js testing with:
// - TypeScript support with ts-jest
// - Test environment setup for Node.js
// - Coverage reporting configuration
// - Test file patterns and ignore patterns
// - Setup files for test database
// - Async test support
```

#### **3.1.2 Test Database Setup (5 minutes)**
Create `tests/setup.ts`:

**🤖 Copilot Prompt:**
```typescript
// Test setup configuration with:
// - Test database initialization with Prisma
// - Database cleanup between tests
// - Test data seeding utilities
// - Async test helpers
// - Mock user creation for testing
// - Environment variable setup for tests
```

#### **3.1.3 API Tests (5 minutes)**
Create `tests/auth.test.ts`:

**🤖 Copilot Chat Prompt:**
```
Create comprehensive Jest tests for authentication endpoints:
- User registration with valid and invalid data
- User login with correct and incorrect credentials
- JWT token validation
- Duplicate email registration handling
- Password hashing verification
- Error response format validation

Use supertest for HTTP testing and proper async/await patterns.
```

### Step 3.2: Task API Testing (15 minutes)

#### **3.2.1 Task CRUD Tests (15 minutes)**
Create `tests/tasks.test.ts`:

**🤖 Copilot Chat Prompt:**
```
Create comprehensive Jest tests for task management API:

Test coverage needed:
1. Task creation with authentication
2. Task listing with user isolation
3. Task retrieval by ID with ownership validation
4. Task updates (full and partial)
5. Task deletion with authorization
6. Task completion toggle
7. Task filtering by completion status and priority
8. Pagination testing
9. Error handling for non-existent tasks
10. Unauthorized access attempts

Requirements:
- Use supertest for HTTP requests
- Proper test data setup and cleanup
- Authentication token handling
- Async/await patterns
- Meaningful test descriptions
- Both positive and negative test cases
```

Run tests:
```bash
npm test
```

**🏅 Achievement Unlocked**: Test Tactician (Gold) - +30 points

## 🚀 Phase 4: Documentation & Deployment (20 minutes)

### Step 4.1: API Documentation (10 minutes)

#### **4.1.1 OpenAPI Documentation (10 minutes)**

**🤖 Copilot Chat Prompt:**
```
Add comprehensive OpenAPI/Swagger documentation to the Express API:
- Install swagger-ui-express and swagger-jsdoc packages
- Create OpenAPI specification with complete API documentation
- Document all endpoints with request/response schemas
- Include authentication documentation
- Add examples for each endpoint
- Configure Swagger UI at /api-docs
- Include proper error response documentation
- Add API versioning information

Provide the complete setup and configuration.
```

Test documentation at `http://localhost:3000/api-docs`

### Step 4.2: Azure Deployment (10 minutes)

#### **4.2.1 Production Configuration (5 minutes)**

**🤖 Copilot Chat Prompt:**
```
Prepare the Node.js Express API for Azure deployment:
- Create production environment configuration
- Set up proper logging for Azure Application Insights
- Configure database for production (upgrade from SQLite if needed)
- Add health check endpoints for Azure monitoring
- Create web.config for Azure App Service (if needed)
- Set up environment variables for production
- Add build scripts for TypeScript compilation
- Configure CORS for production domain
```

#### **4.2.2 Deploy to Azure (5 minutes)**

**🤖 Copilot Chat Prompt:**
```
Create Azure deployment commands for Node.js Express application:

Steps needed:
1. Create Azure Resource Group
2. Create Azure App Service Plan
3. Create Azure Web App with Node.js runtime
4. Configure environment variables and connection strings
5. Deploy application using Azure CLI or GitHub Actions
6. Set up continuous deployment (optional)

Provide step-by-step Azure CLI commands for deployment.
Include commands for:
- Resource creation
- Environment variable configuration
- Code deployment
- Deployment verification
```

Execute deployment:
```bash
# Example commands (generated by Copilot)
az login
az group create --name task-manager-rg --location eastus
az appservice plan create --name task-manager-plan --resource-group task-manager-rg --sku FREE
az webapp create --name your-unique-app-name --resource-group task-manager-rg --plan task-manager-plan --runtime "node|20-lts"
# ... additional commands from Copilot
```

**🏅 Achievement Unlocked**: Cloud Conductor (Gold) - +30 points

## 📝 Quick Exercises (Use Remaining Time)

### Exercise 1: Advanced Features (10 minutes)
Use GitHub Copilot to add:
- Task categories or tags system
- Task search functionality with text search
- Task statistics endpoint (counts by status/priority)

### Exercise 2: Performance Optimization (10 minutes)
Implement with Copilot:
- Response caching with Redis
- Database query optimization
- Request rate limiting middleware

### Exercise 3: Real-time Features (10 minutes)
Add with Copilot assistance:
- WebSocket support with Socket.IO
- Real-time task updates
- User activity notifications

## 🎓 JavaScript/TypeScript & Copilot Best Practices

### 💡 Effective TypeScript Prompting
- **Specify Strictness**: "Create TypeScript interface with strict mode compliance"
- **Framework Context**: "Express.js middleware with TypeScript types"
- **Modern Features**: "Use ES2022 features with Node.js compatibility"

### 🤖 Copilot Chat Power Tips for Node.js
```typescript
// Good prompts for TypeScript/Node.js:
@workspace Explain the authentication flow in this Express application
Create Express middleware with comprehensive TypeScript types
Add comprehensive error handling following Node.js best practices

// Context-aware requests:
Show me how to optimize these database queries with Prisma
Implement response caching for this Express router
Create comprehensive validation for this API endpoint
```

### ⚡ Speed Node.js Coding with Copilot
1. **Types First**: Define TypeScript interfaces before implementation
2. **Async Patterns**: Copilot excels at async/await and Promise handling
3. **Express Conventions**: Follows Express.js patterns and middleware structure
4. **Error Handling**: Good at generating try/catch and error middleware

### 🚀 Node.js-Specific Copilot Strengths
- **Package Integration**: Excellent knowledge of npm ecosystem
- **Express Patterns**: Understands Express.js conventions and middleware
- **TypeScript Support**: Generates well-typed code with proper interfaces
- **Testing Patterns**: Good at Jest and Supertest test generation
- **Async Programming**: Strong with Promises, async/await, and streams

## 🔍 Troubleshooting Guide

### Common Issues & Quick Fixes

**Issue**: TypeScript compilation errors
- **Fix**: Check tsconfig.json configuration and ensure all types are installed
- **Verify**: Run `npx tsc --noEmit` to check for type errors

**Issue**: Express server not starting
- **Fix**: Check port configuration and ensure no other process is using the port
- **Verify**: Environment variables are loaded correctly

**Issue**: Database connection errors
- **Fix**: Check Prisma schema and database file permissions
- **Verify**: Run `npx prisma generate` after schema changes

**Issue**: JWT authentication not working
- **Fix**: Verify JWT_SECRET in environment variables
- **Check**: Token format and middleware order

**Issue**: Tests failing
- **Fix**: Ensure test database is properly isolated
- **Verify**: Async test patterns and proper cleanup

**Issue**: Azure deployment fails
- **Fix**: Check Node.js version compatibility with Azure
- **Verify**: All environment variables configured in Azure

## ✅ Express JavaScript/TypeScript Workshop Checklist

### Phase 1 (15 min) ✓
- [ ] Node.js project initialized with TypeScript
- [ ] Dependencies installed and configured
- [ ] ESLint and Prettier setup complete
- [ ] Project structure created

### Phase 2 (55 min) ✓
- [ ] Prisma database schema and migration complete
- [ ] TypeScript types and interfaces defined
- [ ] Authentication system implemented
- [ ] Complete task CRUD API working
- [ ] Express app configured and running

### Phase 3 (30 min) ✓
- [ ] Jest testing framework configured
- [ ] Comprehensive test suite written
- [ ] All tests passing with good coverage
- [ ] Code quality checks passing

### Phase 4 (20 min) ✓
- [ ] OpenAPI/Swagger documentation complete
- [ ] Production configuration ready
- [ ] Azure deployment successful
- [ ] Live API tested and accessible

## 🎉 Congratulations! Workshop Complete!

### 🏆 Final Score Calculation
**Your Achievement Points:**
- Bronze Tasks: ___ × 5-10 points = ___
- Silver Tasks: ___ × 15-20 points = ___
- Gold Tasks: ___ × 25-30 points = ___
- Speed Bonuses: ___ points
- **Total Score**: ___ points

### 🥇 Achievement Levels (Express TypeScript Edition)
- **📜 JavaScript Apprentice**: 0-45 points
- **⚡ TypeScript Practitioner**: 46-90 points  
- **🚀 Node.js API Expert**: 91-135 points
- **🏆 TypeScript Copilot Master**: 136+ points

### 🎯 What You've Accomplished
✅ **Built a complete REST API** with Node.js, Express, and TypeScript  
✅ **Mastered GitHub Copilot** for JavaScript/TypeScript development  
✅ **Implemented type-safe development** with strict TypeScript mode  
✅ **Created comprehensive authentication** with JWT and bcrypt  
✅ **Built a robust testing suite** with Jest and Supertest  
✅ **Generated API documentation** with OpenAPI/Swagger  
✅ **Deployed to Azure** with production-ready configuration  
✅ **Used modern JavaScript** with async/await and ES2022 features  

### 🚀 Next Steps
- **Enhance the API**: Add file uploads, email notifications, WebSocket features
- **Explore frameworks**: Try NestJS, Fastify, or other Node.js frameworks
- **Database scaling**: Move to PostgreSQL, MongoDB, or other databases
- **Microservices**: Break into multiple Node.js services
- **GraphQL**: Add GraphQL API alongside REST
- **Challenge colleagues**: Share your completion time and compete!

### 🌟 TypeScript-Specific Skills Gained
- **Type Safety**: Comprehensive TypeScript with strict mode
- **Modern Node.js**: Latest ES features with Node.js 20
- **API Design**: RESTful design with proper HTTP conventions
- **Testing**: Professional testing with Jest and comprehensive coverage
- **Deployment**: Cloud deployment with Azure App Service
- **Documentation**: Auto-generated API documentation

---

**🎉 Congratulations! You've completed the GitHub Copilot JavaScript/TypeScript Express Workshop!**

You now have hands-on experience using GitHub Copilot to build professional Node.js APIs with TypeScript. The type safety, modern JavaScript features, and Express patterns you've learned are essential skills for modern web development.

**Share your success**: Tweet your completion with #GitHubCopilot #TypeScript #NodeJS #Express #2HourChallenge
