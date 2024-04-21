#Cloud variables
variable "folder_id" {
  type = string
}
variable "cloud_id" {
  type = string
}

#Network variables
variable "zone" {
  default = [
    "ru-central1-a",
    "ru-central1-b"
  ]
}

variable "subnet_cidrs" {
  type = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

#Instance variables
variable "instance_image_family" {
  type = list(string)
  default = [
    "lamp",
    "lemp"
  ]
}

variable "instance_user" {
  type = string
}

variable "ssh_key_path" {
  type = string
}

#Local variables
locals {
  network_name        = "skill-vpc"
  subnet_name         = "skill-subnet"
  security_group_name = "skill-security-group"
  instance_name       = "skill-instance"
}