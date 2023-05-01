output "nic_id" {
    value = azurerm_network_interface.nic.id
}

output "vm_id" {
    value = azurerm_windows_virtual_machine.vm.id
}