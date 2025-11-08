# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  
  region  = "ap-south-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0305d3d91b9f22e84" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t3.micro"

  tags = {
    Name = "terra_cloud_vm"
  }
}
