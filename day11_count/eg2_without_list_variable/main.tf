resource "aws_instance" "dev" {
    ami = var.ami-id
    instance_type = var.instance-type
    key_name = var.key-name
    subnet_id = var.subnet-id
    count = 2
    # Since the count is 2 above, it will create 2 instances in remote- with name test-0 and test-1
    tags = {
      Name = "test-${count.index}"
    }
  
}