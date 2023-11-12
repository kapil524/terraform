resource "aws_instance" "my-ec2" {
  instance_type = var.list[0]
  ami = "ami-0fc5d935ebf8bc3bc"
}