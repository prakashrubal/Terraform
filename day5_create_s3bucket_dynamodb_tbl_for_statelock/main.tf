#This project is a one time job to create s3 bucket for state file and
#dynamodb table for state lock

# Create a bucket to store state file
resource "aws_s3_bucket" "remote-lock" {
    # Giving same bucket created in day4, folder structure used to maintain different day work/project
    bucket = "state-remote-store-bucket"
}

resource "aws_s3_bucket_versioning" "version" {
    bucket = aws_s3_bucket.remote-lock.id
    versioning_configuration {
      status = "Enabled"
    }
  
}

#Create a dynamo db table for statefile locking mechanism
resource "aws_dynamodb_table" "dynamodb_terraform_statelock" {
    name = "terraform-statelock-dynamodb"
    hash_key = "LockID"
    read_capacity = 20
    write_capacity = 20
    attribute {
      name = "LockID"
      type = "S"
    }
  
}