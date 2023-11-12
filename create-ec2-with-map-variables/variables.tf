variable "type" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.medium"
    ap-south-1 = "t2.large"
  }
}