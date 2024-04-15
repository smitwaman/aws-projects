#!/bin/bash

# GitHub user
github_user="smitwaman"

# AWS S3 DevOps Projects
s3_projects=(
    "S3_Bucket_Creation"
    "S3_Bucket_Policies"
    "S3_Object_Management"
    "S3_Cross_Region_Replication"
    "S3_Data_Encryption"
    "S3_Event_Notifications"
    "S3_Access_Logs_and_Monitoring"
    "S3_Versioning_and_Backup"
    "S3_Pre_signed_URLs"
    "S3_Static_Website_Hosting"
)

# Create root directory
mkdir -p AWS_S3_DevOps_Projects
cd AWS_S3_DevOps_Projects

# Create README.md
echo "# AWS S3 DevOps Projects" > README.md
echo "This repository contains descriptions, resources, and interview questions for AWS S3 DevOps projects." >> README.md
echo "" >> README.md
echo "## Projects:" >> README.md

# Loop through AWS S3 DevOps projects and create description text files
for project in "${s3_projects[@]}"; do
    mkdir -p "$project"
    cd "$project"
    
    # Write description and folder architecture to text file
    echo "**Description for $project**" > description.md
    # Write description based on project
    case "$project" in
        "S3_Bucket_Creation")
            echo "Aim: Create an S3 bucket using Terraform." >> description.md
            echo "Steps:" >> description.md
            echo "1. Define bucket properties." >> description.md
            echo "2. Set bucket permissions." >> description.md
            echo "3. Enable versioning." >> description.md
            ;;
        "S3_Bucket_Policies")
            echo "Aim: Implement S3 bucket policies." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create bucket policy." >> description.md
            echo "2. Test policy permissions." >> description.md
            echo "3. Review and update policies." >> description.md
            ;;
        "S3_Object_Management")
            echo "Aim: Manage S3 objects using Terraform." >> description.md
            echo "Steps:" >> description.md
            echo "1. Upload objects to S3." >> description.md
            echo "2. Set object permissions." >> description.md
            echo "3. Implement object lifecycle policies." >> description.md
            ;;
        "S3_Cross_Region_Replication")
            echo "Aim: Implement S3 cross-region replication." >> description.md
            echo "Steps:" >> description.md
            echo "1. Configure source and destination buckets." >> description.md
            echo "2. Test replication." >> description.md
            echo "3. Monitor replication status." >> description.md
            ;;
        "S3_Data_Encryption")
            echo "Aim: Implement S3 data encryption." >> description.md
            echo "Steps:" >> description.md
            echo "1. Enable server-side encryption." >> description.md
            echo "2. Configure KMS encryption." >> description.md
            echo "3. Test encryption and decryption." >> description.md
            ;;
        "S3_Event_Notifications")
            echo "Aim: Configure S3 event notifications." >> description.md
            echo "Steps:" >> description.md
            echo "1. Set up event types." >> description.md
            echo "2. Configure SNS or SQS notifications." >> description.md
            echo "3. Test event triggers." >> description.md
            ;;
        "S3_Access_Logs_and_Monitoring")
            echo "Aim: Enable S3 access logs and monitoring." >> description.md
            echo "Steps:" >> description.md
            echo "1. Enable access logging." >> description.md
            echo "2. Set up monitoring alerts." >> description.md
            echo "3. Review access logs." >> description.md
            ;;
        "S3_Versioning_and_Backup")
            echo "Aim: Implement S3 versioning and backups." >> description.md
            echo "Steps:" >> description.md
            echo "1. Enable versioning." >> description.md
            echo "2. Schedule backups." >> description.md
            echo "3. Test versioning and restore." >> description.md
            ;;
        "S3_Pre_signed_URLs")
            echo "Aim: Generate S3 pre-signed URLs." >> description.md
            echo "Steps:" >> description.md
            echo "1. Create pre-signed URLs." >> description.md
            echo "2. Test URL access." >> description.md
            echo "3. Manage URL expiration." >> description.md
            ;;
        "S3_Static_Website_Hosting")
            echo "Aim: Host a static website on S3." >> description.md
            echo "Steps:" >> description.md
            echo "1. Configure S3 bucket for website hosting." >> description.md
            echo "2. Upload website content." >> description.md
            echo "3. Test website access." >> description.md
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
    echo "- [$project](https://github.com/$github_user/AWS_S3_DevOps_Projects/tree/main/$project)" >> ../README.md
    
    cd ..
done

echo "Description files, interview questions, and directories for AWS S3 DevOps projects created successfully!"
