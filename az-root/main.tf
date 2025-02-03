module "network" {
  source                  = "git::https://dev.azure.com/williamcastelino99/TestProject/_git/az-network?ref=main"
  resource_group_name     = var.resource_group_name
  location                = var.location
  vnet_name               = "aks-vnet"
  vnet_address_space      = ["10.1.0.0/16"]
  subnet_name             = "aks-subnet"
  subnet_address_prefixes = ["10.1.0.0/24"]
}

# module "aks" {
#   depends_on          = [module.keyvault]
#   source              = "git::https://williamcastelino99@gmail.com:34ThBibtDkfXOvIvNnccyGBNvWuRSWi0LNP27jbwpw5ko2wd9nheJQQJ99BAACAAAAAAAAAAAAASAZDOa5ix@dev.azure.com/williamcastelino99/TestProject/_git/az-aks-cluster?ref=main"
#   resource_group_name = var.resource_group_name
#   aks_name            = "aks-cluster-1310"
#   location            = var.location
#   dns_prefix          = "aks-cluster"
#   tags                = var.tags
#   subnet_id           = module.network.subnet_id
#   node_pool_name      = "default"
#   node_pool_count     = 3
#   node_pool_size      = "Standard_B2s"
#   identity            = "SystemAssigned"
# }

# module "keyvault" {
#   source                   = "git::https://williamcastelino99@gmail.com:34ThBibtDkfXOvIvNnccyGBNvWuRSWi0LNP27jbwpw5ko2wd9nheJQQJ99BAACAAAAAAAAAAAAASAZDOa5ix@dev.azure.com/williamcastelino99/TestProject/_git/az-keyvault?ref=main"
#   resource_group_name      = var.resource_group_name
#   location                 = var.location
#   keyvault_name            = "aks-keyvault1309"
#   tenant_id                = var.tenant_id
#   sku_name                 = "standard"
#   purge_protection_enabled = true
#   key_permissions = [
#     "Get",
#   ]
#   secret_permissions = [
#     "Get",
#     "List",
#     "Set",
#     "Delete",
#     "Recover",
#   ]
#   secret_name  = "example-secret"
#   secret_value = "example-value"
# }

# module "acr" {
#   source              = "git::https://williamcastelino99@gmail.com:34ThBibtDkfXOvIvNnccyGBNvWuRSWi0LNP27jbwpw5ko2wd9nheJQQJ99BAACAAAAAAAAAAAAASAZDOa5ix@dev.azure.com/williamcastelino99/TestProject/_git/az-acr?ref=main"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   acr_name            = "aksacr1304"
#   sku                 = "Basic"
#   admin_enabled       = true
# }

# module "log_analytics" {
#   source              = "git::https://williamcastelino99@gmail.com:34ThBibtDkfXOvIvNnccyGBNvWuRSWi0LNP27jbwpw5ko2wd9nheJQQJ99BAACAAAAAAAAAAAAASAZDOa5ix@dev.azure.com/williamcastelino99/TestProject/_git/az-log-analytics?ref=main"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   workspace_name      = "aks-log-analytics"
#   sku                 = "PerGB2018"
# }
