module "debian_dev" {

  source = "../modules/vm"

  providers = {
    proxmox = proxmox
  }

  vm_id = 101

  template_id = 9000

  name = "debian-dev"

  node_name = "proxmox"

  memory = 2048

  cores = 2

  bridge = "vmbr0"

  storage = "local-lvm"

  username = "debian"

  ssh_public_key = var.ssh_public_key

}
