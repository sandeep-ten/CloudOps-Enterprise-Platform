terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket = var.bucket_name
}

resource "aws_instance" "cloudops_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.cloudops_sg.id
  ]

  tags = {
    Name = "CloudOps-Terraform-EC2"
  }
}