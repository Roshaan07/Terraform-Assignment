variable "vpc_id" {
  description = "vpc ID"
  default = "vpc-0d13423316c9b56ce"
}

variable "subnets" {
  description = "subent ID's"
  type = list(string)
}


variable "instanceid" {
  description = "Instance ID"
  default  = "i-0d559f3a3cffd5cfc"
}