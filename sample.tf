terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example2" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.large"
}
