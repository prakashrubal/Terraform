
# resource "aws_security_group" "dev" {
#     tags = {
#       Name = "custom1-sg"
#     }
#     ingress = [
#         for port in [22, 80, 443, 8080, 9000, 3000, 8082, 8081] : {
#             description = "inbound rules"
#             from_
#         }
#     ]
#     egress {
#         from_port = 0
#         to_port =  0
#         protocol = -1
#         cidr_blocks = ["0.0.0.0/0"]
#     }
# }


# resource "aws_security_group" "test" {
#     ingress = [
#         for port in [22, 80] : {
            
#         }
#     ]
    
#     egress = 
# }

resource "aws_instance" "multi-resource-ec2" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "custom-key"
    subnet_id = "subnet-077e0fe4707902519"
    tags = {
      Name = "multi-sgrule-forloop"
    }
}