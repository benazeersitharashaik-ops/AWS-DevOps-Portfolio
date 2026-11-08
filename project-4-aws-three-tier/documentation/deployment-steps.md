# AWS Three-Tier Deployment Steps

## Step 1: VPC Setup
- Create a VPC.
- Configure public and private subnets.
- Create an Internet Gateway.
- Configure route tables.

## Step 2: Security Groups
- Load Balancer Security Group: Allow HTTP/HTTPS traffic from users.
- Application Security Group: Allow application traffic only from the Load Balancer.
- Database Security Group: Allow database port only from the Application Security Group.

## Step 3: Load Balancer
- Create an Application Load Balancer.
- Configure a target group.
- Add application EC2 instances to the target group.

## Step 4: EC2 Application Servers
- Launch EC2 instances in private subnets.
- Install and configure the web application.
- Register instances with the target group.

## Step 5: RDS Database
- Create an RDS DB subnet group using private subnets in different Availability Zones.
- Create the database.
- Disable public accessibility.
- Configure database access from the application security group only.

## Step 6: Testing
- Open the Load Balancer DNS name in a browser.
- Verify the application response.
- Test application-to-database connectivity.

## Step 7: Cleanup
- Back up any data you need.
- Delete the Load Balancer and target group.
- Delete EC2 instances.
- Delete RDS after confirming backups are not needed.
- Remove unused networking resources.
