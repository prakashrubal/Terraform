variable "ami_id" {
    description = "we give the value of ami"
    type = string
    default = ""
  
}

variable "instance_type" {
    description = "we give the value of instance type - CPU and RAM"
    type = string
    default = ""
  
}

variable "key_name" {
    description = "we give the value of key"
    type = string
    default = ""
  
}

variable "bucket_name" {
  description = "bucket name"
  type = string
  default = "iamadefaultbucketnottobecreated"
}