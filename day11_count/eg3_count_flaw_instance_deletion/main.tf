resource "aws_instance" "dev" {
    ami = var.ami-id
    instance_type = var.instance-type
    key_name = var.key-name
    subnet_id = var.subnet-id
    # count = 2
    count = length(var.sandboxes)
    tags = {
        # this is example with list variable
      Name = var.sandboxes[count.index]
    }
  
}