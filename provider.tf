
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }

  }
}


provider "aws" {
  region  = "us-west-1"
  profile = "default"
}

