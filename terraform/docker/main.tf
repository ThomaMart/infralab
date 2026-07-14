terraform {

  required_providers {

    docker = {

      source = "kreuzwerker/docker"

      version = "~> 3.6"

    }

  }

}

provider "docker" {}

module "nginx" {

  source = "../modules/nginx"

  container_name = var.container_name

  external_port = var.external_port

}
