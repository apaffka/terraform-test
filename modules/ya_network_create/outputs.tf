# Share created subnets
output "subnets_ids" {
  value = yandex_vpc_subnet.skill-subnet[*].id
}

# Share created security group
output "security_group" {
  value = yandex_vpc_security_group.skill-security-group[*].id
}