variable "ami-id" {
    default = ""
    type = string
  
}

variable "instance-type" {
    default = ""
    type = string
}

variable "key-name" {
    default = ""
    type = string
  
}

variable "subnet-id" {
    default = ""
    type = string
  
}

variable "sandboxes" {
    type = list(string)
    # default = [ "dev", "prod", "test"] #Step 1 create 3 instances using count function
    default = [ "dev", "test"]         #Step 2 delete/destroy any instnace in between like prod
    # If unable to understand, refer to your notes Day 12 terraform 21st May pag5
    # IN Step 1 [dev (i-035ed2ac7a2ab9520)  ,prod (i-08d2754aef3b112e5) , test (i-0595a0ec75e9aa5ca)]
    # IN Step 2 [dev (i-035ed2ac7a2ab9520) , test (i-08d2754aef3b112e5)]


  
}