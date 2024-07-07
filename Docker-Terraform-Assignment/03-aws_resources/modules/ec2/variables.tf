variable "subnet_id" {
  description = "The Subnet ID"
  type        = string
}

variable "security_group_id" {
  description = "The Security Group ID"
  type        = string
}

variable "key_name" {
  description = "The Key Pair name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance"
  type        = bool
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}