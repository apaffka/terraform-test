# Adding a ready-made VM image
data "yandex_compute_image" "instance-image" {
  family = var.instance_image_family
}

# Creating a VM
resource "yandex_compute_instance" "skill-instance" {
  name = "${var.instance_name}-${var.instance_image_family}"
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