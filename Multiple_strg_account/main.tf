#section-01
provider "azurerm" {
  features {}
}
#section -02 (rg details)
resource "azurerm_resource_group" "ResourceGroup" {
  name = "Resourcegroupppppp"
  location = "eastus"
}


resource "azurerm_storage_account" "usecase2" {
  name                     = "storageactestone"
  resource_group_name      = azurerm_resource_group.ResourceGroup.name
  location                 = azurerm_resource_group.ResourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "usecasetwo" {
  name                     = "storageactesttwo"
  resource_group_name      = azurerm_resource_group.ResourceGroup.name
  location                 = azurerm_resource_group.ResourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}