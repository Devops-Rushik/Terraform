# Terraform
Terraform is an Infrastructure as Code (IaC) tool that allows you to define, provision, and manage cloud and on-prem infrastructure using code. It uses declarative configuration
files to describe your desired infrastructure, enabling repeatable, consistent, and version-controlled management of resources like servers, storage, and networks across various
platforms. Below are the various reasons to use Terraform over other IaC tools.

  Multi-cloud Support
  Declarative Syntax
  State Management
  Community Support
  Integration with Other Tools
  HCL Language

# Key Terminology

# Provider
A provider is a plugin for Terraform that defines and manages resources for a specific cloud or infrastructure platform. Examples of providers include AWS, Azure, Google Cloud
and many others. You configure providers in your Terraform code to interact with the desired infrastructure platform.

# Resource:
A resource is a specific infrastructure component that you want to create and manage using Terraform. Resources can include virtual machines, databases, storage buckets, 
network components, and more. Each resource has a type and configuration parameters that you define in your Terraform code.

# Module: 
A module is a reusable and encapsulated unit of Terraform code. Modules allow you to package infrastructure configurations, making it easier to maintain, share, and reuse them
across different parts of your infrastructure. Modules can be your own creations or come from the Terraform Registry, which hosts community-contributed modules.

# Configuration File: 
Terraform uses configuration files (often with a .tf extension) to define the desired infrastructure state. These files specify providers, resources, variables, and other 
settings. The primary configuration file is usually named main.tf, but you can use multiple configuration files as well.

# State File: 
Terraform maintains a state file (often named terraform.tfstate) that keeps track of the current state of your infrastructure. This file is crucial for Terraform to understand
what resources have been created and what changes need to be made during updates.

# Plan: 
A Terraform plan is a preview of changes that Terraform will make to your infrastructure. When you run terraform plan, Terraform analyzes your configuration and current state,
then generates a plan detailing what actions it will take during the apply step.

# Apply: 
The terraform apply command is used to execute the changes specified in the plan. It creates, updates, or destroys resources based on the Terraform configuration.

# Workspace: 
Workspaces in Terraform are a way to manage multiple environments (e.g., development, staging, production) with separate configurations and state files. Workspaces help keep 
infrastructure configurations isolated and organized.

# Remote Backend: 
A remote backend is a storage location for your Terraform state files that is not stored locally. Popular choices for remote backends include Amazon S3, Azure Blob Storage, 
or HashiCorp Terraform Cloud. Remote backends enhance collaboration and provide better security and reliability for your state files.

# Setup Terraform for AWS
To configure AWS credentials and set up Terraform to work with AWS, you'll need to follow these steps:

## Install AWS CLI (Command Line Interface):
Make sure you have the AWS CLI installed on your machine. You can download and install it from the AWS CLI download page.

## Create an AWS IAM User:
To interact with AWS programmatically, you should create an IAM (Identity and Access Management) user with appropriate permissions. Here's how to create one:

a. Log in to the AWS Management Console with an account that has administrative privileges.
b. Navigate to the IAM service.
c. Click on "Users" in the left navigation pane and then click "Add user."

Choose a username, select "Programmatic access" as the access type, and click "Next: Permissions."
Attach policies to this user based on your requirements. At a minimum, you should attach the "AmazonEC2FullAccess" policy for basic EC2 operations. If you need access to 
other AWS services, attach the relevant policies accordingly.

Review the user's configuration and create the user. Be sure to save the Access Key ID and Secret Access Key that are displayed after user creation; you'll need these for 
Terraform.

## Configure AWS CLI Credentials:
Use the AWS CLI to configure your credentials. Open a terminal and run:        aws configure

It will prompt you to enter your AWS Access Key ID, Secret Access Key, default region, and default output format. Enter the credentials you obtained in the previous step.
