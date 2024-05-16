output "public_ip"{
    value = aws_instance.dev.public_ip
    description = "calling public ip of ec2 instance"
}

output "private_ip"{
    value = aws_instance.dev.private_ip
    description = "calling private ip of ec2 instance"
}