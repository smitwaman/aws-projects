#!/bin/bash

# GitHub user
github_user="smitwaman"

# AWS EC2 DevOps Projects
ec2_projects=(
    "EC2_Instance_Deployment"
    "EC2_Auto_Scaling"
    "EC2_Load_Balancing"
    "EC2_EBS_Volume_Management"
    "EC2_Security_Hardening"
    "EC2_Instance_Backup_and_Restore"
    "EC2_Spot_Instances"
    "EC2_Instance_Types_and_Optimization"
    "EC2_Instance_Networking"
    "EC2_Instance_Metadata_and_User_Data"
)

# Create root directory
mkdir -p AWS_EC2_DevOps_Projects
cd AWS_EC2_DevOps_Projects

# Create README.md
echo "# AWS EC2 DevOps Projects" > README.md
echo "This repository contains descriptions, resources, and interview questions for AWS EC2 DevOps projects." >> README.md
echo "" >> README.md
echo "## Projects:" >> README.md

# Loop through AWS EC2 DevOps projects and create description text files
for project in "${ec2_projects[@]}"; do
    mkdir -p "$project"
    cd "$project"
    
    # Write description and folder architecture to text file
    echo "**Description for $project**" > description.md
    # Write description based on project
    case "$project" in
        "EC2_Instance_Deployment")
            echo "Aim: Deploy EC2 instances using Terraform." >> description.md
            echo "Steps:" >> description.md
            echo "1. Launch EC2 instance." >> description.md
            echo "2. Configure instance details." >> description.md
            echo "3. Assign security groups and key pair." >> description.md
            ;;
        "EC2_Auto_Scaling")
            echo "Aim: Implement EC2 Auto Scaling." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create launch configuration." >> description.md
            echo "2. Set up Auto Scaling group." >> description.md
            echo "3. Test Auto Scaling." >> description.md
            ;;
        "EC2_Load_Balancing")
            echo "Aim: Implement ELB with EC2 instances." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create ELB." >> description.md
            echo "2. Register EC2 instances." >> description.md
            echo "3. Test load balancing." >> description.md
            ;;
        "EC2_EBS_Volume_Management")
            echo "Aim: Manage EBS volumes with EC2." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create EBS volumes." >> description.md
            echo "2. Attach and mount EBS volumes to EC2." >> description.md
            echo "3. Test volume operations." >> description.md
            ;;
        "EC2_Security_Hardening")
            echo "Aim: Implement EC2 security best practices." >> description.md
            echo "Steps:" >> description.md
            echo "1. Configure security groups." >> description.md
            echo "2. Enable VPC endpoints." >> description.md
            echo "3. Implement IAM roles for EC2." >> description.md
            ;;
        "EC2_Instance_Backup_and_Restore")
            echo "Aim: Implement EC2 instance backup and restore." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create AMI." >> description.md
            echo "2. Schedule backups." >> description.md
            echo "3. Test backup and restore." >> description.md
            ;;
        "EC2_Spot_Instances")
            echo "Aim: Use EC2 Spot Instances for cost optimization." >> description.md
            echo "Steps:" >> description.md
            echo "1. Request Spot Instances." >> description.md
            echo "2. Configure Spot Instance settings." >> description.md
            echo "3. Monitor Spot Instances." >> description.md
            ;;
        "EC2_Instance_Types_and_Optimization")
            echo "Aim: Optimize EC2 instance types." >> description.md
            echo "Steps:" >> description.md
            echo "1. Analyze workload requirements." >> description.md
            echo "2. Choose appropriate instance types." >> description.md
            echo "3. Monitor and adjust instance types." >> description.md
            ;;
        "EC2_Instance_Networking")
            echo "Aim: Configure EC2 instance networking." >> description.md
            echo "Steps:" >> description.md
            echo "1. Set up VPC and subnets." >> description.md
            echo "2. Assign Elastic IP addresses." >> description.md
            echo "3. Test networking configurations." >> description.md
            ;;
        "EC2_Instance_Metadata_and_User_Data")
            echo "Aim: Use EC2 instance metadata and user data." >> description.md
            echo "Steps:" >> description.md
            echo "1. Access instance metadata." >> description.md
            echo "2. Configure user data scripts." >> description.md
            echo "3. Test user data execution." >> description.md
            ;;
    esac
    
    # Create interview.md
    echo "## Interview Questions for AWS IAM:" > interview.md
    # Add 20 scenario-based questions
    for i in {1..20}; do
        echo "- Scenario-based question $i" >> interview.md
    done
    # Add 20 basic questions
    for i in {1..20}; do
        echo "- Basic question $i" >> interview.md
    done
    
    # Create link in README.md
    echo "- [$project](https://github.com/$github_user/AWS_EC2_DevOps_Projects/tree/main/$project)" >> ../README.md
    
    cd ..
done

echo "Description files, interview questions, and directories for AWS EC2 DevOps projects created successfully!"
