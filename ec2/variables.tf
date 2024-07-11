variable "server_name" {
    description = "NAme of the web server"
    type = string
}

variable "subnet_cidr" {
    description = "Subnet CIDR BLOCK"
    type = string
  
}

variable "az" {
    description = "Availability Zone"
    type = string
  
}

variable "ami_ids" {
    type = map(any)
    description = "AMI IDS to Deploy"
    default = {
      linux = "ami-00402f0bdf4996822"
      windows = "ami-04a15db9ced4cf267"
    }
  
}

variable "disk" {
    description = "VOlumes for OS images"
    type = object({
      delete_on_termination = bool
      encrypted = bool
      volume_size = string
      volume_type = string
    })
  
}

variable "os_type" {
    description = "OS to deploy, Windows or LInux"
    type = string  
}

variable "instance_size" {
    description = "size of the VM/EC2 instance" 
    type = string
    default = "t2.micro"
}

variable "ec2_monitoring" {
    description = "COnfigure monitoring on EC2"
    type = bool
  
}

