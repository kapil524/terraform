terraform {
  backend "s3" {
    bucket = "kcloud-bucket-01"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}
