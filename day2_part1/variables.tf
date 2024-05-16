variable "ami_id" {
    description = "we give the value of ami"
    type = string
    default = "ami-013e83f579886baeb"
  
}

variable "instance_type" {
    description = "we give the value of instance type - CPU and RAM"
    type = string
    default = "t2.micro"
  
}

variable "key_name" {
    description = "we give the value of key"
    type = string
    default = "custom-key"
  
}

variable "subnet_id" {
    description = "we give the value of subnet id here"
    type = string
    default = "subnet-068f499711005b222"
  
}
