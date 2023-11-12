provider "aws" {
  region     = "us-east-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-ACCESS-KEY"
}

resource "aws_eip" "myeip" {
  domain = "vpc"
}

resource "aws_security_group" "mysg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.myeip.public_ip}/32"]  
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]  
  }
  tags = {
    Name = "allow_tls"
  }
}