output "vm_name" {
  description = "VM name"
  value       = module.debian_dev.name
}

output "vm_id" {
  description = "VM ID"
  value       = module.debian_dev.vm_id
}
