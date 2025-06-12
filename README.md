# 🚗 AWS Containerized Car Dealership Dashboard

A complete, production-ready AWS deployment with Terraform, Docker, and BI analytics. This project includes:

- A **React frontend** 
- A **Node.js backend** 
- **Metabase BI dashboard** 
- **MySQL and PostgreSQL RDS** instances secured in private subnets
- An **Application Load Balancer** with HTTPS and host-based routing

---

## 📂 Project Structure


- Terraform/ # Terraform configuration files
- Userdata/ # EC2 setup scripts: Ubuntu, AL2, AL2023
- Reactapp/ # React frontend (Docker build)
- Nodeapp-iba/ # Node.js backend (Docker build)
- README.md # This file



---

## 🔧 Deployment Instructions

1. **Clone this repo**  
   ```bash
   git clone https://github.com/Aiesha-Salman/DevOps-Final-Project
2. **Prepare Terraform variables**

- terraform init
- terraform plan -var-file=variables.tfvars
- terraform apply -var-file=variables.tfvars
- Load data into RDS
- Use SSH tunneling (via EC2) and DBeaver or CLI to import car dealership data.

Access the services

Frontend: https://ayeshal2.unmashable.online

Backend: https://ayeshal2023.unmashable.online

Metabase: https://ayeshaubuntu.unmashable.online

Build dashboards

## 🚀 What's Inside
IAC: Modular .tf files for VPC, subnets, EC2, ALB, ACM, DNS, RDS, security policies

User-data scripts: Automated setup of Docker, Nginx, Certbot, and Docker Compose

Dockerized apps: Multi-stage Dockerfiles for React & Node services

SSL & Routing: ALB with host header rules and ACM-managed HTTPS

RDS: Private MySQL & PostgreSQL, secure access via SSH tunnel

BI & Analytics: Metabase dashboard showing live sales data

