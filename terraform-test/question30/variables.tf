variable "name" {
  description = "The username assigned to the infrastructure"
  default     = "data_processing"
}
variable "team" {
  description = "The team responsible for the infrastructure"
  default     = "AIS Team"
}
locals {
  name  = (var.name != "" ? var.name : random_id.id.hex)
  owner = var.team
  common_tags = {
    Owner = local.owner
    Name  = local.name
  }
}