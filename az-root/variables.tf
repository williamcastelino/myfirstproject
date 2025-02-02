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

variable "username" {
  description = "Username for validation of the repo"
  type        = string
}

variable "PAT_token" {
  description = "Pat token for secure access"
  type        = string
}

# variable "client_id" {
#   type        = string
#   description = "Client ID for the Service Principal"
# }

# variable "client_secret" {
#   type        = string
#   description = "Client Secret for the Service Principal"
# }

# variable "tenant_id" {
#   type        = string
#   description = "Tenant ID"
# }

# variable "subscription_id" {
#   type        = string
#   description = "Subscription ID"
# }

variable "AZURE_CLIENT_ID" {}
variable "AZURE_CLIENT_SECRET" {}
variable "AZURE_TENANT_ID" {}
variable "AZURE_SUBSCRIPTION_ID" {}
