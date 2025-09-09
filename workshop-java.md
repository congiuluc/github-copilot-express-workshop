# GitHub Copilot Workshop - Java Edition (Express)
*Master GitHub Copilot by building a complete Task Management API with Spring Boot*

## 🚀 Quick Start with GitHub Codespaces

Ready to dive in? Use our cloud development environment with all tools and extensions ready to go!

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/github-copilot-express-workshop?quickstart=1)

**Or manually setup:** 
1. Click the Codespaces badge above
2. Wait for the environment to load (2-3 minutes)
3. All tools (Java 17/21, Maven, GitHub Copilot) are pre-installed
4. Start coding immediately!

## ⏱️ Workshop Overview
**Duration**: Flexible (typically 2-3 hours)
**Format**: Local development (no Docker required)
**Focus**: Practical GitHub Copilot usage with immediate results

## 🎮 Gamification Elements
**Welcome to the Java Copilot Speed Challenge!** Complete tasks to earn points:

### 🏆 Achievement System
- **🥉 Bronze Tasks (5-10 points)**: Quick setup and basic features
- **🥈 Silver Tasks (15-20 points)**: Core development and integration
- **🥇 Gold Tasks (25-30 points)**: Advanced features and deployment

### 📊 Progress Tracking (Express Focus)
- [ ] **Spring Starter** (Bronze) - Spring Boot setup in 10 minutes
- [ ] **Copilot Companion** (Bronze) - First AI-generated Java code
- [ ] **REST API Master** (Silver) - Complete CRUD API with Spring MVC
- [ ] **Data JPA Expert** (Silver) - Database integration with Spring Data
- [ ] **Bean Manager** (Silver) - Dependency injection mastery
- [ ] **Test Champion** (Gold) - JUnit test suite created and passing
- [ ] **Security Specialist** (Gold) - Spring Security with JWT
- [ ] **Cloud Deployer** (Gold) - Live Azure deployment

### 🎯 Speed Bonuses
- **Spring Boot Speedster**: Complete Phase 1 in under 12 minutes (+10 points)
- **Clean Code Champion**: Perfect code formatting and structure (+15 points)
- **Annotation Master**: Proper use of Spring annotations throughout (+20 points)

## 🎯 Project: Task Management API

We'll build a focused task management system featuring:
- **Spring Boot 3** - Latest Spring framework with auto-configuration
- **Spring MVC** - RESTful web services with proper HTTP handling
- **Spring Data JPA** - Data persistence with H2 database for quick setup
- **Spring Security** - Authentication and authorization
- **JUnit 5** - Modern testing framework with Spring Boot Test
- **Maven** - Project management and dependency resolution
- **OpenAPI/Swagger** - Auto-generated API documentation
- **Azure Deployment** - Cloud deployment ready

## 📋 Prerequisites (Keep It Simple)

