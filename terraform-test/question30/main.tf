resource "aws_instance" "dev" {
  ami           = "ami-0e1d06225679bc1c5"
  instance_type = "t2.micro"
  key_name      = "key-profile2"
  subnet_id     = "subnet-0aebd98cba896d91a"

  tags = {
    Name = var.name
  }
}

resource "random_id" "id" {
  byte_length = 8
}
