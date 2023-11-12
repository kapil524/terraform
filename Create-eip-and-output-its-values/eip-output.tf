provider "aws" {
  region     = "us-east-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-ACCESS-KEY"
}
resource "aws_eip" "my-eip" {
   domain   = "vpc"
}
output "eip_output" {
  value= "public ip of EIP is = ${aws_eip.my-eip.public_ip}"
}