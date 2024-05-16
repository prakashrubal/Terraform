# Custom network creation

# Step1 Create VPC 
resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "cust-vpc"
  }
}

# Step2 create subnet
resource "aws_subnet" "dev" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-south-1a"
}

# Step3 Create Internet Gateway and attach to VPC
resource "aws_internet_gateway" "dev" {
    vpc_id = aws_vpc.dev.id
    tags = {
      Name = "cust-ig"
    }
}

# Step 4 Create Route Table and route the internet from IG to RT
resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.dev.id
    }
}

# Step 5 Route the traffic from RT to subnet 
resource "aws_route_table_association" "dev" {
    route_table_id = aws_route_table.dev.id
    subnet_id = aws_subnet.dev.id

}

# Step 6 Create Security Group and assign inbound rules
resource "aws_security_group" "dev" {
    vpc_id = aws_vpc.dev.id
    tags = {
      Name = "cust-sg"
    }
    ingress {
        description = "TLS frpm VPC"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port =  0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}

# Step 6 create ec2 instance in the subnet 
resource "aws_instance" "dev" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.dev.id
    tags = {
      Name = "ec2-test"
    }
}