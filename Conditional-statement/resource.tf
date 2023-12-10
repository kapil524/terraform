resource "aws_instance" "dev" {
  ami = "ami-02a2af70a66af6dfb"
  instance_type = "t2.micro"
  count = var.is_test == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami = "ami-02a2af70a66af6dfb"
  instance_type = "t3.medium"
  count = var.is_test == false ? 1 : 0
}