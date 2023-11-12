provider "aws" {
  region     = "us-east-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-ACCESS-KEY""
}

resource "aws_instance" "abc" {
    ami= "ami-0fc5d935ebf8bc3bc"
    instance_type = "t2.micro" 

    tags = {
      Name = "ec2-from-tarraform"
    }
}

