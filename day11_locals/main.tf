locals {
  bucket-name = "${var.layer}-${var.env}-bucket-terraform-locals"
}

resource "aws_s3_bucket" "locals-bucket-demo" {
    bucket = local.bucket-name
    tags = {
      Name = local.bucket-name
      Environment = var.env
    }
  
}