### Required Software
- **Java 17 or 21** - [Download OpenJDK](https://adoptium.net)
- **Maven 3.8+** - [Download here](https://maven.apache.org/download.cgi) (or use wrapper)
- **Visual Studio Code** with extensions:
  - **Extension Pack for Java** (Microsoft) - Complete Java support
  - **Spring Boot Extension Pack** - Spring Boot development
  - **GitHub Copilot** - AI assistance
  - **GitHub Copilot Chat** - AI conversation
- **Git** - Version control

### Knowledge Required
- **Java Basics** - Classes, objects, inheritance, collections
- **Spring Framework** - Basic understanding of dependency injection
- **REST APIs** - HTTP methods understanding
- **Basic SQL** - Simple queries

### Verification
Test your setup:
```bash
java --version  # Should show Java 17 or 21
mvn --version   # Should show Maven 3.8+
code --version  # Should show VS Code version
```

## 🚀 Phase 1: Rapid Setup (15 minutes)

### Step 1.1: Project Creation (8 minutes)

#### **1.1.1 Spring Boot Project Generation (4 minutes)**

**🤖 Copilot Chat Prompt:**
```
Create a Spring Boot 3 project for task management API with:
- Spring Boot 3.2.x (latest stable)
- Java 17 or 21
- Maven build system
- Required dependencies: Spring Web, Spring Data JPA, Spring Security, H2 Database, Spring Boot Actuator
- Project structure following Spring Boot conventions
- Package name: com.example.taskmanager

Show me the exact commands to generate this project using Spring Initializr or manual setup.
```

Option 1: Use Spring Initializr online or CLI
```bash
# Using Spring Boot CLI (if available)
spring init --dependencies=web,data-jpa,security,h2,actuator --package-name=com.example.taskmanager --name=task-manager task-manager

# Or download from https://start.spring.io with the same dependencies
```

Option 2: Manual setup (if preferred):
```bash
mkdir task-manager
cd task-manager
```

#### **1.1.2 Open and Configure Project (4 minutes)**
1. Open in VS Code: `code task-manager`
2. If using manual setup, let Copilot generate the `pom.xml`:

**🤖 Copilot Prompt for `pom.xml`:**
```xml
<!-- Spring Boot 3 Maven configuration for task management API with:
     - Spring Boot 3.2.x parent
     - Java 17 or 21 configuration
     - Dependencies: spring-boot-starter-web, spring-boot-starter-data-jpa
     - spring-boot-starter-security, h2, spring-boot-starter-test
     - spring-boot-starter-actuator for monitoring
     - Build plugins for Spring Boot and Maven
     - Project metadata for task management API
-->
```

**🏅 Achievement Unlocked**: Spring Starter (Bronze) - +5 points

### Step 1.2: Basic Configuration (7 minutes)

#### **1.2.1 Application Properties (3 minutes)**
Create `src/main/resources/application.yml`:

**🤖 Copilot Prompt:**
```yaml
# Spring Boot configuration for task management API with:
# - H2 database configuration for development
# - JPA/Hibernate settings with DDL auto-creation
# - Server port and context path configuration
# - Security configuration for development
# - Actuator endpoints configuration
# - Logging configuration for development
```

#### **1.2.2 Main Application Class (2 minutes)**
Update `src/main/java/com/example/taskmanager/TaskManagerApplication.java`:

**🤖 Copilot Prompt:**
```java
// Spring Boot main application class with:
// - @SpringBootApplication annotation
// - Main method to run the application
// - Configuration for component scanning
// - Optional: CommandLineRunner for initial data setup
// - Proper package structure following Spring conventions
```

#### **1.2.3 Package Structure (2 minutes)**
Create directory structure:
```bash
mkdir -p src/main/java/com/example/taskmanager/{controller,service,repository,model,config,dto}
mkdir -p src/test/java/com/example/taskmanager/{controller,service,repository}
```

Test the application:
```bash
mvn spring-boot:run
```

**🏅 Achievement Unlocked**: Copilot Companion (Bronze) - +10 points

## 🏗️ Phase 2: Core API Development (60 minutes)

### Step 2.1: Data Models and Repository (20 minutes)

#### **2.1.1 Entity Models (10 minutes)**
Create `src/main/java/com/example/taskmanager/model/Task.java`:

**🤖 Copilot Chat Prompt:**
```
Create a comprehensive JPA entity for Task management with:
- Task entity with fields: id (Long), title (String), description (String), completed (boolean), priority (enum), dueDate (LocalDateTime), createdAt (LocalDateTime), updatedAt (LocalDateTime), userId (Long)
- Priority enum with LOW, MEDIUM, HIGH values
- Proper JPA annotations (@Entity, @Id, @GeneratedValue, @Column, @Enumerated)
- Bean Validation annotations (@NotNull, @NotBlank, @Size)
- Automatic timestamp handling with @PrePersist and @PreUpdate
- Constructors, getters, setters, equals, hashCode, toString methods
- Relationships preparation for User entity
```

Create `src/main/java/com/example/taskmanager/model/User.java`:

**🤖 Copilot Prompt:**
```java
// User JPA entity with:
// - Fields: id, username, email, password, createdAt
// - Proper JPA annotations and constraints
// - Relationship with Task entity (One-to-Many)
// - Bean validation annotations
// - Security considerations for password field
```

Create `src/main/java/com/example/taskmanager/model/Priority.java`:
```java
// Priority enumeration for tasks with LOW, MEDIUM, HIGH values
```

#### **2.1.2 Repository Interfaces (10 minutes)**
Create `src/main/java/com/example/taskmanager/repository/TaskRepository.java`:

**🤖 Copilot Chat Prompt:**
```
Create Spring Data JPA repositories for task management:

TaskRepository with:
- Extends JpaRepository<Task, Long>
- Custom query methods for finding tasks by completion status
- Custom query methods for finding tasks by priority
- Custom query methods for finding tasks by user ID
- Custom query methods for finding tasks by due date range
- @Query annotations for complex queries
- Pagination and sorting support

UserRepository with:
- Extends JpaRepository<User, Long>
- Custom method to find user by username
- Custom method to find user by email
- Optional return types for null safety
```

**🏅 Achievement Unlocked**: Data JPA Expert (Silver) - +15 points

### Step 2.2: DTOs and Services (20 minutes)

#### **2.2.1 Data Transfer Objects (10 minutes)**
Create `src/main/java/com/example/taskmanager/dto/TaskDto.java`:

**🤖 Copilot Prompt:**
```java
// Task DTO classes for clean API layer with:
// - TaskCreateDto for task creation requests
// - TaskUpdateDto for task update requests  
// - TaskResponseDto for API responses
// - UserDto classes for authentication
// - Bean validation annotations for input validation
// - Jackson annotations for JSON serialization
// - Builder pattern or record classes for immutability
```

#### **2.2.2 Service Layer (10 minutes)**
Create `src/main/java/com/example/taskmanager/service/TaskService.java`:

**🤖 Copilot Chat Prompt:**
```
Create a comprehensive Spring service layer for task management:

TaskService with:
- @Service annotation and dependency injection
- Methods for CRUD operations (create, findAll, findById, update, delete)
- Business logic for task completion toggle
- User-specific task filtering (users only see their own tasks)
- Pagination and sorting support
- Custom exceptions for business logic errors
- Transaction management with @Transactional
- Input validation and error handling

UserService with:
- User registration and authentication logic
- Password encoding and validation
- User lookup methods for security
- Proper exception handling for user operations
```

**🏅 Achievement Unlocked**: Bean Manager (Silver) - +20 points

### Step 2.3: REST Controllers (20 minutes)

#### **2.3.1 Authentication Controller (10 minutes)**
Create `src/main/java/com/example/taskmanager/controller/AuthController.java`:

**🤖 Copilot Chat Prompt:**
```
Create a Spring MVC REST controller for authentication:

AuthController with:
- @RestController and @RequestMapping annotations
- POST /api/auth/register endpoint for user registration
- POST /api/auth/login endpoint for user authentication
- Proper HTTP status codes (200, 201, 400, 401, 409)
- Request validation with @Valid annotation
- ResponseEntity for proper HTTP responses
- Exception handling with @ExceptionHandler
- Cross-origin configuration if needed
- Comprehensive API documentation comments
```

#### **2.3.2 Task Management Controller (10 minutes)**
Create `src/main/java/com/example/taskmanager/controller/TaskController.java`:

**🤖 Copilot Chat Prompt:**
```
Create a comprehensive Spring MVC REST controller for task management:

TaskController with these endpoints:
1. GET /api/tasks - List user's tasks with filtering and pagination
2. POST /api/tasks - Create new task with validation
3. GET /api/tasks/{id} - Get specific task by ID
4. PUT /api/tasks/{id} - Update entire task
5. PATCH /api/tasks/{id} - Partial task update
6. DELETE /api/tasks/{id} - Delete task
7. PATCH /api/tasks/{id}/complete - Toggle completion status

Requirements:
- @RestController and proper request mappings
- Authentication required for all endpoints
- User can only access their own tasks
- Proper HTTP status codes (200, 201, 204, 404, 403)
- Request validation with @Valid
- ResponseEntity with proper response bodies
- Exception handling and error responses
- Pagination parameters for list endpoint
- OpenAPI documentation annotations
```

**🏅 Achievement Unlocked**: REST API Master (Silver) - +20 points

## 🧪 Phase 3: Security & Testing (35 minutes)

### Step 3.1: Spring Security Configuration (20 minutes)

#### **3.1.1 Security Configuration (12 minutes)**
Create `src/main/java/com/example/taskmanager/config/SecurityConfig.java`:

**🤖 Copilot Chat Prompt:**
```
Create comprehensive Spring Security configuration for JWT authentication:

SecurityConfig with:
- @Configuration and @EnableWebSecurity annotations
- Security filter chain configuration with HTTP security
- JWT authentication filter for token validation
- Password encoder bean (BCrypt)
- Authentication manager configuration
- CORS configuration for development
- CSRF disabled for API-only application
- Session management as stateless
- Public endpoints configuration (auth endpoints)
- Protected endpoints requiring authentication
- Exception handling for authentication failures

JwtAuthenticationFilter with:
- JWT token extraction from Authorization header
- Token validation and user authentication
- Security context setup for authenticated requests
- Proper error handling for invalid tokens
```

#### **3.1.2 JWT Utility Class (8 minutes)**
Create `src/main/java/com/example/taskmanager/config/JwtUtil.java`:

**🤖 Copilot Prompt:**
```java
// JWT utility class for Spring Security with:
// - JWT token generation with user details and expiration
// - Token validation and signature verification
// - Username extraction from JWT token
// - Token expiration checking
// - Secret key configuration for signing
// - Claims extraction utilities
// - Token refresh logic for extended sessions
```

**🏅 Achievement Unlocked**: Security Specialist (Gold) - +25 points

### Step 3.2: Testing (15 minutes)

#### **3.2.1 Unit Tests (8 minutes)**
Create `src/test/java/com/example/taskmanager/service/TaskServiceTest.java`:

**🤖 Copilot Chat Prompt:**
```
Create comprehensive JUnit 5 tests for the TaskService:

TaskServiceTest with:
- @ExtendWith(MockitoExtension.class) for Mockito support
- Mock dependencies (@Mock for repositories)
- @InjectMocks for service under test
- Test methods for all CRUD operations
- Test user isolation (users only see their own tasks)
- Test business logic validation
- Test exception scenarios (not found, unauthorized)
- Proper test data setup with @BeforeEach
- Assertions with AssertJ or JUnit assertions
- Mock verification for repository interactions

Use modern JUnit 5 features and best practices.
```

#### **3.2.2 Integration Tests (7 minutes)**
Create `src/test/java/com/example/taskmanager/controller/TaskControllerTest.java`:

**🤖 Copilot Chat Prompt:**
```
Create Spring Boot integration tests for the REST API:

TaskControllerTest with:
- @SpringBootTest for full application context
- @AutoConfigureTestDatabase for test database
- @TestPropertySource for test configuration
- MockMvc for HTTP request testing
- Authentication testing with JWT tokens
- Test all CRUD endpoints with proper HTTP status verification
- Test request/response JSON serialization
- Test validation errors and exception handling
- Test user authorization and access control
- Proper test data setup and cleanup

Include both positive and negative test scenarios.
```

Run tests:
```bash
mvn test
```

**🏅 Achievement Unlocked**: Test Champion (Gold) - +30 points

## 🚀 Phase 4: Documentation & Deployment (30 minutes)

### Step 4.1: API Documentation (15 minutes)

#### **4.1.1 OpenAPI Configuration (8 minutes)**
Add OpenAPI dependency to `pom.xml`:
```xml
<dependency>
    <groupId>org.springdoc</groupId>
    <artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
    <version>2.2.0</version>
</dependency>
```

Create `src/main/java/com/example/taskmanager/config/OpenApiConfig.java`:

**🤖 Copilot Prompt:**
```java
// OpenAPI 3 configuration for Spring Boot with:
// - @OpenAPIDefinition annotation with API metadata
// - Security scheme configuration for JWT Bearer authentication
// - API information (title, description, version, contact)
// - Server configuration for different environments
// - Component configuration for reusable schemas
// - Custom operation descriptions and examples
```

#### **4.1.2 Enhanced API Documentation (7 minutes)**

**🤖 Copilot Chat Prompt:**
```
Enhance the REST controllers with comprehensive OpenAPI annotations:
- @Operation annotations with detailed descriptions
- @ApiResponse annotations for different HTTP status codes
- @Parameter annotations for path and query parameters
- @RequestBody annotations with examples
- @Schema annotations for DTO validation descriptions
- @Tag annotations for controller grouping
- Security requirements for protected endpoints

Apply these annotations to both AuthController and TaskController.
```

Test documentation at `http://localhost:8080/swagger-ui.html`

### Step 4.2: Azure Deployment (15 minutes)

#### **4.2.1 Production Configuration (8 minutes)**
Create `src/main/resources/application-prod.yml`:

**🤖 Copilot Chat Prompt:**
```
Create production configuration for Spring Boot application:
- Database configuration for Azure SQL Database or PostgreSQL
- Security configuration with environment-based JWT secret
- Logging configuration for Azure Application Insights
- Actuator endpoints configuration for monitoring
- Server configuration for Azure App Service
- Profile-specific properties for production environment
- Error handling configuration for production
- CORS configuration for production domains
```

Create Azure deployment files:

**🤖 Copilot Prompt:**
```bash
# Create Azure App Service deployment files:
# - web.config for Azure App Service (if needed)
# - startup script for Java application
# - environment variable configuration
# - health check endpoint configuration
```

#### **4.2.2 Deploy to Azure (7 minutes)**

**🤖 Copilot Chat Prompt:**
```
Create Azure CLI commands to deploy the Spring Boot application:

Steps needed:
1. Create Azure Resource Group
2. Create Azure App Service Plan
3. Create Azure Web App with Java runtime
4. Configure application settings and environment variables
5. Deploy JAR file using Azure CLI or Maven plugin
6. Set up database connection (if using external database)

Provide step-by-step Azure CLI commands for deployment.
Include commands for:
- Resource creation with appropriate tiers
- Java runtime configuration (Java 17 or 21)
- Environment variable setup
- Application deployment
- Health check verification
```

Build and deploy:
```bash
# Build the application
mvn clean package

# Deploy using generated Azure CLI commands
az login
az group create --name task-manager-rg --location eastus
az appservice plan create --name task-manager-plan --resource-group task-manager-rg --sku FREE --is-linux
az webapp create --name your-unique-app-name --resource-group task-manager-rg --plan task-manager-plan --runtime "JAVA|17-java17"
# ... additional commands from Copilot
```

**🏅 Achievement Unlocked**: Cloud Deployer (Gold) - +30 points

## 📝 Quick Exercises (Use Remaining Time)

### Exercise 1: Advanced Features (10 minutes)
Use GitHub Copilot to add:
- Task categories with many-to-many relationships
- Task search functionality with Spring Data JPA
- Task statistics endpoint with aggregate queries

### Exercise 2: Performance Optimization (10 minutes)
Implement with Copilot:
- Response caching with Spring Cache
- Database query optimization with JPA projections
- API rate limiting with Spring AOP

### Exercise 3: Monitoring (10 minutes)
Add with Copilot assistance:
- Custom metrics with Micrometer
- Application health indicators
- Database connection monitoring

## 🎓 Java & Spring Boot & Copilot Best Practices

### 💡 Effective Java Prompting
- **Framework Specific**: "Create Spring Boot service with dependency injection"
- **Annotation Context**: "Use proper JPA annotations for entity relationships"
- **Best Practices**: "Follow Spring Boot conventions and best practices"

### 🤖 Copilot Chat Power Tips for Java
```java
// Good prompts for Java/Spring Boot:
@workspace Explain the Spring Security configuration in this application
Create a Spring Data JPA repository with custom query methods
Add comprehensive validation to this Spring Boot REST controller

// Context-aware requests:
Show me how to optimize these JPA queries for better performance
Implement response caching for this Spring MVC endpoint
Create comprehensive exception handling for this Spring Boot application
```

### ⚡ Speed Java Coding with Copilot
1. **Annotations First**: Start with Spring annotations, Copilot generates implementation
2. **Interface Pattern**: Define interfaces first, implement with Copilot assistance
3. **Convention Over Configuration**: Leverage Spring Boot conventions
4. **Test-Driven**: Write test signatures first, implement with Copilot

### ☕ Java-Specific Copilot Strengths
- **Spring Framework**: Excellent knowledge of Spring ecosystem
- **JPA/Hibernate**: Strong understanding of data persistence patterns
- **Maven/Gradle**: Good at build configuration and dependency management
- **Testing**: Comprehensive JUnit and Spring Test support
- **Enterprise Patterns**: Understands enterprise Java patterns and practices

## 🔍 Troubleshooting Guide

### Common Issues & Quick Fixes

**Issue**: Spring Boot application won't start
- **Fix**: Check Java version (17 or 21) and Maven configuration
- **Verify**: Dependencies are properly resolved with `mvn dependency:tree`

**Issue**: JPA entities not recognized
- **Fix**: Ensure entities are in scanned packages and have proper annotations
- **Verify**: Database configuration in application.yml is correct

**Issue**: Security configuration not working
- **Fix**: Check security filter chain order and endpoint mappings
- **Verify**: JWT secret is configured and user authentication is working

**Issue**: Tests failing
- **Fix**: Ensure test database is properly configured and isolated
- **Verify**: Test slices (@WebMvcTest, @DataJpaTest) are used appropriately

**Issue**: Azure deployment fails
- **Fix**: Check Java runtime version compatibility with Azure
- **Verify**: JAR file is built correctly and startup script is configured

## ✅ Express Java Workshop Checklist

### Phase 1 (15 min) ✓
- [ ] Spring Boot project created and configured
- [ ] Maven dependencies resolved
- [ ] Application running on localhost
- [ ] Basic project structure established

### Phase 2 (60 min) ✓
- [ ] JPA entities and repositories created
- [ ] Service layer with business logic implemented
- [ ] REST controllers with complete CRUD API
- [ ] Authentication and authorization working

### Phase 3 (35 min) ✓
- [ ] Spring Security with JWT authentication
- [ ] Comprehensive unit tests written
- [ ] Integration tests with Spring Boot Test
- [ ] All tests passing with good coverage

### Phase 4 (30 min) ✓
- [ ] OpenAPI documentation generated
- [ ] Production configuration ready
- [ ] Azure deployment successful
- [ ] Live API accessible and tested

## 🎉 Congratulations! Workshop Complete!

### 🏆 Final Score Calculation
**Your Achievement Points:**
- Bronze Tasks: ___ × 5-10 points = ___
- Silver Tasks: ___ × 15-20 points = ___
- Gold Tasks: ___ × 25-30 points = ___
- Speed Bonuses: ___ points
- **Total Score**: ___ points

### 🥇 Achievement Levels (Express Java Edition)
- **☕ Java Apprentice**: 0-45 points
- **🍃 Spring Boot Practitioner**: 46-90 points  
- **🚀 Enterprise Java Expert**: 91-135 points
- **🏆 Java Copilot Master**: 136+ points

### 🎯 What You've Accomplished
✅ **Built a complete REST API** with Spring Boot and Spring MVC  
✅ **Mastered GitHub Copilot** for Java enterprise development  
✅ **Implemented enterprise patterns** with dependency injection and AOP  
✅ **Created robust authentication** with Spring Security and JWT  
✅ **Built comprehensive tests** with JUnit 5 and Spring Boot Test  
✅ **Generated API documentation** with OpenAPI/Swagger  
✅ **Deployed to Azure** with production-ready configuration  
✅ **Used modern Java** with Java 17/21 features and Spring Boot 3  

### 🚀 Next Steps
- **Enhance the API**: Add file uploads, email notifications, scheduling
- **Explore Spring**: Try Spring WebFlux, Spring Cloud, Spring Batch
- **Database optimization**: Move to PostgreSQL, add caching with Redis
- **Microservices**: Break into multiple Spring Boot services
- **Message queues**: Add RabbitMQ or Apache Kafka integration
- **Challenge colleagues**: Compare completion times and implementations!

### 🌟 Java-Specific Skills Gained
- **Enterprise Development**: Professional Java development patterns
- **Spring Ecosystem**: Comprehensive Spring Framework usage
- **Data Persistence**: JPA/Hibernate with Spring Data
- **Security**: Enterprise-grade authentication and authorization
- **Testing**: Professional testing with Spring Boot Test framework
- **Documentation**: Auto-generated API documentation with OpenAPI
- **Cloud Deployment**: Enterprise deployment with Azure App Service

---

**🎉 Congratulations! You've completed the GitHub Copilot Java Express Workshop!**

You now have hands-on experience using GitHub Copilot to build professional Java applications with Spring Boot. The enterprise patterns, Spring ecosystem knowledge, and modern Java features you've learned are essential for professional Java development.

**Share your success**: Tweet your completion with #GitHubCopilot #Java #SpringBoot #Enterprise #2HourChallenge
