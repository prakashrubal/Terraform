resource "aws_instance" "ec2" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "custom-key"
    availability_zone = "ap-south-1a"
    subnet_id = "subnet-077e0fe4707902519"
    tags = {
      Name = "s3-dependent-on-ec2"
    }
}

resource "aws_s3_bucket" "bucket_dependent" {
    bucket = "s3-bucket-dependent-on-ec2"
    depends_on = [ aws_instance.ec2 ]
  
}