variable "ami_id" {
    description = "we give the value of ami"
    type = string
    default = "ami-0cc9838aa7ab1dce7"
  
}

variable "instance_type" {
    description = "we give the value of instance type - CPU and RAM"
    type = string
    default = "t2.micro"
  
}

#For AWS account 1
#variable "key_name" {
#    description = "we give the value of key"
#    type = string
#    default = "custom-key"
#  
#}

#For AWS account 2
variable "key_name" {
    description = "we give the value of key"
    type = string
    default = "key-profile2"
  
}

#For AWS account 1
variable "subnet_id" {
    description = "we give the value of subnet id here"
    type = string
    default = "subnet-068f499711005b222"
}

#For AWS account 2 nothing is required for subnet it will take default
