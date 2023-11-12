resource "aws_security_group" "mysg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  
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
resource "aws_instance" "my-ec2" {
  ami = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name = "new-keys"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("./new-keys.pem")
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install apache2 -y",
    ]
  }
}

