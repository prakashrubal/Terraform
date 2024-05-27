resource "aws_instance" "ec2-instance" {
    ami = "ami-013e83f579886baeb"
    instance_type = "t2.micro"
    key_name = "custom-key"
    # security_groups = sg-0f6e66584ba81adcc
    subnet_id = "subnet-0cd4c988e67cd3c84"
    # vpc_security_group_ids = vpc-0cf1e502f6fc45f91

    tags = {
      Name = "myec2"
    }
}

resource "aws_s3_bucket" "name" {
  bucket = "htghgdfhtrhytjytdhsgdfgaegstrhgf-bucket"
}
