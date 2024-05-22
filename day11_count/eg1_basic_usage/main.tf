resource "aws_instance" "dev" {
    ami = var.ami-id
    instance_type = var.instance-type
    key_name = var.key-name
    subnet_id = var.subnet-id
    count = 2
    tags = {
      Name = "ec2-count"
    }
  
}