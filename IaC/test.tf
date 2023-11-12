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
  region  = "eu-west-1"
}


resource "aws_instance" "example-ec2" {
  ami           = "ami-0694d931cee176e7d"
  instance_type = "t2.micro"
}