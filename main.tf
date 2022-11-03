module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_id                 = var.vpc_id
  key_name               = "user1"
  monitoring             = true


  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}