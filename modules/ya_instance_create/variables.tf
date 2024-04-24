variable "instance_image_family" {
  type        = string
  description = "Defines an image for creating an instance"

}

variable "instance_name" {
  type        = string
  description = "Name for an instance will start from that"
  default     = "instance"
}

variable "instance_user" {
  type        = string
  description = "User with that name will be created into an instance"
  default     = "skillfactory"
}

variable "zone" {
  type        = string
  description = "Defines a zone where an instance will be created"
}

variable "subnet_id" {
  type        = string
  description = "Defines a subnet id, an instance has IP from that subnet"
}

variable "security_group" {
  type        = set(string)
  description = "Defines network security groups an instance will be"

}

variable "cores" {
  type        = number
  description = "Defines how many CPUs for an instance will be (min 2, max 96)"
  default     = 2
}

variable "memory" {
  type        = number
  description = "Defines how many RAM for an instance will be (min 2, max 32)"
  default     = 2
}


variable "ssh_key_path" {
  description = "Defines path to ssh public key to have access to created instance"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
