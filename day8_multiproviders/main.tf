resource "aws_s3_bucket" "multi-provider-1" {
    bucket = "day8-multiprovider-mum"
  
}

resource "aws_s3_bucket" "multi-provider-2" {
    bucket = "day8-multiprovider-us"
    provider = aws.usa
}