# Creating a cloud network
resource "yandex_vpc_network" "skill-vpc" {
  name = local.network_name
}

# Creating a subnet
resource "yandex_vpc_subnet" "skill-subnet" {
  count          = length(var.subnet_cidrs)
  network_id     = yandex_vpc_network.skill-vpc.id
  name           = "${local.subnet_name}-${count.index + 1}"
  v4_cidr_blocks = [element(var.subnet_cidrs, count.index)]
  zone           = element(var.zone, count.index)
}

# Creating a security group
resource "yandex_vpc_security_group" "skill-security-group" {
  name       = local.security_group_name
  network_id = yandex_vpc_network.skill-vpc.id
  egress {
    protocol       = "ANY"
    description    = "any"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    protocol       = "TCP"
    description    = "ext-http"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 80
  }
  ingress {
    protocol       = "TCP"
    description    = "ext-https"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 443
  }
}

module "ya_instance" {
  source                = "../modules/ya_instance_create"
  count                 = length(var.instance_image_family)
  vm_name               = "lemp-machine"
  instance_image_family = element(var.instance_image_family, count.index)
  instance_user         = var.instance_user
  security_group        = local.security_group_name
  subnet_id             = yandex_vpc_subnet.skill-subnet.id
}