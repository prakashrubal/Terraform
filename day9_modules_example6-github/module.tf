module "sixth-module-example6" {
    source = "github.com/CloudTechDevOps/Terraform-10-30am/day-3-custom-NW"
    ami_id = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    keyname = "custom-key"
# If you run terraform plan, you will find : Plan: 7 to add, 0 to change, 0 to destroy.
# Why 7 to add we gave only only ec2 instance details here, the reason is whatever hardcoded values are there in template
#all resources are created because template only runs
}