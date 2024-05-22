resource "aws_instance" "dev" {
    ami = var.ami-id
    instance_type = var.instance-type
    key_name = var.key-name
    subnet_id = var.subnet-id
    # for count we are using length function but for-each we are using toset function
    # count = length(var.sandboxes)
    for_each = toset(var.sandboxes) #If you put length(var.sandboxes) you will get error in plan saying Ivalid for_each argument
    tags = {
      # Name = var.sandboxes[count.index]
      Name = each.value
    }
  
}