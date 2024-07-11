server_name = "my_Web_server"
subnet_cidr = "10.0.1.0/24"
az = "us-east-1a"
os_type = "linux"
ec2_monitoring = true
disk = {
  delete_on_termination = true
  encrypted = true
  volume_size = "20"
  volume_type = "standard"

}