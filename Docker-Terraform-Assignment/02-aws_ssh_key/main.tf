data "local_file" "public_key" {
  filename = var.public_key_path
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = data.local_file.public_key.content
}

output "key_name" {
  value = aws_key_pair.generated_key.key_name
}
