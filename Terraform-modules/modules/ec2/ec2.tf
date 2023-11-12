resource "aws_instance" "abc" {
    ami= "ami-0fc5d935ebf8bc3bc"
    instance_type = var.instance_type

    tags = {
      Name = "ec2-from-tarraform"
    }
}