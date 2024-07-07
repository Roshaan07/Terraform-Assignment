subnet_id  = "subnet-0ea8dc794954a2abc"
security_group_id = "sg-0b7236b5628584419"
key_name          = "aws_key"
instance_type     = "t2.micro"
ami_id            = "ami-06c68f701d8090592"
associate_public_ip_address = true
instance_name     = "Terraform-ec2-Instance"
tags = {
  Environment = "dev"
  Project     = "terraform-ec2"
}