resource "aws_instance" "dev" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    # subnet_id = var.subnet_id
    subnet_id = "subnet-068f499711005b222" #this is subnet in ap-south-1b-> uncomment this to test example3 -> day8_modules-example3 
    # If there is a hard coded value in module_template file like here commented, it it will take that, 
    # no matter even if you provide it from your modules block from example3
    tags = {
      Name = var.tag_name
    }
}