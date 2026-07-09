output "container_name" {
  value = docker_container.nginx.name
}

output "container_port" {
  value = var.external_port
}
