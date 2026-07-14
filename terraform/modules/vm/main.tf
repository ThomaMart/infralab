resource "proxmox_virtual_environment_vm" "this" {

  vm_id     = var.vm_id
  name      = var.name
  node_name = var.node_name

  on_boot = var.on_boot

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

  started = var.start_on_create

  lifecycle {
    precondition {
      condition     = var.memory >= 512
      error_message = "Memory must be at least 512 MB."
    }

    precondition {
      condition     = var.cores >= 1
      error_message = "CPU cores must be greater than or equal to 1."
    }

    precondition {
      condition     = var.vm_id > 0
      error_message = "VM ID must be greater than 0."
    }
  }
}