# Deployment-of-Web-Apps-with-CICD-Implementation

This project implements a fully automated Continuous Integration and Continuous Deployment (CI/CD) pipeline using GitHub Actions to deploy dynamic web applications on AWS infrastructure. The pipeline utilizes various DevOps tools and processes to ensure seamless deployment.

## Project Overview

The CI/CD pipeline follows these main steps:

1. **Configure AWS Credentials**: AWS credentials are configured to grant GitHub Actions access for creating resources within the AWS account.

2. **Deploy AWS Infrastructure**: Terraform is used to deploy AWS infrastructure including VPC, Subnets, Internet Gateway, Security Groups, NAT Gateways, Application Load Balancer, RDS Instance, IAM Role, S3 Bucket, Route 53 Record Set, SSL Certificate in Certificate Manager, ECR Repository, ECS Cluster, ECS Task Definition, and ECS Fargate Services in Auto-Scaling Groups.

3. **Initiate Self-Hosted Runner and Create ECR Repository**: Once AWS infrastructure is in place, a self-hosted runner is initiated, and an Amazon ECR repository is created to store the application's Docker image.

4. **Set Up Docker and Build Application Image**: Docker is set up on the self-hosted runner, the application image is built, and it is pushed into the Amazon ECR repository.

5. **Export Environment Variables and Database Migration**: Environment variables for Fargate containers are exported to a file and copied to the Amazon S3 bucket. Concurrently, the application's SQL script is migrated into the RDS database using Flyway.

6. **Terminate Self-Hosted Runner**: Once deployment is complete, the self-hosted runner is terminated.

7. **Create New ECS Task Definition Revision**: A new ECS task definition revision is created.

8. **Update ECS Service**: The ECS service is updated using the new ECS task definition revision, making the application accessible to end-users.

## Usage

To utilize this CI/CD pipeline for deploying your web application:

1. Ensure your AWS credentials are properly configured and stored securely.
2. Set up your Terraform configuration for deploying AWS infrastructure according to your requirements.
3. Configure your GitHub Actions workflow to trigger the pipeline on code changes or manual triggers.
4. Customize the pipeline steps to fit your specific application deployment needs.
5. Monitor the pipeline execution and troubleshoot any issues that may arise.



## Technologies Used

- CI/CD: GitHub Actions
- Cloud Services: AWS
- Infrastructure as Code: Terraform
- Containerization: Docker
- Version Control: Git, GitHub
- Scripting: Bash
- Database Migration: Flyway
- Credential Management: AWS Secrets Manager, GitHub Actions Repository Secrets
