terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38" # eks module requires more than 5.38
    }
  }

  backend "s3" {
    bucket         = "daws76s-state-dev"
    key            = "eks"
    region         = "us-east-1"
    dynamodb_table = "daws76s-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}