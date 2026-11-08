# Project 5: AWS Infrastructure Automation using Terraform

## Project Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform and AWS.

Terraform is used to automatically provision AWS resources instead of creating them manually.

## AWS Services Used
- Amazon VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- Amazon EC2
- Amazon Linux 2023
- Nginx Web Server

## Project Architecture
1. Terraform connects to AWS using configured credentials.
2. Creates a VPC and public subnet.
3. Creates an Internet Gateway and route table.
4. Configures a security group for HTTP traffic.
5. Launches an EC2 instance.
6. Installs and starts Nginx using EC2 user data.
7. Displays the website URL through Terraform outputs.

## Project Files
| File | Purpose |
|---|---|
| provider.tf | AWS provider configuration |
| variables.tf | Input variables |
| main.tf | AWS resource definitions |
| outputs.tf | Displays resource information |
| terraform.tfvars.example | Sample variable values |
| .gitignore | Ignores sensitive and generated files |

## Terraform Commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
```

To delete the resources:

```bash
terraform destroy
```

## Expected Result
A working Nginx website hosted on an Amazon Linux 2023 EC2 instance inside a Terraform-created VPC.

## Security Notes
- Never upload AWS access keys or secret keys.
- Never commit Terraform state files.
- Keep real terraform.tfvars files private.
- HTTP port 80 is publicly accessible in this lab configuration.
- SSH access is not enabled in this version.

## Project Status
GitHub documentation and Terraform configuration prepared. Practical deployment and validation are pending.
