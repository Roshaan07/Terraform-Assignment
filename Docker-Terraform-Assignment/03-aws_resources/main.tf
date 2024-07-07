module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source           = "./modules/ec2"
  subnet_id = var.subnet_id
  security_group_id = var.security_group_id
  key_name         = var.key_name
  instance_type    = var.instance_type
  ami_id           = var.ami_id
  associate_public_ip_address = var.associate_public_ip_address
  instance_name    = var.instance_name
  tags             = var.tags
}

module "alb" {
  source = "./modules/alb"
  subnets = ["subnet-0ea8dc794954a2abc", "subnet-0507766833b22fe73"]
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-statefile-bucket" 
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}