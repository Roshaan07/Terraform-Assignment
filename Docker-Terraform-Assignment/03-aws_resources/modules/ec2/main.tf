resource "aws_instance" "ec2" {
  subnet_id        = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name      = var.key_name
  instance_type = var.instance_type
  ami           = var.ami_id
  associate_public_ip_address = var.associate_public_ip_address

  tags = merge(
    {
      Name = var.instance_name
    },
    var.tags
  )
}