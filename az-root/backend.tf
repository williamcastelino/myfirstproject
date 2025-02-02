terraform {
  backend "azurerm" {
    resource_group_name  = "new-sa-rg"
    storage_account_name = "newstatesa"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}
