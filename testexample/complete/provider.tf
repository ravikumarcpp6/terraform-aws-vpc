terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.47.0" # aws provider version, not terraform version
    }
  }
   backend "s3" {
    bucket = "robopractice-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "robopractice-locking"
  }
}

provider "aws" {
 region = "us-east-1"
}

