provider "aws" {
  region     = "us-east-1"
  access_key = "AKIARKRBNBJNG3VTIGJN"
  secret_key = "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"
}
resource "aws_eip" "my-eip" {
   domain   = "vpc"
}
output "eip_output" {
  value= "public ip of EIP is = ${aws_eip.my-eip.public_ip}"
}