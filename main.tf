resource "azurerm_resource_group" "rgs" {
  name     = "rg1"
  location = "south india"
}

resource "azurerm_resource_group" "rgnew" {
  name     = "rg2"
  location = "central india"
}
