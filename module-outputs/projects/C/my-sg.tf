module "sgmodule" {
  source = "../../modules/sg"
}

resource "aws_instance" "web" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t3.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]
}

output "sg_id_output" {
  value = module.sgmodule.sg_id
}
