data "aws_ami" "amzlinux" {
    most_recent = true
    owners = ["amazon"]
    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*-gp2"]
    }

    filter {
      name = "root-device-type"
      values = ["ebs"]
    }

    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }

    filter {
      name = "architecture"
      values = ["*86_64"]
    }
}

resource "aws_instance" "datasource-ec2" {
    ami = data.aws_ami.amzlinux.id
    instance_type = "t2.micro"
    key_name = "custom-key"
    subnet_id = "subnet-077e0fe4707902519"

    tags = {
      Name = "data-block"
    }
}