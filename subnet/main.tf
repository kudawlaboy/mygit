resource "azurerm_subnet" "mysubnet" {
  for_each = var.mysubnet
  name                 = "gogosubnet"
  resource_group_name  = each.value.myrg.name
  virtual_network_name = each.value.myvnet.name
  address_prefixes     = ["10.0.1.0/24"]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}