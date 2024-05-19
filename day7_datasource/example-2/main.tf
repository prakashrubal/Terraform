data "aws_subnet" "selected" {
    filter {
      name = "tag:Name"
      values = ["default-subnet-1a"]
    }
}

resource "aws_instance" "data-source-eg2" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "custom-key"
    subnet_id = data.aws_subnet.selected.id
    tags = {
      Name = "data-source-2"
    }
  
}