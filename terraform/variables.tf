variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default     = "us-west-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
}

variable "ec2_instance_type" {
  description = "The type of EC2 instance"
  default     = "t2.micro"
}

variable "rds_instance_type" {
  description = "The type of RDS instance"
  default     = "db.t3.small"
}

variable "db_name" {
  description = "The name of the MySQL database"
}

variable "db_username" {
  description = "The username for the MySQL database"
}

variable "db_password" {
  description = "The password for the MySQL database"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
}
