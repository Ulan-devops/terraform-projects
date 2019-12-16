# Create a container
resource "docker_container" "talant" {
  image = "${docker_image.ubuntu.latest}"
  name  = "talant"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}