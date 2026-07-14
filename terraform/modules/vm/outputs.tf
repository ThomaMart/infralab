output "vm_id" {
  value = proxmox_virtual_environment_vm.this.vm_id
}

output "name" {
  value = proxmox_virtual_environment_vm.this.name
}

output "ipv4" {
  value = proxmox_virtual_environment_vm.this.ipv4_addresses
}

output "mac" {
  value = proxmox_virtual_environment_vm.this.mac_addresses
}
