resource "aws_instance" "my-ec2" {
  ami = lookup(var.ami,var.region)
  instance_type = "t2.micro"
  key_name = aws_key_pair.loginkey.key_name
  count = 2

  tags = {
   Name = element(var.tags, count.index)

  }
}

resource "aws_key_pair" "loginkey" {
   key_name = "login-name"


}