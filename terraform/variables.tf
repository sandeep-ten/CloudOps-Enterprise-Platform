variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t2.micro"
}

variable "bucket_name" {
  description = "S3 Bucket Name"
  default     = "cloudops-terraform-demo-708424747366"
}