# Output created security group
output "security_group" {
  value = module.ya_network_create.security_group
}

# Output instances IPs
output "instance_ip" {
  value = module.ya_instance_create[*].instance_ip
}

# Output instances subnets
output "instance_subnet" {
  value = module.ya_instance_create[*].instance_subnet
}

# Output map data with subnets and IPs, that data is needed for correct
# target group creation
output "subnet_ip" {
  value = {
    for instance in module.ya_instance_create[*].instance :
    instance.network_interface[0].subnet_id => instance.network_interface[0].ip_address
  }
}