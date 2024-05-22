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
    # default = [ "dev", "prod", "test"]   #Step 1 create 3 instances using foreach function
    default = [ "dev", "test"] #Step 2 delete/destroy any instanace in between like prod
    # If unable to understand, refer to your notes Day 13 terraform 22nd May page1
    # IN Step 1 [dev (i-0008f491f8a769a02), prod (i-09e42b7596df5a4ee), test (i-07e7c2e1ab82b913d)]
    # IN Step 2 [dev (i-0008f491f8a769a02), test (i-07e7c2e1ab82b913d)]
    
}