terraform {
  required_version = "1.6.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-bucket-test" {
  bucket = "my-tf-test-bucket-lara"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Lara Costa"
    UpdatedAt   = "20-12-2023"
  }
}