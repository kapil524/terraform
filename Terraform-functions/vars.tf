variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-1234"
    "ap-south-1" = "ami-5678"
    "us-west-2" = "ami-9101112"

  }
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "tags" {
  type = list
  default = ["dev-server","prod-server"]
} 