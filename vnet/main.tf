resource "azurerm_virtual_network" "myvnet" {
  for_each = var.myvnet
  name                = "vnetgogo"
  resource_group_name = each.value.name
   location            = each.value.location
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

}