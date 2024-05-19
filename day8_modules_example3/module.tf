module "third-module" {
    source = "../day8_modules_template"
    ami_id = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    
    # If I comment a variable, and if this variable is not necessary to create an ec2 instance, 
    # then it will take the value from module_template (which is empty string in this case)

    # key_name = "custom-key"
    subnet_id = "subnet-077e0fe4707902519" #this subnet is in ap-south-1a but in modules_template we have set ap-south-1b
    # If there is a hard coded value in module_template file, it it will take that, 
    # no matter even if you provide it in your modules as here above
    tag_name = "module-eg2"
  
}