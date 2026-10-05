provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-07f9c6534b9c70941"
  instance_type = "t3.small"
  key_name      = "allPurposeInstanceKey"

  tags = {
    Name = "DevOps-Lab-Server"
  }
}

output "public_ip" {
  value = aws_instance.devops_server.public_ip
}
