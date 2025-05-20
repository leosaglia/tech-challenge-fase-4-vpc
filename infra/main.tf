provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "state-terraform-tech-fase-4"
    key    = "tech-challenge-fase-4-vpc/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}