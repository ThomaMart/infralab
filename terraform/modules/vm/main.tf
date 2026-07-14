resource "proxmox_virtual_environment_vm" "this" {

  vm_id     = var.vm_id
  name      = var.name
  node_name = var.node_name

  clone {
    vm_id = var.template_id
  }

  cpu {
    cores = var.cores
    type  = var.cpu_type
  }

  memory {
    dedicated = var.memory
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = var.bridge
  }

  initialization {

    datastore_id = var.storage

    user_account {
      username = var.username

      keys = [
        var.ssh_public_key
      ]
    }

    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }
}
