# PulseIQ - Healthcare Microservices Platform

[![CI/CD Pipeline](https://img.shields.io/badge/CI%2FCD-Azure%20DevOps-blue)](https://dev.azure.com)
[![Deployment](https://img.shields.io/badge/Deployed-Azure%20VM-success)](https://azure.microsoft.com)
[![Security](https://img.shields.io/badge/Security-JWT%20%2B%20Firebase-orange)](https://firebase.google.com)

PulseIQ is a state-of-the-art healthcare platform engineered with modern microservices architecture to revolutionize patient care and medical practice management. The platform seamlessly integrates cutting-edge AI technology with comprehensive healthcare workflows, providing an end-to-end solution for patients, healthcare providers, and medical administrators.

Built with scalability and security at its core, PulseIQ offers real-time health consultations, intelligent appointment scheduling, digital prescription management, and secure payment processing. The platform leverages OpenAI's GPT-4 for AI-powered health assistance while maintaining HIPAA-compliant data handling and robust authentication mechanisms.

## 🏗️ Architecture

| Service | Technology | Port | Purpose |
|---------|------------|------|---------|
| **Frontend** | React 18 + Vite + TypeScript | 8080 | Modern SPA with responsive UI |
| **User Appointment Service** | Java 21 + Spring Boot 3.5 | 8085 | Core business logic & data management |
| **Payment Service** | Java 21 + Spring Boot 3.5 | 8082 | Secure payment processing with SSLCommerz |
| **AI Service** | Python 3.11 + FastAPI | 8000 | AI-powered health consultation engine |
| **Database** | PostgreSQL 15 | 5432 | ACID-compliant data persistence |

## 📁 Repository Structure

```
pulse-iq/
├── 🎨 frontend/                           # React Frontend Application
│   ├── 📁 src/                           # Source code
│   │   ├── 📁 components/                # Reusable UI components
│   │   │   ├── 📁 ui/                    # Base UI components
│   │   │   ├── 📁 auth/                  # Authentication components
│   │   │   ├── 📁 dashboards/            # Dashboard components
│   │   │   ├── 📁 appointments/          # Appointment management
│   │   │   ├── 📁 prescriptions/         # Prescription components
│   │   │   ├── 📁 chat/                  # AI chat interface
│   │   │   ├── 📁 TestResults/           # Test result components
│   │   │   └── 📁 notifications/         # Notification system
│   │   ├── 📁 pages/                     # Application pages
│   │   ├── 📁 contexts/                  # React context providers
│   │   ├── 📁 hooks/                     # Custom React hooks
│   │   ├── 📁 lib/                       # Utility libraries
│   │   ├──  config/                    # Configuration files
│   │   └── � styles/                    # CSS and styling
│   └── 📁 test/                          # Frontend tests
│
├── ☕ user-appointment-service/           # Core Java Backend Service
│   ├── � src/                           # Source code
│   │   ├──  main/java/com/healthcare/  # Java source packages
│   │   │   ├── 📁 controller/            # REST controllers
│   │   │   ├── 📁 service/               # Business logic
│   │   │   ├── 📁 repository/            # Data access layer
│   │   │   ├── 📁 model/                 # Entity models
│   │   │   ├── 📁 config/                # Configuration classes
│   │   │   └── 📁 security/              # Security implementations
│   │   ├── 📁 main/resources/            # Configuration files
│   │   └── � test/java/                 # Unit and integration tests
│   └── 📁 target/                        # Maven build output
│
├── 💳 payment-service/                   # Payment Processing Service
│   ├── � src/                           # Source code
│   │   ├── 📁 main/java/com/payment/     # Java source packages
│   │   │   ├── 📁 controller/            # Payment controllers
│   │   │   ├── 📁 service/               # Payment business logic
│   │   │   ├── 📁 integration/           # SSLCommerz integration
│   │   │   └── 📁 model/                 # Payment models
│   │   ├── 📁 main/resources/            # Configuration files
│   │   └── 📁 test/java/                 # Payment service tests
│   └── 📁 target/                        # Maven build output
│
└── 🤖 ai-service/                        # AI Health Assistant Service
```

### Key Directory Explanations

- **`frontend/`**: React-based SPA with TypeScript, Tailwind CSS, and Vite for modern web development
- **`user-appointment-service/`**: Core Spring Boot service handling appointments, prescriptions, and user management
- **`payment-service/`**: Dedicated Spring Boot service for SSLCommerz payment integration
- **`ai-service/`**: FastAPI-based service integrating with OpenAI GPT-4 for health consultations

## ✨ Comprehensive Features

### 🏥 **Multi-Role Dashboard System**
- **Patient Dashboard**: Personal health records, appointment history, prescription tracking, test results viewing
- **Doctor Dashboard**: Patient management, appointment scheduling, prescription writing, test result analysis
- **Technician Dashboard**: Test result uploads, equipment management, quality control
- **Admin Dashboard**: System analytics, user management, financial reporting, platform monitoring

### 📅 **Advanced Appointment Management**
- Real-time appointment scheduling with conflict detection
- Automated email and SMS notifications
- Appointment status tracking (scheduled, confirmed, completed, cancelled)
- Multi-provider calendar integration
- Waitlist management and automatic rescheduling
- Recurring appointment setup

### 🤖 **AI-Powered Health Assistant**
- GPT-4 integrated symptom analysis and health recommendations
- Natural language processing for medical queries
- Personalized health insights based on patient history
- Drug interaction checking and allergy alerts
- Preliminary diagnosis suggestions (not medical advice)
- Health risk assessments

### 💊 **Digital Prescription System**
- Electronic prescription generation and management
- Drug database integration with dosage recommendations
- Prescription history tracking and refill management
- Pharmacy integration for direct prescription sending
- Medication adherence monitoring
- Prescription analytics and reporting

### 🧪 **Test Results Management**
- Secure PDF upload and storage for test results
- Automated result categorization and tagging
- Historical test result comparison and trending
- Doctor annotation and patient explanation features
- Integration with laboratory information systems
- Result sharing with authorized healthcare providers

### 💳 **Secure Payment Processing**
- SSLCommerz payment gateway integration
- Multiple payment methods (cards, mobile banking, digital wallets)
- Automated billing and invoice generation
- Payment history and transaction tracking
- Refund and partial payment management
- Financial reporting and analytics

### 🔐 **Advanced Authentication & Security**
- JWT-based stateless authentication with refresh token rotation
- Firebase Authentication for social login integration
- Role-based access control (RBAC) with granular permissions
- Multi-factor authentication (MFA) support
- Session management and security logging
- Password policies and account lockout protection

### 📱 **Real-time Notifications**
- Push notifications for mobile and web applications
- Email notifications with customizable templates
- SMS integration for critical updates
- In-app notification center with read/unread status
- Notification preferences and subscription management
- Emergency alert system for critical health updates

## � Prerequisites

### System Requirements
- **Operating System**: Windows 10/11, macOS 10.15+, or Ubuntu 18.04+
- **Network**: Stable internet connection for AI service and external integrations

### Required Software

#### For Local Development
- **Java Development Kit**: OpenJDK 21 or Oracle JDK 21
- **Node.js**: Version 20.x or higher with npm 10+
- **Python**: Version 3.11+ with pip package manager
- **PostgreSQL**: Version 15+ for database operations
- **Git**: Latest version for version control
- **Docker**: Version 20.10+ with Docker Compose for containerized deployment

#### Development Tools (Recommended)
- **IDE**: IntelliJ IDEA, VS Code, or Eclipse for Java development
- **Database Client**: pgAdmin, DBeaver, or similar PostgreSQL client
- **API Testing**: Postman, Insomnia, or similar REST client
- **Text Editor**: VS Code with recommended extensions for TypeScript/React

### External Service Accounts
- **OpenAI API**: For AI service functionality
- **Firebase**: Google Firebase project for authentication services
- **SSLCommerz**: Merchant account for payment processing (Bangladesh)
- **Email Service**: SMTP server credentials for notification services
- **SMS Gateway**: Optional for SMS notification features

### Environment Configuration
- Minimum 4 CPU cores for optimal performance
- Configure firewall rules for ports 8000, 8080, 8082, 8085, and 5432
- SSL certificates for production deployment
- Domain name and DNS configuration for production

## 🚀 Running the Services

### Quick Start with Docker (Recommended)
```bash
# Clone repository
git clone https://github.com/TashdiqurRahmanShifat/PulseIQ.git
cd pulse-iq

# Start all services
docker-compose up -d

# Check service health
docker-compose ps
```

### Individual Service Commands

#### User Appointment Service
```bash
cd user-appointment-service
.\load-env.ps1          # Windows - loads environment variables
source load-env.sh      # Linux/macOS - loads environment variables
mvn clean install      # Build project
mvn spring-boot:run     # Start service on port 8085
```

#### Frontend Application
```bash
cd frontend
npm install             # Install dependencies
npm run dev            # Development server on port 8080
npm run build          # Production build
npm run preview        # Preview production build
```

#### Payment Service
```bash
cd payment-service
mvn clean install      # Build project
mvn spring-boot:run     # Start service on port 8082
```

#### AI Service
```bash
cd ai-service
pip install -r requirements.txt    # Install Python dependencies
python -m uvicorn main:app --host 0.0.0.0 --port 8000 --reload  # Start with hot reload
```

### Docker Deployment Options
```bash
# Development environment with hot reload
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

# Production deployment
docker-compose -f docker-compose.yml up -d

# Testing environment
docker-compose -f docker-compose.test.yml up --abort-on-container-exit

# Scale specific services
docker-compose up -d --scale ai-service=3 --scale payment-service=2
```

## 🧪 Comprehensive Testing

### Frontend Testing
```bash
cd frontend
npm test                    # Run all tests with Vitest
```

### Backend Testing (Java Services)
```bash
# User Appointment Service
cd user-appointment-service
mvn test                   # Unit tests
mvn integration-test      # Integration tests

```


## 🚀 CI/CD Pipeline & Deployment

### Azure DevOps Integration
The project implements a robust CI/CD pipeline using Azure DevOps with automated testing, building, and deployment to Azure VM.

#### Continuous Integration (CI)
- **Automated Testing**: All services tested on pull requests
- **Code Quality**: SonarQube integration for code analysis
- **Security Scanning**: Dependency vulnerability checks
- **Multi-environment Testing**: Development, staging, and production environments

#### Continuous Deployment (CD)
- **Docker Image Building**: Automated image creation and versioning
- **Azure Container Registry**: Secure image storage and management
- **Blue-Green Deployment**: Zero-downtime deployments
- **Health Checks**: Automated service health verification post-deployment

### Deployment Pipeline Stages
```yaml
stages:
  - Build and Test
  - Security Scan
  - Build Docker Images
  - Deploy to Staging
  - Integration Tests
  - Deploy to Production
  - Health Checks
```


## 🔒 Security Implementation

### Authentication & Authorization
- **JWT Tokens**: Stateless authentication with RS256 algorithm
- **Token Rotation**: Automatic refresh token rotation every 24 hours
- **Role-Based Access Control**: Granular permissions for Patient, Doctor, Technician, Admin roles
- **Session Management**: Secure session handling with automatic timeout

### Data Security
- **Encryption at Rest**: AES-256 encryption for sensitive data
- **Encryption in Transit**: TLS 1.3 for all API communications
- **Database Security**: Row-level security and encrypted connections
- **Password Security**: bcrypt hashing with salt rounds
- **API Rate Limiting**: Request throttling to prevent abuse

### Infrastructure Security
- **Network Security**: VPC with private subnets and NAT gateways
- **Firewall Rules**: Restricted access with IP whitelisting
- **SSL Certificates**: Let's Encrypt with automatic renewal
- **Security Headers**: HSTS, CSP, and other security headers implemented
- **Vulnerability Scanning**: Regular security assessments and penetration testing


## 📊 API Documentation

### Interactive Documentation
- **User Appointment Service**: http://localhost:8085/swagger-ui.html
- **Payment Service**: http://localhost:8082/swagger-ui.html
- **AI Service**: http://localhost:8000/docs (FastAPI automatic docs)

### API Endpoints Overview

#### Authentication Endpoints
```
POST /api/auth/login         # User authentication
POST /api/auth/refresh       # Token refresh
POST /api/auth/logout        # User logout
POST /api/auth/register      # User registration
```

#### Appointment Management
```
GET    /api/appointments           # List appointments
POST   /api/appointments           # Create appointment
PUT    /api/appointments/{id}      # Update appointment
DELETE /api/appointments/{id}      # Cancel appointment
```

#### Prescription Management
```
GET    /api/prescriptions          # List prescriptions
POST   /api/prescriptions          # Create prescription
GET    /api/prescriptions/{id}     # Get prescription details
```

#### AI Health Assistant
```
POST   /api/ai/consultation        # AI health consultation
POST   /api/ai/symptom-analysis    # Symptom analysis
GET    /api/ai/health-tips         # Personalized health tips
```

#### Payment Processing
```
POST   /api/payments/initialize    # Initialize payment
POST   /api/payments/verify        # Verify payment
GET    /api/payments/history       # Payment history
```


## 🔗 Access URLs

### Development Environment
- **Frontend**: http://localhost:8080
- **User Service API**: http://localhost:8085
- **Payment Service**: http://localhost:8082
- **AI Service**: http://localhost:8000
- **Database**: postgresql://localhost:5432/pulseiq_db


## 🔧 Configuration

### Environment Variables
```bash
# Database Configuration
DB_HOST=localhost
DB_PORT=5432
DB_NAME=pulseiq_db
DB_USERNAME=pulseiq_user
DB_PASSWORD=******************

# JWT Configuration
JWT_SECRET=******************
JWT_EXPIRATION=86400


# Firebase Configuration
FIREBASE_ENABLED=true
VITE_FIREBASE_API_KEY=******************
VITE_FIREBASE_AUTH_DOMAIN=******************
VITE_FIREBASE_PROJECT_ID=******************

# Payment Configuration (SSLCommerz)
SSLCOMMERZ_STORE_ID=******************
SSLCOMMERZ_STORE_PASSWORD=******************
SSLCOMMERZ_SANDBOX=true

# Email Configuration
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=******************
MAIL_PASSWORD=******************

# Azure Configuration
AZURE_STORAGE_ACCOUNT=******************
AZURE_STORAGE_KEY=******************
AZURE_CONTAINER_NAME=pulseiq-files
```

## 📊 Health Checks & Monitoring

### Service Health Endpoints
- **User Service**: `/actuator/health` - Spring Boot health indicators
- **Payment Service**: `/actuator/health` - Service health and dependencies
- **AI Service**: `/health` - FastAPI health check with AI model status
- **Frontend**: `/health` - Static file serving and build info
- **Database**: Built-in PostgreSQL health monitoring


### Key Performance Indicators
- **Response Time**: API response times under 200ms (95th percentile)
- **Availability**: 99.9% uptime SLA
- **Error Rate**: Less than 0.1% error rate for critical endpoints
- **AI Service**: GPT-4 response time under 3 seconds
- **Database**: Query performance monitoring with slow query alerts

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Make your changes and test them
4. Commit with clear messages: `git commit -m "Add feature: description"`
5. Push to your branch: `git push origin feature/your-feature`
6. Submit a Pull Request

### Code Standards
- **Frontend**: ESLint + Prettier (configured in `frontend/`)
- **Java**: Follow existing code style in services
- **Python**: PEP 8 standards for AI service
- **Tests**: Add tests for new features



## 🙏 Acknowledgments

- **OpenAI** - GPT-4 API for AI health consultations
- **Firebase** - Authentication services
- **SSLCommerz** - Payment gateway for Bangladesh
- **Spring Boot** - Java backend framework
- **React + Vite** - Frontend development
- **FastAPI** - Python web framework
- **PostgreSQL** - Database system

## 🆘 Support

For issues and questions:
- Create an issue on GitHub
- Check existing documentation
- Review the code examples in each service directory
