provider "aws" {
  region = "us-east-1" 
}

data "aws_instance" "ec2_instance" {
  instance_id = "i-0d559f3a3cffd5cfc"
}

resource "null_resource" "docker_setup" {
  depends_on = [data.aws_instance.ec2_instance]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file(var.private_key_path)
    host        = data.aws_instance.ec2_instance.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y docker",
      "sudo service docker start",
      "sudo usermod -a -G docker ec2-user",
      "sudo docker pull roshan07/web-service:latest",
      "sudo docker run -d -p 80:80 roshan07/web-service:latest"
    ]
  }

  provisioner "local-exec" {
    command = "echo 'Docker setup complete!'"
  }
}

output "instance_public_ip" {
  value = data.aws_instance.ec2_instance.public_ip
}
