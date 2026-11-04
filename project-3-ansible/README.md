# Project 3: Linux Server Automation using Ansible

## Project Overview
This project demonstrates Linux server automation using Ansible on AWS EC2 instances.

Ansible automates server configuration, software installation, service management, and website deployment.

## Architecture
- Control Node: AWS EC2 – Amazon Linux 2023
- Managed Nodes: AWS EC2 instances
- Connection: SSH
- Automation Tool: Ansible

## Technologies Used
- AWS EC2
- Amazon Linux 2023
- Ansible
- YAML
- SSH
- Nginx
- Git and GitHub

## Project Tasks
1. Install Ansible on the control node.
2. Configure SSH connectivity.
3. Create an Ansible inventory.
4. Test connectivity using the Ansible ping module.
5. Install Nginx on managed servers.
6. Start and enable Nginx.
7. Deploy a sample website using an Ansible playbook.

## Project Files
- `inventory.ini.example` – Sample managed server inventory.
- `ansible.cfg` – Ansible configuration.
- `check-connectivity.yml` – Tests server connectivity.
- `install-nginx.yml` – Installs and starts Nginx.
- `deploy-website.yml` – Deploys a sample website.

## Execution Commands

```bash
ansible --version
ansible -i inventory.ini webservers -m ping
ansible-playbook install-nginx.yml
ansible-playbook deploy-website.yml
```

## Expected Outcome
Automated Nginx installation and sample website deployment on multiple AWS Linux servers.

## Learning Outcomes
- Ansible architecture
- Inventory management
- SSH configuration
- YAML playbooks
- Linux server automation
- Application deployment

**Project Status:** Documentation and playbook templates prepared. Practical execution and validation pending.
