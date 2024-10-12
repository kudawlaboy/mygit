resource "azurerm_resource_group" "myrg" {
  for_each = var.myrg
  name     = each.value
  location = each.value.location
}


