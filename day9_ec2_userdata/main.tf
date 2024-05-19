resource "aws_instance" "ec2" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "custom-key"
    subnet_id = "subnet-077e0fe4707902519"
    associate_public_ip_address = true
    tags = {
      Name = "ec2-userdata-using-terraform"
    }
    user_data = file("test.sh")
}