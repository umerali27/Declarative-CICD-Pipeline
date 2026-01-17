# Declarative CI/CD Pipeline on AWS

## Project Overview
This project demonstrates an end-to-end DevOps CI/CD pipeline using Jenkins Declarative Pipeline, Docker, Terraform, and AWS.  
The goal is to automate application build, containerization, infrastructure provisioning, and deployment using DevOps best practices.

---

## Architecture Overview

**Workflow:**
1. Developer pushes code to GitHub
2. Jenkins pipeline is triggered
3. Application is built and containerized using Docker
4. Docker container runs the application
5. Infrastructure is provisioned using Terraform on AWS

**Core Components:**
- GitHub – Source code management
- Jenkins – CI/CD automation
- Docker – Containerization
- Terraform – Infrastructure as Code
- AWS EC2 – Compute infrastructure

---

## Tech Stack

- Programming Language: Python (Flask)
- CI/CD Tool: Jenkins (Declarative Pipeline)
- Containerization: Docker
- Infrastructure as Code: Terraform
- Cloud Provider: AWS
- Version Control: Git & GitHub

---

## Application Details

The application is a simple Flask-based web service used to demonstrate CI/CD automation.

- Runs on port 5000
- Returns a sample response to verify deployment success
- Fully containerized using Docker

---

## CI/CD Pipeline Explanation

The Jenkins Declarative Pipeline performs the following stages:

1. **Checkout Code**
   - Pulls source code from GitHub

2. **Build Docker Image**
   - Builds a Docker image using the Dockerfile

3. **Run Docker Container**
   - Runs the application container on port 5000

This pipeline ensures repeatable and automated deployments.

---

## Infrastructure as Code (Terraform)

Terraform is used to provision AWS infrastructure.

Resources created:
- AWS EC2 instance (t2.micro)
- Tagged resources for identification

Benefits:
- Consistent infrastructure
- Easy recreation and cleanup
- Version-controlled infrastructure

---
## Project Structure

├── app/
│ ├── app.py
│ ├── Dockerfile
│ └── requirements.txt
├── terraform/
│ ├── provider.tf
│ └── main.tf
├── jenkins/
│ └── Jenkinsfile
├── scripts/
├── screenshots/
├── .gitignore
└── README.md
---

## Security & Best Practices

- No hard-coded credentials
- Infrastructure defined using IaC
- Dockerized application for consistency
- GitHub version control with clean commit history
- `.gitignore` used to protect sensitive files

---

## Real-World Use Case

This setup mirrors how organizations:
- Automate deployments
- Reduce manual errors
- Maintain consistent environments
- Scale DevOps practices efficiently

---

## What I Learned

- Designing CI/CD pipelines using Jenkins Declarative syntax
- Containerizing applications using Docker
- Writing Infrastructure as Code with Terraform
- Using GitHub for version control and collaboration
- Understanding DevOps workflows end-to-end
---

## Author
Umer Ali



