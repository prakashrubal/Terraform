resource "aws_instance" "dev" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.subnet_id
    tags = {
      Name = "custom-ec2-terra"
    }
}

resource "aws_s3_bucket" "dev_bucket" {
    bucket = var.bucket_name
}