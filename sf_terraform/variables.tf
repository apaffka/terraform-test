### Cloud variables ###

# Define Cloud Id
variable "cloud_id" {
  default = "b1grn1g6k3qfh9re8san"
  type    = string
}

# Define Folder Id
variable "folder_id" {
  default = "b1go6ongjivllnpt0qi9"
  type    = string
}

## Instance variables ###
## Should be defined for instance creation ###

variable "zone" {
  type = list(string)
  default = [
    "ru-central1-a",
    "ru-central1-b"
  ]
}

variable "instance_image_family" {
  type = list(string)
  default = [
    "lamp",
    "lemp"
  ]
}
variable "instance_user" {
  type    = string
  default = "pavel"
}