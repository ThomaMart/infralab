resource "proxmox_virtual_environment_vm" "debian" {

  name      = "debian-dev"
  node_name = "proxmox"

  clone {
    vm_id = 9000
  }

  cpu {
    cores = 2
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 2048
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
  }

  initialization {

    datastore_id = "local-lvm"

    user_account {
      username = "debian"
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
