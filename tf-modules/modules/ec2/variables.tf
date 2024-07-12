variable "instance_size" {
    description = "Size of the EC2 instance"
    type = string
    default = "t2.micro"
  
}

variable "server_name" {
    description = "Name of the EC2 INSTANCE"
    type = string
  
}

variable "sg_ids" {
    description = "SG IDs for the EC2"
    type = list(string)
  
}

variable "subnet_id" {
    description = "Subnet ID for the EC2"
    type = string
  
}