resource "aws_instance" "my-ec2-1" {
  instance_type = "t2.micro"
  ami = "ami-02a2af70a66af6dfb"
  tags = local.common_tags
}


resource "aws_instance" "my-ec2-2" {
  instance_type = "t2.micro"
  ami = "ami-02a2af70a66af6dfb"
  tags = local.common_tags
}
