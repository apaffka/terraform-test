variable "instance_name" {
  type = string
  default = "skill"
}

variable "instance_user" {
  type = string
}

variable "subnet_id" {
  type = number
}

variable "security_group" {
  type = string
}

variable "cores" {
  type = number
  default = 2
}

variable "memory" {
  type = number
  default = 2
}

variable "instance_image_family" {
  type = list(string)
}

variable "ssh_key_path" {
  type = string
  default = "~/.ssh/id_rsa.pub"
}
