module "rg" {
  source = "../../modules/rg"
  rg_name = var.rg_name
  location = var.location
}

module "vnet" {
  source = "../../modules/vnet"
  rg_name = var.rg_name
  location = var.location
  vnet_name = var.vnet_name
  address_space = var.vnet_address_space
}

module "subnet" {
  source = "../../modules/subnet"
  rg_name = var.rg_name
  vnet_name = module.vnet.vnet_name
  subnet_name = var.subnet_name
  address_prefixes = var.subnet_address_prefixes
}

module "nsg" {
  source = "../../modules/nsg"
  nsg_name = var.nsg_name
  location = var.location
  rg_name = var.rg_name
  subnet_id = module.subnet.id
}

module "vm1" {
  source = "../../modules/vm"
  vm_name = var.vm1_name
  rg_name = var.rg_name
  location = var.location
  username = var.vm_username
  password = var.vm_password
  subnet_id = module.subnet.id
}

module "vm2" {
  source = "../../modules/vm"
  vm_name = var.vm2_name
  rg_name = var.rg_name
  location = var.location
  username = var.vm_username
  password = var.vm_password
  subnet_id = module.subnet.id
}


module "lb" {
  source = "../../modules/lb"
  lb_name = var.lb_name
  location = var.location
  rg_name = var.rg_name
}

module "bap_assoc" {
  source = "../../modules/bap_assoc"
  nic_id = module.vm1.nic_id
  backendlb_id = module.lb.backend_address_pool_id
}

module "bap_assoc" {
  source = "../../modules/bap_assoc"
  nic_id = module.vm2.nic_id
  backendlb_id = module.lb.backend_address_pool_id
}