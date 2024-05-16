resource "aws_instance" "dev" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  key_name      = "custom-key"
  subnet_id     = "subnet-068f499711005b222"
  tags = {
    Name = "cust-ec2"
  }



}

terraform {

  backend "s3" {
    bucket = "state-remote-store-bucket"
    key    = "day4/terraform.tfstate"
    region = "ap-south-1"
  }
}