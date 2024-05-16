terraform {
  backend "s3" {
    bucket = "state-remote-store-bucket"
    key = "day5/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-statelock-dynamodb"
    encrypt = true
    
  }
}