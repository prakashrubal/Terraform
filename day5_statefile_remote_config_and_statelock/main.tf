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

# created 4 copies of above instance to test terraform state lock

resource "aws_instance" "dev1" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  key_name      = "custom-key"
  subnet_id     = "subnet-068f499711005b222"
  associate_public_ip_address = true
  tags = {
    Name = "test1-ec2"
  }
}

resource "aws_instance" "dev2" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  key_name      = "custom-key"
  subnet_id     = "subnet-068f499711005b222"
  associate_public_ip_address = true
  tags = {
    Name = "test2-ec2"
  }
}

resource "aws_instance" "dev3" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  key_name      = "custom-key"
  subnet_id     = "subnet-068f499711005b222"
  associate_public_ip_address = true
  tags = {
    Name = "test3-ec2"
  }
}

resource "aws_instance" "dev4" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  key_name      = "custom-key"
  subnet_id     = "subnet-068f499711005b222"
  associate_public_ip_address = true
  tags = {
    Name = "test4-ec2"
  }
}