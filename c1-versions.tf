# Terraform Block
terraform {
  required_version = "~> 0.14.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.0.0"
    }
  }
}

# Provider Block
# Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Provider-2 for us-west-1
provider "aws" {
  region = "us-west-1"
  profile = "default"
  alias = "aws-west-1"
}


