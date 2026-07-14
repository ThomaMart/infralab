variable "vm_id" {
  type = number
}

variable "template_id" {
  type = number
}

variable "name" {
  type = string
}

variable "node_name" {
  type = string
}

variable "cpu_type" {
  type    = string
  default = "x86-64-v2-AES"
}

variable "memory" {
  type = number
}

variable "cores" {
  type = number
}

variable "bridge" {
  type = string
}

variable "storage" {
  type = string
}

variable "username" {
  type = string
}

variable "ssh_public_key" {
  type = string
}
