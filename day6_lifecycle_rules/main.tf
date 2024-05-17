resource "aws_instance" "ec2-instance" {
  ami           = "ami-013e83f579886baeb"
  instance_type = "t2.micro"
  key_name      = "custom-key"
  # subnet_id     = "subnet-068f499711005b222" # you can give sunet in az or directly az, giving az here
  # availability_zone = "ap-south-1b"
  availability_zone = "ap-south-1a"
  subnet_id         = "subnet-077e0fe4707902519"

  tags = {
    Name = "ec2-lifecycle"
  }


  #three types of lifecycle rules 
  #create_before_destroy
  #prevent_destroy
  #ignore_changes

  lifecycle {
    create_before_destroy = true #this attribute will create the new object first and then destroy the old one
    # prevent_destroy = true          #Terraform will throw error when it attempts to destroy a resource when this is set to true:
    ignore_changes = [tags] #This means that Terraform will never update the attribute which is given in array
    # the object but will be able to create or destroy it.
  }
}
