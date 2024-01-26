terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
}

provider "aws" {
    region = var.region
}

resource "aws_instance" "exampleInstance" {
    ami = var.ami
    instance_type = "t2.micro"

    tags = {
      Name = "Success"
    }
}