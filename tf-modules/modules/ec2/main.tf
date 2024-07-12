terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.57.0"
    }
  }
}

resource "aws_instance" "server" {
    ami = "ami-00402f0bdf4996822"
    instance_type = var.instance_size
    monitoring = false
    vpc_security_group_ids = var.sg_ids
    subnet_id = var.subnet_id

    root_block_device {
      delete_on_termination = false
      encrypted = true
      volume_size = 20
      volume_type = "standard"
    }

    tags = {
      Name = "${var.server_name}-prod"
    }
  
}