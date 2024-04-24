variable "target_name" {
  type        = string
  description = "Give a name for target group"
  default     = "skill-test"
}

variable "target_zone" {
  type        = string
  description = "Define zone for target group"
  default     = "ru-central1"
}

variable "subnet_ip" {
  description = "Defines subnets and IPs for created instances"
  type        = map(string)
}