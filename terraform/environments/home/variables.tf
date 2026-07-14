variable "vm_id" {
  description = "Unique virtual machine identifier"
  type        = number

  validation {
    condition     = var.vm_id > 0
    error_message = "vm_id must be greater than 0."
  }
}

variable "template_id" {
  description = "Template VM identifier"
  type        = number

  validation {
    condition     = var.template_id > 0
    error_message = "template_id must be greater than 0."
  }
}

variable "name" {
  description = "Virtual machine name"
  type        = string

  validation {
    condition     = length(var.name) > 0
    error_message = "name cannot be empty."
  }
}

variable "node_name" {
  description = "Proxmox node name"
  type        = string
}

variable "memory" {
  description = "Dedicated memory (MB)"
  type        = number

  validation {
    condition     = var.memory >= 512
    error_message = "memory must be at least 512 MB."
  }
}

variable "cores" {
  description = "Number of CPU cores"
  type        = number

  validation {
    condition     = var.cores >= 1
    error_message = "cores must be greater than or equal to 1."
  }
}

variable "cpu_type" {
  description = "Proxmox CPU type"
  type        = string
  default     = "x86-64-v2-AES"
}

variable "bridge" {
  description = "Network bridge"
  type        = string
}

variable "storage" {
  description = "Storage datastore"
  type        = string
}

variable "username" {
  description = "Cloud-Init username"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key injected by Cloud-Init"
  type        = string
}

variable "on_boot" {
  description = "Start VM automatically when Proxmox boots"
  type        = bool
  default     = true
}

variable "start_on_create" {
  description = "Start the VM immediately after creation"
  type        = bool
  default     = true
}