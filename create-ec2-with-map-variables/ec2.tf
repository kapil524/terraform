resource "aws_instance" "my-ec2" {
    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = var.type["ap-south-1"]
  
}