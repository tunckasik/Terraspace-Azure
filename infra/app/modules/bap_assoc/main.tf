resource "azurerm_network_interface_backend_address_pool_association" "backend_assoc1" {
  network_interface_id    = var.nic_id
  ip_configuration_name   = "internal"
  backend_address_pool_id = var.backendlb_id
}
