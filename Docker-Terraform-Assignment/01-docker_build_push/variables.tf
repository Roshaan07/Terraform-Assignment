variable "docker_hub_username" {
  type = string
}

variable "docker_hub_password" {
  type = string
  sensitive = true
}

variable "image_name" {
  type = string
}