module "debian_dev" {
  source = "../../modules/vm"

  vm_id       = 101
  template_id = 9000

  name      = "debian-dev"
  node_name = "pve"

  memory = 2048
  cores  = 2

  bridge  = "vmbr0"
  storage = "local-lvm"

  username       = var.username
  ssh_public_key = var.ssh_public_key

  on_boot         = true
  start_on_create = true
}

module "k3s_server" {
  source = "../../modules/vm"

  vm_id       = 102
  template_id = 9000

  name      = "k3s-server"
  node_name = "pve"

  memory = 4096
  cores  = 2

  bridge  = "vmbr0"
  storage = "local-lvm"

  username       = var.username
  ssh_public_key = var.ssh_public_key

  on_boot         = true
  start_on_create = true
}
