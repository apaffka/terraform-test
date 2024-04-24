#Define cloud provider for module
terraform {
  required_version = ">= 1.5.7"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~>0.115.0"
    }
  }
}

# Add instances to target group
resource "yandex_lb_target_group" "skill-target" {
  description = "Creating target group for load balancer"
  name        = var.target_name
  region_id   = var.target_zone

  dynamic "target" {
    for_each = var.subnet_ip
    content {
      subnet_id = target.key
      address   = target.value
    }
  }
}

resource "yandex_lb_network_load_balancer" "skill-balancer" {
  description = "Creating load balancer for project"
  depends_on  = [yandex_lb_target_group.skill-target]
  name        = "skill-balancer"

  listener {
    name = "skill-listener"
    port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.skill-target.id

    healthcheck {
      name = "still-check"
      http_options {
        port = 80
      }
    }
  }
}