module "mrgs" {
  source = "../../rg"
  myrg = var.myrgdetail
  
}


module "msubnets" {
  source = "../../subnet"
 mysubnet = var.mysubnetdetail
  depends_on = [ module.rgs,module.vnet ]
}

module "mvnet" {
  source = "../../dev/vnet"
myvnet = var.myvnetdetail
depends_on = [ module.rgs ]
}



module "mlinux_vms" {
  source = "../../dev/vm"
linux_vms = var.linux_vms
  depends_on = [ module.rgs,module.vnet,module.subnets ]
}
