# Create a container
resource "docker_container" "talant_container" {
  image = docker_image.talant_ubuntu.latest
  name  = "talant"
}

resource "docker_image" "talant_ubuntu" {
  name = "ubuntu"
}