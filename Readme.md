# Spring Boot CI/CD Demo – DevOps Pipeline

[![Java CI/CD with Docker](https://github.com/Piyush-Gahlawat/spring-boot-cicd-demo/actions/workflows/ci-cd.yml/badge.svg)](https://github.com/Piyush-Gahlawat/spring-boot-cicd-demo/actions/workflows/ci-cd.yml)

A minimal Spring Boot REST API demonstrating a fully automated CI/CD pipeline using **GitHub Actions** and **Docker**.  
Built to showcase modern DevOps practices for German tech companies.

## 🚀 Quick Overview

- **Tech Stack**: Java 21, Spring Boot 4.0.5, Maven, Docker, GitHub Actions
- **Function**: A single REST endpoint (`/hello`) that returns a welcome message
- **Pipeline**: On every push to `main`:
  1. Build with Maven
  2. Run tests
  3. Package JAR
  4. Build Docker image
  5. (Optional) Push to container registry

## 📋 Prerequisites (for local development)

| Tool | Version | Check command |
|------|---------|----------------|
| Java JDK | 21+ | `java -version` |
| Maven | 4.0+ | `mvn -version` |
| Git | any | `git --version` |
| Docker | 20+ | `docker --version` |

## 🏃‍♂️ Run Locally

### Using Maven
```bash
# Clone the repository
git clone https://github.com/Piyush-Gahlawat/spring-boot-cicd-demo.git
cd spring-boot-cicd-demo

# Build and run tests
mvn clean package

# Start the application
mvn spring-boot:run