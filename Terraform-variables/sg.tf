provider "aws" {
  region = "us-east-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-ACCESS-KEY"
}
resource "aws_security_group" "my-sg" {
  name        = "my-sg"
  description = "Allow port 22 and 80 in the  inbound traffic"
  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }
  tags = {
    Name = "my-sg"
  }
}