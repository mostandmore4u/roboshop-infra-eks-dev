terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.52.0" # eks requires above 6.5 version
    }
  }

  # remote state storage location
  backend "s3" {
    bucket         = "remote-state-subbudevops-dev" #"remote-state-90s-dev"
    key            = "roboshop-eks.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true # Enables native S3 state locking (Terraform 1.10+)
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}