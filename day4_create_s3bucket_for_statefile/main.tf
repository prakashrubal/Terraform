resource "aws_s3_bucket" "remote" {
    bucket = "state-remote-store-bucket"
}

resource "aws_s3_bucket_versioning" "version" {
    bucket = aws_s3_bucket.remote.id
    versioning_configuration {
      status = "Enabled"
    }
}