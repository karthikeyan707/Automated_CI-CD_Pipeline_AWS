++Automated CI/CD Pipeline on AWS using Terraform & Jenkins

This project demonstrates a fully automated CI/CD pipeline that builds and deploys a simple web application to AWS using Terraform, Jenkins, and GitHub Webhooks.


++Tech Stack

AWS (EC2, S3)

Terraform (Infrastructure as Code)

Jenkins (CI/CD Pipeline)

GitHub Webhooks

Node.js App (sample web app)

Linux / Shell Scripting


++Project Overview

This automation pipeline performs:

Pull Code from GitHub (triggered by webhook)

Build & Test Application

Provision AWS Infrastructure using Terraform

Deploy App to EC2 Automatically

Run Smoke Tests & Confirm Deployment

The goal: Push code → App deployed automatically.


📁 Project Structure
project/
├─ terraform/        # Terraform IaC files
├─ app/              # Node.js sample application
├─ jenkins/          # Jenkinsfile + deploy scripts
└─ README.md


---CI/CD Flow---

Developer pushes code → GitHub webhook triggers Jenkins

Jenkins:

Checks out repository

Builds the Node.js app

Runs Terraform Init/Plan/Apply

Deploys updated app to EC2 via SSH

Application becomes available at EC2 Public IP.


---AWS Resources Created---

EC2 Instance (Ubuntu, Node.js runtime)

Security Group (HTTP + SSH)

Key Pair

S3 Bucket (optional for assets)

User-data script (installs Node & systemd service)


---Jenkins IAM Role (EC2)---

Jenkins EC2 uses an IAM role allowing:

EC2 create/describe/delete

S3 read/write

Key Pair creation

PassRole (for EC2 instance profiles)


***Running the Pipeline***

Clone repo & configure Jenkins credentials

Attach IAM role to Jenkins EC2

Configure GitHub Webhook

Run Jenkins Pipeline (Jenkinsfile)


++To verify the deployment and browse the app server 

Visit:
http://<EC2_PUBLIC_IP>:3000
