resource "aws_instance" "dev" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
# For aws account 1 subnet is needed
#    subnet_id = var.subnet_id
# For aws account 2 subnet is not needed, hence commented
    tags = {
      Name = "custom-ec2-terra"
    }
}

resource "aws_s3_bucket" "dev_bucket" {
    bucket = "github-event-webhook-mybucket-28thmay24"
}
# adding comment to test if github webhook trigger for SCM Polling (event based trigger) works for comment or not
# Yes even adding a comment here trigger the pipeline in jenkins
