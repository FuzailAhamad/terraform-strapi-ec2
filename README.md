# Terraform + Strapi EC2 Deployment (Internship Task)

## Overview
This repository contains the work done as part of the DevOps Internship tasks.  
The goal of this task was to provision AWS infrastructure using Terraform and deploy a Strapi application on an EC2 instance.

---

## Task Objectives
- Learn AWS core concepts
- Provision an EC2 instance using Terraform
- Create and manage AWS resources using Terraform modules
- Generate and use an SSH key pair
- Connect to EC2 using SSH
- Deploy Strapi on EC2
- Document the entire process

---

## Tools & Technologies Used
- AWS (EC2, Key Pair, Security Groups)
- Terraform
- Ubuntu 22.04 LTS
- Git & GitHub
- Node.js & npm
- Strapi
- PM2 (Process Manager)

---

## Project Structure
├── modules
│ ├── ec2
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ ├── keypair
│ │ ├── main.tf
│ │ └── outputs.tf
│ └── security-group
│ ├── main.tf
│ └── outputs.tf
├── main.tf
├── provider.tf
├── outputs.tf
├── .terraform.lock.hcl
├── .gitignore
└── README.md


---

## Steps Performed

### 1. AWS Authentication
- Configured AWS CLI locally using access key and secret key
- Verified authentication using AWS CLI

---

### 2. Infrastructure Provisioning using Terraform
- Initialized Terraform using `terraform init`
- Created Terraform modules for:
  - EC2 instance
  - Security Group
  - Key Pair
- Ran `terraform plan` to verify changes
- Applied infrastructure using `terraform apply`

---

### 3. Key Pair Creation
- SSH key pair was created using Terraform
- Private key (`.pem`) was generated and stored locally
- Key pair was attached to the EC2 instance

---

### 4. EC2 Instance Launch
- Ubuntu 22.04 AMI was used
- Instance launched successfully using Terraform
- Public IP was obtained after deployment

---

### 5. SSH into EC2 Instance
Connected to EC2 using the generated key:
ssh -i modules/keypair/terraform-strapi-key.pem ubuntu@<EC2_PUBLIC_IP>


---

### 6. Server Setup
- Updated system packages
- Installed required dependencies:
  - Node.js
  - npm
  - Git
  - PM2

---

### 7. Strapi Deployment
- Cloned Strapi repository / project on EC2
- Installed dependencies
- Started Strapi application
- Used PM2 to keep Strapi running in the background

---

### 8. Application Access
- Strapi application was successfully running on EC2
- Verified by accessing the public IP and port

---

## GitHub Workflow
- All Terraform files were pushed to GitHub
- Work was done using a feature branch
- Changes were merged into the main branch
---

## Final Status
- EC2 successfully provisioned using Terraform
- Strapi application successfully deployed on EC2
- Infrastructure fully managed via Terraform
- Task completed as per requirements

---

## Author
**Fuzail Ahamad**
