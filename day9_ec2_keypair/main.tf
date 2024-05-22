resource "aws_key_pair" "name" {
    key_name = "public-key"
    # public_key = file("C:/Users/raushan prakash/.ssh/id_rsa.pub")
    public_key = file("~/.ssh/id_rsa.pub")

}

resource "aws_instance" "instance-using-keypair" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    subnet_id = "subnet-077e0fe4707902519"
    key_name = aws_key_pair.name.key_name
    tags = {
      Name = "aws-keypair-creation"
    }
  
}