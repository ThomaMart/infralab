module "lab" {
  source = "../../stacks/lab"

  username       = var.username
  ssh_public_key = var.ssh_public_key
}
