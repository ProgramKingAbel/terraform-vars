terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.57.0"
    }
  }
}

provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_vpc" "prod" {
    cidr_block = "10.0.0.0/16"
  
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.prod.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"

    tags = {
      Name = "Public Subnet"
    }
  
}

module "webserver" {
    source = "./modules/ec2"
    server_name = "prod-webserver"
    instance_size  = "t2.micro"
    subnet_id = aws_subnet.public_subnet.id
    sg_ids = [aws_vpc.prod.default_security_group_id]
  
}