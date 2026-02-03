# terraform-three-tier-secure-cloud-infra
A secure, scalable three-tier cloud infrastructure built using Terraform. This project provisions a production-ready VPC, load-balanced web tier, application tier, and a secure database tier on AWS/GCP using Infrastructure as Code (IaC) best practices.
# Terraform Three-Tier Secure Cloud Infrastructure

## 📌 Project Overview
This project demonstrates how to build a **secure, scalable, and production-ready three-tier cloud infrastructure** using **Terraform (Infrastructure as Code)**.  
The architecture is designed following industry best practices to ensure **high availability, security, and easy scalability** on cloud platforms such as **AWS or GCP**.

The infrastructure is fully modular, reusable, and environment-independent, making it suitable for real-world DevOps and cloud deployments.

---

## 🏗️ Architecture Overview

The infrastructure follows a **three-tier architecture**:

- **Web Tier (Public Subnet)**  
  Handles incoming user traffic through a Load Balancer.
  
- **Application Tier (Private Subnet)**  
  Hosts backend application services with restricted access.
  
- **Database Tier (Private Subnet)**  
  Stores application data securely with no public exposure.
  ---

## 🚀 Features

- Infrastructure as Code using Terraform
- Modular and reusable Terraform modules
- Secure networking using VPC and private subnets
- Load-balanced and auto-scaled web tier
- IAM-based access control (least privilege)
- Remote backend for Terraform state management
- Cloud-agnostic design (AWS / GCP supported)

---

## 🛠️ Technology Stack

- Terraform
- AWS / GCP
- VPC / Networking
- Load Balancer
- Auto Scaling
- IAM / Service Accounts
- Security Groups / Firewall Rules
- RDS / Cloud SQL
- S3 / GCS (Terraform backend)

---

## 📂 Project Structure
terraform-three-tier-secure-cloud-infra/
│
├── backend.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
│
├── modules/
│   ├── network/
│   │   ├── vpc.tf
│   │   ├── subnets.tf
│   │   ├── routes.tf
│   │   └── outputs.tf
│   │
│   ├── security/
│   │   ├── security_groups.tf
│   │   └── iam.tf
│   │
│   ├── compute/
│   │   ├── web.tf
│   │   ├── app.tf
│   │   └── autoscaling.tf
│   │
│   └── database/
│       ├── rds.tf
│       └── outputs.tf
│
├── README.md
└── .gitignore
---

## ✅ Prerequisites

- Terraform v1.5 or higher
- AWS or GCP account
- Cloud CLI configured
- Git installed

---

## ⚙️ How to Deploy the Infrastructure

```bash
terraform init
terraform plan
terraform apply
Project: Secure Three-Tier Cloud Infrastructure using Terraform
Designed and deployed a production-ready three-tier architecture using Terraform
Implemented modular IaC with reusable Terraform modules
Configured secure networking using VPC, public/private subnets
Enabled auto-scaling and load balancing for high availability
Used remote backend for Terraform state management
Applied cloud security best practices (IAM, least privilege)
Important Terraform Files (Explaination)
provider.tf
AWS / GCP provider config
Region, credentials
backend.tf
Remote state (S3 / GCS)
State locking → team collaboration
variables.tf
Reusable parameters
Environment independent
terraform.tfvars
Actual values
Dev / Prod separation
outputs.tf
Load balancer URL
VPC ID
DB endpoint
terraform.tfvars
Actual values
Dev / Prod separation
outputs.tf
Load balancer URL
VPC ID
DB endpoint
Project Architecture (3-Tier)
Internet
✅ FINAL FILE LIST
provider.tf
backend.tf
variables.tf
terraform.tfvars
outputs.tf
.gitignore
network.tf
security.tf
web.tf
database.tf
README.md
Load Balancer (Public Subnet)
   |
Web Tier (Auto Scaling)
   |
App Tier (Private Subnet)
   |
Database Tier (Private Subnet)
