#!/bin/bash

# GitHub user
github_user="smitwaman"

# AWS VPC DevOps Projects
vpc_projects=(
    "VPC_Creation"
    "VPC_Peering"
    "VPC_Security_Groups"
    "VPC_NACLs"
    "VPC_VPN_Connection"
    "VPC_Flow_Logs"
    "VPC_Endpoint"
    "VPC_Route_Tables"
    "VPC_DNS_Resolution_and_Hostnames"
    "VPC_Transit_Gateway"
)

# Create root directory
mkdir -p AWS_VPC_DevOps_Projects
cd AWS_VPC_DevOps_Projects

# Create README.md
echo "# AWS VPC DevOps Projects" > README.md
echo "This repository contains descriptions, resources, and interview questions for AWS VPC DevOps projects." >> README.md
echo "" >> README.md
echo "## Projects:" >> README.md

# Loop through AWS VPC DevOps projects and create description text files
for project in "${vpc_projects[@]}"; do
    mkdir -p "$project"
    cd "$project"
    
    # Write description and folder architecture to text file
    echo "**Description for $project**" > description.md
    # Write description based on project
    case "$project" in
        "VPC_Creation")
            echo "Aim: Create a VPC using Terraform." >> description.md
            echo "Steps:" >> description.md
            echo "1. Define VPC properties." >> description.md
            echo "2. Configure subnets." >> description.md
            echo "3. Set up Internet Gateway." >> description.md
            ;;
        "VPC_Peering")
            echo "Aim: Implement VPC peering." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create two VPCs." >> description.md
            echo "2. Configure VPC peering connection." >> description.md
            echo "3. Test connectivity." >> description.md
            ;;
        "VPC_Security_Groups")
            echo "Aim: Implement VPC security groups." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create security groups." >> description.md
            echo "2. Configure inbound and outbound rules." >> description.md
            echo "3. Test security settings." >> description.md
            ;;
        "VPC_NACLs")
            echo "Aim: Configure VPC NACLs." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create NACLs." >> description.md
            echo "2. Set NACL rules." >> description.md
            echo "3. Test NACL configurations." >> description.md
            ;;
        "VPC_VPN_Connection")
            echo "Aim: Set up VPC VPN connection." >> description.md
            echo "Steps:" >> description.md
            echo "1. Configure customer gateway." >> description.md
            echo "2. Create VPN connection." >> description.md
            echo "3. Test VPN connectivity." >> description.md
            ;;
        "VPC_Flow_Logs")
            echo "Aim: Enable VPC flow logs." >> description.md
            echo "Steps:" >> description.md
            echo "1. Enable flow logs." >> description.md
            echo "2. Set up flow log destinations." >> description.md
            echo "3. Review flow logs." >> description.md
            ;;
        "VPC_Endpoint")
            echo "Aim: Implement VPC endpoint." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create VPC endpoint." >> description.md
            echo "2. Configure endpoint policies." >> description.md
            echo "3. Test endpoint access." >> description.md
            ;;
        "VPC_Route_Tables")
            echo "Aim: Configure VPC route tables." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create route tables." >> description.md
            echo "2. Add routes." >> description.md
            echo "3. Associate route tables with subnets." >> description.md
            ;;
        "VPC_DNS_Resolution_and_Hostnames")
            echo "Aim: Configure VPC DNS settings." >> description.md
            echo "Steps:" >> description.md
            echo "1. Enable DNS resolution." >> description.md
            echo "2. Enable DNS hostnames." >> description.md
            echo "3. Test DNS settings." >> description.md
            ;;
        "VPC_Transit_Gateway")
            echo "Aim: Implement VPC transit gateway." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create transit gateway." >> description.md
            echo "2. Attach VPCs and VPNs." >> description.md
            echo "3. Test transit gateway routing." >> description.md
            ;;
    esac
    
    # Create interview.md
    echo "## Interview Questions for AWS S3:" > interview.md
    # Add 20 scenario-based questions
    for i in {1..20}; do
        echo "- Scenario-based question $i" >> interview.md
    done
    # Add 20 basic questions
    for i in {1..20}; do
        echo "- Basic question $i" >> interview.md
    done
    
    # Create link in README.md
    echo "- [$project](https://github.com/$github_user/AWS_VPC_DevOps_Projects/tree/main/$project)" >> ../README.md
    
    cd ..
done

echo "Description files, interview questions, and directories for AWS VPC DevOps projects created successfully!"
