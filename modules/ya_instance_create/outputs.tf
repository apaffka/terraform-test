# Share the list of string IPs of created instances
output "instance_ip" {
  value = yandex_compute_instance.skill-instance.network_interface[0].ip_address
}

# Share the list of string Subnets of created instances
output "instance_subnet" {
  value = yandex_compute_instance.skill-instance.network_interface[0].subnet_id
}

# Stare all the data about created instances
output "instance" {
  value = yandex_compute_instance.skill-instance
}