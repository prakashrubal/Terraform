module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "custom-key"
#   monitoring             = true
#   vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-077e0fe4707902519"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
}