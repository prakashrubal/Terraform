module "first-module" {
    source = "../day8_modules_template"
    ami_id = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "custom-key"
    subnet_id = "subnet-077e0fe4707902519"
  
}