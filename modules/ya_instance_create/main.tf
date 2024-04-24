# Define Terraform for Yandex Instance module
## version of Terraform 1.5.7 or higher
### Yandex cloud provider version 0.115.0 or higher in minor
terraform {
  required_version = ">= 1.5.7"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~>0.115.0"
    }
  }
}

# Adding a ready-made VM image
data "yandex_compute_image" "instance-image" {
  family = var.instance_image_family
}

# Creating an instance
resource "yandex_compute_instance" "skill-instance" {
  description = "Create instances for project"
  name        = "${var.instance_name}-${var.instance_image_family}"
  zone        = var.zone
  resources {
    cores  = var.cores
    memory = var.memory
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.instance-image.id
    }
  }
  network_interface {
    subnet_id          = var.subnet_id
    nat                = true
    security_group_ids = var.security_group
  }
  metadata = {
    ssh-keys = "ubuntu:${file("${var.ssh_key_path}")}"
  }
}