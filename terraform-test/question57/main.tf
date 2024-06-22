resource "aws_instance" "example_server" {

  ami                         = "ami-00fa32593b478ad6e"
  instance_type               = "t2.micro"
  key_name                    = "key-profile2"
  # subnet_id                   = "subnet-077e0fe4707902519"
  associate_public_ip_address = "true"

  tags = {
    Name = "example-null-resource"
  }
}

resource "null_resource" "example" {
  # This will trigger whenever the "aws_instance" named "example_server" is created or updated.
  triggers = {
    instance_id = aws_instance.example_server.id
  }

  # This provisioner will execute a local shell command after the resource is created or updated.
  provisioner "local-exec" {
    command = "echo Resource created with ID: ${aws_instance.example_server.id}"
  }
}