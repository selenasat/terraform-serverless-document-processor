# Use AWS

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.5"
}

#Deploy everything into Oregon "us-west-2"

provider "aws" {
  region = "us-west-2"
}