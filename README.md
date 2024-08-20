# Multi-Tier Architecture Application on AWS using Terraform

## Project Objective

This project will assess your ability to deploy a multi-tier architecture application on AWS using Terraform. The deployment will involve using Terraform variables, outputs, and change sets. The multi-tier architecture will include:

- **EC2 Instance:** A t2.micro instance serving as the application server.
- **RDS MySQL DB Instance:** A t3.micro instance for the database backend.
- **S3 Bucket:** For storing static assets or configuration files.

## Project Overview

You are required to write Terraform configuration files to automate the deployment of a multi-tier application on AWS. The architecture should consist of:

- **EC2 Instance:** A t2.micro instance with a public IP, allowing HTTP and SSH access.
- **RDS MySQL DB Instance:** A t3.micro instance with a publicly accessible endpoint.
- **S3 Bucket:** For storing static assets, configuration files, or backups.

## Specifications

### EC2 Instance

- **Instance Type:** t2.micro
- **Access:** HTTP and SSH
- **Parameters:** Use Terraform variables for parameters like AMI ID and instance type.

### RDS MySQL DB Instance

- **Instance Class:** db.t3.small
- **Access:** Publicly accessible endpoint
- **Parameters:** Use Terraform variables for DB parameters like DB name, username, and password.
- **Configuration:** Create within the same VPC, publicly accessible. Configure security groups to allow access from the EC2 instance.

### S3 Bucket

- **Purpose:** Storing static files, configurations, or backups
- **Access:** Assign the appropriate IAM role and policy to the EC2 instance for access to the S3 bucket.

## Terraform Configuration

### Setup Terraform Configuration

- **Provider Configuration:** Configure the AWS provider to specify the region for deployment. Ensure the region is parameterized using a Terraform variable.

### VPC and Security Groups

- **VPC:** Create a VPC with a public subnet for the EC2 instance.
- **Security Groups:** Define Security Groups allowing HTTP and SSH access to the EC2 instance, and MySQL access to the RDS instance.

### EC2 Instance

- **Instance Type:** t2.micro
- **Configuration:** Allow SSH and HTTP access
- **Parameters:** Define instance parameters like AMI ID and instance type using Terraform variables.

### RDS MySQL DB Instance

- **Instance Type:** db.t3.small
- **Configuration:** Create within the same VPC, publicly accessible
- **Parameters:** Define DB parameters like DB name, username, and password using Terraform variables. Configure security groups to allow access from the EC2 instance.

### S3 Bucket

- **Create an S3 bucket** for storing static files or configurations.
- **Access:** Assign the appropriate IAM role and policy to the EC2 instance for access to the S3 bucket.

### Outputs

Define Terraform outputs to display:

- **EC2 instance’s public IP address**
- **RDS instance’s endpoint**
- **S3 bucket name**

## Apply and Manage Infrastructure

### Initial Deployment

- **Initialize the configuration:**
    ```bash
    terraform init
    ```
- **Validate the configuration:**
    ```bash
    terraform validate
    ```

- **Review the infrastructure changes:**
    ```bash
    terraform plan
    ```

- **Deploy the infrastructure:**
    ```bash
    terraform apply -auto-approve
    ```

- **Destroy the infrastructure:**
    ```bash
    terraform destroy
    ```

Ensure the application server, database, and S3 bucket are set up correctly.

### Change Sets

- **Modify the Terraform configuration**, such as changing an EC2 instance tag or an S3 bucket policy.

- **Generate a change set:**
    ```bash
    terraform plan
    ```

- **Apply the change set:**
    ```bash
    terraform apply
    ```

Observe how Terraform updates the infrastructure without disrupting existing resources.

## Testing and Validation

Validate the setup by:

- **Accessing the EC2 instance** via SSH and HTTP.
- **Connecting to the MySQL DB instance** from the EC2 instance.
- **Verifying that the EC2 instance** can read and write to the S3 bucket.
- **Checking Terraform outputs** to ensure they correctly display the relevant information.

## Resource Termination

Once the deployment is complete and validated, tear down all resources created by Terraform:

```bash
terraform destroy
```

![image](https://github.com/user-attachments/assets/2c76e7d9-9ea5-490a-8a74-91a5eefbe64c)
![image](https://github.com/user-attachments/assets/1e1c7222-54f3-44d7-80be-330f93ed88c9)
![image](https://github.com/user-attachments/assets/17b67d61-7f9c-4bfd-a3d3-a3e84cdde778)
![image](https://github.com/user-attachments/assets/ea574d83-1393-4cf2-bc79-43883018865f)
![image](https://github.com/user-attachments/assets/b1908a3c-cb17-47b1-b001-dbc0811aee64)
![image](https://github.com/user-attachments/assets/3e49e964-3d61-426c-8ac2-df1246f3f211)
![image](https://github.com/user-attachments/assets/970820be-817f-4c2a-9b4a-30ca68f61223)
![image](https://github.com/user-attachments/assets/e3a3bd92-cbc4-4f59-a003-a9eb579a8b5b)
![image](https://github.com/user-attachments/assets/1dcd3029-c4d1-410d-af16-a55609124a90)
![image](https://github.com/user-attachments/assets/a6d8eee7-9924-4739-b49f-a84ffec4c01a)
![image](https://github.com/user-attachments/assets/1eddea25-a794-42f0-9a4a-aca867d0eac7)











