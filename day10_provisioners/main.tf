resource "aws_key_pair" "dev-key" {
    key_name = "provisioner-impl"
    public_key = file("~/.ssh/id_rsa.pub")
  
}

resource "aws_instance" "provisioners" {
    # ami = "ami-0cc9838aa7ab1dce7" # this is ami image of amazon linux
    ami = "ami-0f58b397bc5c1f2e8" # this is ami image of ubuntu from ap-south-1 region
    instance_type = "t2.micro"
    key_name = aws_key_pair.dev-key.key_name
    subnet_id = "subnet-077e0fe4707902519"
    associate_public_ip_address = true
    tags = {
      Name = "ec2-provisioners"
    }

    connection {
      type = "ssh"
      user = "ubuntu"
    #   user = "ec2-user" # for amazon linux ami we will select ec2-user
      private_key = file("~/.ssh/id_rsa")
      host = self.public_ip
    }

    provisioner "local-exec" {
        command = "touch local-provisioner-file"
    }

    provisioner "file" {
        source = "file-provisioner"
        destination = "/home/ubuntu/file-provisioner"
        # destination = "/home/ec2-user/file-provisioner"  # for amazon linux ami we will select ec2-user  
    }

    provisioner "remote-exec" {
        inline = [ 
            "touch remote-provisioner",
            "echo hello from aws >> remote-provisioner"
         ]
      
    }
  
}