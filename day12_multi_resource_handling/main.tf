resource "aws_instance" "multi-resource-ec2" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "custom-key"
    subnet_id = "subnet-077e0fe4707902519"
    tags = {
      Name = "multi-resource-ec2-example"
    }
}

resource "aws_s3_bucket" "multi-resource-eg" {
    bucket = "multi-resource-handling-example"
  
}