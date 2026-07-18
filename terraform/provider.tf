terraform {
  # Pins the version of the AWS plugin downloaded behind the scenes
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  # Pins the required version of the Terraform CLI tool itself
  required_version = ">= 1.5"
}

# Deploy everything into Oregon "us-west-2"

provider "aws" {
  region = "us-west-2"
}