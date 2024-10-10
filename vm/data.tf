data "azurerm_subnet" "gogosubnet" {
    for_each = var.linux_vms
  name = each.value.subnet_name
virtual_network_name = each.value.vm_name
  resource_group_name = each.value.resource_group_name
}