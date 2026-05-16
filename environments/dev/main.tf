resource "azurerm_resource_group" "this" {
  name     = "rg-dev-eastus-opella"
  location = "East US"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}

module "vnet" {
  source = "../../modules/vnet"

  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location

  vnet_name       = "vnet-dev-eastus-opella"
  address_space   = ["10.0.0.0/16"]

  subnet_name     = "subnet-app"
  subnet_prefixes = ["10.0.1.0/24"]

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
