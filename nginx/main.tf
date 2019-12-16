# Create a container
resource "docker_container" "talant_ubuntu" {
  image = "${docker_image.ubuntu.latest}"
  name  = "talant_ubuntu"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}