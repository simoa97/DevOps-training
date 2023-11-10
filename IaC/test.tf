terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 4.16"

    }

  }

  required_version = ">= 1.2.0"

}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}


resource "aws_instance" "example-ec2" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.nano"
}