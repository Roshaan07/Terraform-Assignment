resource "null_resource" "docker_login" {
  provisioner "local-exec" {
    command = "echo ${var.docker_hub_password} | docker login -u ${var.docker_hub_username} --password-stdin"
  }
}

resource "null_resource" "docker_push" {
  depends_on = [null_resource.docker_login]

  provisioner "local-exec" {
    command = "docker push ${var.image_name}"
  }
}