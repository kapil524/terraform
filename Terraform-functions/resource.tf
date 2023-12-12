resource "aws_key_pair" "my-key-pair" {
  key_name = "login-key"
  public_key =  file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "my-ec2" {
  ami = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  key_name = aws_key_pair.my-key-pair.key_name
  count = 2

  tags = {
    Name = element(var.tags , count.index)
  }
}

output "timestamp" {
  value = local.time
}
