#Network variables
variable "zone" {
  type        = list(string)
  description = "Defines needed zones for your project"
  default = [
    "ru-central1-a",
    "ru-central1-b"
  ]
}

variable "subnet_cidrs" {
  type        = list(string)
  description = "Defines CIDRs for your project"
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

#Local variables
locals {
  network_name        = "skill-vpc"
  subnet_name         = "skill-subnet"
  security_group_name = "skill-security-group"
}