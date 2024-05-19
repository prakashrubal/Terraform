resource "aws_instance" "dev" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    # subnet_id = var.subnet_id
    subnet_id = "subnet-068f499711005b222" 
    tags = {
      Name = var.tag_name
    }
}


resource "aws_s3_bucket" "hard-coded_bucket" {
  bucket = "hard-coded-bucket-in-module-template"
  
}