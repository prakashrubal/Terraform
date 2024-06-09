data "aws_ami" "amzlinux2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn21-ami-hvmm-*-x86_64-ebs"]
  }
}
resource "aws_instance" "vault" {

  ami           = data.aws_ami.amzlinux2.id
  instance_type = "t3.micro"
  key_name      = "vault-key"
  #   vpc_security_group_ids      = var.sg
  subnet_id                   = "subnet-077e0fe4707902519"
  associate_public_ip_address = "true"
  #   user_data_file              = file("vault.sh")

  tags = {
    Name = "vault"
  }
}