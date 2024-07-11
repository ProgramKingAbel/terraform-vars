output "private_ip" {
    description = "Private Ip address of the instance"
    value = aws_instance.web_server.private_ip
  
}