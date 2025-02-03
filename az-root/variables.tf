variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to create resources in"
  type        = string
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
}
