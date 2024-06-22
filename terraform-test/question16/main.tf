resource "aws_instance" "remove-resource-from-state" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "custom-key"
    subnet_id = "subnet-077e0fe4707902519"
    tags = {
      Name = "multi-resource-ec2-example"
    }
}