#!/bin/bash

# GitHub user
github_user="smitwaman"

# AWS IAM Projects
iam_projects=(
    "IAM_Users_Management"
    "IAM_Roles_and_Policies"
    "IAM_Groups_Management"
    "IAM_MFA_Implementation"
    "IAM_Access_Key_Rotation"
    "IAM_Policy_Conditions"
    "IAM_Cross_Account_Access"
    "IAM_Permission_Boundaries"
    "IAM_Security_Best_Practices"
    "IAM_Audit_and_Monitoring"
)

# Create root directory
mkdir -p AWS_IAM_Projects
cd AWS_IAM_Projects

# Create README.md
echo "# AWS IAM Projects" > README.md
echo "This repository contains descriptions, resources, and interview questions for AWS IAM projects." >> README.md
echo "" >> README.md
echo "## Projects:" >> README.md

# Loop through AWS IAM projects and create description text files
for project in "${iam_projects[@]}"; do
    mkdir -p "$project"
    cd "$project"
    
    # Write description and folder architecture to text file
    echo "**Description for $project**" > description.md
    case "$project" in
        "IAM_Users_Management")
            echo "Aim: Manage IAM users using Terraform." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create IAM users." >> description.md
            echo "2. Assign permissions to IAM users." >> description.md
            echo "3. Set up IAM password policies." >> description.md
            ;;
        "IAM_Roles_and_Policies")
            echo "Aim: Implement IAM roles and policies." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create IAM roles." >> description.md
            echo "2. Attach policies to IAM roles." >> description.md
            echo "3. Assume roles to access AWS resources." >> description.md
            ;;
        "IAM_Groups_Management")
            echo "Aim: Manage IAM groups using Terraform." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create IAM groups." >> description.md
            echo "2. Add IAM users to groups." >> description.md
            echo "3. Assign permissions to groups." >> description.md
            ;;
        "IAM_MFA_Implementation")
            echo "Aim: Implement MFA for IAM users." >> description.md
            echo "Steps:" >> description.md
            echo "1. Enable MFA for IAM users." >> description.md
            echo "2. Configure MFA devices." >> description.md
            echo "3. Test MFA authentication." >> description.md
            ;;
        "IAM_Access_Key_Rotation")
            echo "Aim: Implement IAM access key rotation." >> description.md
            echo "Steps:" >> description.md
            echo "1. Enable access key rotation." >> description.md
            echo "2. Test key rotation." >> description.md
            echo "3. Monitor key usage." >> description.md
            ;;
        "IAM_Policy_Conditions")
            echo "Aim: Implement IAM policy conditions." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create IAM policies with conditions." >> description.md
            echo "2. Test policy conditions." >> description.md
            echo "3. Review and update policies." >> description.md
            ;;
        "IAM_Cross_Account_Access")
            echo "Aim: Implement IAM cross-account access." >> description.md
            echo "Steps:" >> description.md
            echo "1. Set up IAM roles in multiple accounts." >> description.md
            echo "2. Establish trust relationships." >> description.md
            echo "3. Test cross-account access." >> description.md
            ;;
        "IAM_Permission_Boundaries")
            echo "Aim: Implement IAM permission boundaries." >> description.md
            echo "Steps:" >> description.md
            echo "1. Set up permission boundaries." >> description.md
            echo "2. Assign to IAM users and roles." >> description.md
            echo "3. Test permission boundaries." >> description.md
            ;;
        "IAM_Security_Best_Practices")
            echo "Aim: Implement IAM security best practices." >> description.md
            echo "Steps:" >> description.md
            echo "1. Implement IAM password policies." >> description.md
            echo "2. Enable IAM policy conditions." >> description.md
            echo "3. Review and update IAM policies." >> description.md
            ;;
        "IAM_Audit_and_Monitoring")
            echo "Aim: Audit and monitor IAM activities." >> description.md
            echo "Steps:" >> description.md
            echo "1. Enable CloudTrail for IAM." >> description.md
            echo "2. Monitor IAM actions." >> description.md
            echo "3. Review IAM access logs." >> description.md
            ;;
    esac
    
    # Create interview.md
    echo "## Interview Questions for $project:" > interview.md
    # Add 20 scenario-based questions
    for i in {1..20}; do
        echo "- Scenario-based question $i" >> interview.md
    done
    # Add 20 basic questions
    for i in {1..20}; do
        echo "- Basic question $i" >> interview.md
    done
    
    # Create link in README.md
    echo "- [$project](https://github.com/$github_user/AWS_IAM_Projects/tree/main/$project)" >> ../README.md
    
    cd ..
done

echo "Description files, interview questions, and directories for AWS IAM projects created successfully!"
