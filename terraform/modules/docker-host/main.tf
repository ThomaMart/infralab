module "vm" {
  source = "../vm"

  vm_id       = var.vm_id
  template_id = var.template_id

  name      = var.name
  node_name = var.node_name

  memory = var.memory
  cores  = var.cores

  bridge  = var.bridge
  storage = var.storage

  username       = var.username
  ssh_public_key = var.ssh_public_key

  on_boot         = true
  start_on_create = true
}