resource "aws_instance" "dev" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  key_name      = "custom-key"
  subnet_id     = "subnet-068f499711005b222"
  associate_public_ip_address = true
  tags = {
    Name = "custom-ec2"
  }
}