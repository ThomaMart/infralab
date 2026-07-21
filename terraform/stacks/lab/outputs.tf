output "vm_name" {
  description = "VM name"
  value       = module.debian_dev.name
}

output "vm_id" {
  description = "VM ID"
  value       = module.debian_dev.vm_id
}

output "k3s_server_name" {
  description = "k3s server VM name"
  value       = module.k3s_server.name
}

output "k3s_server_id" {
  description = "k3s server VM ID"
  value       = module.k3s_server.vm_id
}

output "k3s_agent_name" {
  description = "k3s agent VM name"
  value       = module.k3s_agent.name
}

output "k3s_agent_id" {
  description = "k3s agent VM ID"
  value       = module.k3s_agent.vm_id
}
